	.text
	.file	"gimpscalecombobox.bc"
	.globl	gimp_scale_combo_box_get_type
	.align	16, 0x90
	.type	gimp_scale_combo_box_get_type,@function
gimp_scale_combo_box_get_type:          # @gimp_scale_combo_box_get_type
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
	movq	gimp_scale_combo_box_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_scale_combo_box_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_combo_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$872, %edx              # imm = 0x368
	movabsq	$gimp_scale_combo_box_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_scale_combo_box_init, %rcx
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
	movabsq	$gimp_scale_combo_box_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_scale_combo_box_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_scale_combo_box_get_type, .Lfunc_end0-gimp_scale_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_combo_box_class_intern_init,@function
gimp_scale_combo_box_class_intern_init: # @gimp_scale_combo_box_class_intern_init
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
	movq	%rax, gimp_scale_combo_box_parent_class
	cmpl	$0, GimpScaleComboBox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpScaleComboBox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_scale_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_scale_combo_box_class_intern_init, .Lfunc_end1-gimp_scale_combo_box_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_scale_combo_box_init,@function
gimp_scale_combo_box_init:              # @gimp_scale_combo_box_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 136(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_scale_combo_box_init, .Lfunc_end2-gimp_scale_combo_box_init
	.cfi_endproc

	.globl	gimp_scale_combo_box_new
	.align	16, 0x90
	.type	gimp_scale_combo_box_new,@function
gimp_scale_combo_box_new:               # @gimp_scale_combo_box_new
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
	callq	gimp_scale_combo_box_get_type
	movabsq	$.L.str.1, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_scale_combo_box_new, .Lfunc_end3-gimp_scale_combo_box_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4547007122018943789     # double 1.0E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_scale_combo_box_set_scale
	.align	16, 0x90
	.type	gimp_scale_combo_box_set_scale,@function
gimp_scale_combo_box_set_scale:         # @gimp_scale_combo_box_set_scale
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_scale_combo_box_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_scale_combo_box_set_scale, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_38
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_scale_combo_box_set_scale, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_38
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -68(%rbp)
.LBB4_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB4_23
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	movapd	.LCPI4_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_21
# BB#20:                                # %if.then.27
	jmp	.LBB4_23
.LBB4_21:                               # %if.end.28
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_22
.LBB4_22:                               # %for.inc
                                        #   in Loop: Header=BB4_18 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -68(%rbp)
	jmp	.LBB4_18
.LBB4_23:                               # %for.end
	cmpl	$0, -68(%rbp)
	jne	.LBB4_34
