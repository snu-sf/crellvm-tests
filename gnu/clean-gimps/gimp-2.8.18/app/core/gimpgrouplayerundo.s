	.text
	.file	"gimpgrouplayerundo.bc"
	.globl	gimp_group_layer_undo_get_type
	.align	16, 0x90
	.type	gimp_group_layer_undo_get_type,@function
gimp_group_layer_undo_get_type:         # @gimp_group_layer_undo_get_type
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
	movq	gimp_group_layer_undo_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_group_layer_undo_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_group_layer_undo_class_intern_init, %rdi
	movl	$88, %r8d
	movabsq	$gimp_group_layer_undo_init, %rcx
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
	movabsq	$gimp_group_layer_undo_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_group_layer_undo_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_group_layer_undo_get_type, .Lfunc_end0-gimp_group_layer_undo_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_undo_class_intern_init,@function
gimp_group_layer_undo_class_intern_init: # @gimp_group_layer_undo_class_intern_init
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
	movq	%rax, gimp_group_layer_undo_parent_class
	cmpl	$0, GimpGroupLayerUndo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpGroupLayerUndo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_group_layer_undo_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_group_layer_undo_class_intern_init, .Lfunc_end1-gimp_group_layer_undo_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_undo_init,@function
gimp_group_layer_undo_init:             # @gimp_group_layer_undo_init
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
	.size	gimp_group_layer_undo_init, .Lfunc_end2-gimp_group_layer_undo_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_undo_class_init,@function
gimp_group_layer_undo_class_init:       # @gimp_group_layer_undo_class_init
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
	subq	$32, %rsp
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
	movabsq	$gimp_group_layer_undo_pop, %rsi
	movabsq	$gimp_group_layer_undo_constructed, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_group_layer_undo_class_init, .Lfunc_end3-gimp_group_layer_undo_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_undo_constructed,@function
gimp_group_layer_undo_constructed:      # @gimp_group_layer_undo_constructed
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_group_layer_undo_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_group_layer_undo_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	jmp	.LBB4_3
.LBB4_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_group_layer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.9
	movl	$0, -44(%rbp)
	jmp	.LBB4_10
.LBB4_5:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_8
# BB#7:                                 # %if.then.12
	movl	$1, -44(%rbp)
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.13
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_9:                                # %if.end.15
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.16
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_12
# BB#11:                                # %if.then.18
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$66, %edx
	movabsq	$.L__func__.gimp_group_layer_undo_constructed, %rcx
	movabsq	$.L.str.3, %r8
	callq	g_assertion_message_expr
.LBB4_13:                               # %if.end.20
	jmp	.LBB4_14
.LBB4_14:                               # %do.end
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	44(%rax), %ecx
	movl	%ecx, %edx
	addl	$-58, %edx
	subl	$2, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	jb	.LBB4_15
	jmp	.LBB4_30
.LBB4_30:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$60, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB4_16
	jmp	.LBB4_27
.LBB4_15:                               # %sw.bb
	jmp	.LBB4_29
.LBB4_16:                               # %sw.bb.28
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB4_18
# BB#17:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB4_19
.LBB4_18:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB4_26
.LBB4_19:                               # %cond.false
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB4_21
# BB#20:                                # %lor.lhs.false.41
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB4_22
.LBB4_21:                               # %cond.true.46
	movl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB4_25
.LBB4_22:                               # %cond.false.47
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -161(%rbp)         # 1-byte Spill
	je	.LBB4_24
