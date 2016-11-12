	.text
	.file	"gimpundo.bc"
	.globl	gimp_undo_get_type
	.align	16, 0x90
	.type	gimp_undo_get_type,@function
gimp_undo_get_type:                     # @gimp_undo_get_type
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
	movq	gimp_undo_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_undo_get_type.g_define_type_id__volatile, %rax
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
	movl	$296, %edx              # imm = 0x128
	movabsq	$gimp_undo_class_intern_init, %rdi
	movl	$72, %r8d
	movabsq	$gimp_undo_init, %rcx
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
	movabsq	$gimp_undo_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_undo_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_undo_get_type, .Lfunc_end0-gimp_undo_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_class_intern_init,@function
gimp_undo_class_intern_init:            # @gimp_undo_class_intern_init
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
	movq	%rax, gimp_undo_parent_class
	cmpl	$0, GimpUndo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpUndo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_undo_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_undo_class_intern_init, .Lfunc_end1-gimp_undo_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_init,@function
gimp_undo_init:                         # @gimp_undo_init
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	time
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_undo_init, .Lfunc_end2-gimp_undo_init
	.cfi_endproc

	.globl	gimp_undo_pop
	.align	16, 0x90
	.type	gimp_undo_pop,@function
gimp_undo_pop:                          # @gimp_undo_pop
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_undo_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_pop, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_pop, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_23
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB3_22
# BB#18:                                # %if.then.18
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB3_19
	jmp	.LBB3_24
.LBB3_24:                               # %if.then.18
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB3_20
	jmp	.LBB3_21
.LBB3_19:                               # %sw.bb
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	48(%rax), %esi
	callq	gimp_image_clean
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB3_21
.LBB3_20:                               # %sw.bb.21
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	48(%rax), %esi
	callq	gimp_image_dirty
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB3_21:                               # %sw.epilog
	jmp	.LBB3_22
.LBB3_22:                               # %if.end.25
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	undo_signals, %esi
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB3_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_undo_pop, .Lfunc_end3-gimp_undo_pop
	.cfi_endproc

	.globl	gimp_undo_free
	.align	16, 0x90
	.type	gimp_undo_free,@function
gimp_undo_free:                         # @gimp_undo_free
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_undo_get_type
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
	movabsq	$.L__func__.gimp_undo_free, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	undo_signals+4, %esi
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_undo_free, .Lfunc_end4-gimp_undo_free
	.cfi_endproc

	.globl	gimp_undo_create_preview
	.align	16, 0x90
	.type	gimp_undo_create_preview,@function
