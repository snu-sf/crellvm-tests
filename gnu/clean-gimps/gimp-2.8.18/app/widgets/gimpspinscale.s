	.text
	.file	"gimpspinscale.bc"
	.globl	gimp_spin_scale_get_type
	.align	16, 0x90
	.type	gimp_spin_scale_get_type,@function
gimp_spin_scale_get_type:               # @gimp_spin_scale_get_type
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
	movq	gimp_spin_scale_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_spin_scale_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_spin_button_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$888, %edx              # imm = 0x378
	movabsq	$gimp_spin_scale_class_intern_init, %rdi
	movl	$256, %r8d              # imm = 0x100
	movabsq	$gimp_spin_scale_init, %rcx
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
	movabsq	$gimp_spin_scale_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_spin_scale_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_spin_scale_get_type, .Lfunc_end0-gimp_spin_scale_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_class_intern_init,@function
gimp_spin_scale_class_intern_init:      # @gimp_spin_scale_class_intern_init
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
	movq	%rax, gimp_spin_scale_parent_class
	cmpl	$0, GimpSpinScale_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSpinScale_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_spin_scale_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_spin_scale_class_intern_init, .Lfunc_end1-gimp_spin_scale_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_spin_scale_init,@function
gimp_spin_scale_init:                   # @gimp_spin_scale_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8996, %esi             # imm = 0x2324
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_entry_set_alignment
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_has_frame
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_spin_scale_init, .Lfunc_end2-gimp_spin_scale_init
	.cfi_endproc

	.globl	gimp_spin_scale_new
	.align	16, 0x90
	.type	gimp_spin_scale_new,@function
gimp_spin_scale_new:                    # @gimp_spin_scale_new
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_adjustment_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_spin_scale_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_spin_scale_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movl	-28(%rbp), %r10d
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_spin_scale_new, .Lfunc_end3-gimp_spin_scale_new
	.cfi_endproc

	.globl	gimp_spin_scale_set_scale_limits
	.align	16, 0x90
	.type	gimp_spin_scale_set_scale_limits,@function
gimp_spin_scale_set_scale_limits:       # @gimp_spin_scale_set_scale_limits
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_spin_scale_get_type
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
	movabsq	$.L__func__.gimp_spin_scale_set_scale_limits, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_spin_button_get_adjustment
	movq	%rax, -48(%rbp)
