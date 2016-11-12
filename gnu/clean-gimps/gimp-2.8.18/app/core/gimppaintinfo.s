	.text
	.file	"gimppaintinfo.bc"
	.globl	gimp_paint_info_get_type
	.align	16, 0x90
	.type	gimp_paint_info_get_type,@function
gimp_paint_info_get_type:               # @gimp_paint_info_get_type
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
	movq	gimp_paint_info_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_paint_info_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_paint_info_class_intern_init, %rdi
	movl	$72, %r8d
	movabsq	$gimp_paint_info_init, %rcx
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
	movabsq	$gimp_paint_info_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_paint_info_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_paint_info_get_type, .Lfunc_end0-gimp_paint_info_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_info_class_intern_init,@function
gimp_paint_info_class_intern_init:      # @gimp_paint_info_class_intern_init
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
	movq	%rax, gimp_paint_info_parent_class
	cmpl	$0, GimpPaintInfo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPaintInfo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_paint_info_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_paint_info_class_intern_init, .Lfunc_end1-gimp_paint_info_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_info_init,@function
gimp_paint_info_init:                   # @gimp_paint_info_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$4, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_paint_info_init, .Lfunc_end2-gimp_paint_info_init
	.cfi_endproc

	.globl	gimp_paint_info_new
	.align	16, 0x90
	.type	gimp_paint_info_new,@function
gimp_paint_info_new:                    # @gimp_paint_info_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_paint_info_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_info_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -48(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_info_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	jmp	.LBB3_23
.LBB3_23:                               # %do.body.23
	cmpq	$0, -56(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.25
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.26
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_info_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_26:                               # %if.end.27
	jmp	.LBB3_27
.LBB3_27:                               # %do.end.28
	callq	gimp_paint_info_get_type
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	-64(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-64(%rbp), %rdi
	callq	gimp_paint_options_new
	movq	-64(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_paint_info_new, .Lfunc_end3-gimp_paint_info_new
	.cfi_endproc

	.globl	gimp_paint_info_set_standard
	.align	16, 0x90
	.type	gimp_paint_info_set_standard,@function
gimp_paint_info_set_standard:           # @gimp_paint_info_set_standard
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_info_set_standard, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_31
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_info_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_info_set_standard, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_31
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	352(%rcx), %rax
	je	.LBB4_31
# BB#26:                                # %if.then.41
	movq	-8(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB4_28
# BB#27:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_28:                               # %if.end.46
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 352(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB4_30
# BB#29:                                # %if.then.50
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB4_30:                               # %if.end.53
	jmp	.LBB4_31
.LBB4_31:                               # %if.end.54
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_paint_info_set_standard, .Lfunc_end4-gimp_paint_info_set_standard
	.cfi_endproc

	.globl	gimp_paint_info_get_standard
	.align	16, 0x90
	.type	gimp_paint_info_get_standard,@function
gimp_paint_info_get_standard:           # @gimp_paint_info_get_standard
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_paint_info_get_standard, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_paint_info_get_standard, .Lfunc_end5-gimp_paint_info_get_standard
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_info_class_init,@function
gimp_paint_info_class_init:             # @gimp_paint_info_class_init
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
	movabsq	$gimp_paint_info_get_description, %rsi
	movabsq	$gimp_paint_info_finalize, %rdi
	movabsq	$gimp_paint_info_dispose, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 248(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_paint_info_class_init, .Lfunc_end6-gimp_paint_info_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_info_dispose,@function
gimp_paint_info_dispose:                # @gimp_paint_info_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_paint_info_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_run_dispose
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_paint_info_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_paint_info_dispose, .Lfunc_end7-gimp_paint_info_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_info_finalize,@function
gimp_paint_info_finalize:               # @gimp_paint_info_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_paint_info_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB8_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_paint_info_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_paint_info_finalize, .Lfunc_end8-gimp_paint_info_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_info_get_description,@function
gimp_paint_info_get_description:        # @gimp_paint_info_get_description
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_paint_info_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_strdup
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_paint_info_get_description, .Lfunc_end9-gimp_paint_info_get_description
	.cfi_endproc

	.type	gimp_paint_info_get_type.g_define_type_id__volatile,@object # @gimp_paint_info_get_type.g_define_type_id__volatile
	.local	gimp_paint_info_get_type.g_define_type_id__volatile
	.comm	gimp_paint_info_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPaintInfo"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_paint_info_new,@object # @__func__.gimp_paint_info_new
.L__func__.gimp_paint_info_new:
	.asciz	"gimp_paint_info_new"
	.size	.L__func__.gimp_paint_info_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"identifier != NULL"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"blurb != NULL"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"stock_id != NULL"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"name"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"stock-id"
	.size	.L.str.7, 9

	.type	.L__func__.gimp_paint_info_set_standard,@object # @__func__.gimp_paint_info_set_standard
.L__func__.gimp_paint_info_set_standard:
	.asciz	"gimp_paint_info_set_standard"
	.size	.L__func__.gimp_paint_info_set_standard, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"! paint_info || GIMP_IS_PAINT_INFO (paint_info)"
	.size	.L.str.8, 48

	.type	.L__func__.gimp_paint_info_get_standard,@object # @__func__.gimp_paint_info_get_standard
.L__func__.gimp_paint_info_get_standard:
	.asciz	"gimp_paint_info_get_standard"
	.size	.L__func__.gimp_paint_info_get_standard, 29

	.type	gimp_paint_info_parent_class,@object # @gimp_paint_info_parent_class
	.local	gimp_paint_info_parent_class
	.comm	gimp_paint_info_parent_class,8,8
	.type	GimpPaintInfo_private_offset,@object # @GimpPaintInfo_private_offset
	.local	GimpPaintInfo_private_offset
	.comm	GimpPaintInfo_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