# BB#24:                                # %if.then.31
	leaq	-136(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -68(%rbp)
.LBB4_25:                               # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB4_30
# BB#26:                                # %for.body.36
                                        #   in Loop: Header=BB4_25 Depth=1
	leaq	-136(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-144(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_28
# BB#27:                                # %if.then.40
	jmp	.LBB4_30
.LBB4_28:                               # %if.end.41
                                        #   in Loop: Header=BB4_25 Depth=1
	jmp	.LBB4_29
.LBB4_29:                               # %for.inc.42
                                        #   in Loop: Header=BB4_25 Depth=1
	leaq	-136(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -68(%rbp)
	jmp	.LBB4_25
.LBB4_30:                               # %for.end.44
	movq	-32(%rbp), %rdi
	cmpl	$0, -68(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	je	.LBB4_32
# BB#31:                                # %cond.true
	leaq	-136(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB4_33
.LBB4_32:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB4_33
.LBB4_33:                               # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	leaq	-64(%rbp), %rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_list_store_insert_before
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_scale_combo_box_scale_iter_set
.LBB4_34:                               # %if.end.46
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active_iter
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpl	$0, -72(%rbp)
	jne	.LBB4_38
# BB#35:                                # %if.then.50
	leaq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_scale_combo_box_mru_add
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_n_children
	cmpl	$10, %eax
	jle	.LBB4_37
# BB#36:                                # %if.then.53
	movq	-8(%rbp), %rdi
	callq	gimp_scale_combo_box_mru_remove_last
.LBB4_37:                               # %if.end.54
	jmp	.LBB4_38
.LBB4_38:                               # %if.end.55
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_scale_combo_box_set_scale, .Lfunc_end4-gimp_scale_combo_box_set_scale
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4636737291354636288     # double 100
.LCPI5_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_scale_combo_box_scale_iter_set,@function
gimp_scale_combo_box_scale_iter_set:    # @gimp_scale_combo_box_scale_iter_set
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
	subq	$96, %rsp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_2
# BB#1:                                 # %if.then
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.15, %rdx
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	leaq	-64(%rbp), %rdi
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.16, %rdx
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rdi
	mulsd	-24(%rbp), %xmm0
	movb	$1, %al
	callq	g_snprintf
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB5_3:                                # %if.end
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leaq	-64(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %r10d
	movl	%r10d, (%rsp)
	movl	$-1, 8(%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	gtk_list_store_set
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_scale_combo_box_scale_iter_set, .Lfunc_end5-gimp_scale_combo_box_scale_iter_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_combo_box_mru_add,@function
gimp_scale_combo_box_mru_add:           # @gimp_scale_combo_box_mru_add
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_tree_model_get_path
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB6_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB6_3:                                # %land.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_10
.LBB6_4:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_tree_row_reference_get_path
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_tree_path_compare
	cmpl	$0, %eax
	jne	.LBB6_8
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rsi
	movq	%rax, 144(%rsi)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	callq	g_list_concat
	movq	-8(%rbp), %rsi
	movq	%rax, 144(%rsi)
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, -44(%rbp)
.LBB6_8:                                # %if.end.15
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_free
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_1
.LBB6_10:                               # %for.end
	cmpl	$0, -44(%rbp)
	jne	.LBB6_12
# BB#11:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_tree_row_reference_new
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 144(%rsi)
.LBB6_12:                               # %if.end.22
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_scale_combo_box_mru_add, .Lfunc_end6-gimp_scale_combo_box_mru_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_combo_box_mru_remove_last,@function
gimp_scale_combo_box_mru_remove_last:   # @gimp_scale_combo_box_mru_remove_last
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 144(%rdi)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_list_last
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_tree_row_reference_get_path
	leaq	-64(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_remove
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gtk_tree_row_reference_free
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rdi
	movq	-32(%rbp), %rsi
	callq	g_list_delete_link
	movq	-8(%rbp), %rsi
	movq	%rax, 144(%rsi)
.LBB7_4:                                # %if.end.16
	movq	-24(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB7_5:                                # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_scale_combo_box_mru_remove_last, .Lfunc_end7-gimp_scale_combo_box_mru_remove_last
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_scale_combo_box_get_scale
	.align	16, 0x90
	.type	gimp_scale_combo_box_get_scale,@function
gimp_scale_combo_box_get_scale:         # @gimp_scale_combo_box_get_scale
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
	movq	%rax, -24(%rbp)
	callq	gimp_scale_combo_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_scale_combo_box_get_scale, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB8_13:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_scale_combo_box_get_scale, .Lfunc_end8-gimp_scale_combo_box_get_scale
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI9_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_scale_combo_box_class_init,@function
gimp_scale_combo_box_class_init:        # @gimp_scale_combo_box_class_init
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.5, %rdi
	movl	$1, %edx
	movl	$864, %ecx              # imm = 0x360
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	movl	$225, %ecx
	movabsq	$gimp_scale_combo_box_style_set, %r8
	movabsq	$gimp_scale_combo_box_finalize, %r9
	movabsq	$gimp_scale_combo_box_constructed, %r10
	movl	%eax, scale_combo_box_signals
	movq	-16(%rbp), %r11
	movq	%r10, 72(%r11)
	movq	-16(%rbp), %r10
	movq	%r9, 48(%r10)
	movq	-24(%rbp), %r9
	movq	%r8, 280(%r9)
	movq	-8(%rbp), %r8
	movq	$0, 864(%r8)
	movq	-24(%rbp), %r8
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%r8, -80(%rbp)          # 8-byte Spill
	callq	g_param_spec_double
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_scale_combo_box_class_init, .Lfunc_end9-gimp_scale_combo_box_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_scale_combo_box_constructed,@function
gimp_scale_combo_box_constructed:       # @gimp_scale_combo_box_constructed
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
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp33:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_scale_combo_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$16, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-104(%rbp), %rdi
	movq	%rax, -24(%rbp)
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	callq	memset
	movq	gimp_scale_combo_box_parent_class, %rax
	movq	%rax, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_scale_combo_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB10_2:                               # %if.end
	movl	$3, %edi
	movl	$60, %eax
	movl	%eax, %esi
	movl	$64, %eax
	movl	%eax, %edx
	movl	$20, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_combo_box_set_model
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_entry_text_column
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movabsq	$.L.str.7, %rsi
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movabsq	$.L.str.8, %rdx
	movl	$7, %ecx
	movabsq	$.L.str.9, %r8
	movl	$1, %r9d
	movabsq	$.L.str.10, %rdi
	leaq	-104(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$1, %al
	movq	%rbx, -184(%rbp)        # 8-byte Spill
	callq	g_object_set
	movq	-24(%rbp), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	callq	gtk_cell_renderer_text_get_type
	movabsq	$.L.str.7, %rsi
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_cell_layout_clear
	movl	$1, %edx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_cell_layout_pack_start
	movabsq	$.L.str.11, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes
	movl	$8, -108(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -108(%rbp)
	jle	.LBB10_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_list_store_append
	leaq	-88(%rbp), %rsi
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-108(%rbp), %xmm0
	callq	gimp_scale_combo_box_scale_iter_set
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$2, %eax
	movl	-108(%rbp), %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-196(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -108(%rbp)
	jmp	.LBB10_3
.LBB10_6:                               # %for.end
	movl	$2, -108(%rbp)
.LBB10_7:                               # %for.cond.20
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -108(%rbp)
	jg	.LBB10_10
# BB#8:                                 # %for.body.23
                                        #   in Loop: Header=BB10_7 Depth=1
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_list_store_append
	leaq	-88(%rbp), %rsi
	movl	$1, %edx
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-108(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_scale_combo_box_scale_iter_set
# BB#9:                                 # %for.inc.26
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-108(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB10_7
.LBB10_10:                              # %for.end.27
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_scale_combo_box_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_scale_combo_box_entry_activate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_scale_combo_box_entry_key_press, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -248(%rbp)        # 8-byte Spill
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_scale_combo_box_constructed, .Lfunc_end10-gimp_scale_combo_box_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_combo_box_finalize,@function
gimp_scale_combo_box_finalize:          # @gimp_scale_combo_box_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_scale_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_tree_path_free
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.5
	movabsq	$gtk_tree_row_reference_free, %rax
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	$0, 144(%rax)
.LBB11_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_scale_combo_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_scale_combo_box_finalize, .Lfunc_end11-gimp_scale_combo_box_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_combo_box_style_set,@function
gimp_scale_combo_box_style_set:         # @gimp_scale_combo_box_style_set
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gimp_scale_combo_box_parent_class, %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movabsq	$.L.str.6, %rsi
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_modifier_style
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 72(%rax)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_pango_context
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	pango_context_get_font_description
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	pango_font_description_copy
	movq	-32(%rbp), %rdi
	movq	%rax, 72(%rdi)
.LBB12_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdi
	callq	pango_font_description_get_size
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	movq	72(%rdi), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	callq	pango_font_description_set_size
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_modify_style
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_scale_combo_box_style_set, .Lfunc_end12-gimp_scale_combo_box_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_combo_box_changed,@function
gimp_scale_combo_box_changed:           # @gimp_scale_combo_box_changed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active_iter
	cmpl	$0, %eax
	je	.LBB13_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	leaq	-40(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	xorps	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_5
# BB#2:                                 # %if.then.6
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 128(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_tree_path_free
.LBB13_4:                               # %if.end
	leaq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_get_path
	movq	-8(%rbp), %rsi
	movq	%rax, 136(%rsi)
.LBB13_5:                               # %if.end.13
	jmp	.LBB13_6
.LBB13_6:                               # %if.end.14
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_scale_combo_box_changed, .Lfunc_end13-gimp_scale_combo_box_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI14_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gimp_scale_combo_box_entry_activate,@function
gimp_scale_combo_box_entry_activate:    # @gimp_scale_combo_box_entry_activate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	leaq	-32(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_scale_combo_box_parse_text
	cmpl	$0, %eax
	je	.LBB14_4
# BB#1:                                 # %land.lhs.true
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB14_4
# BB#2:                                 # %land.lhs.true.5
	movsd	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jb	.LBB14_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_scale_combo_box_set_scale
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gtk_widget_error_bell
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_scale_combo_box_set_scale
.LBB14_5:                               # %if.end
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	scale_combo_box_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_scale_combo_box_entry_activate, .Lfunc_end14-gimp_scale_combo_box_entry_activate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scale_combo_box_entry_key_press,@function
gimp_scale_combo_box_entry_key_press:   # @gimp_scale_combo_box_entry_key_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$65307, 28(%rdx)        # imm = 0xFF1B
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_scale_combo_box_set_scale
	xorl	%edx, %edx
	movq	-32(%rbp), %rax
	movl	scale_combo_box_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$1, -4(%rbp)
	jmp	.LBB15_7
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$65289, 28(%rax)        # imm = 0xFF09
	je	.LBB15_5
# BB#3:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$65417, 28(%rax)        # imm = 0xFF89
	je	.LBB15_5
# BB#4:                                 # %lor.lhs.false.6
	movq	-24(%rbp), %rax
	cmpl	$65056, 28(%rax)        # imm = 0xFE20
	jne	.LBB15_6
.LBB15_5:                               # %if.then.9
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_scale_combo_box_entry_activate
	movl	$1, -4(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.end.10
	movl	$0, -4(%rbp)
.LBB15_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_scale_combo_box_entry_key_press, .Lfunc_end15-gimp_scale_combo_box_entry_key_press
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_scale_combo_box_parse_text,@function
gimp_scale_combo_box_parse_text:        # @gimp_scale_combo_box_parse_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	strtod
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB16_20
.LBB16_2:                               # %if.else
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %if.end
	jmp	.LBB16_4
.LBB16_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, %edi
	callq	g_unichar_isspace
	cmpl	$0, %eax
	je	.LBB16_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB16_4 Depth=1
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB16_4
.LBB16_6:                               # %while.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB16_8
# BB#7:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB16_9
.LBB16_8:                               # %if.then.9
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB16_20
.LBB16_9:                               # %if.end.10
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB16_12
# BB#10:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB16_12
# BB#11:                                # %if.then.17
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB16_20
.LBB16_12:                              # %if.end.18
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
.LBB16_13:                              # %while.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, %edi
	callq	g_unichar_isspace
	cmpl	$0, %eax
	je	.LBB16_15
# BB#14:                                # %while.body.28
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB16_13
.LBB16_15:                              # %while.end.34
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	strtod
	movsd	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB16_17
# BB#16:                                # %if.then.38
	movl	$0, -4(%rbp)
	jmp	.LBB16_20
.LBB16_17:                              # %if.end.39
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB16_19
	jp	.LBB16_19
# BB#18:                                # %if.then.42
	movl	$0, -4(%rbp)
	jmp	.LBB16_20
.LBB16_19:                              # %if.end.43
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -4(%rbp)
.LBB16_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_scale_combo_box_parse_text, .Lfunc_end16-gimp_scale_combo_box_parse_text
	.cfi_endproc

	.type	gimp_scale_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_scale_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_scale_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_scale_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpScaleComboBox"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"has-entry"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Display"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_scale_combo_box_set_scale,@object # @__func__.gimp_scale_combo_box_set_scale
.L__func__.gimp_scale_combo_box_set_scale:
	.asciz	"gimp_scale_combo_box_set_scale"
	.size	.L__func__.gimp_scale_combo_box_set_scale, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_SCALE_COMBO_BOX (combo_box)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"scale > 0.0"
	.size	.L.str.4, 12

	.type	.L__func__.gimp_scale_combo_box_get_scale,@object # @__func__.gimp_scale_combo_box_get_scale
.L__func__.gimp_scale_combo_box_get_scale:
	.asciz	"gimp_scale_combo_box_get_scale"
	.size	.L__func__.gimp_scale_combo_box_get_scale, 31

	.type	gimp_scale_combo_box_parent_class,@object # @gimp_scale_combo_box_parent_class
	.local	gimp_scale_combo_box_parent_class
	.comm	gimp_scale_combo_box_parent_class,8,8
	.type	GimpScaleComboBox_private_offset,@object # @GimpScaleComboBox_private_offset
	.local	GimpScaleComboBox_private_offset
	.comm	GimpScaleComboBox_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"entry-activated"
	.size	.L.str.5, 16

	.type	scale_combo_box_signals,@object # @scale_combo_box_signals
	.local	scale_combo_box_signals
	.comm	scale_combo_box_signals,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"label-scale"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"xalign"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"width-chars"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"truncate-multiline"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"inner-border"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"text"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"changed"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"activate"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"key-press-event"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%d\342\200\211%%"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%.3g\342\200\211%%"
	.size	.L.str.16, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