# BB#23:                                # %lor.rhs
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -161(%rbp)         # 1-byte Spill
.LBB4_24:                               # %lor.end
	movb	-161(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
.LBB4_25:                               # %cond.end
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB4_26:                               # %cond.end.57
	movl	-124(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 80(%rcx)
	jmp	.LBB4_29
.LBB4_27:                               # %sw.default
	jmp	.LBB4_28
.LBB4_28:                               # %do.body.59
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$81, %edx
	movabsq	$.L__func__.gimp_group_layer_undo_constructed, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB4_29:                               # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_group_layer_undo_constructed, .Lfunc_end4-gimp_group_layer_undo_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_undo_pop,@function
gimp_group_layer_undo_pop:              # @gimp_group_layer_undo_pop
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	gimp_group_layer_undo_parent_class(%rip), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-8(%rbp), %rax
	movl	44(%rax), %esi
	movl	%esi, %ecx
	addl	$-58, %ecx
	subl	$2, %ecx
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jb	.LBB5_1
	jmp	.LBB5_22
.LBB5_22:                               # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$60, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB5_8
	jmp	.LBB5_19
.LBB5_1:                                # %sw.bb
	cmpl	$0, -12(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$58, 44(%rax)
	je	.LBB5_5
.LBB5_3:                                # %lor.lhs.false
	cmpl	$1, -12(%rbp)
	jne	.LBB5_6
# BB#4:                                 # %land.lhs.true.11
	movq	-8(%rbp), %rax
	cmpl	$59, 44(%rax)
	jne	.LBB5_6
.LBB5_5:                                # %if.then
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_group_layer_resume_resize
	jmp	.LBB5_7
.LBB5_6:                                # %if.else
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_group_layer_suspend_resize
.LBB5_7:                                # %if.end
	jmp	.LBB5_21
.LBB5_8:                                # %sw.bb.14
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB5_10
# BB#9:                                 # %lor.lhs.false.19
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB5_11
.LBB5_10:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB5_18
.LBB5_11:                               # %cond.false
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB5_13
# BB#12:                                # %lor.lhs.false.28
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB5_14
.LBB5_13:                               # %cond.true.33
	movl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB5_17
.LBB5_14:                               # %cond.false.34
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB5_16
# BB#15:                                # %lor.rhs
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB5_16:                               # %lor.end
	movb	-153(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB5_17:                               # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB5_18:                               # %cond.end.44
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	movl	80(%rdi), %edx
	movq	%rax, %rdi
	callq	gimp_drawable_convert_type
	movl	-44(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 80(%rax)
	jmp	.LBB5_21
.LBB5_19:                               # %sw.default
	jmp	.LBB5_20
.LBB5_20:                               # %do.body
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$130, %edx
	movabsq	$.L__func__.gimp_group_layer_undo_pop, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB5_21:                               # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_group_layer_undo_pop, .Lfunc_end5-gimp_group_layer_undo_pop
	.cfi_endproc

	.type	gimp_group_layer_undo_get_type.g_define_type_id__volatile,@object # @gimp_group_layer_undo_get_type.g_define_type_id__volatile
	.local	gimp_group_layer_undo_get_type.g_define_type_id__volatile
	.comm	gimp_group_layer_undo_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpGroupLayerUndo"
	.size	.L.str, 19

	.type	gimp_group_layer_undo_parent_class,@object # @gimp_group_layer_undo_parent_class
	.local	gimp_group_layer_undo_parent_class
	.comm	gimp_group_layer_undo_parent_class,8,8
	.type	GimpGroupLayerUndo_private_offset,@object # @GimpGroupLayerUndo_private_offset
	.local	GimpGroupLayerUndo_private_offset
	.comm	GimpGroupLayerUndo_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimpgrouplayerundo.c"
	.size	.L.str.2, 21

	.type	.L__func__.gimp_group_layer_undo_constructed,@object # @__func__.gimp_group_layer_undo_constructed
.L__func__.gimp_group_layer_undo_constructed:
	.asciz	"gimp_group_layer_undo_constructed"
	.size	.L__func__.gimp_group_layer_undo_constructed, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_GROUP_LAYER (GIMP_ITEM_UNDO (object)->item)"
	.size	.L.str.3, 52

	.type	.L__func__.gimp_group_layer_undo_pop,@object # @__func__.gimp_group_layer_undo_pop
.L__func__.gimp_group_layer_undo_pop:
	.asciz	"gimp_group_layer_undo_pop"
	.size	.L__func__.gimp_group_layer_undo_pop, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
