	.text
	.file	"gimpdrawableundo.bc"
	.globl	gimp_drawable_undo_get_type
	.align	16, 0x90
	.type	gimp_drawable_undo_get_type,@function
gimp_drawable_undo_get_type:            # @gimp_drawable_undo_get_type
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
	movq	gimp_drawable_undo_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_drawable_undo_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_item_undo_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$296, %edx              # imm = 0x128
	movabsq	$gimp_drawable_undo_class_intern_init, %rdi
	movl	$136, %r8d
	movabsq	$gimp_drawable_undo_init, %rcx
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
	movabsq	$gimp_drawable_undo_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_drawable_undo_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_undo_get_type, .Lfunc_end0-gimp_drawable_undo_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_undo_class_intern_init,@function
gimp_drawable_undo_class_intern_init:   # @gimp_drawable_undo_class_intern_init
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
	movq	%rax, gimp_drawable_undo_parent_class
	cmpl	$0, GimpDrawableUndo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDrawableUndo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_drawable_undo_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_undo_class_intern_init, .Lfunc_end1-gimp_drawable_undo_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_undo_init,@function
gimp_drawable_undo_init:                # @gimp_drawable_undo_init
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
	.size	gimp_drawable_undo_init, .Lfunc_end2-gimp_drawable_undo_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_undo_class_init,@function