# BB#13:                                # %do.body.16
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_15
# BB#14:                                # %if.then.19
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_spin_scale_set_scale_limits, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_16:                               # %if.end.21
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.22
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.23
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_20
# BB#19:                                # %if.then.26
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.27
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_spin_scale_set_scale_limits, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_21:                               # %if.end.28
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.29
	movq	-32(%rbp), %rax
	movl	$1, 8(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_spin_scale_value_changed
.LBB4_23:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_spin_scale_set_scale_limits, .Lfunc_end4-gimp_spin_scale_set_scale_limits
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_value_changed,@function
gimp_spin_scale_value_changed:          # @gimp_spin_scale_value_changed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_spin_button_get_adjustment
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_spin_scale_get_limits
	movq	-16(%rbp), %rdi
	callq	gtk_adjustment_get_value
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB5_2
# BB#1:                                 # %cond.true
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB5_6
.LBB5_2:                                # %cond.false
	movq	-16(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_4
# BB#3:                                 # %cond.true.6
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false.7
	movq	-16(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB5_5:                                # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB5_6:                                # %cond.end.9
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	%rax, %rdi
	callq	gtk_entry_set_progress_fraction
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_spin_scale_value_changed, .Lfunc_end5-gimp_spin_scale_value_changed
	.cfi_endproc

	.globl	gimp_spin_scale_unset_scale_limits
	.align	16, 0x90
	.type	gimp_spin_scale_unset_scale_limits,@function
gimp_spin_scale_unset_scale_limits:     # @gimp_spin_scale_unset_scale_limits
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_spin_scale_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_spin_scale_unset_scale_limits, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorps	%xmm0, %xmm0
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_spin_scale_value_changed
.LBB6_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_spin_scale_unset_scale_limits, .Lfunc_end6-gimp_spin_scale_unset_scale_limits
	.cfi_endproc

	.globl	gimp_spin_scale_get_scale_limits
	.align	16, 0x90
	.type	gimp_spin_scale_get_scale_limits,@function
gimp_spin_scale_get_scale_limits:       # @gimp_spin_scale_get_scale_limits
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_spin_scale_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_spin_scale_get_scale_limits, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_17
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.14
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB7_14:                               # %if.end.15
	cmpq	$0, -32(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.17
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB7_16:                               # %if.end.18
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_spin_scale_get_scale_limits, .Lfunc_end7-gimp_spin_scale_get_scale_limits
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_class_init,@function
gimp_spin_scale_class_init:             # @gimp_spin_scale_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$227, %r8d
	movabsq	$gimp_spin_scale_value_changed, %rdx
	movabsq	$gimp_spin_scale_leave_notify, %r9
	movabsq	$gimp_spin_scale_motion_notify, %r10
	movabsq	$gimp_spin_scale_button_release, %r11
	movabsq	$gimp_spin_scale_button_press, %rbx
	movabsq	$gimp_spin_scale_expose, %r14
	movabsq	$gimp_spin_scale_style_set, %r15
	movabsq	$gimp_spin_scale_size_request, %r12
	movabsq	$gimp_spin_scale_get_property, %r13
	movabsq	$gimp_spin_scale_set_property, %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_spin_scale_finalize, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_spin_scale_dispose, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%r13, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 240(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 280(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 392(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 344(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 352(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 368(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 424(%rax)
	movq	-72(%rbp), %rax
	movq	%rdx, 840(%rax)
	movq	-56(%rbp), %rax
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$64, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_spin_scale_class_init, .Lfunc_end8-gimp_spin_scale_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_dispose,@function
gimp_spin_scale_dispose:                # @gimp_spin_scale_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
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
	movq	gimp_spin_scale_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_spin_scale_dispose, .Lfunc_end9-gimp_spin_scale_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_finalize,@function
gimp_spin_scale_finalize:               # @gimp_spin_scale_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB10_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_spin_scale_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_spin_scale_finalize, .Lfunc_end10-gimp_spin_scale_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_set_property,@function
gimp_spin_scale_set_property:           # @gimp_spin_scale_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB11_4
	jmp	.LBB11_1
.LBB11_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB11_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
.LBB11_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
	jmp	.LBB11_7
.LBB11_4:                               # %sw.default
	jmp	.LBB11_5
.LBB11_5:                               # %do.body
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$199, %edx
	movabsq	$.L.str.11, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB11_7
.LBB11_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_spin_scale_set_property, .Lfunc_end11-gimp_spin_scale_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_get_property,@function
gimp_spin_scale_get_property:           # @gimp_spin_scale_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB12_2
	jmp	.LBB12_1
.LBB12_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB12_5
.LBB12_2:                               # %sw.default
	jmp	.LBB12_3
.LBB12_3:                               # %do.body
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$219, %edx
	movabsq	$.L.str.11, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB12_5
.LBB12_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_spin_scale_get_property, .Lfunc_end12-gimp_spin_scale_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_size_request,@function
gimp_spin_scale_size_request:           # @gimp_spin_scale_size_request
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_pango_context
	movq	%rax, -40(%rbp)
	movq	gimp_spin_scale_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	240(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	528(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	pango_context_get_language
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	pango_context_get_metrics
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	pango_font_metrics_get_ascent
	movq	-48(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	pango_font_metrics_get_descent
	movl	-100(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	addl	$512, %ecx              # imm = 0x200
	sarl	$10, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rdx
	addl	4(%rdx), %eax
	movl	%eax, 4(%rdx)
	movq	-24(%rbp), %rdx
	cmpq	$0, (%rdx)
	je	.LBB13_5
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	pango_font_metrics_get_approximate_char_width
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	pango_font_metrics_get_approximate_digit_width
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB13_3
# BB#2:                                 # %cond.true
	movl	-56(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB13_4
.LBB13_3:                               # %cond.false
	movl	-60(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB13_4:                               # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	addl	$512, %eax              # imm = 0x200
	sarl	$10, %eax
	movl	%eax, -64(%rbp)
	imull	$3, -64(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB13_5:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	pango_font_metrics_unref
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_spin_scale_size_request, .Lfunc_end13-gimp_spin_scale_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_style_set,@function
gimp_spin_scale_style_set:              # @gimp_spin_scale_style_set
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	gimp_spin_scale_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.LBB14_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_spin_scale_style_set, .Lfunc_end14-gimp_spin_scale_style_set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
.LCPI15_1:
	.quad	-4620693217682128896    # double -0.5
.LCPI15_2:
	.quad	4602678819172646912     # double 0.5
.LCPI15_3:
	.quad	4609434218613702656     # double 1.5
.LCPI15_4:
	.quad	4613937818241073152     # double 3
.LCPI15_5:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_spin_scale_expose,@function
gimp_spin_scale_expose:                 # @gimp_spin_scale_expose
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	gimp_spin_scale_parent_class, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gdk_cairo_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gdk_window_get_width
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gdk_window_get_height
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text_window
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_5
# BB#1:                                 # %if.then
	cmpl	$0, -44(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then.18
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_0, %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm3
	cvtsi2sdl	-52(%rbp), %xmm4
	subsd	%xmm2, %xmm4
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	callq	cairo_rectangle
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm2
	cvtsi2sdl	-52(%rbp), %xmm3
	subsd	%xmm1, %xmm3
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
.LBB15_4:                               # %if.end
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_state
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	addq	$324, %rcx              # imm = 0x144
	imulq	$12, %rdi, %rdi
	addq	%rdi, %rcx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
	jmp	.LBB15_12
.LBB15_5:                               # %if.else.25
	cmpl	$0, -44(%rbp)
	je	.LBB15_7
# BB#6:                                 # %if.then.27
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm2
	cvtsi2sdl	-52(%rbp), %xmm3
	subsd	%xmm1, %xmm3
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	jmp	.LBB15_8
.LBB15_7:                               # %if.else.31
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_0, %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm3
	cvtsi2sdl	-52(%rbp), %xmm4
	subsd	%xmm2, %xmm4
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	callq	cairo_rectangle
.LBB15_8:                               # %if.end.35
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_state
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	addq	$324, %rcx              # imm = 0x144
	imulq	$12, %rdi, %rdi
	addq	%rdi, %rcx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
	cmpl	$0, -44(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.41
	movsd	.LCPI15_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_5, %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm3
	subsd	%xmm2, %xmm3
	cvtsi2sdl	-52(%rbp), %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm2, -256(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm2
	movsd	-256(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	cairo_rectangle
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.46
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_3, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_4, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI15_5, %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm4
	subsd	%xmm3, %xmm4
	cvtsi2sdl	-52(%rbp), %xmm3
	subsd	%xmm2, %xmm3
	movaps	%xmm4, %xmm2
	callq	cairo_rectangle
.LBB15_11:                              # %if.end.51
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_state
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	addq	$384, %rcx              # imm = 0x180
	imulq	$12, %rdi, %rdi
	addq	%rdi, %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
.LBB15_12:                              # %if.end.55
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_26
# BB#13:                                # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB15_26
# BB#14:                                # %land.lhs.true.59
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text_window
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_26
# BB#15:                                # %if.then.66
	movq	gimp_spin_scale_parent_class, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	leaq	-64(%rbp), %rsi
	movq	240(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB15_17
# BB#16:                                # %if.then.70
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gtk_widget_create_pango_layout
	movl	$3, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	pango_layout_set_ellipsize
.LBB15_17:                              # %if.end.75
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-72(%rbp), %ecx
	subl	-64(%rbp), %ecx
	shll	$10, %ecx
	movl	%ecx, %esi
	callq	pango_layout_set_width
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	pango_layout_get_pixel_extents
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_entry_get_layout_offsets
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB15_19
# BB#18:                                # %if.then.85
	movl	-48(%rbp), %eax
	subl	-88(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB15_20
.LBB15_19:                              # %if.else.89
	movl	$2, -100(%rbp)
.LBB15_20:                              # %if.end.90
	movl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	movl	$3, -108(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_sensitive
	cmpl	$0, %eax
	jne	.LBB15_22
# BB#21:                                # %if.then.94
	movl	$4, -108(%rbp)
.LBB15_22:                              # %if.end.95
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_state
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	addq	$324, %rcx              # imm = 0x144
	imulq	$12, %rdi, %rdi
	addq	%rdi, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, -120(%rbp)
	movl	8(%rcx), %eax
	movl	%eax, -112(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	addq	$24, %rdi
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rdi
	movq	(%rdi), %rcx
	movq	%rcx, -136(%rbp)
	movl	8(%rdi), %eax
	movl	%eax, -128(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	gdk_window_get_width
	movl	%eax, -140(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	gdk_window_get_height
	movl	%eax, -144(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_progress_fraction
	movsd	%xmm0, -152(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB15_24
# BB#23:                                # %if.then.112
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	subsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	cvtsi2sdl	-140(%rbp), %xmm0
	mulsd	-152(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -156(%rbp)
	movl	$0, -160(%rbp)
	movl	-140(%rbp), %eax
	subl	-156(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB15_25
.LBB15_24:                              # %if.else.118
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	cvtsi2sdl	-140(%rbp), %xmm0
	mulsd	-152(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -164(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB15_25:                              # %if.end.122
	movq	-40(%rbp), %rdi
	callq	cairo_save
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	cairo_set_fill_rule
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-140(%rbp), %xmm2
	cvtsi2sdl	-144(%rbp), %xmm3
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm0
	cvtsi2sdl	-160(%rbp), %xmm1
	cvtsi2sdl	-164(%rbp), %xmm2
	cvtsi2sdl	-168(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	cairo_set_fill_rule
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-100(%rbp), %xmm0
	cvtsi2sdl	-104(%rbp), %xmm1
	callq	cairo_move_to
	leaq	-120(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	callq	pango_cairo_show_layout
	movq	-40(%rbp), %rdi
	callq	cairo_restore
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm0
	cvtsi2sdl	-160(%rbp), %xmm1
	cvtsi2sdl	-164(%rbp), %xmm2
	cvtsi2sdl	-168(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-100(%rbp), %xmm0
	cvtsi2sdl	-104(%rbp), %xmm1
	callq	cairo_move_to
	leaq	-136(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	callq	pango_cairo_show_layout
.LBB15_26:                              # %if.end.139
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_spin_scale_expose, .Lfunc_end15-gimp_spin_scale_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_button_press,@function
gimp_spin_scale_button_press:           # @gimp_spin_scale_button_press
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text_window
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB16_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_spin_scale_get_target
	movl	%eax, %ecx
	subl	$1, %eax
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB16_2
	jmp	.LBB16_8
.LBB16_8:                               # %if.then
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB16_3
	jmp	.LBB16_4
.LBB16_2:                               # %sw.bb
	movq	-32(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_spin_scale_change_value
	movl	$1, -4(%rbp)
	jmp	.LBB16_7
.LBB16_3:                               # %sw.bb.8
	movq	-32(%rbp), %rax
	movl	$1, 40(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus
	movq	-32(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movq	-32(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB16_7
.LBB16_4:                               # %sw.default
	jmp	.LBB16_5
.LBB16_5:                               # %sw.epilog
	jmp	.LBB16_6
.LBB16_6:                               # %if.end
	movq	gimp_spin_scale_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB16_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_spin_scale_button_press, .Lfunc_end16-gimp_spin_scale_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_button_release,@function
gimp_spin_scale_button_release:         # @gimp_spin_scale_button_release
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_spin_scale_change_value
	movl	$1, -4(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	movq	gimp_spin_scale_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	352(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB17_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_spin_scale_button_release, .Lfunc_end17-gimp_spin_scale_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_motion_notify,@function
gimp_spin_scale_motion_notify:          # @gimp_spin_scale_motion_notify
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_event_request_motions
	movq	-32(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_spin_scale_change_value
	movl	$1, -4(%rbp)
	jmp	.LBB18_10
.LBB18_2:                               # %if.end
	movq	gimp_spin_scale_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	368(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rsi
	movl	48(%rsi), %ecx
	andl	$1792, %ecx             # imm = 0x700
	cmpl	$0, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB18_9
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text_window
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_9
# BB#4:                                 # %if.then.9
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_spin_scale_get_target
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB18_5
	jmp	.LBB18_11
.LBB18_11:                              # %if.then.9
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB18_6
	jmp	.LBB18_12
.LBB18_12:                              # %if.then.9
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB18_7
	jmp	.LBB18_8
.LBB18_5:                               # %sw.bb
	movl	$152, %esi
	movq	-40(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -48(%rbp)
	jmp	.LBB18_8
.LBB18_6:                               # %sw.bb.14
	movl	$114, %esi
	movq	-40(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -48(%rbp)
	jmp	.LBB18_8
.LBB18_7:                               # %sw.bb.16
	movl	$108, %esi
	movq	-40(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -48(%rbp)
.LBB18_8:                               # %sw.epilog
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gdk_window_set_cursor
	movq	-48(%rbp), %rdi
	callq	gdk_cursor_unref
.LBB18_9:                               # %if.end.19
	movl	$0, -4(%rbp)
.LBB18_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_spin_scale_motion_notify, .Lfunc_end18-gimp_spin_scale_motion_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_leave_notify,@function
gimp_spin_scale_leave_notify:           # @gimp_spin_scale_leave_notify
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rcx, %rsi
	callq	gdk_window_set_cursor
	movq	gimp_spin_scale_parent_class, %rcx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	424(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_spin_scale_leave_notify, .Lfunc_end19-gimp_spin_scale_leave_notify
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB20_2
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
.LBB20_2:                               # %entry
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
.Lfunc_end20:
	.size	g_warning, .Lfunc_end20-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_get_target,@function
gimp_spin_scale_get_target:             # @gimp_spin_scale_get_target
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
	subq	$96, %rsp
	leaq	-48(%rbp), %rsi
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_entry_get_layout_offsets
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_layout
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	pango_layout_get_pixel_extents
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_5
# BB#1:                                 # %land.lhs.true
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %eax
	addl	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_5
# BB#2:                                 # %land.lhs.true.9
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_5
# BB#3:                                 # %land.lhs.true.13
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_5
# BB#4:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB21_9
.LBB21_5:                               # %if.else
	movl	$2, %eax
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-92(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_7
# BB#6:                                 # %if.then.22
	movl	$2, -4(%rbp)
	jmp	.LBB21_9
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.23
	movl	$1, -4(%rbp)
.LBB21_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_spin_scale_get_target, .Lfunc_end21-gimp_spin_scale_get_target
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_spin_scale_change_value,@function
gimp_spin_scale_change_value:           # @gimp_spin_scale_change_value
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_spin_button_get_adjustment
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text_window
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_spin_scale_get_limits
	movq	-48(%rbp), %rdi
	callq	gdk_window_get_width
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB22_2
# BB#1:                                 # %if.then
	cvtsi2sdl	-68(%rbp), %xmm0
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.LBB22_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB22_7
# BB#3:                                 # %if.then.12
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	cvtsi2sdl	-68(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB22_5
# BB#4:                                 # %if.then.19
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	movq	-24(%rbp), %rax
	subsd	48(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB22_6
.LBB22_5:                               # %if.else
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
.LBB22_6:                               # %if.end.25
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB22_8
.LBB22_7:                               # %if.else.26
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB22_8:                               # %if.end.32
	movq	-40(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_spin_scale_change_value, .Lfunc_end22-gimp_spin_scale_change_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_spin_scale_get_limits,@function
gimp_spin_scale_get_limits:             # @gimp_spin_scale_get_limits
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB23_3
.LBB23_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_spin_button_get_adjustment
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_get_lower
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB23_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_spin_scale_get_limits, .Lfunc_end23-gimp_spin_scale_get_limits
	.cfi_endproc

	.type	gimp_spin_scale_get_type.g_define_type_id__volatile,@object # @gimp_spin_scale_get_type.g_define_type_id__volatile
	.local	gimp_spin_scale_get_type.g_define_type_id__volatile
	.comm	gimp_spin_scale_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSpinScale"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_spin_scale_new,@object # @__func__.gimp_spin_scale_new
.L__func__.gimp_spin_scale_new:
	.asciz	"gimp_spin_scale_new"
	.size	.L__func__.gimp_spin_scale_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_ADJUSTMENT (adjustment)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"adjustment"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"label"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"digits"
	.size	.L.str.5, 7

	.type	.L__func__.gimp_spin_scale_set_scale_limits,@object # @__func__.gimp_spin_scale_set_scale_limits
.L__func__.gimp_spin_scale_set_scale_limits:
	.asciz	"gimp_spin_scale_set_scale_limits"
	.size	.L__func__.gimp_spin_scale_set_scale_limits, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_SPIN_SCALE (scale)"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"lower >= gtk_adjustment_get_lower (adjustment)"
	.size	.L.str.7, 47

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"upper <= gtk_adjustment_get_upper (adjustment)"
	.size	.L.str.8, 47

	.type	.L__func__.gimp_spin_scale_unset_scale_limits,@object # @__func__.gimp_spin_scale_unset_scale_limits
.L__func__.gimp_spin_scale_unset_scale_limits:
	.asciz	"gimp_spin_scale_unset_scale_limits"
	.size	.L__func__.gimp_spin_scale_unset_scale_limits, 35

	.type	.L__func__.gimp_spin_scale_get_scale_limits,@object # @__func__.gimp_spin_scale_get_scale_limits
.L__func__.gimp_spin_scale_get_scale_limits:
	.asciz	"gimp_spin_scale_get_scale_limits"
	.size	.L__func__.gimp_spin_scale_get_scale_limits, 33

	.type	gimp_spin_scale_parent_class,@object # @gimp_spin_scale_parent_class
	.local	gimp_spin_scale_parent_class
	.comm	gimp_spin_scale_parent_class,8,8
	.type	GimpSpinScale_private_offset,@object # @GimpSpinScale_private_offset
	.local	GimpSpinScale_private_offset
	.comm	GimpSpinScale_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpspinscale.c"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
