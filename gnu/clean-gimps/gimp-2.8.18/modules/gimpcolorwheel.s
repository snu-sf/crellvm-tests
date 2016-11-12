	.text
	.file	"gimpcolorwheel.bc"
	.globl	gimp_color_wheel_get_type
	.align	16, 0x90
	.type	gimp_color_wheel_get_type,@function
gimp_color_wheel_get_type:              # @gimp_color_wheel_get_type
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
	movq	gimp_color_wheel_type_id(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_wheel_get_type, .Lfunc_end0-gimp_color_wheel_get_type
	.cfi_endproc

	.globl	color_wheel_register_type
	.align	16, 0x90
	.type	color_wheel_register_type,@function
color_wheel_register_type:              # @color_wheel_register_type
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
	callq	gimp_color_wheel_register_type
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	color_wheel_register_type, .Lfunc_end1-color_wheel_register_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_register_type,@function
gimp_color_wheel_register_type:         # @gimp_color_wheel_register_type
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	leaq	.L.str.5(%rip), %rdx
	leaq	gimp_color_wheel_register_type.g_define_type_info(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_module_register_type@PLT
	movq	%rax, gimp_color_wheel_type_id(%rip)
	movq	gimp_color_wheel_type_id(%rip), %rax
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_wheel_register_type, .Lfunc_end2-gimp_color_wheel_register_type
	.cfi_endproc

	.globl	gimp_color_wheel_new
	.align	16, 0x90
	.type	gimp_color_wheel_new,@function
gimp_color_wheel_new:                   # @gimp_color_wheel_new
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
	callq	gimp_color_wheel_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_wheel_new, .Lfunc_end3-gimp_color_wheel_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_color_wheel_set_color
	.align	16, 0x90
	.type	gimp_color_wheel_set_color,@function
gimp_color_wheel_set_color:             # @gimp_color_wheel_set_color
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_wheel_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L__func__.gimp_color_wheel_set_color(%rip), %rsi
	leaq	.L.str(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_31
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_16
# BB#14:                                # %land.lhs.true.13
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jb	.LBB4_16
# BB#15:                                # %if.then.15
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.16
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L__func__.gimp_color_wheel_set_color(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_31
.LBB4_17:                               # %if.end.17
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.18
	jmp	.LBB4_19
.LBB4_19:                               # %do.body.19
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_22
# BB#20:                                # %land.lhs.true.21
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB4_22
# BB#21:                                # %if.then.23
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.24
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L__func__.gimp_color_wheel_set_color(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_31
.LBB4_23:                               # %if.end.25
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.26
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.27
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_28
# BB#26:                                # %land.lhs.true.29
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jb	.LBB4_28
# BB#27:                                # %if.then.31
	jmp	.LBB4_29
.LBB4_28:                               # %if.else.32
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L__func__.gimp_color_wheel_set_color(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_31
.LBB4_29:                               # %if.end.33
	jmp	.LBB4_30
.LBB4_30:                               # %do.end.34
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	wheel_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
.LBB4_31:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_wheel_set_color, .Lfunc_end4-gimp_color_wheel_set_color
	.cfi_endproc

	.globl	gimp_color_wheel_get_color
	.align	16, 0x90
	.type	gimp_color_wheel_get_color,@function
gimp_color_wheel_get_color:             # @gimp_color_wheel_get_color
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_wheel_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L__func__.gimp_color_wheel_get_color(%rip), %rsi
	leaq	.L.str(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_14
# BB#13:                                # %if.then.13
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB5_14:                               # %if.end.15
	cmpq	$0, -24(%rbp)
	je	.LBB5_16
# BB#15:                                # %if.then.17
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB5_16:                               # %if.end.19
	cmpq	$0, -32(%rbp)
	je	.LBB5_18
# BB#17:                                # %if.then.21
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB5_18:                               # %if.end.23
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_wheel_get_color, .Lfunc_end5-gimp_color_wheel_get_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607092346807469998     # double 0.98999999999999999
.LCPI6_1:
	.quad	4576918229304087675     # double 0.01
	.text
	.globl	gimp_color_wheel_set_ring_fraction
	.align	16, 0x90
	.type	gimp_color_wheel_set_ring_fraction,@function
gimp_color_wheel_set_ring_fraction:     # @gimp_color_wheel_set_ring_fraction
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_wheel_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L__func__.gimp_color_wheel_set_ring_fraction(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_19
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_14
# BB#13:                                # %cond.true
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB6_18
.LBB6_14:                               # %cond.false
	movsd	.LCPI6_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB6_16
# BB#15:                                # %cond.true.14
	movsd	.LCPI6_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false.15
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB6_17:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB6_18:                               # %cond.end.16
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw@PLT
.LBB6_19:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_wheel_set_ring_fraction, .Lfunc_end6-gimp_color_wheel_set_ring_fraction
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	gimp_color_wheel_get_ring_fraction
	.align	16, 0x90
	.type	gimp_color_wheel_get_ring_fraction,@function
gimp_color_wheel_get_ring_fraction:     # @gimp_color_wheel_get_ring_fraction
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_wheel_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L__func__.gimp_color_wheel_get_ring_fraction(%rip), %rsi
	leaq	.L.str(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB7_13:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_wheel_get_ring_fraction, .Lfunc_end7-gimp_color_wheel_get_ring_fraction
	.cfi_endproc

	.globl	gimp_color_wheel_is_adjusting
	.align	16, 0x90
	.type	gimp_color_wheel_is_adjusting,@function
gimp_color_wheel_is_adjusting:          # @gimp_color_wheel_is_adjusting
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_wheel_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	.L__func__.gimp_color_wheel_is_adjusting(%rip), %rsi
	leaq	.L.str(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 48(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_wheel_is_adjusting, .Lfunc_end8-gimp_color_wheel_is_adjusting
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_class_intern_init,@function
gimp_color_wheel_class_intern_init:     # @gimp_color_wheel_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_color_wheel_parent_class(%rip)
	cmpl	$0, GimpColorWheel_private_offset(%rip)
	je	.LBB9_2
# BB#1:                                 # %if.then
	leaq	GimpColorWheel_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_wheel_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_wheel_class_intern_init, .Lfunc_end9-gimp_color_wheel_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_class_finalize,@function
gimp_color_wheel_class_finalize:        # @gimp_color_wheel_class_finalize
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_wheel_class_finalize, .Lfunc_end10-gimp_color_wheel_class_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	gimp_color_wheel_init,@function
gimp_color_wheel_init:                  # @gimp_color_wheel_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, 96(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_has_window@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_can_focus@PLT
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$100, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$10, 36(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_wheel_init, .Lfunc_end11-gimp_color_wheel_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_class_init,@function
gimp_color_wheel_class_init:            # @gimp_color_wheel_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.6(%rip), %rdi
	movl	$1, %edx
	movl	$720, %ecx              # imm = 0x2D0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	leaq	gimp_color_wheel_move(%rip), %r11
	leaq	gimp_color_wheel_grab_broken(%rip), %rbx
	leaq	gimp_color_wheel_focus(%rip), %r14
	leaq	gimp_color_wheel_expose(%rip), %r15
	leaq	gimp_color_wheel_motion(%rip), %r12
	leaq	gimp_color_wheel_button_release(%rip), %r13
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	gimp_color_wheel_button_press(%rip), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	leaq	gimp_color_wheel_size_allocate(%rip), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	leaq	gimp_color_wheel_size_request(%rip), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	leaq	gimp_color_wheel_unrealize(%rip), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	leaq	gimp_color_wheel_realize(%rip), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	leaq	gimp_color_wheel_unmap(%rip), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	leaq	gimp_color_wheel_map(%rip), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 208(%rax)
	movq	-64(%rbp), %rax
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 216(%rax)
	movq	-64(%rbp), %rax
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 224(%rax)
	movq	-64(%rbp), %rax
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 232(%rax)
	movq	-64(%rbp), %rax
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 240(%rax)
	movq	-64(%rbp), %rax
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 248(%rax)
	movq	-64(%rbp), %rax
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 344(%rax)
	movq	-64(%rbp), %rax
	movq	%r13, 352(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 368(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 392(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 328(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 672(%rax)
	movq	-72(%rbp), %rax
	movq	%r11, 728(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -172(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -184(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-184(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -192(%rbp)        # 8-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, wheel_signals(%rip)
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gtk_direction_type_get_type@PLT
	leaq	.L.str.7(%rip), %rdi
	movl	$34, %edx
	movl	$728, %ecx              # imm = 0x2D8
	xorl	%esi, %esi
	movl	%esi, %r8d
	movq	g_cclosure_marshal_VOID__ENUM@GOTPCREL(%rip), %r9
	movl	$4, %esi
	movl	%esi, %r10d
	movl	$1, %esi
	movq	-200(%rbp), %r11        # 8-byte Reload
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movq	%r8, -216(%rbp)         # 8-byte Spill
	movq	-216(%rbp), %rbx        # 8-byte Reload
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-224(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -232(%rbp)        # 8-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, wheel_signals+4(%rip)
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gtk_binding_set_by_class@PLT
	movl	$65362, %esi            # imm = 0xFF52
	xorl	%edx, %edx
	leaq	.L.str.7(%rip), %rcx
	movl	$1, %r8d
	movl	$48, %edi
	movl	%edi, %r9d
	movl	$2, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	%edi, -236(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	$2, (%rsp)
	movb	$0, %al
	callq	gtk_binding_entry_add_signal@PLT
	movl	$65431, %esi            # imm = 0xFF97
	xorl	%edx, %edx
	leaq	.L.str.7(%rip), %rcx
	movl	$1, %r8d
	movl	$48, %eax
	movl	%eax, %r9d
	movl	$2, %eax
	movq	-80(%rbp), %rdi
	movl	$2, (%rsp)
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_binding_entry_add_signal@PLT
	movl	$65364, %esi            # imm = 0xFF54
	xorl	%edx, %edx
	leaq	.L.str.7(%rip), %rcx
	movl	$1, %r8d
	movl	$48, %eax
	movl	%eax, %r9d
	movl	$3, %eax
	movq	-80(%rbp), %rdi
	movl	$3, (%rsp)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_binding_entry_add_signal@PLT
	movl	$65433, %esi            # imm = 0xFF99
	xorl	%edx, %edx
	leaq	.L.str.7(%rip), %rcx
	movl	$1, %r8d
	movl	$48, %eax
	movl	%eax, %r9d
	movl	$3, %eax
	movq	-80(%rbp), %rdi
	movl	$3, (%rsp)
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_binding_entry_add_signal@PLT
	movl	$65363, %esi            # imm = 0xFF53
	xorl	%edx, %edx
	leaq	.L.str.7(%rip), %rcx
	movl	$1, %r8d
	movl	$48, %eax
	movl	%eax, %r9d
	movl	$5, %eax
	movq	-80(%rbp), %rdi
	movl	$5, (%rsp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_binding_entry_add_signal@PLT
	movl	$65432, %esi            # imm = 0xFF98
	xorl	%edx, %edx
	leaq	.L.str.7(%rip), %rcx
	movl	$1, %r8d
	movl	$48, %eax
	movl	%eax, %r9d
	movl	$5, %eax
	movq	-80(%rbp), %rdi
	movl	$5, (%rsp)
	movl	%eax, -256(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_binding_entry_add_signal@PLT
	movl	$65361, %esi            # imm = 0xFF51
	xorl	%edx, %edx
	leaq	.L.str.7(%rip), %rcx
	movl	$1, %r8d
	movl	$48, %eax
	movl	%eax, %r9d
	movl	$4, %eax
	movq	-80(%rbp), %rdi
	movl	$4, (%rsp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_binding_entry_add_signal@PLT
	movl	$65430, %esi            # imm = 0xFF96
	xorl	%edx, %edx
	leaq	.L.str.7(%rip), %rcx
	movl	$1, %r8d
	movl	$48, %eax
	movl	%eax, %r9d
	movl	$4, %eax
	movq	-80(%rbp), %rdi
	movl	$4, (%rsp)
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_binding_entry_add_signal@PLT
	movl	$56, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_class_add_private@PLT
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_wheel_class_init, .Lfunc_end12-gimp_color_wheel_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_map,@function
gimp_color_wheel_map:                   # @gimp_color_wheel_map
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	gimp_color_wheel_parent_class(%rip), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gdk_window_show@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_wheel_map, .Lfunc_end13-gimp_color_wheel_map
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_unmap,@function
gimp_color_wheel_unmap:                 # @gimp_color_wheel_unmap
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gdk_window_hide@PLT
	movq	gimp_color_wheel_parent_class(%rip), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_wheel_unmap, .Lfunc_end14-gimp_color_wheel_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_realize,@function
gimp_color_wheel_realize:               # @gimp_color_wheel_realize
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-40(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_set_realized@PLT
	movl	$2, -80(%rbp)
	movl	-40(%rbp), %esi
	movl	%esi, -116(%rbp)
	movl	-36(%rbp), %esi
	movl	%esi, -112(%rbp)
	movl	-32(%rbp), %esi
	movl	%esi, -108(%rbp)
	movl	-28(%rbp), %esi
	movl	%esi, -104(%rbp)
	movl	$1, -100(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_events@PLT
	orl	$1024, %eax             # imm = 0x400
	orl	$256, %eax              # imm = 0x100
	orl	$512, %eax              # imm = 0x200
	orl	$4, %eax
	orl	$4096, %eax             # imm = 0x1000
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, -120(%rbp)
	movl	$12, -132(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_parent_window@PLT
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	gtk_widget_set_window@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref@PLT
	leaq	-128(%rbp), %rsi
	movq	-144(%rbp), %rdi
	movl	-132(%rbp), %edx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gdk_window_new@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gdk_window_set_user_data@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_style_attach@PLT
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_wheel_realize, .Lfunc_end15-gimp_color_wheel_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_unrealize,@function
gimp_color_wheel_unrealize:             # @gimp_color_wheel_unrealize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gdk_window_set_user_data@PLT
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gdk_window_destroy@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	gimp_color_wheel_parent_class(%rip), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_wheel_unrealize, .Lfunc_end16-gimp_color_wheel_unrealize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_size_request,@function
gimp_color_wheel_size_request:          # @gimp_color_wheel_size_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-20(%rbp), %rdx
	leaq	.L.str.9(%rip), %rcx
	leaq	-24(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movl	-20(%rbp), %r10d
	addl	-24(%rbp), %r10d
	shll	$1, %r10d
	addl	$100, %r10d
	movq	-16(%rbp), %rcx
	movl	%r10d, (%rcx)
	movl	-20(%rbp), %r10d
	addl	-24(%rbp), %r10d
	shll	$1, %r10d
	addl	$100, %r10d
	movq	-16(%rbp), %rcx
	movl	%r10d, 4(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_wheel_size_request, .Lfunc_end17-gimp_color_wheel_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_size_allocate,@function
gimp_color_wheel_size_allocate:         # @gimp_color_wheel_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp62:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_widget_set_allocation@PLT
	leaq	.L.str.8(%rip), %rsi
	leaq	-44(%rbp), %rdx
	leaq	.L.str.9(%rip), %rcx
	leaq	-48(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %r10d
	movl	-44(%rbp), %r11d
	addl	-48(%rbp), %r11d
	shll	$1, %r11d
	subl	%r11d, %r10d
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %r11d
	movl	-44(%rbp), %ebx
	addl	-48(%rbp), %ebx
	shll	$1, %ebx
	subl	%ebx, %r11d
	cmpl	%r11d, %r10d
	jge	.LBB18_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB18_3:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-40(%rbp), %rcx
	cvtsi2sdl	32(%rcx), %xmm0
	movq	-40(%rbp), %rcx
	mulsd	24(%rcx), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_realized@PLT
	cmpl	$0, %eax
	je	.LBB18_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	12(%rax), %r8d
	callq	gdk_window_move_resize@PLT
.LBB18_5:                               # %if.end
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_color_wheel_size_allocate, .Lfunc_end18-gimp_color_wheel_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_button_press,@function
gimp_color_wheel_button_press:          # @gimp_color_wheel_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB19_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB19_3
.LBB19_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.end
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	is_in_ring
	cmpl	$0, %eax
	je	.LBB19_5
# BB#4:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	20(%rax), %esi
	callq	set_cross_grab
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	compute_v
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_color_wheel_set_color@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus@PLT
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 52(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB19_8
.LBB19_5:                               # %if.end.10
	movq	-32(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	is_in_triangle
	cmpl	$0, %eax
	je	.LBB19_7
# BB#6:                                 # %if.then.13
	movq	-40(%rbp), %rax
	movl	$2, 48(%rax)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	20(%rax), %esi
	callq	set_cross_grab
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	compute_sv
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_color_wheel_set_color@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus@PLT
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 52(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB19_8
.LBB19_7:                               # %if.end.21
	movl	$0, -4(%rbp)
.LBB19_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_color_wheel_button_press, .Lfunc_end19-gimp_color_wheel_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_button_release,@function
gimp_color_wheel_button_release:        # @gimp_color_wheel_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB20_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB20_3
.LBB20_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB20_11
.LBB20_3:                               # %if.end
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	cmpl	$1, -44(%rbp)
	jne	.LBB20_5
# BB#4:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	compute_v
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gimp_color_wheel_set_color@PLT
	jmp	.LBB20_10
.LBB20_5:                               # %if.else
	cmpl	$2, -44(%rbp)
	jne	.LBB20_7
# BB#6:                                 # %if.then.13
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	compute_sv
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_color_wheel_set_color@PLT
	jmp	.LBB20_9
.LBB20_7:                               # %if.else.16
	jmp	.LBB20_8
.LBB20_8:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	.L.str.10(%rip), %rsi
	movl	$741, %edx              # imm = 0x2E5
	leaq	.L__func__.gimp_color_wheel_button_release(%rip), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr@PLT
.LBB20_9:                               # %if.end.17
	jmp	.LBB20_10
.LBB20_10:                              # %if.end.18
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_window_get_display@PLT
	movq	-24(%rbp), %rdi
	movl	20(%rdi), %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab@PLT
	movl	$1, -4(%rbp)
.LBB20_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_color_wheel_button_release, .Lfunc_end20-gimp_color_wheel_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_motion,@function
gimp_color_wheel_motion:                # @gimp_color_wheel_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB21_9
.LBB21_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gdk_event_request_motions@PLT
	movq	-24(%rbp), %rdi
	movsd	24(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-24(%rbp), %rdi
	movsd	32(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-40(%rbp), %rdi
	cmpl	$1, 48(%rdi)
	jne	.LBB21_4
# BB#3:                                 # %if.then.7
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	compute_v
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_color_wheel_set_color@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB21_9
.LBB21_4:                               # %if.else
	movq	-40(%rbp), %rax
	cmpl	$2, 48(%rax)
	jne	.LBB21_6
# BB#5:                                 # %if.then.11
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	compute_sv
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_color_wheel_set_color@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB21_9
.LBB21_6:                               # %if.end.14
	jmp	.LBB21_7
.LBB21_7:                               # %if.end.15
	jmp	.LBB21_8
.LBB21_8:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	.L.str.10(%rip), %rsi
	movl	$779, %edx              # imm = 0x30B
	leaq	.L__func__.gimp_color_wheel_motion(%rip), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr@PLT
.LBB21_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_color_wheel_motion, .Lfunc_end21-gimp_color_wheel_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_expose,@function
gimp_color_wheel_expose:                # @gimp_color_wheel_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp75:
	.cfi_offset %rbx, -32
.Ltmp76:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window@PLT
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB22_2
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	jne	.LBB22_3
.LBB22_2:                               # %if.then
	movl	$0, -20(%rbp)
	jmp	.LBB22_9
.LBB22_3:                               # %if.end
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	leaq	-72(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-40(%rbp), %rdi
	addq	$20, %rdi
	callq	gdk_rectangle_intersect@PLT
	cmpl	$0, %eax
	jne	.LBB22_5
# BB#4:                                 # %if.then.7
	movl	$0, -20(%rbp)
	jmp	.LBB22_9
.LBB22_5:                               # %if.end.8
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	callq	cairo_translate@PLT
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-88(%rbp), %ecx
	subl	-72(%rbp), %ecx
	movl	-84(%rbp), %edx
	subl	-68(%rbp), %edx
	movl	-80(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	callq	paint
	movq	-96(%rbp), %rdi
	callq	cairo_destroy@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_has_focus@PLT
	cmpl	$0, %eax
	je	.LBB22_8
# BB#6:                                 # %land.lhs.true.19
	movq	-56(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB22_8
# BB#7:                                 # %if.then.21
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	-32(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window@PLT
	movq	-32(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_state@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-40(%rbp), %rdi
	addq	$20, %rdi
	movq	-32(%rbp), %r8
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %r10d
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%rbx, %rsi
	movl	%edx, -152(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movq	-144(%rbp), %r14        # 8-byte Reload
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movq	%r14, %rcx
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%r10d, 24(%rsp)
	callq	gtk_paint_focus@PLT
.LBB22_8:                               # %if.end.30
	movl	$0, -20(%rbp)
.LBB22_9:                               # %return
	movl	-20(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_color_wheel_expose, .Lfunc_end22-gimp_color_wheel_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_wheel_focus,@function
gimp_color_wheel_focus:                 # @gimp_color_wheel_focus
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus@PLT
	cmpl	$0, %eax
	jne	.LBB23_5
# BB#1:                                 # %if.then
	cmpl	$1, -20(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then.4
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 52(%rax)
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 52(%rax)
.LBB23_4:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB23_23
.LBB23_5:                               # %if.end.8
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	ja	.LBB23_22
# BB#24:                                # %if.end.8
	leaq	.LJTI23_0(%rip), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB23_6:                               # %sw.bb
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB23_8
# BB#7:                                 # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB23_23
.LBB23_8:                               # %if.else.14
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 52(%rax)
# BB#9:                                 # %if.end.19
	jmp	.LBB23_22
.LBB23_10:                              # %sw.bb.20
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB23_12
# BB#11:                                # %if.then.26
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 52(%rax)
	jmp	.LBB23_13
.LBB23_12:                              # %if.else.30
	movl	$0, -4(%rbp)
	jmp	.LBB23_23
.LBB23_13:                              # %if.end.31
	jmp	.LBB23_22
.LBB23_14:                              # %sw.bb.32
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB23_16
# BB#15:                                # %if.then.38
	movl	$0, -4(%rbp)
	jmp	.LBB23_23
.LBB23_16:                              # %if.else.39
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 52(%rax)
# BB#17:                                # %if.end.44
	jmp	.LBB23_22
.LBB23_18:                              # %sw.bb.45
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB23_20
# BB#19:                                # %if.then.51
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 52(%rax)
	jmp	.LBB23_21
.LBB23_20:                              # %if.else.55
	movl	$0, -4(%rbp)
	jmp	.LBB23_23
.LBB23_21:                              # %if.end.56
	jmp	.LBB23_22
.LBB23_22:                              # %sw.epilog
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_draw@PLT
	movl	$1, -4(%rbp)
.LBB23_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_color_wheel_focus, .Lfunc_end23-gimp_color_wheel_focus
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI23_0:
	.long	.LBB23_18-.LJTI23_0
	.long	.LBB23_14-.LJTI23_0
	.long	.LBB23_6-.LJTI23_0
	.long	.LBB23_10-.LJTI23_0
	.long	.LBB23_14-.LJTI23_0
	.long	.LBB23_18-.LJTI23_0

	.text
	.align	16, 0x90
	.type	gimp_color_wheel_grab_broken,@function
gimp_color_wheel_grab_broken:           # @gimp_color_wheel_grab_broken
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_wheel_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 48(%rax)
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_color_wheel_grab_broken, .Lfunc_end24-gimp_color_wheel_grab_broken
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4602678819172646912     # double 0.5
.LCPI25_1:
	.quad	4566758108544739836     # double 0.002
.LCPI25_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_wheel_move,@function
gimp_color_wheel_move:                  # @gimp_color_wheel_move
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp86:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	96(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rsp, %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, (%rax)
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-76(%rbp), %r9
	callq	compute_triangle
	movl	-68(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm0
	movl	-76(%rbp), %r11d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	cvtsi2sdl	%ebx, %xmm1
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movsd	16(%rax), %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	movl	-60(%rbp), %r10d
	subl	%r11d, %r10d
	cvtsi2sdl	%r10d, %xmm1
	mulsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI25_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	callq	floor@PLT
	cvttsd2si	%xmm0, %r10d
	movl	%r10d, -84(%rbp)
	movl	-72(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm0
	movl	-80(%rbp), %r11d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	cvtsi2sdl	%ebx, %xmm1
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movsd	16(%rax), %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	movl	-64(%rbp), %r10d
	subl	%r11d, %r10d
	cvtsi2sdl	%r10d, %xmm1
	mulsd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %r10d
	movl	%r10d, -88(%rbp)
	movl	-20(%rbp), %r10d
	addl	$-2, %r10d
	movl	%r10d, %eax
	subl	$3, %r10d
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	ja	.LBB25_17
# BB#24:                                # %entry
	leaq	.LJTI25_0(%rip), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB25_1:                               # %sw.bb
	movq	-32(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB25_3
# BB#2:                                 # %if.then
	movsd	.LCPI25_1(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	cvtsi2sdl	-88(%rbp), %xmm1
	callq	compute_sv
.LBB25_4:                               # %if.end
	jmp	.LBB25_18
.LBB25_5:                               # %sw.bb.33
	movq	-32(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB25_7
# BB#6:                                 # %if.then.39
	movsd	.LCPI25_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	jmp	.LBB25_8
.LBB25_7:                               # %if.else.41
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	cvtsi2sdl	-88(%rbp), %xmm1
	callq	compute_sv
.LBB25_8:                               # %if.end.45
	jmp	.LBB25_18
.LBB25_9:                               # %sw.bb.46
	movq	-32(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB25_11
# BB#10:                                # %if.then.52
	movsd	.LCPI25_1(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB25_12
.LBB25_11:                              # %if.else.54
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movl	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	cvtsi2sdl	-88(%rbp), %xmm1
	callq	compute_sv
.LBB25_12:                              # %if.end.58
	jmp	.LBB25_18
.LBB25_13:                              # %sw.bb.59
	movq	-32(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB25_15
# BB#14:                                # %if.then.65
	movsd	.LCPI25_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	jmp	.LBB25_16
.LBB25_15:                              # %if.else.67
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	cvtsi2sdl	-88(%rbp), %xmm1
	callq	compute_sv
.LBB25_16:                              # %if.end.71
	jmp	.LBB25_18
.LBB25_17:                              # %sw.default
	jmp	.LBB25_18
.LBB25_18:                              # %sw.epilog
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB25_20
# BB#19:                                # %if.then.73
	movsd	.LCPI25_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB25_23
.LBB25_20:                              # %if.else.74
	movsd	.LCPI25_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_22
# BB#21:                                # %if.then.77
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB25_22:                              # %if.end.78
	jmp	.LBB25_23
.LBB25_23:                              # %if.end.79
	movq	-16(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_color_wheel_set_color@PLT
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_color_wheel_move, .Lfunc_end25-gimp_color_wheel_move
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI25_0:
	.long	.LBB25_1-.LJTI25_0
	.long	.LBB25_5-.LJTI25_0
	.long	.LBB25_9-.LJTI25_0
	.long	.LBB25_13-.LJTI25_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	is_in_ring,@function
is_in_ring:                             # @is_in_ring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation@PLT
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movsd	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%dl, -113(%rbp)         # 1-byte Spill
	jb	.LBB26_2
# BB#1:                                 # %land.rhs
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	setae	%al
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB26_2:                               # %land.end
	movb	-113(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	is_in_ring, .Lfunc_end26-is_in_ring
	.cfi_endproc

	.align	16, 0x90
	.type	set_cross_grab,@function
set_cross_grab:                         # @set_cross_grab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_display@PLT
	movl	$34, %esi
	movq	%rax, %rdi
	callq	gdk_cursor_new_for_display@PLT
	xorl	%esi, %esi
	movl	$524, %edx              # imm = 0x20C
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-32(%rbp), %r8
	movl	-12(%rbp), %r9d
	callq	gdk_pointer_grab@PLT
	movq	-32(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gdk_cursor_unref@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	set_cross_grab, .Lfunc_end27-set_cross_grab
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4611686018427387904     # double 2
.LCPI28_1:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	compute_v,@function
compute_v:                              # @compute_v
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation@PLT
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -80(%rbp)
	ucomisd	-80(%rbp), %xmm1
	jbe	.LBB28_2
# BB#1:                                 # %if.then
	movsd	.LCPI28_1(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB28_2:                               # %if.end
	movsd	.LCPI28_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	compute_v, .Lfunc_end28-compute_v
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	is_in_triangle,@function
is_in_triangle:                         # @is_in_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp99:
	.cfi_offset %rbx, -32
.Ltmp100:
	.cfi_offset %r14, -24
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	leaq	-60(%rbp), %r9
	leaq	-64(%rbp), %rax
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	compute_triangle
	xorl	%r10d, %r10d
	movb	%r10b, %r11b
	xorps	%xmm0, %xmm0
	movl	-60(%rbp), %r10d
	subl	-52(%rbp), %r10d
	movl	-48(%rbp), %ebx
	subl	-56(%rbp), %ebx
	imull	%ebx, %r10d
	movl	-64(%rbp), %ebx
	subl	-56(%rbp), %ebx
	movl	-44(%rbp), %r14d
	subl	-52(%rbp), %r14d
	imull	%r14d, %ebx
	subl	%ebx, %r10d
	cvtsi2sdl	%r10d, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movl	-48(%rbp), %r10d
	subl	-56(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movl	-44(%rbp), %r10d
	subl	-52(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	divsd	-72(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	movl	-60(%rbp), %r10d
	subl	-52(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm1
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	movl	-64(%rbp), %r10d
	subl	-56(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm2
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	divsd	-72(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%r11b, -89(%rbp)        # 1-byte Spill
	jb	.LBB29_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jb	.LBB29_3
# BB#2:                                 # %land.rhs
	movsd	.LCPI29_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-88(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	setae	%al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB29_3:                               # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end29:
	.size	is_in_triangle, .Lfunc_end29-is_in_triangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4611686018427387904     # double 2
.LCPI30_1:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI30_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	compute_sv,@function
compute_sv:                             # @compute_sv
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation@PLT
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-76(%rbp), %r9
	leaq	-80(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	compute_triangle
	xorps	%xmm0, %xmm0
	movsd	.LCPI30_0(%rip), %xmm1  # xmm1 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -136(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -144(%rbp)
	cvtsi2sdl	-60(%rbp), %xmm1
	subsd	-136(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -96(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm1
	subsd	-136(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -112(%rbp)
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	-136(%rbp), %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -16(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-112(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB30_7
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI30_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-112(%rbp), %xmm2
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-112(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-104(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-112(%rbp), %xmm3
	movsd	-96(%rbp), %xmm4        # xmm4 = mem[0],zero
	subsd	-112(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-40(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB30_3
# BB#2:                                 # %if.then.38
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB30_6
.LBB30_3:                               # %if.else
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_5
# BB#4:                                 # %if.then.41
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB30_5:                               # %if.end
	jmp	.LBB30_6
.LBB30_6:                               # %if.end.42
	jmp	.LBB30_37
.LBB30_7:                               # %if.else.43
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-112(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB30_14
# BB#8:                                 # %if.then.51
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-112(%rbp), %xmm2
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-112(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	movsd	-120(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-104(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-112(%rbp), %xmm3
	movsd	-128(%rbp), %xmm4       # xmm4 = mem[0],zero
	subsd	-112(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-40(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB30_10
# BB#9:                                 # %if.then.69
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB30_13
.LBB30_10:                              # %if.else.70
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_12
# BB#11:                                # %if.then.73
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB30_12:                              # %if.end.74
	jmp	.LBB30_13
.LBB30_13:                              # %if.end.75
	jmp	.LBB30_36
.LBB30_14:                              # %if.else.76
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-88(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-96(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB30_21
# BB#15:                                # %if.then.84
	xorps	%xmm0, %xmm0
	movsd	.LCPI30_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm1, (%rax)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-120(%rbp), %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-120(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-128(%rbp), %xmm2
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-128(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-120(%rbp), %xmm2
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-120(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-128(%rbp), %xmm3
	movsd	-96(%rbp), %xmm4        # xmm4 = mem[0],zero
	subsd	-128(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-32(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB30_17
# BB#16:                                # %if.then.102
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB30_20
.LBB30_17:                              # %if.else.103
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_19
# BB#18:                                # %if.then.106
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB30_19:                              # %if.end.107
	jmp	.LBB30_20
.LBB30_20:                              # %if.end.108
	jmp	.LBB30_35
.LBB30_21:                              # %if.else.109
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-128(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-112(%rbp), %xmm2
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-120(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-128(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movsd	-128(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-112(%rbp), %xmm3
	movsd	-88(%rbp), %xmm4        # xmm4 = mem[0],zero
	subsd	-120(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-40(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jb	.LBB30_23
# BB#22:                                # %if.then.127
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB30_34
.LBB30_23:                              # %if.else.128
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_25
# BB#24:                                # %if.then.131
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB30_25:                              # %if.end.132
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movapd	.LCPI30_2(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-120(%rbp), %xmm1
	movapd	.LCPI30_2(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_27
# BB#26:                                # %if.then.139
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-104(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-120(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB30_28
.LBB30_27:                              # %if.else.147
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-112(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-112(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-128(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB30_28:                              # %if.end.155
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB30_30
# BB#29:                                # %if.then.158
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB30_33
.LBB30_30:                              # %if.else.159
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB30_32
# BB#31:                                # %if.then.162
	movsd	.LCPI30_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB30_32:                              # %if.end.163
	jmp	.LBB30_33
.LBB30_33:                              # %if.end.164
	jmp	.LBB30_34
.LBB30_34:                              # %if.end.165
	jmp	.LBB30_35
.LBB30_35:                              # %if.end.166
	jmp	.LBB30_36
.LBB30_36:                              # %if.end.167
	jmp	.LBB30_37
.LBB30_37:                              # %if.end.168
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	compute_sv, .Lfunc_end30-compute_sv
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4602678819172646912     # double 0.5
.LCPI31_1:
	.quad	4616402176928740197     # double 4.1887902047863905
.LCPI31_2:
	.quad	4611898577301369701     # double 2.0943951023931953
.LCPI31_3:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI31_4:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	compute_triangle,@function
compute_triangle:                       # @compute_triangle
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
	subq	$208, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation@PLT
	movsd	.LCPI31_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI31_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI31_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI31_3(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI31_4(%rip), %xmm4  # xmm4 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm5
	divsd	%xmm4, %xmm5
	movsd	%xmm5, -88(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm5
	divsd	%xmm4, %xmm5
	movsd	%xmm5, -96(%rbp)
	movq	-64(%rbp), %rax
	cvtsi2sdl	32(%rax), %xmm5
	divsd	%xmm4, %xmm5
	movsd	%xmm5, -112(%rbp)
	movsd	-112(%rbp), %xmm5       # xmm5 = mem[0],zero
	movq	-64(%rbp), %rax
	cvtsi2sdl	36(%rax), %xmm6
	subsd	%xmm6, %xmm5
	movsd	%xmm5, -104(%rbp)
	movq	-64(%rbp), %rax
	mulsd	(%rax), %xmm4
	mulsd	%xmm3, %xmm4
	movsd	%xmm4, -120(%rbp)
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-120(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -144(%rbp)       # 8-byte Spill
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movsd	%xmm2, -160(%rbp)       # 8-byte Spill
	callq	cos@PLT
	mulsd	-104(%rbp), %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %r10d
	movq	-16(%rbp), %rax
	movl	%r10d, (%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	mulsd	-104(%rbp), %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %r10d
	movq	-24(%rbp), %rax
	movl	%r10d, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-120(%rbp), %xmm1
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos@PLT
	mulsd	-104(%rbp), %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %r10d
	movq	-32(%rbp), %rax
	movl	%r10d, (%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-120(%rbp), %xmm1
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	mulsd	-104(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %r10d
	movq	-40(%rbp), %rax
	movl	%r10d, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-120(%rbp), %xmm1
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos@PLT
	mulsd	-104(%rbp), %xmm0
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %r10d
	movq	-48(%rbp), %rax
	movl	%r10d, (%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-120(%rbp), %xmm1
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin@PLT
	mulsd	-104(%rbp), %xmm0
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %r10d
	movq	-56(%rbp), %rax
	movl	%r10d, (%rax)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	compute_triangle, .Lfunc_end31-compute_triangle
	.cfi_endproc

	.align	16, 0x90
	.type	paint,@function
paint:                                  # @paint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	paint_ring
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	paint_triangle
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	paint, .Lfunc_end32-paint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4611686018427387904     # double 2
.LCPI33_1:
	.quad	4602678819172646912     # double 0.5
.LCPI33_2:
	.quad	4592590756007337001     # double 0.11
.LCPI33_3:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI33_4:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI33_5:
	.quad	4607182418800017408     # double 1
.LCPI33_6:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI33_7:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI33_8:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	paint_ring,@function
paint_ring:                             # @paint_ring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation@PLT
	leaq	.L.str.8(%rip), %rsi
	leaq	-208(%rbp), %rdx
	leaq	.L.str.9(%rip), %rcx
	leaq	-212(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movl	$1, %edi
	movsd	.LCPI33_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movq	-48(%rbp), %rcx
	cvtsi2sdl	32(%rcx), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	cvtsi2sdl	36(%rcx), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	-28(%rbp), %esi
	callq	cairo_format_stride_for_width@PLT
	movl	$4, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	$4, %edi
	movl	%eax, -204(%rbp)
	movl	-32(%rbp), %eax
	imull	-204(%rbp), %eax
	cltd
	idivl	%edi
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -136(%rbp)
	movl	$0, -72(%rbp)
.LBB33_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_3 Depth 2
	movl	-72(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB33_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-136(%rbp), %rax
	movl	-72(%rbp), %ecx
	imull	-28(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movl	-72(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	subsd	-112(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	$0, -68(%rbp)
.LBB33_3:                               # %for.cond.21
                                        #   Parent Loop BB33_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB33_11
# BB#4:                                 # %for.body.24
                                        #   in Loop: Header=BB33_3 Depth=2
	movsd	.LCPI33_5(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	addl	-20(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	-104(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-120(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	ucomisd	%xmm1, %xmm2
	ja	.LBB33_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB33_3 Depth=2
	movsd	.LCPI33_5(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	addsd	-128(%rbp), %xmm2
	addsd	-128(%rbp), %xmm0
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB33_7
.LBB33_6:                               # %if.then
                                        #   in Loop: Header=BB33_3 Depth=2
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -144(%rbp)
	movl	$0, (%rax)
	jmp	.LBB33_10
.LBB33_7:                               # %if.end
                                        #   in Loop: Header=BB33_3 Depth=2
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -152(%rbp)
	ucomisd	-152(%rbp), %xmm1
	jbe	.LBB33_9
# BB#8:                                 # %if.then.44
                                        #   in Loop: Header=BB33_3 Depth=2
	movsd	.LCPI33_6(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB33_9:                               # %if.end.46
                                        #   in Loop: Header=BB33_3 Depth=2
	leaq	-168(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movsd	.LCPI33_5(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI33_6(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-152(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -160(%rbp)
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -168(%rbp)
	movsd	%xmm0, -176(%rbp)
	movsd	%xmm0, -184(%rbp)
	callq	hsv_to_rgb
	movsd	.LCPI33_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI33_8(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-168(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	callq	floor@PLT
	cvttsd2si	%xmm0, %eax
	shll	$16, %eax
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	floor@PLT
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movl	-252(%rbp), %ecx        # 4-byte Reload
	orl	%eax, %ecx
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-184(%rbp), %xmm0
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	callq	floor@PLT
	cvttsd2si	%xmm0, %eax
	movl	-256(%rbp), %ecx        # 4-byte Reload
	orl	%eax, %ecx
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$4, %rsi
	movq	%rsi, -144(%rbp)
	movl	%ecx, (%rdx)
.LBB33_10:                              # %for.inc
                                        #   in Loop: Header=BB33_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB33_3
.LBB33_11:                              # %for.end
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_12
.LBB33_12:                              # %for.inc.63
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB33_1
.LBB33_13:                              # %for.end.65
	movl	$1, %esi
	movq	-136(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-204(%rbp), %r8d
	movq	%rax, %rdi
	callq	cairo_image_surface_create_for_data@PLT
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	cairo_create@PLT
	leaq	-168(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movsd	.LCPI33_5(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rax, -200(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -168(%rbp)
	movsd	%xmm0, -176(%rbp)
	movsd	%xmm0, -184(%rbp)
	callq	hsv_to_rgb
	movsd	.LCPI33_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI33_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI33_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI33_4(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	-168(%rbp), %xmm3
	mulsd	-176(%rbp), %xmm2
	addsd	%xmm2, %xmm3
	mulsd	-184(%rbp), %xmm1
	addsd	%xmm1, %xmm3
	ucomisd	%xmm0, %xmm3
	jbe	.LBB33_15
# BB#14:                                # %if.then.75
	xorps	%xmm0, %xmm0
	movq	-200(%rbp), %rdi
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-264(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb@PLT
	jmp	.LBB33_16
.LBB33_15:                              # %if.else
	movsd	.LCPI33_5(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-200(%rbp), %rdi
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-272(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb@PLT
.LBB33_16:                              # %if.end.76
	xorl	%eax, %eax
	movq	-200(%rbp), %rdi
	movl	%eax, %ecx
	subl	-20(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	addsd	-104(%rbp), %xmm0
	subl	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	-112(%rbp), %xmm1
	callq	cairo_move_to@PLT
	movsd	.LCPI33_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI33_7(%rip), %xmm1  # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movq	-200(%rbp), %rdi
	movl	%eax, %ecx
	subl	-20(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	-104(%rbp), %xmm2
	movq	-48(%rbp), %rdx
	movaps	%xmm0, %xmm3
	mulsd	(%rdx), %xmm3
	mulsd	%xmm1, %xmm3
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -288(%rbp)       # 8-byte Spill
	movsd	%xmm1, -296(%rbp)       # 8-byte Spill
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	cos@PLT
	movq	-48(%rbp), %rdx
	cvtsi2sdl	32(%rdx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-288(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movl	-300(%rbp), %eax        # 4-byte Reload
	subl	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-112(%rbp), %xmm0
	movq	-48(%rbp), %rdx
	mulsd	(%rdx), %xmm1
	movsd	-296(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -328(%rbp)       # 8-byte Spill
	callq	sin@PLT
	movq	-48(%rbp), %rdx
	cvtsi2sdl	32(%rdx), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-320(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movaps	%xmm2, %xmm1
	callq	cairo_line_to@PLT
	movq	-200(%rbp), %rdi
	callq	cairo_stroke@PLT
	movq	-200(%rbp), %rdi
	callq	cairo_destroy@PLT
	movq	-16(%rbp), %rdi
	callq	cairo_save@PLT
	movq	-16(%rbp), %rdi
	movq	-192(%rbp), %rsi
	cvtsi2sdl	-20(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	callq	cairo_set_source_surface@PLT
	movq	-192(%rbp), %rdi
	callq	cairo_surface_destroy@PLT
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rdx
	cvtsi2sdl	36(%rdx), %xmm0
	callq	cairo_set_line_width@PLT
	movq	-16(%rbp), %rdi
	callq	cairo_new_path@PLT
	xorps	%xmm3, %xmm3
	movsd	.LCPI33_6(%rip), %xmm4  # xmm4 = mem[0],zero
	movsd	.LCPI33_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-48(%rbp), %rdx
	cvtsi2sdl	32(%rdx), %xmm5
	divsd	%xmm0, %xmm5
	movq	-48(%rbp), %rdx
	cvtsi2sdl	36(%rdx), %xmm6
	divsd	%xmm0, %xmm6
	subsd	%xmm6, %xmm5
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm5, %xmm2
	callq	cairo_arc@PLT
	movq	-16(%rbp), %rdi
	callq	cairo_stroke@PLT
	movq	-16(%rbp), %rdi
	callq	cairo_restore@PLT
	movq	-136(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_free@PLT
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end33:
	.size	paint_ring, .Lfunc_end33-paint_ring
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4607182418800017408     # double 1
.LCPI34_1:
	.quad	4602678819172646912     # double 0.5
.LCPI34_2:
	.quad	4592590756007337001     # double 0.11
.LCPI34_3:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI34_4:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI34_5:
	.quad	4616189618054758400     # double 4
.LCPI34_6:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	paint_triangle,@function
paint_triangle:                         # @paint_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$624, %rsp              # imm = 0x270
.Ltmp116:
	.cfi_offset %rbx, -32
.Ltmp117:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	leaq	-84(%rbp), %r9
	leaq	-88(%rbp), %rdi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	compute_triangle
	movsd	.LCPI34_0(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	-100(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	leaq	-108(%rbp), %rdx
	movl	-68(%rbp), %r10d
	movl	%r10d, -92(%rbp)
	movl	-72(%rbp), %r10d
	movl	%r10d, -96(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-328(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-328(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	get_color
	movsd	.LCPI34_0(%rip), %xmm1  # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	leaq	-120(%rbp), %rdi
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movl	-76(%rbp), %r10d
	movl	%r10d, -112(%rbp)
	movl	-80(%rbp), %r10d
	movl	%r10d, -116(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	get_color
	xorps	%xmm1, %xmm1
	movsd	.LCPI34_0(%rip), %xmm2  # xmm2 = mem[0],zero
	leaq	-140(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	leaq	-148(%rbp), %rdx
	movl	-84(%rbp), %r10d
	movl	%r10d, -132(%rbp)
	movl	-88(%rbp), %r10d
	movl	%r10d, -136(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	get_color
	movl	-116(%rbp), %r10d
	cmpl	-136(%rbp), %r10d
	jle	.LBB34_2
# BB#1:                                 # %if.then
	movl	-112(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB34_2:                               # %if.end
	movl	-96(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jle	.LBB34_4
# BB#3:                                 # %if.then.6
	movl	-92(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-140(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB34_4:                               # %if.end.7
	movl	-96(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jle	.LBB34_6
# BB#5:                                 # %if.then.9
	movl	-92(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB34_6:                               # %if.end.10
	movl	$1, %edi
	movl	-44(%rbp), %esi
	callq	cairo_format_stride_for_width@PLT
	movl	$4, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	$4, %edi
	movl	%eax, -276(%rbp)
	movl	-48(%rbp), %eax
	imull	-276(%rbp), %eax
	cltd
	idivl	%edi
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -160(%rbp)
	movl	$0, -212(%rbp)
.LBB34_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_67 Depth 2
                                        #     Child Loop BB34_71 Depth 2
                                        #     Child Loop BB34_90 Depth 2
	movl	-212(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB34_96
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB34_7 Depth=1
	movq	-160(%rbp), %rax
	movl	-212(%rbp), %ecx
	imull	-44(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -168(%rbp)
	movl	-212(%rbp), %ecx
	addl	-40(%rbp), %ecx
	movl	-96(%rbp), %esi
	subl	$3, %esi
	cmpl	%esi, %ecx
	jl	.LBB34_94
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-212(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-136(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB34_94
# BB#10:                                # %if.then.22
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-212(%rbp), %eax
	addl	-40(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jle	.LBB34_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-136(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB34_16
.LBB34_12:                              # %cond.false
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-212(%rbp), %eax
	addl	-40(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB34_14
# BB#13:                                # %cond.true.29
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-96(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB34_15
.LBB34_14:                              # %cond.false.30
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-212(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB34_15:                              # %cond.end
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB34_16:                              # %cond.end.32
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)
	movl	-220(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB34_30
# BB#17:                                # %if.then.36
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-116(%rbp), %eax
	subl	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_19
# BB#18:                                # %cond.true.40
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-92(%rbp), %eax
	movl	-112(%rbp), %ecx
	subl	-92(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-96(%rbp), %edx
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	subl	-96(%rbp), %edx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -344(%rbp)        # 4-byte Spill
	cltd
	movl	-344(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-340(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -348(%rbp)        # 4-byte Spill
	jmp	.LBB34_20
.LBB34_19:                              # %cond.false.47
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB34_20:                              # %cond.end.48
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)
	movl	-116(%rbp), %eax
	subl	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_22
# BB#21:                                # %cond.true.53
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-100(%rbp), %eax
	movl	-120(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-96(%rbp), %edx
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	subl	-96(%rbp), %edx
	movl	%eax, -352(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -356(%rbp)        # 4-byte Spill
	cltd
	movl	-356(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-352(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -360(%rbp)        # 4-byte Spill
	jmp	.LBB34_23
.LBB34_22:                              # %cond.false.60
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB34_23:                              # %cond.end.61
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)
	movl	-116(%rbp), %eax
	subl	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_25
# BB#24:                                # %cond.true.66
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-104(%rbp), %eax
	movl	-124(%rbp), %ecx
	subl	-104(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-96(%rbp), %edx
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	subl	-96(%rbp), %edx
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -368(%rbp)        # 4-byte Spill
	cltd
	movl	-368(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-364(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -372(%rbp)        # 4-byte Spill
	jmp	.LBB34_26
.LBB34_25:                              # %cond.false.73
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB34_26:                              # %cond.end.74
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)
	movl	-116(%rbp), %eax
	subl	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_28
# BB#27:                                # %cond.true.79
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-108(%rbp), %eax
	movl	-128(%rbp), %ecx
	subl	-108(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-96(%rbp), %edx
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	subl	-96(%rbp), %edx
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -380(%rbp)        # 4-byte Spill
	cltd
	movl	-380(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-376(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -384(%rbp)        # 4-byte Spill
	jmp	.LBB34_29
.LBB34_28:                              # %cond.false.86
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB34_29:                              # %cond.end.87
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -200(%rbp)
	jmp	.LBB34_43
.LBB34_30:                              # %if.else
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-136(%rbp), %eax
	subl	-116(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_32
# BB#31:                                # %cond.true.92
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-112(%rbp), %eax
	movl	-132(%rbp), %ecx
	subl	-112(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-116(%rbp), %edx
	imull	%edx, %ecx
	movl	-136(%rbp), %edx
	subl	-116(%rbp), %edx
	movl	%eax, -388(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -392(%rbp)        # 4-byte Spill
	cltd
	movl	-392(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-388(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -396(%rbp)        # 4-byte Spill
	jmp	.LBB34_33
.LBB34_32:                              # %cond.false.99
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-112(%rbp), %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB34_33:                              # %cond.end.100
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)
	movl	-136(%rbp), %eax
	subl	-116(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_35
# BB#34:                                # %cond.true.105
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-120(%rbp), %eax
	movl	-140(%rbp), %ecx
	subl	-120(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-116(%rbp), %edx
	imull	%edx, %ecx
	movl	-136(%rbp), %edx
	subl	-116(%rbp), %edx
	movl	%eax, -400(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -404(%rbp)        # 4-byte Spill
	cltd
	movl	-404(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-400(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -408(%rbp)        # 4-byte Spill
	jmp	.LBB34_36
.LBB34_35:                              # %cond.false.112
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-120(%rbp), %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB34_36:                              # %cond.end.113
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)
	movl	-136(%rbp), %eax
	subl	-116(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_38
# BB#37:                                # %cond.true.118
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-124(%rbp), %eax
	movl	-144(%rbp), %ecx
	subl	-124(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-116(%rbp), %edx
	imull	%edx, %ecx
	movl	-136(%rbp), %edx
	subl	-116(%rbp), %edx
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -416(%rbp)        # 4-byte Spill
	cltd
	movl	-416(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-412(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -420(%rbp)        # 4-byte Spill
	jmp	.LBB34_39
.LBB34_38:                              # %cond.false.125
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB34_39:                              # %cond.end.126
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-420(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)
	movl	-136(%rbp), %eax
	subl	-116(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_41
# BB#40:                                # %cond.true.131
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-128(%rbp), %eax
	movl	-148(%rbp), %ecx
	subl	-128(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-116(%rbp), %edx
	imull	%edx, %ecx
	movl	-136(%rbp), %edx
	subl	-116(%rbp), %edx
	movl	%eax, -424(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -428(%rbp)        # 4-byte Spill
	cltd
	movl	-428(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-424(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -432(%rbp)        # 4-byte Spill
	jmp	.LBB34_42
.LBB34_41:                              # %cond.false.138
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB34_42:                              # %cond.end.139
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-432(%rbp), %eax        # 4-byte Reload
	movl	%eax, -200(%rbp)
.LBB34_43:                              # %if.end.141
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-136(%rbp), %eax
	subl	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_45
# BB#44:                                # %cond.true.145
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-92(%rbp), %eax
	movl	-132(%rbp), %ecx
	subl	-92(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-96(%rbp), %edx
	imull	%edx, %ecx
	movl	-136(%rbp), %edx
	subl	-96(%rbp), %edx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -440(%rbp)        # 4-byte Spill
	cltd
	movl	-440(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-436(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -444(%rbp)        # 4-byte Spill
	jmp	.LBB34_46
.LBB34_45:                              # %cond.false.152
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB34_46:                              # %cond.end.153
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-444(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)
	movl	-136(%rbp), %eax
	subl	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_48
# BB#47:                                # %cond.true.158
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-100(%rbp), %eax
	movl	-140(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-96(%rbp), %edx
	imull	%edx, %ecx
	movl	-136(%rbp), %edx
	subl	-96(%rbp), %edx
	movl	%eax, -448(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -452(%rbp)        # 4-byte Spill
	cltd
	movl	-452(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-448(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -456(%rbp)        # 4-byte Spill
	jmp	.LBB34_49
.LBB34_48:                              # %cond.false.165
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
.LBB34_49:                              # %cond.end.166
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-456(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	movl	-136(%rbp), %eax
	subl	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_51
# BB#50:                                # %cond.true.171
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-104(%rbp), %eax
	movl	-144(%rbp), %ecx
	subl	-104(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-96(%rbp), %edx
	imull	%edx, %ecx
	movl	-136(%rbp), %edx
	subl	-96(%rbp), %edx
	movl	%eax, -460(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -464(%rbp)        # 4-byte Spill
	cltd
	movl	-464(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-460(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -468(%rbp)        # 4-byte Spill
	jmp	.LBB34_52
.LBB34_51:                              # %cond.false.178
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB34_52:                              # %cond.end.179
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)
	movl	-136(%rbp), %eax
	subl	-96(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_54
# BB#53:                                # %cond.true.184
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-108(%rbp), %eax
	movl	-148(%rbp), %ecx
	subl	-108(%rbp), %ecx
	movl	-220(%rbp), %edx
	subl	-96(%rbp), %edx
	imull	%edx, %ecx
	movl	-136(%rbp), %edx
	subl	-96(%rbp), %edx
	movl	%eax, -472(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -476(%rbp)        # 4-byte Spill
	cltd
	movl	-476(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-472(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -480(%rbp)        # 4-byte Spill
	jmp	.LBB34_55
.LBB34_54:                              # %cond.false.191
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
.LBB34_55:                              # %cond.end.192
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)
	movl	-176(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jle	.LBB34_57
# BB#56:                                # %if.then.196
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-176(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-180(%rbp), %eax
	movl	%eax, -176(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -180(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-188(%rbp), %eax
	movl	%eax, -184(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-192(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-196(%rbp), %eax
	movl	%eax, -192(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -196(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-204(%rbp), %eax
	movl	%eax, -200(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, -204(%rbp)
.LBB34_57:                              # %if.end.197
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-176(%rbp), %eax
	subl	$3, %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB34_59
# BB#58:                                # %cond.true.201
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-176(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB34_60
.LBB34_59:                              # %cond.false.203
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB34_60:                              # %cond.end.204
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)
	movl	-180(%rbp), %eax
	addl	$3, %eax
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB34_62
# BB#61:                                # %cond.true.210
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-180(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB34_63
.LBB34_62:                              # %cond.false.212
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB34_63:                              # %cond.end.214
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)
	movl	-224(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jge	.LBB34_65
# BB#64:                                # %cond.true.218
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-224(%rbp), %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
	jmp	.LBB34_66
.LBB34_65:                              # %cond.false.219
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-228(%rbp), %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB34_66:                              # %cond.end.220
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)
	movl	-184(%rbp), %eax
	shll	$16, %eax
	movl	-192(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	orl	-200(%rbp), %eax
	movl	%eax, -172(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -208(%rbp)
.LBB34_67:                              # %for.cond.224
                                        #   Parent Loop BB34_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-208(%rbp), %eax
	cmpl	-224(%rbp), %eax
	jge	.LBB34_70
# BB#68:                                # %for.body.227
                                        #   in Loop: Header=BB34_67 Depth=2
	movl	-172(%rbp), %eax
	movq	-168(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -168(%rbp)
	movl	%eax, (%rcx)
# BB#69:                                # %for.inc
                                        #   in Loop: Header=BB34_67 Depth=2
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB34_67
.LBB34_70:                              # %for.end
                                        #   in Loop: Header=BB34_7 Depth=1
	jmp	.LBB34_71
.LBB34_71:                              # %for.cond.228
                                        #   Parent Loop BB34_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-208(%rbp), %eax
	cmpl	-228(%rbp), %eax
	jge	.LBB34_89
# BB#72:                                # %for.body.231
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-208(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jle	.LBB34_74
# BB#73:                                # %cond.true.234
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-180(%rbp), %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB34_78
.LBB34_74:                              # %cond.false.235
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-208(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jge	.LBB34_76
# BB#75:                                # %cond.true.238
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-176(%rbp), %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jmp	.LBB34_77
.LBB34_76:                              # %cond.false.239
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-208(%rbp), %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB34_77:                              # %cond.end.240
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-500(%rbp), %eax        # 4-byte Reload
	movl	%eax, -496(%rbp)        # 4-byte Spill
.LBB34_78:                              # %cond.end.242
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-496(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)
	movl	-180(%rbp), %eax
	subl	-176(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB34_80
# BB#79:                                # %cond.true.247
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-184(%rbp), %eax
	movl	-188(%rbp), %ecx
	subl	-184(%rbp), %ecx
	movl	-216(%rbp), %edx
	subl	-176(%rbp), %edx
	imull	%edx, %ecx
	movl	-180(%rbp), %edx
	subl	-176(%rbp), %edx
	movl	%eax, -504(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -508(%rbp)        # 4-byte Spill
	cltd
	movl	-508(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-504(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -512(%rbp)        # 4-byte Spill
	jmp	.LBB34_81
.LBB34_80:                              # %cond.false.254
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-184(%rbp), %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB34_81:                              # %cond.end.255
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-512(%rbp), %eax        # 4-byte Reload
	shll	$16, %eax
	movl	-180(%rbp), %ecx
	subl	-176(%rbp), %ecx
	cmpl	$0, %ecx
	movl	%eax, -516(%rbp)        # 4-byte Spill
	je	.LBB34_83
# BB#82:                                # %cond.true.261
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-192(%rbp), %eax
	movl	-196(%rbp), %ecx
	subl	-192(%rbp), %ecx
	movl	-216(%rbp), %edx
	subl	-176(%rbp), %edx
	imull	%edx, %ecx
	movl	-180(%rbp), %edx
	subl	-176(%rbp), %edx
	movl	%eax, -520(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -524(%rbp)        # 4-byte Spill
	cltd
	movl	-524(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-520(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -528(%rbp)        # 4-byte Spill
	jmp	.LBB34_84
.LBB34_83:                              # %cond.false.268
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-192(%rbp), %eax
	movl	%eax, -528(%rbp)        # 4-byte Spill
.LBB34_84:                              # %cond.end.269
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-528(%rbp), %eax        # 4-byte Reload
	shll	$8, %eax
	movl	-516(%rbp), %ecx        # 4-byte Reload
	orl	%eax, %ecx
	movl	-180(%rbp), %eax
	subl	-176(%rbp), %eax
	cmpl	$0, %eax
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	je	.LBB34_86
# BB#85:                                # %cond.true.276
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-200(%rbp), %eax
	movl	-204(%rbp), %ecx
	subl	-200(%rbp), %ecx
	movl	-216(%rbp), %edx
	subl	-176(%rbp), %edx
	imull	%edx, %ecx
	movl	-180(%rbp), %edx
	subl	-176(%rbp), %edx
	movl	%eax, -536(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -540(%rbp)        # 4-byte Spill
	cltd
	movl	-540(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-536(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	movl	%esi, -544(%rbp)        # 4-byte Spill
	jmp	.LBB34_87
.LBB34_86:                              # %cond.false.283
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-200(%rbp), %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
.LBB34_87:                              # %cond.end.284
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-544(%rbp), %eax        # 4-byte Reload
	movl	-532(%rbp), %ecx        # 4-byte Reload
	orl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$4, %rsi
	movq	%rsi, -168(%rbp)
	movl	%ecx, (%rdx)
# BB#88:                                # %for.inc.288
                                        #   in Loop: Header=BB34_71 Depth=2
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB34_71
.LBB34_89:                              # %for.end.290
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-188(%rbp), %eax
	shll	$16, %eax
	movl	-196(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	orl	-204(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB34_90:                              # %for.cond.295
                                        #   Parent Loop BB34_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-208(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB34_93
# BB#91:                                # %for.body.299
                                        #   in Loop: Header=BB34_90 Depth=2
	movl	-172(%rbp), %eax
	movq	-168(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -168(%rbp)
	movl	%eax, (%rcx)
# BB#92:                                # %for.inc.301
                                        #   in Loop: Header=BB34_90 Depth=2
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	jmp	.LBB34_90
.LBB34_93:                              # %for.end.303
                                        #   in Loop: Header=BB34_7 Depth=1
	jmp	.LBB34_94
.LBB34_94:                              # %if.end.304
                                        #   in Loop: Header=BB34_7 Depth=1
	jmp	.LBB34_95
.LBB34_95:                              # %for.inc.305
                                        #   in Loop: Header=BB34_7 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB34_7
.LBB34_96:                              # %for.end.307
	movl	$1, %esi
	movq	-160(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-276(%rbp), %r8d
	movq	%rax, %rdi
	callq	cairo_image_surface_create_for_data@PLT
	movq	%rax, -240(%rbp)
	movq	-32(%rbp), %rdi
	movq	-240(%rbp), %rsi
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	callq	cairo_set_source_surface@PLT
	movq	-240(%rbp), %rdi
	callq	cairo_surface_destroy@PLT
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-92(%rbp), %xmm0
	cvtsi2sdl	-96(%rbp), %xmm1
	callq	cairo_move_to@PLT
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-112(%rbp), %xmm0
	cvtsi2sdl	-116(%rbp), %xmm1
	callq	cairo_line_to@PLT
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-132(%rbp), %xmm0
	cvtsi2sdl	-136(%rbp), %xmm1
	callq	cairo_line_to@PLT
	movq	-32(%rbp), %rdi
	callq	cairo_close_path@PLT
	movq	-32(%rbp), %rdi
	callq	cairo_fill@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	leaq	-248(%rbp), %rdi
	leaq	-256(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	movsd	.LCPI34_1(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	movl	-84(%rbp), %ecx
	subl	-76(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-64(%rbp), %rax
	mulsd	16(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movl	-68(%rbp), %ecx
	subl	-84(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-64(%rbp), %rax
	mulsd	8(%rax), %xmm2
	movq	-64(%rbp), %rax
	mulsd	16(%rax), %xmm2
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rsi, -568(%rbp)        # 8-byte Spill
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	callq	floor@PLT
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -208(%rbp)
	cvtsi2sdl	-80(%rbp), %xmm0
	movl	-88(%rbp), %ecx
	subl	-80(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-64(%rbp), %rax
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movl	-72(%rbp), %ecx
	subl	-88(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-64(%rbp), %rax
	mulsd	8(%rax), %xmm1
	movq	-64(%rbp), %rax
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-552(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -212(%rbp)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)
	movq	-64(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)
	movq	-64(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	-568(%rbp), %rsi        # 8-byte Reload
	movq	-576(%rbp), %rdx        # 8-byte Reload
	callq	hsv_to_rgb
	movsd	.LCPI34_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI34_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI34_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI34_4(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	-248(%rbp), %xmm3
	mulsd	-256(%rbp), %xmm2
	addsd	%xmm2, %xmm3
	mulsd	-264(%rbp), %xmm1
	addsd	%xmm1, %xmm3
	ucomisd	%xmm0, %xmm3
	jbe	.LBB34_98
# BB#97:                                # %if.then.357
	xorps	%xmm0, %xmm0
	leaq	.L.str.11(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	movsd	-584(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-584(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb@PLT
	jmp	.LBB34_99
.LBB34_98:                              # %if.else.358
	movsd	.LCPI34_0(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	.L.str.12(%rip), %rax
	movq	%rax, -272(%rbp)
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	movsd	-592(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-592(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb@PLT
.LBB34_99:                              # %if.end.359
	movq	-32(%rbp), %rdi
	callq	cairo_new_path@PLT
	movsd	.LCPI34_5(%rip), %xmm2  # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI34_6(%rip), %xmm4  # xmm4 = mem[0],zero
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-208(%rbp), %xmm0
	cvtsi2sdl	-212(%rbp), %xmm1
	callq	cairo_arc@PLT
	movq	-32(%rbp), %rdi
	callq	cairo_stroke@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_has_focus@PLT
	cmpl	$0, %eax
	je	.LBB34_102
# BB#100:                               # %land.lhs.true.363
	movq	-64(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB34_102
# BB#101:                               # %if.then.365
	leaq	-296(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	leaq	.L.str.8(%rip), %rsi
	leaq	-300(%rbp), %rdx
	leaq	.L.str.9(%rip), %rcx
	leaq	-304(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movq	-56(%rbp), %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window@PLT
	movq	-56(%rbp), %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_state@PLT
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-56(%rbp), %r8
	movq	-272(%rbp), %r9
	movl	-296(%rbp), %r10d
	addl	-208(%rbp), %r10d
	subl	$6, %r10d
	subl	-300(%rbp), %r10d
	subl	-304(%rbp), %r10d
	movl	-292(%rbp), %r11d
	addl	-212(%rbp), %r11d
	subl	$6, %r11d
	subl	-300(%rbp), %r11d
	subl	-304(%rbp), %r11d
	movl	-300(%rbp), %ebx
	addl	$6, %ebx
	addl	-304(%rbp), %ebx
	shll	$1, %ebx
	movl	-300(%rbp), %r14d
	addl	$6, %r14d
	addl	-304(%rbp), %r14d
	shll	$1, %r14d
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	-608(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	gtk_paint_focus@PLT
.LBB34_102:                             # %if.end.385
	addq	$624, %rsp              # imm = 0x270
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end34:
	.size	paint_triangle, .Lfunc_end34-paint_triangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4618441417868443648     # double 6
.LCPI35_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	hsv_to_rgb,@function
hsv_to_rgb:                             # @hsv_to_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB35_2
	jp	.LBB35_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB35_14
.LBB35_2:                               # %if.else
	movsd	.LCPI35_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	(%rax), %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -40(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB35_4
	jp	.LBB35_4
# BB#3:                                 # %if.then.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB35_4:                               # %if.end
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI35_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movaps	%xmm2, %xmm4
	subsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm1
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -80(%rbp)
	cvttsd2si	-32(%rbp), %eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%eax, -92(%rbp)         # 4-byte Spill
	ja	.LBB35_11
# BB#15:                                # %if.end
	leaq	.LJTI35_0(%rip), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB35_5:                               # %sw.bb
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB35_13
.LBB35_6:                               # %sw.bb.14
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB35_13
.LBB35_7:                               # %sw.bb.15
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB35_13
.LBB35_8:                               # %sw.bb.16
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB35_13
.LBB35_9:                               # %sw.bb.17
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB35_13
.LBB35_10:                              # %sw.bb.18
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB35_13
.LBB35_11:                              # %sw.default
	jmp	.LBB35_12
.LBB35_12:                              # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	.L.str.10(%rip), %rsi
	movl	$422, %edx              # imm = 0x1A6
	leaq	.L__func__.hsv_to_rgb(%rip), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr@PLT
.LBB35_13:                              # %sw.epilog
	jmp	.LBB35_14
.LBB35_14:                              # %if.end.19
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	hsv_to_rgb, .Lfunc_end35-hsv_to_rgb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI35_0:
	.long	.LBB35_5-.LJTI35_0
	.long	.LBB35_6-.LJTI35_0
	.long	.LBB35_7-.LJTI35_0
	.long	.LBB35_8-.LJTI35_0
	.long	.LBB35_9-.LJTI35_0
	.long	.LBB35_10-.LJTI35_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4602678819172646912     # double 0.5
.LCPI36_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	get_color,@function
get_color:                              # @get_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	hsv_to_rgb
	movsd	.LCPI36_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI36_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-8(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	floor@PLT
	cvttsd2si	%xmm0, %r9d
	movq	-32(%rbp), %rax
	movl	%r9d, (%rax)
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %r9d
	movq	-40(%rbp), %rax
	movl	%r9d, (%rax)
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor@PLT
	cvttsd2si	%xmm0, %r9d
	movq	-48(%rbp), %rax
	movl	%r9d, (%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	get_color, .Lfunc_end36-get_color
	.cfi_endproc

	.type	gimp_color_wheel_type_id,@object # @gimp_color_wheel_type_id
	.local	gimp_color_wheel_type_id
	.comm	gimp_color_wheel_type_id,8,8
	.type	.L__func__.gimp_color_wheel_set_color,@object # @__func__.gimp_color_wheel_set_color
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_color_wheel_set_color:
	.asciz	"gimp_color_wheel_set_color"
	.size	.L__func__.gimp_color_wheel_set_color, 27

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"GIMP_IS_COLOR_WHEEL (wheel)"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"h >= 0.0 && h <= 1.0"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"s >= 0.0 && s <= 1.0"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"v >= 0.0 && v <= 1.0"
	.size	.L.str.3, 21

	.type	wheel_signals,@object   # @wheel_signals
	.local	wheel_signals
	.comm	wheel_signals,8,4
	.type	.L__func__.gimp_color_wheel_get_color,@object # @__func__.gimp_color_wheel_get_color
.L__func__.gimp_color_wheel_get_color:
	.asciz	"gimp_color_wheel_get_color"
	.size	.L__func__.gimp_color_wheel_get_color, 27

	.type	.L__func__.gimp_color_wheel_set_ring_fraction,@object # @__func__.gimp_color_wheel_set_ring_fraction
.L__func__.gimp_color_wheel_set_ring_fraction:
	.asciz	"gimp_color_wheel_set_ring_fraction"
	.size	.L__func__.gimp_color_wheel_set_ring_fraction, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_COLOR_WHEEL (hsv)"
	.size	.L.str.4, 26

	.type	.L__func__.gimp_color_wheel_get_ring_fraction,@object # @__func__.gimp_color_wheel_get_ring_fraction
.L__func__.gimp_color_wheel_get_ring_fraction:
	.asciz	"gimp_color_wheel_get_ring_fraction"
	.size	.L__func__.gimp_color_wheel_get_ring_fraction, 35

	.type	.L__func__.gimp_color_wheel_is_adjusting,@object # @__func__.gimp_color_wheel_is_adjusting
.L__func__.gimp_color_wheel_is_adjusting:
	.asciz	"gimp_color_wheel_is_adjusting"
	.size	.L__func__.gimp_color_wheel_is_adjusting, 30

	.type	gimp_color_wheel_register_type.g_define_type_info,@object # @gimp_color_wheel_register_type.g_define_type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_color_wheel_register_type.g_define_type_info:
	.short	768                     # 0x300
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_color_wheel_class_intern_init
	.quad	gimp_color_wheel_class_finalize
	.quad	0
	.short	104                     # 0x68
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_color_wheel_init
	.quad	0
	.size	gimp_color_wheel_register_type.g_define_type_info, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"GimpColorWheel"
	.size	.L.str.5, 15

	.type	gimp_color_wheel_parent_class,@object # @gimp_color_wheel_parent_class
	.local	gimp_color_wheel_parent_class
	.comm	gimp_color_wheel_parent_class,8,8
	.type	GimpColorWheel_private_offset,@object # @GimpColorWheel_private_offset
	.local	GimpColorWheel_private_offset
	.comm	GimpColorWheel_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"changed"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"move"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"focus-line-width"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"focus-padding"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpcolorwheel.c"
	.size	.L.str.10, 17

	.type	.L__func__.gimp_color_wheel_button_release,@object # @__func__.gimp_color_wheel_button_release
.L__func__.gimp_color_wheel_button_release:
	.asciz	"gimp_color_wheel_button_release"
	.size	.L__func__.gimp_color_wheel_button_release, 32

	.type	.L__func__.gimp_color_wheel_motion,@object # @__func__.gimp_color_wheel_motion
.L__func__.gimp_color_wheel_motion:
	.asciz	"gimp_color_wheel_motion"
	.size	.L__func__.gimp_color_wheel_motion, 24

	.type	.L__func__.hsv_to_rgb,@object # @__func__.hsv_to_rgb
.L__func__.hsv_to_rgb:
	.asciz	"hsv_to_rgb"
	.size	.L__func__.hsv_to_rgb, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"colorwheel_light"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"colorwheel_dark"
	.size	.L.str.12, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
