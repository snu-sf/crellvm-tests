	.text
	.file	"gimpsamplepointundo.bc"
	.globl	gimp_sample_point_undo_get_type
	.align	16, 0x90
	.type	gimp_sample_point_undo_get_type,@function
gimp_sample_point_undo_get_type:        # @gimp_sample_point_undo_get_type
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
	movq	gimp_sample_point_undo_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_sample_point_undo_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_undo_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$296, %edx              # imm = 0x128
	movabsq	$gimp_sample_point_undo_class_intern_init, %rdi
	movl	$88, %r8d
	movabsq	$gimp_sample_point_undo_init, %rcx
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
	movabsq	$gimp_sample_point_undo_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_sample_point_undo_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_sample_point_undo_get_type, .Lfunc_end0-gimp_sample_point_undo_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_undo_class_intern_init,@function
gimp_sample_point_undo_class_intern_init: # @gimp_sample_point_undo_class_intern_init
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
	movq	%rax, gimp_sample_point_undo_parent_class
	cmpl	$0, GimpSamplePointUndo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSamplePointUndo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_sample_point_undo_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_sample_point_undo_class_intern_init, .Lfunc_end1-gimp_sample_point_undo_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_undo_init,@function
gimp_sample_point_undo_init:            # @gimp_sample_point_undo_init
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
	.size	gimp_sample_point_undo_init, .Lfunc_end2-gimp_sample_point_undo_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_undo_class_init,@function
gimp_sample_point_undo_class_init:      # @gimp_sample_point_undo_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_sample_point_undo_free, %rsi
	movabsq	$gimp_sample_point_undo_pop, %rdi
	movabsq	$gimp_sample_point_undo_get_property, %rcx
	movabsq	$gimp_sample_point_undo_set_property, %rdx
	movabsq	$gimp_sample_point_undo_constructed, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 280(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 288(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_boxed
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_sample_point_undo_class_init, .Lfunc_end3-gimp_sample_point_undo_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_undo_constructed,@function
gimp_sample_point_undo_constructed:     # @gimp_sample_point_undo_constructed
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_undo_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_sample_point_undo_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_sample_point_undo_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	jmp	.LBB4_3
.LBB4_3:                                # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB4_5
# BB#4:                                 # %if.then.5
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$92, %edx
	movabsq	$.L__func__.gimp_sample_point_undo_constructed, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB4_6:                                # %if.end.6
	jmp	.LBB4_7
.LBB4_7:                                # %do.end
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 80(%rax)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 84(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_sample_point_undo_constructed, .Lfunc_end4-gimp_sample_point_undo_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_undo_set_property,@function
gimp_sample_point_undo_set_property:    # @gimp_sample_point_undo_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB5_2
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_boxed
	movq	-40(%rbp), %rdi
	movq	%rax, 72(%rdi)
	jmp	.LBB5_5
.LBB5_2:                                # %sw.default
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
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
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$113, %edx
	movabsq	$.L.str.6, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB5_5
.LBB5_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_sample_point_undo_set_property, .Lfunc_end5-gimp_sample_point_undo_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_undo_get_property,@function
gimp_sample_point_undo_get_property:    # @gimp_sample_point_undo_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB6_2
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB6_5
.LBB6_2:                                # %sw.default
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
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
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$133, %edx
	movabsq	$.L.str.6, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB6_5
.LBB6_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_sample_point_undo_get_property, .Lfunc_end6-gimp_sample_point_undo_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_undo_pop,@function
gimp_sample_point_undo_pop:             # @gimp_sample_point_undo_pop
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_undo_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	gimp_sample_point_undo_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	8(%rax), %esi
	movl	%esi, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %esi
	movl	%esi, -40(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	80(%rax), %edx
	movq	-32(%rbp), %rax
	movl	84(%rax), %ecx
	callq	gimp_image_add_sample_point
	jmp	.LBB7_6
.LBB7_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpl	$-1, 80(%rax)
	jne	.LBB7_4
# BB#3:                                 # %if.then.12
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	72(%rax), %rsi
	callq	gimp_image_remove_sample_point
	jmp	.LBB7_5
.LBB7_4:                                # %if.else.15
	movq	-32(%rbp), %rax
	movl	80(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	%ecx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	84(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	72(%rax), %rsi
	callq	gimp_image_sample_point_moved
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.24
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 80(%rcx)
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 84(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_sample_point_undo_pop, .Lfunc_end7-gimp_sample_point_undo_pop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sample_point_undo_free,@function
gimp_sample_point_undo_free:            # @gimp_sample_point_undo_free
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_sample_point_undo_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_sample_point_unref
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
.LBB8_2:                                # %if.end
	movq	gimp_sample_point_undo_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	288(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_sample_point_undo_free, .Lfunc_end8-gimp_sample_point_undo_free
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.type	gimp_sample_point_undo_get_type.g_define_type_id__volatile,@object # @gimp_sample_point_undo_get_type.g_define_type_id__volatile
	.local	gimp_sample_point_undo_get_type.g_define_type_id__volatile
	.comm	gimp_sample_point_undo_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSamplePointUndo"
	.size	.L.str, 20

	.type	gimp_sample_point_undo_parent_class,@object # @gimp_sample_point_undo_parent_class
	.local	gimp_sample_point_undo_parent_class
	.comm	gimp_sample_point_undo_parent_class,8,8
	.type	GimpSamplePointUndo_private_offset,@object # @GimpSamplePointUndo_private_offset
	.local	GimpSamplePointUndo_private_offset
	.comm	GimpSamplePointUndo_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"sample-point"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Core"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimpsamplepointundo.c"
	.size	.L.str.3, 22

	.type	.L__func__.gimp_sample_point_undo_constructed,@object # @__func__.gimp_sample_point_undo_constructed
.L__func__.gimp_sample_point_undo_constructed:
	.asciz	"gimp_sample_point_undo_constructed"
	.size	.L__func__.gimp_sample_point_undo_constructed, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"sample_point_undo->sample_point != NULL"
	.size	.L.str.4, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.5, 54

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"property"
	.size	.L.str.6, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
