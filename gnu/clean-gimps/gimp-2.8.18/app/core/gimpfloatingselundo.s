	.text
	.file	"gimpfloatingselundo.bc"
	.globl	gimp_floating_sel_undo_get_type
	.align	16, 0x90
	.type	gimp_floating_sel_undo_get_type,@function
gimp_floating_sel_undo_get_type:        # @gimp_floating_sel_undo_get_type
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
	movq	gimp_floating_sel_undo_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_floating_sel_undo_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_floating_sel_undo_class_intern_init, %rdi
	movl	$88, %r8d
	movabsq	$gimp_floating_sel_undo_init, %rcx
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
	movabsq	$gimp_floating_sel_undo_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_floating_sel_undo_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_floating_sel_undo_get_type, .Lfunc_end0-gimp_floating_sel_undo_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_floating_sel_undo_class_intern_init,@function
gimp_floating_sel_undo_class_intern_init: # @gimp_floating_sel_undo_class_intern_init
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
	movq	%rax, gimp_floating_sel_undo_parent_class
	cmpl	$0, GimpFloatingSelUndo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFloatingSelUndo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_floating_sel_undo_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_floating_sel_undo_class_intern_init, .Lfunc_end1-gimp_floating_sel_undo_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_floating_sel_undo_init,@function
gimp_floating_sel_undo_init:            # @gimp_floating_sel_undo_init
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
	.size	gimp_floating_sel_undo_init, .Lfunc_end2-gimp_floating_sel_undo_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_floating_sel_undo_class_init,@function
gimp_floating_sel_undo_class_init:      # @gimp_floating_sel_undo_class_init
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
	movabsq	$gimp_floating_sel_undo_pop, %rsi
	movabsq	$gimp_floating_sel_undo_constructed, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_floating_sel_undo_class_init, .Lfunc_end3-gimp_floating_sel_undo_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_floating_sel_undo_constructed,@function
gimp_floating_sel_undo_constructed:     # @gimp_floating_sel_undo_constructed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_floating_sel_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_floating_sel_undo_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_floating_sel_undo_parent_class, %rcx
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
	callq	gimp_layer_get_type
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
	movl	$69, %edx
	movabsq	$.L__func__.gimp_floating_sel_undo_constructed, %rcx
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
	callq	gimp_layer_get_type
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
	subl	$73, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jne	.LBB4_16
	jmp	.LBB4_15
.LBB4_15:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	-16(%rbp), %rdi
	movq	%rax, 80(%rdi)
	jmp	.LBB4_18
.LBB4_16:                               # %sw.default
	jmp	.LBB4_17
.LBB4_17:                               # %do.body.29
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$80, %edx
	movabsq	$.L__func__.gimp_floating_sel_undo_constructed, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB4_18:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_floating_sel_undo_constructed, .Lfunc_end4-gimp_floating_sel_undo_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_floating_sel_undo_pop,@function
gimp_floating_sel_undo_pop:             # @gimp_floating_sel_undo_pop
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_floating_sel_undo_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	gimp_floating_sel_undo_parent_class(%rip), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-8(%rbp), %rax
	movl	44(%rax), %esi
	subl	$73, %esi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	jne	.LBB5_5
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	cmpl	$0, -12(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	80(%rax), %rsi
	callq	gimp_layer_set_floating_sel_drawable
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_image_set_active_layer
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_floating_sel_drawable
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_attach_floating_sel
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, %rdi
	callq	gimp_drawable_detach_floating_sel
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_layer_set_floating_sel_drawable
.LBB5_4:                                # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_object_name_changed
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-40(%rbp), %rsi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	jmp	.LBB5_7
.LBB5_5:                                # %sw.default
	jmp	.LBB5_6
.LBB5_6:                                # %do.body
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$128, %edx
	movabsq	$.L__func__.gimp_floating_sel_undo_pop, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB5_7:                                # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_floating_sel_undo_pop, .Lfunc_end5-gimp_floating_sel_undo_pop
	.cfi_endproc

	.type	gimp_floating_sel_undo_get_type.g_define_type_id__volatile,@object # @gimp_floating_sel_undo_get_type.g_define_type_id__volatile
	.local	gimp_floating_sel_undo_get_type.g_define_type_id__volatile
	.comm	gimp_floating_sel_undo_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFloatingSelUndo"
	.size	.L.str, 20

	.type	gimp_floating_sel_undo_parent_class,@object # @gimp_floating_sel_undo_parent_class
	.local	gimp_floating_sel_undo_parent_class
	.comm	gimp_floating_sel_undo_parent_class,8,8
	.type	GimpFloatingSelUndo_private_offset,@object # @GimpFloatingSelUndo_private_offset
	.local	GimpFloatingSelUndo_private_offset
	.comm	GimpFloatingSelUndo_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimpfloatingselundo.c"
	.size	.L.str.2, 22

	.type	.L__func__.gimp_floating_sel_undo_constructed,@object # @__func__.gimp_floating_sel_undo_constructed
.L__func__.gimp_floating_sel_undo_constructed:
	.asciz	"gimp_floating_sel_undo_constructed"
	.size	.L__func__.gimp_floating_sel_undo_constructed, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_LAYER (GIMP_ITEM_UNDO (object)->item)"
	.size	.L.str.3, 46

	.type	.L__func__.gimp_floating_sel_undo_pop,@object # @__func__.gimp_floating_sel_undo_pop
.L__func__.gimp_floating_sel_undo_pop:
	.asciz	"gimp_floating_sel_undo_pop"
	.size	.L__func__.gimp_floating_sel_undo_pop, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