gimp_undo_create_preview:               # @gimp_undo_create_preview
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_undo_get_type
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
	movabsq	$.L__func__.gimp_undo_create_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_33
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_20:                               # %if.end.32
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_create_preview, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_33
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB5_27
# BB#26:                                # %lor.lhs.false.41
	movq	-8(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB5_28
.LBB5_27:                               # %if.then.43
	jmp	.LBB5_33
.LBB5_28:                               # %if.end.44
	cmpl	$0, -20(%rbp)
	je	.LBB5_30
# BB#29:                                # %if.then.46
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_undo_create_preview_private
	jmp	.LBB5_33
.LBB5_30:                               # %if.else.47
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpq	$0, -16(%rbp)
	je	.LBB5_32
# BB#31:                                # %if.then.52
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-80(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB5_32:                               # %if.end.55
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gimp_undo_create_preview_idle, %rsi
	movabsq	$gimp_undo_idle_free, %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_idle_add_full
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
.LBB5_33:                               # %if.end.58
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_undo_create_preview, .Lfunc_end5-gimp_undo_create_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_create_preview_private,@function
gimp_undo_create_preview_private:       # @gimp_undo_create_preview_private
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_17
.LBB6_17:                               # %entry
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_18
.LBB6_18:                               # %entry
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$47, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB6_2
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %sw.default
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
.LBB6_3:                                # %sw.epilog
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	328(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	cmpl	-36(%rbp), %eax
	ja	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	cmpl	-36(%rbp), %eax
	ja	.LBB6_6
# BB#5:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -44(%rbp)
	jmp	.LBB6_16
.LBB6_6:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB6_11
# BB#7:                                 # %if.then.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	imull	-36(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movl	$1, %ecx
	movl	-88(%rbp), %edx         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-92(%rbp), %esi         # 4-byte Reload
	divl	%esi
	cmpl	%eax, %ecx
	jbe	.LBB6_9
# BB#8:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB6_10
.LBB6_9:                                # %cond.false
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	imull	-36(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-104(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB6_10:                               # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	jmp	.LBB6_15
.LBB6_11:                               # %if.else.22
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	imull	-36(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	$1, %ecx
	movl	-108(%rbp), %edx        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-112(%rbp), %esi        # 4-byte Reload
	divl	%esi
	cmpl	%eax, %ecx
	jbe	.LBB6_13
# BB#12:                                # %cond.true.28
	movl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB6_14
.LBB6_13:                               # %cond.false.29
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	imull	-36(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-120(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-124(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB6_14:                               # %cond.end.34
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
.LBB6_15:                               # %if.end
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.36
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	callq	gimp_viewable_get_new_preview
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_undo_create_preview_private, .Lfunc_end6-gimp_undo_create_preview_private
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_create_preview_idle,@function
gimp_undo_create_preview_idle:          # @gimp_undo_create_preview_idle
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_undo_stack_peek
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_undo_create_preview_private
.LBB7_2:                                # %if.end
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	$0, 64(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_undo_create_preview_idle, .Lfunc_end7-gimp_undo_create_preview_idle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_idle_free,@function
gimp_undo_idle_free:                    # @gimp_undo_idle_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_2:                                # %if.end
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_undo_idle_free, .Lfunc_end8-gimp_undo_idle_free
	.cfi_endproc

	.globl	gimp_undo_refresh_preview
	.align	16, 0x90
	.type	gimp_undo_refresh_preview,@function
gimp_undo_refresh_preview:              # @gimp_undo_refresh_preview
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_undo_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_refresh_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_29
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB9_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB9_21
.LBB9_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_20:                               # %if.end.32
	jmp	.LBB9_21
.LBB9_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_23
.LBB9_22:                               # %if.then.36
	jmp	.LBB9_24
.LBB9_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_refresh_preview, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_29
.LBB9_24:                               # %if.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.end.39
	movq	-8(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB9_27
# BB#26:                                # %if.then.41
	jmp	.LBB9_29
.LBB9_27:                               # %if.end.42
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB9_29
# BB#28:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	temp_buf_free
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_undo_create_preview
.LBB9_29:                               # %if.end.47
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_undo_refresh_preview, .Lfunc_end9-gimp_undo_refresh_preview
	.cfi_endproc

	.globl	gimp_undo_type_to_name
	.align	16, 0x90
	.type	gimp_undo_type_to_name,@function
gimp_undo_type_to_name:                 # @gimp_undo_type_to_name
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
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	callq	gimp_undo_type_get_type
	xorl	%edi, %edi
	movl	%edi, %ecx
	leaq	-24(%rbp), %r8
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %r9          # 8-byte Reload
	callq	gimp_enum_get_value
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movabsq	$.L.str.5, %rax
	movq	%rax, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_undo_type_to_name, .Lfunc_end10-gimp_undo_type_to_name
	.cfi_endproc

	.globl	gimp_undo_is_weak
	.align	16, 0x90
	.type	gimp_undo_is_weak,@function
gimp_undo_is_weak:                      # @gimp_undo_is_weak
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_6
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, %edx
	subl	$17, %edx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movl	%edx, -24(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_7
.LBB11_7:                               # %if.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$19, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_8
.LBB11_8:                               # %if.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$25, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_9
.LBB11_9:                               # %if.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$51, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_10
.LBB11_10:                              # %if.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	addl	$-55, %eax
	subl	$2, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jb	.LBB11_3
	jmp	.LBB11_11
.LBB11_11:                              # %if.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	addl	$-65, %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	ja	.LBB11_4
	jmp	.LBB11_3
.LBB11_3:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB11_6
.LBB11_4:                               # %sw.default
	jmp	.LBB11_5
.LBB11_5:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB11_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_undo_is_weak, .Lfunc_end11-gimp_undo_is_weak
	.cfi_endproc

	.globl	gimp_undo_get_age
	.align	16, 0x90
	.type	gimp_undo_get_age,@function
gimp_undo_get_age:                      # @gimp_undo_get_age
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	time
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_undo_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.5
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.8
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.10
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.11
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_get_age, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_18
.LBB12_11:                              # %if.end.12
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jb	.LBB12_15
# BB#14:                                # %if.then.16
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_get_age, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_18
.LBB12_16:                              # %if.end.18
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.19
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	40(%rcx), %eax
	movl	%eax, -4(%rbp)
.LBB12_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_undo_get_age, .Lfunc_end12-gimp_undo_get_age
	.cfi_endproc

	.globl	gimp_undo_reset_age
	.align	16, 0x90
	.type	gimp_undo_reset_age,@function
gimp_undo_reset_age:                    # @gimp_undo_reset_age
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_undo_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_undo_reset_age, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB13_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_undo_reset_age, .Lfunc_end13-gimp_undo_reset_age
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_class_init,@function
gimp_undo_class_init:                   # @gimp_undo_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_undo_mode_get_type
	movabsq	$.L.str.8, %rdi
	movl	$1, %edx
	movl	$280, %ecx              # imm = 0x118
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__ENUM_POINTER, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$2, %r8d
	movl	$68, %r11d
	movl	%r11d, %ebx
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r15, %r8
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$68, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -128(%rbp)        # 8-byte Spill
	movq	%r10, -136(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, undo_signals
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_undo_mode_get_type
	movabsq	$.L.str.9, %rdi
	movl	$1, %edx
	movl	$288, %ecx              # imm = 0x120
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__ENUM, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$gimp_undo_real_free, %rsi
	movabsq	$gimp_undo_real_pop, %rdi
	movabsq	$gimp_undo_get_new_preview, %r8
	movabsq	$gimp_undo_get_popup_size, %r9
	movabsq	$.L.str.10, %r10
	movabsq	$gimp_undo_get_memsize, %rbx
	movabsq	$gimp_undo_get_property, %r14
	movabsq	$gimp_undo_set_property, %r15
	movabsq	$gimp_undo_finalize, %r12
	movabsq	$gimp_undo_constructed, %r13
	movl	%eax, undo_signals+4
	movq	-56(%rbp), %r11
	movq	%r13, 72(%r11)
	movq	-56(%rbp), %r11
	movq	%r12, 48(%r11)
	movq	-56(%rbp), %r11
	movq	%r15, 24(%r11)
	movq	-56(%rbp), %r11
	movq	%r14, 32(%r11)
	movq	-64(%rbp), %r11
	movq	%rbx, 152(%r11)
	movq	-72(%rbp), %r11
	movq	%r10, 160(%r11)
	movq	-72(%rbp), %r10
	movq	%r9, 208(%r10)
	movq	-72(%rbp), %r9
	movq	%r8, 224(%r9)
	movq	-48(%rbp), %r8
	movq	%rdi, 280(%r8)
	movq	-48(%rbp), %rdi
	movq	%rsi, 288(%rdi)
	movq	-56(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$227, %r9d
	movq	-56(%rbp), %rcx
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movl	-188(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, -204(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	g_param_spec_uint
	movl	$2, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_undo_type_get_type
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$235, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$3, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_dirty_mask_get_type
	movabsq	$.L.str.13, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$235, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_flags
	movl	$4, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_undo_class_init, .Lfunc_end14-gimp_undo_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_constructed,@function
gimp_undo_constructed:                  # @gimp_undo_constructed
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_undo_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_undo_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB15_2:                               # %if.end
	jmp	.LBB15_3
.LBB15_3:                               # %do.body
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB15_10
.LBB15_5:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB15_9
.LBB15_8:                               # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_9:                               # %if.end.13
	jmp	.LBB15_10
.LBB15_10:                              # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_12
# BB#11:                                # %if.then.16
	jmp	.LBB15_13
.LBB15_12:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$186, %edx
	movabsq	$.L__func__.gimp_undo_constructed, %rcx
	movabsq	$.L.str.15, %r8
	callq	g_assertion_message_expr
.LBB15_13:                              # %if.end.18
	jmp	.LBB15_14
.LBB15_14:                              # %do.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_undo_constructed, .Lfunc_end15-gimp_undo_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_finalize,@function
gimp_undo_finalize:                     # @gimp_undo_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	64(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 64(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB16_4:                               # %if.end.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_undo_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_undo_finalize, .Lfunc_end16-gimp_undo_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_set_property,@function
gimp_undo_set_property:                 # @gimp_undo_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB17_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB17_8
.LBB17_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_uint
	movq	-40(%rbp), %rdi
	movl	%eax, 40(%rdi)
	jmp	.LBB17_8
.LBB17_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 44(%rdi)
	jmp	.LBB17_8
.LBB17_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_flags
	movq	-40(%rbp), %rdi
	movl	%eax, 48(%rdi)
	jmp	.LBB17_8
.LBB17_5:                               # %sw.default
	jmp	.LBB17_6
.LBB17_6:                               # %do.body
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$234, %edx
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB17_8
.LBB17_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_undo_set_property, .Lfunc_end17-gimp_undo_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_1
	.quad	.LBB17_2
	.quad	.LBB17_3
	.quad	.LBB17_4

	.text
	.align	16, 0x90
	.type	gimp_undo_get_property,@function
gimp_undo_get_property:                 # @gimp_undo_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB18_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB18_8
.LBB18_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %esi
	callq	g_value_set_uint
	jmp	.LBB18_8
.LBB18_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	44(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB18_8
.LBB18_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	48(%rax), %esi
	callq	g_value_set_flags
	jmp	.LBB18_8
.LBB18_5:                               # %sw.default
	jmp	.LBB18_6
.LBB18_6:                               # %do.body
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$263, %edx              # imm = 0x107
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB18_8
.LBB18_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_undo_get_property, .Lfunc_end18-gimp_undo_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_1
	.quad	.LBB18_2
	.quad	.LBB18_3
	.quad	.LBB18_4

	.text
	.align	16, 0x90
	.type	gimp_undo_get_memsize,@function
gimp_undo_get_memsize:                  # @gimp_undo_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	temp_buf_get_memsize
	movq	-16(%rbp), %rsi
	addq	(%rsi), %rax
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	gimp_undo_parent_class, %rsi
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
.Lfunc_end19:
	.size	gimp_undo_get_memsize, .Lfunc_end19-gimp_undo_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_get_popup_size,@function
gimp_undo_get_popup_size:               # @gimp_undo_get_popup_size
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB20_4
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	4(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jg	.LBB20_3
# BB#2:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	8(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jle	.LBB20_4
.LBB20_3:                               # %if.then
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB20_5
.LBB20_4:                               # %if.end
	movl	$0, -4(%rbp)
.LBB20_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_undo_get_popup_size, .Lfunc_end20-gimp_undo_get_popup_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_undo_get_new_preview,@function
gimp_undo_get_new_preview:              # @gimp_undo_get_new_preview
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB21_5
# BB#1:                                 # %if.then
	movl	$1, %r8d
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-44(%rbp), %r9
	leaq	-48(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi
	movq	56(%rsi), %rsi
	movl	4(%rsi), %edi
	movq	-40(%rbp), %rsi
	movq	56(%rsi), %rsi
	movl	8(%rsi), %esi
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r10d
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movl	%r10d, %ecx
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	cmpl	4(%rax), %ecx
	jge	.LBB21_4
# BB#2:                                 # %land.lhs.true
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB21_4
# BB#3:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	temp_buf_scale
	movq	%rax, -8(%rbp)
	jmp	.LBB21_6
.LBB21_4:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rdi
	callq	temp_buf_copy
	movq	%rax, -8(%rbp)
	jmp	.LBB21_6
.LBB21_5:                               # %if.end.16
	movq	$0, -8(%rbp)
.LBB21_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_undo_get_new_preview, .Lfunc_end21-gimp_undo_get_new_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_real_pop,@function
gimp_undo_real_pop:                     # @gimp_undo_real_pop
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_undo_real_pop, .Lfunc_end22-gimp_undo_real_pop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_undo_real_free,@function
gimp_undo_real_free:                    # @gimp_undo_real_free
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_undo_real_free, .Lfunc_end23-gimp_undo_real_free
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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

	.type	gimp_undo_get_type.g_define_type_id__volatile,@object # @gimp_undo_get_type.g_define_type_id__volatile
	.local	gimp_undo_get_type.g_define_type_id__volatile
	.comm	gimp_undo_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpUndo"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_undo_pop,@object # @__func__.gimp_undo_pop
.L__func__.gimp_undo_pop:
	.asciz	"gimp_undo_pop"
	.size	.L__func__.gimp_undo_pop, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_UNDO (undo)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"accum != NULL"
	.size	.L.str.3, 14

	.type	undo_signals,@object    # @undo_signals
	.local	undo_signals
	.comm	undo_signals,8,4
	.type	.L__func__.gimp_undo_free,@object # @__func__.gimp_undo_free
.L__func__.gimp_undo_free:
	.asciz	"gimp_undo_free"
	.size	.L__func__.gimp_undo_free, 15

	.type	.L__func__.gimp_undo_create_preview,@object # @__func__.gimp_undo_create_preview
.L__func__.gimp_undo_create_preview:
	.asciz	"gimp_undo_create_preview"
	.size	.L__func__.gimp_undo_create_preview, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.4, 45

	.type	.L__func__.gimp_undo_refresh_preview,@object # @__func__.gimp_undo_refresh_preview
.L__func__.gimp_undo_refresh_preview:
	.asciz	"gimp_undo_refresh_preview"
	.size	.L__func__.gimp_undo_refresh_preview, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L__func__.gimp_undo_get_age,@object # @__func__.gimp_undo_get_age
.L__func__.gimp_undo_get_age:
	.asciz	"gimp_undo_get_age"
	.size	.L__func__.gimp_undo_get_age, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"now >= undo->time"
	.size	.L.str.6, 18

	.type	.L__func__.gimp_undo_reset_age,@object # @__func__.gimp_undo_reset_age
.L__func__.gimp_undo_reset_age:
	.asciz	"gimp_undo_reset_age"
	.size	.L__func__.gimp_undo_reset_age, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"time"
	.size	.L.str.7, 5

	.type	gimp_undo_parent_class,@object # @gimp_undo_parent_class
	.local	gimp_undo_parent_class
	.comm	gimp_undo_parent_class,8,8
	.type	GimpUndo_private_offset,@object # @GimpUndo_private_offset
	.local	GimpUndo_private_offset
	.comm	GimpUndo_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pop"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"free"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-undo"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"image"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-type"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dirty-mask"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpundo.c"
	.size	.L.str.14, 11

	.type	.L__func__.gimp_undo_constructed,@object # @__func__.gimp_undo_constructed
.L__func__.gimp_undo_constructed:
	.asciz	"gimp_undo_constructed"
	.size	.L__func__.gimp_undo_constructed, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_IMAGE (undo->image)"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