gimp_drawable_undo_class_init:          # @gimp_drawable_undo_class_init
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
	subq	$144, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_drawable_undo_free, %rsi
	movabsq	$gimp_drawable_undo_pop, %rdi
	movabsq	$gimp_drawable_undo_get_memsize, %rcx
	movabsq	$gimp_drawable_undo_get_property, %rdx
	movabsq	$gimp_drawable_undo_set_property, %r8
	movabsq	$gimp_drawable_undo_constructed, %r9
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 152(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 280(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 288(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_tile_manager_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_boxed
	movl	$1, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.2, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$235, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$235, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movl	$235, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$235, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -88(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r9d        # 4-byte Reload
	movl	$235, (%rsp)
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$235, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r9d        # 4-byte Reload
	movl	$235, (%rsp)
	callq	g_param_spec_int
	movl	$5, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$235, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -120(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r9d        # 4-byte Reload
	movl	$235, (%rsp)
	callq	g_param_spec_int
	movl	$6, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_undo_class_init, .Lfunc_end3-gimp_drawable_undo_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_undo_constructed,@function
gimp_drawable_undo_constructed:         # @gimp_drawable_undo_constructed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_undo_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_drawable_undo_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_drawable_undo_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	jmp	.LBB4_3
.LBB4_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.9
	movl	$0, -36(%rbp)
	jmp	.LBB4_10
.LBB4_5:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_8
# BB#7:                                 # %if.then.12
	movl	$1, -36(%rbp)
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.13
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_9:                                # %if.end.15
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.16
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_12
# BB#11:                                # %if.then.18
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.19
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$136, %edx
	movabsq	$.L__func__.gimp_drawable_undo_constructed, %rcx
	movabsq	$.L.str.9, %r8
	callq	g_assertion_message_expr
.LBB4_13:                               # %if.end.20
	jmp	.LBB4_14
.LBB4_14:                               # %do.end
	jmp	.LBB4_15
.LBB4_15:                               # %do.body.21
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB4_17
# BB#16:                                # %if.then.23
	jmp	.LBB4_18
.LBB4_17:                               # %if.else.24
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$137, %edx
	movabsq	$.L__func__.gimp_drawable_undo_constructed, %rcx
	movabsq	$.L.str.10, %r8
	callq	g_assertion_message_expr
.LBB4_18:                               # %if.end.25
	jmp	.LBB4_19
.LBB4_19:                               # %do.end.26
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_undo_constructed, .Lfunc_end4-gimp_drawable_undo_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_undo_set_property,@function
gimp_drawable_undo_set_property:        # @gimp_drawable_undo_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_undo_get_type
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
	ja	.LBB5_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_boxed
	movq	-40(%rbp), %rdi
	movq	%rax, 80(%rdi)
	jmp	.LBB5_10
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 88(%rdi)
	jmp	.LBB5_10
.LBB5_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 92(%rdi)
	jmp	.LBB5_10
.LBB5_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 96(%rdi)
	jmp	.LBB5_10
.LBB5_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 100(%rdi)
	jmp	.LBB5_10
.LBB5_6:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 104(%rdi)
	jmp	.LBB5_10
.LBB5_7:                                # %sw.default
	jmp	.LBB5_8
.LBB5_8:                                # %do.body
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
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$170, %edx
	movabsq	$.L.str.12, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB5_10
.LBB5_10:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_undo_set_property, .Lfunc_end5-gimp_drawable_undo_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_2
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5
	.quad	.LBB5_6

	.text
	.align	16, 0x90
	.type	gimp_drawable_undo_get_property,@function
gimp_drawable_undo_get_property:        # @gimp_drawable_undo_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_undo_get_type
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
	ja	.LBB6_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB6_10
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	88(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_10
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	92(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_10
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	96(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_10
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	100(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_10
.LBB6_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	104(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_10
.LBB6_7:                                # %sw.default
	jmp	.LBB6_8
.LBB6_8:                                # %do.body
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
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$205, %edx
	movabsq	$.L.str.12, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB6_10
.LBB6_10:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_undo_get_property, .Lfunc_end6-gimp_drawable_undo_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6

	.text
	.align	16, 0x90
	.type	gimp_drawable_undo_get_memsize,@function
gimp_drawable_undo_get_memsize:         # @gimp_drawable_undo_get_memsize
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	88(%rax), %esi
	callq	tile_manager_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_drawable_undo_parent_class, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
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
.Lfunc_end7:
	.size	gimp_drawable_undo_get_memsize, .Lfunc_end7-gimp_drawable_undo_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_undo_pop,@function
gimp_drawable_undo_pop:                 # @gimp_drawable_undo_pop
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	gimp_drawable_undo_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movl	88(%rdx), %edx
	movq	-32(%rbp), %rdi
	movl	92(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	96(%rdi), %r8d
	movq	-32(%rbp), %rdi
	movl	100(%rdi), %r9d
	movq	-32(%rbp), %rdi
	movl	104(%rdi), %r10d
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	callq	gimp_drawable_swap_pixels
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_drawable_undo_pop, .Lfunc_end8-gimp_drawable_undo_pop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_undo_free,@function
gimp_drawable_undo_free:                # @gimp_drawable_undo_free
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_drawable_undo_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	tile_manager_unref
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdi
	callq	tile_manager_unref
	movq	-24(%rbp), %rax
	movq	$0, 112(%rax)
.LBB9_4:                                # %if.end.8
	movq	gimp_drawable_undo_parent_class, %rax
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
.Lfunc_end9:
	.size	gimp_drawable_undo_free, .Lfunc_end9-gimp_drawable_undo_free
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
	movl	$.L.str.7, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.type	gimp_drawable_undo_get_type.g_define_type_id__volatile,@object # @gimp_drawable_undo_get_type.g_define_type_id__volatile
	.local	gimp_drawable_undo_get_type.g_define_type_id__volatile
	.comm	gimp_drawable_undo_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDrawableUndo"
	.size	.L.str, 17

	.type	gimp_drawable_undo_parent_class,@object # @gimp_drawable_undo_parent_class
	.local	gimp_drawable_undo_parent_class
	.comm	gimp_drawable_undo_parent_class,8,8
	.type	GimpDrawableUndo_private_offset,@object # @GimpDrawableUndo_private_offset
	.local	GimpDrawableUndo_private_offset
	.comm	GimpDrawableUndo_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tiles"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"sparse"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"x"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"y"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"width"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"height"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Core"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpdrawableundo.c"
	.size	.L.str.8, 19

	.type	.L__func__.gimp_drawable_undo_constructed,@object # @__func__.gimp_drawable_undo_constructed
.L__func__.gimp_drawable_undo_constructed:
	.asciz	"gimp_drawable_undo_constructed"
	.size	.L__func__.gimp_drawable_undo_constructed, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_DRAWABLE (GIMP_ITEM_UNDO (object)->item)"
	.size	.L.str.9, 49

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"drawable_undo->tiles != NULL"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.11, 54

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"property"
	.size	.L.str.12, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
