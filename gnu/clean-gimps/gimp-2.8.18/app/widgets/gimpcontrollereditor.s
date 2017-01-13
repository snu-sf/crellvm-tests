	.text
	.file	"gimpcontrollereditor.bc"
	.globl	gimp_controller_editor_get_type
	.align	16, 0x90
	.type	gimp_controller_editor_get_type,@function
gimp_controller_editor_get_type:        # @gimp_controller_editor_get_type
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
	movq	gimp_controller_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_controller_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_controller_editor_class_intern_init, %rdi
	movl	$192, %r8d
	movabsq	$gimp_controller_editor_init, %rcx
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
	movabsq	$gimp_controller_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_controller_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_controller_editor_get_type, .Lfunc_end0-gimp_controller_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_class_intern_init,@function
gimp_controller_editor_class_intern_init: # @gimp_controller_editor_class_intern_init
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
	movq	%rax, gimp_controller_editor_parent_class
	cmpl	$0, GimpControllerEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpControllerEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_controller_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_controller_editor_class_intern_init, .Lfunc_end1-gimp_controller_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_init,@function
gimp_controller_editor_init:            # @gimp_controller_editor_init
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_controller_editor_init, .Lfunc_end2-gimp_controller_editor_init
	.cfi_endproc

	.globl	gimp_controller_editor_new
	.align	16, 0x90
	.type	gimp_controller_editor_new,@function
gimp_controller_editor_new:             # @gimp_controller_editor_new
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_controller_info_get_type
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
	movabsq	$.L__func__.gimp_controller_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	callq	gimp_controller_editor_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_controller_editor_new, .Lfunc_end3-gimp_controller_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_class_init,@function
gimp_controller_editor_class_init:      # @gimp_controller_editor_class_init
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
	movabsq	$gimp_controller_editor_unmap, %rsi
	movabsq	$gimp_controller_editor_get_property, %rdi
	movabsq	$gimp_controller_editor_set_property, %rcx
	movabsq	$gimp_controller_editor_finalize, %rdx
	movabsq	$gimp_controller_editor_constructed, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 216(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_controller_info_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_controller_editor_class_init, .Lfunc_end4-gimp_controller_editor_class_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_controller_editor_constructed,@function
gimp_controller_editor_constructed:     # @gimp_controller_editor_constructed
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
	pushq	%r14
	pushq	%rbx
	subq	$880, %rsp              # imm = 0x370
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	callq	gimp_controller_editor_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	gimp_controller_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_controller_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_controller_info_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.9
	movl	$0, -196(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.12
	movl	$1, -196(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.13
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB5_9:                                # %if.end.15
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.16
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.18
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$179, %edx
	movabsq	$.L__func__.gimp_controller_editor_constructed, %rcx
	movabsq	$.L.str.7, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.20
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	movabsq	$.L.str.8, %rdi
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gimp_prop_entry_new
	movq	%rax, -136(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	-380(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rsi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rsi
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	movl	-428(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_frame_new
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	movl	-476(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -172(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rdi
	movl	-172(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -172(%rbp)
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	gimp_prop_label_new
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movl	-492(%rbp), %edx        # 4-byte Reload
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-96(%rbp), %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rdi
	movl	-172(%rbp), %edx
	movl	%edx, %r9d
	addl	$1, %r9d
	movl	%r9d, -172(%rbp)
	movl	%edx, -532(%rbp)        # 4-byte Spill
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	gimp_prop_label_new
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movl	-532(%rbp), %edx        # 4-byte Reload
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_type_check_class_cast
	leaq	-164(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_class_list_properties
	movq	%rax, -160(%rbp)
	movl	$0, -176(%rbp)
.LBB5_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-176(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jae	.LBB5_39
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB5_15 Depth=1
	movslq	-176(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gimp_controller_get_type
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_18
# BB#17:                                # %if.then.78
                                        #   in Loop: Header=BB5_15 Depth=1
	jmp	.LBB5_38
.LBB5_18:                               # %if.end.79
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB5_20
# BB#19:                                # %if.then.88
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	$0, -236(%rbp)
	jmp	.LBB5_25
.LBB5_20:                               # %if.else.89
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_23
# BB#21:                                # %land.lhs.true.92
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB5_23
# BB#22:                                # %if.then.96
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	$1, -236(%rbp)
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.97
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB5_24:                               # %if.end.99
                                        #   in Loop: Header=BB5_15 Depth=1
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.100
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB5_27
# BB#26:                                # %if.then.103
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-48(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	gimp_controller_string_view_new
	movq	%rax, -216(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-172(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -172(%rbp)
	movq	-208(%rbp), %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	callq	g_param_spec_get_nick
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-216(%rbp), %r8
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movl	-588(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB5_37
.LBB5_27:                               # %if.else.110
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-208(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rax
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB5_29
# BB#28:                                # %if.then.119
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	$0, -260(%rbp)
	jmp	.LBB5_34
.LBB5_29:                               # %if.else.120
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_32
# BB#30:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB5_32
# BB#31:                                # %if.then.127
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	$1, -260(%rbp)
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.128
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB5_33:                               # %if.end.130
                                        #   in Loop: Header=BB5_15 Depth=1
	jmp	.LBB5_34
.LBB5_34:                               # %if.end.131
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB5_36
# BB#35:                                # %if.then.134
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-48(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	gimp_controller_int_view_new
	movq	%rax, -216(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-172(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -172(%rbp)
	movq	-208(%rbp), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	callq	g_param_spec_get_nick
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-216(%rbp), %r8
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movl	-620(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB5_36:                               # %if.end.141
                                        #   in Loop: Header=BB5_15 Depth=1
	jmp	.LBB5_37
.LBB5_37:                               # %if.end.142
                                        #   in Loop: Header=BB5_15 Depth=1
	jmp	.LBB5_38
.LBB5_38:                               # %for.inc
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB5_15
.LBB5_39:                               # %for.end
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$4, %edi
	movl	$64, %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-128(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_controller_editor_row_activated, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-120(%rbp), %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_controller_editor_sel_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-688(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gimp_ui_managers_from_name
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_controller_get_n_events
	movl	%eax, -168(%rbp)
	movl	$0, -176(%rbp)
.LBB5_40:                               # %for.cond.163
                                        # =>This Inner Loop Header: Depth=1
	movl	-176(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jge	.LBB5_47
# BB#41:                                # %for.body.165
                                        #   in Loop: Header=BB5_40 Depth=1
	movq	$0, -328(%rbp)
	movq	-48(%rbp), %rdi
	movl	-176(%rbp), %esi
	callq	gimp_controller_get_event_name
	movq	%rax, -304(%rbp)
	movq	-48(%rbp), %rdi
	movl	-176(%rbp), %esi
	callq	gimp_controller_get_event_blurb
	movq	%rax, -312(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-304(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -320(%rbp)
	cmpq	$0, -320(%rbp)
	je	.LBB5_45
# BB#42:                                # %if.then.175
                                        #   in Loop: Header=BB5_40 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	movq	-320(%rbp), %rdx
	callq	gimp_ui_manager_find_action
	movq	%rax, -336(%rbp)
	cmpq	$0, -336(%rbp)
	je	.LBB5_44
# BB#43:                                # %if.then.179
                                        #   in Loop: Header=BB5_40 Depth=1
	movq	-336(%rbp), %rdi
	callq	gtk_action_get_stock_id
	movq	%rax, -328(%rbp)
.LBB5_44:                               # %if.end.181
                                        #   in Loop: Header=BB5_40 Depth=1
	jmp	.LBB5_45
.LBB5_45:                               # %if.end.182
                                        #   in Loop: Header=BB5_40 Depth=1
	leaq	-296(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	gtk_list_store_append
	leaq	-296(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %eax
	movl	$3, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdi
	movq	-304(%rbp), %r10
	movq	-312(%rbp), %r11
	movq	-328(%rbp), %rbx
	movq	-320(%rbp), %r14
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	%r9d, -704(%rbp)        # 4-byte Spill
	movq	%r11, %r9
	movl	$2, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	%r14, 24(%rsp)
	movl	$-1, 32(%rsp)
	movl	%eax, -708(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set
# BB#46:                                # %for.inc.183
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB5_40
.LBB5_47:                               # %for.end.185
	movq	-120(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	xorl	%esi, %esi
	movabsq	$.L.str.21, %r8
	movl	$1, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-728(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-736(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movl	%eax, -748(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.22, %rdi
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	movq	-120(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -772(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_pixbuf_new
	xorl	%edx, %edx
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.23, %rdx
	movl	$2, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.21, %rdx
	movl	$3, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -788(%rbp)        # 4-byte Spill
	movl	-788(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_toggle_button_new_with_mnemonic
	movq	-32(%rbp), %rsi
	movq	%rax, 152(%rsi)
	movq	-104(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_controller_editor_grab_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rdi
	movq	-32(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	%rax, -808(%rbp)        # 8-byte Spill
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.27, %rdi
	callq	gtk_button_new_from_stock
	movq	-32(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_controller_editor_edit_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	-32(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rcx
	movq	168(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_controller_editor_delete_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	xorl	%esi, %esi
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rdi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_set_sensitive
	addq	$880, %rsp              # imm = 0x370
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_controller_editor_constructed, .Lfunc_end5-gimp_controller_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_finalize,@function
gimp_controller_editor_finalize:        # @gimp_controller_editor_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_controller_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	128(%rdx), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_controller_info_set_event_snooper
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rcx
	movq	$0, 128(%rcx)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB6_4:                                # %if.end.9
	movq	-16(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_destroy
.LBB6_6:                                # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_controller_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_controller_editor_finalize, .Lfunc_end6-gimp_controller_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_set_property,@function
gimp_controller_editor_set_property:    # @gimp_controller_editor_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_controller_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 136(%rdi)
	jmp	.LBB7_6
.LBB7_3:                                # %sw.default
	jmp	.LBB7_4
.LBB7_4:                                # %do.body
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
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$437, %edx              # imm = 0x1B5
	movabsq	$.L.str.43, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_controller_editor_set_property, .Lfunc_end7-gimp_controller_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_get_property,@function
gimp_controller_editor_get_property:    # @gimp_controller_editor_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_controller_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_7
.LBB8_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_3
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_6
.LBB8_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_6
.LBB8_3:                                # %sw.default
	jmp	.LBB8_4
.LBB8_4:                                # %do.body
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
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$461, %edx              # imm = 0x1CD
	movabsq	$.L.str.43, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_controller_editor_get_property, .Lfunc_end8-gimp_controller_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_unmap,@function
gimp_controller_editor_unmap:           # @gimp_controller_editor_unmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_controller_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movq	%rax, %rdi
	callq	gtk_dialog_response
.LBB9_2:                                # %if.end
	movq	gimp_controller_editor_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_controller_editor_unmap, .Lfunc_end9-gimp_controller_editor_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_string_view_new,@function
gimp_controller_string_view_new:        # @gimp_controller_string_view_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.5
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.7
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.8
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_string_view_new, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_29
.LBB10_11:                              # %if.end.9
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB10_27
# BB#13:                                # %if.then.11
	movabsq	$.L.str.31, %rdi
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_class_find_property
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	g_param_spec_types, %rax
	movq	152(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.26
	movl	$0, -100(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.27
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.30
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.34
	movl	$1, -100(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.35
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB10_19:                              # %if.end.37
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.38
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB10_23
# BB#21:                                # %land.lhs.true.41
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB10_23
# BB#22:                                # %if.then.45
	leaq	-64(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
.LBB10_23:                              # %if.end.46
	movq	-72(%rbp), %rdi
	callq	g_free
	cmpq	$0, -64(%rbp)
	je	.LBB10_25
# BB#24:                                # %if.then.48
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_prop_string_combo_box_new
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB10_26
.LBB10_25:                              # %if.else.52
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_prop_entry_new
	movq	%rax, -32(%rbp)
.LBB10_26:                              # %if.end.56
	jmp	.LBB10_28
.LBB10_27:                              # %if.else.57
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_prop_label_new
	movq	%rax, -32(%rbp)
.LBB10_28:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_controller_string_view_new, .Lfunc_end10-gimp_controller_string_view_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4620693217682128896     # double 8
	.text
	.align	16, 0x90
	.type	gimp_controller_int_view_new,@function
gimp_controller_int_view_new:           # @gimp_controller_int_view_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.5
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.7
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.8
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_int_view_new, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_29
.LBB11_11:                              # %if.end.9
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB11_27
# BB#13:                                # %if.then.11
	movabsq	$.L.str.31, %rdi
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_class_find_property
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	g_param_spec_types, %rax
	movq	152(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.26
	movl	$0, -100(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.27
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.30
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.34
	movl	$1, -100(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.35
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB11_19:                              # %if.end.37
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.38
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB11_23
# BB#21:                                # %land.lhs.true.41
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_int_store_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB11_23
# BB#22:                                # %if.then.45
	leaq	-64(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
.LBB11_23:                              # %if.end.46
	movq	-72(%rbp), %rdi
	callq	g_free
	cmpq	$0, -64(%rbp)
	je	.LBB11_25
# BB#24:                                # %if.then.48
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_prop_int_combo_box_new
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB11_26
.LBB11_25:                              # %if.else.52
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%edx, %edx
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_prop_spin_button_new
	movq	%rax, -32(%rbp)
.LBB11_26:                              # %if.end.56
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.57
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_prop_label_new
	movq	%rax, -32(%rbp)
.LBB11_28:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_controller_int_view_new, .Lfunc_end11-gimp_controller_int_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_row_activated,@function
gimp_controller_editor_row_activated:   # @gimp_controller_editor_row_activated
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB12_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_controller_editor_row_activated, .Lfunc_end12-gimp_controller_editor_row_activated
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_sel_changed,@function
gimp_controller_editor_sel_changed:     # @gimp_controller_editor_sel_changed
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
	leaq	-24(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB13_8
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movl	$3, %r8d
	leaq	-96(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-24(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -96(%rbp)
	je	.LBB13_5
# BB#2:                                 # %if.then.2
	movq	-96(%rbp), %rdi
	callq	g_free
	movl	$1, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %if.end.7
	movl	$1, -76(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB13_7
# BB#6:                                 # %if.then.9
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
.LBB13_7:                               # %if.end.12
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB13_8:                               # %if.end.13
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rdi
	movl	-76(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-64(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rdi
	movl	-80(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-72(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	128(%rdx), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_controller_info_set_event_snooper
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_controller_editor_sel_changed, .Lfunc_end13-gimp_controller_editor_sel_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_grab_toggled,@function
gimp_controller_editor_grab_toggled:    # @gimp_controller_editor_grab_toggled
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$gimp_controller_editor_snooper, %rsi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_controller_info_set_event_snooper
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	128(%rdx), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_controller_info_set_event_snooper
.LBB14_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_controller_editor_grab_toggled, .Lfunc_end14-gimp_controller_editor_grab_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_edit_clicked,@function
gimp_controller_editor_edit_clicked:    # @gimp_controller_editor_edit_clicked
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-56(%rbp), %rsi
	movq	128(%rsi), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_controller_info_set_event_snooper
	leaq	-64(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	144(%rcx), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$1, %r8d
	leaq	-112(%rbp), %r9
	movl	$3, %eax
	leaq	-120(%rbp), %rdi
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	-64(%rbp), %r11
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movl	$3, (%rsp)
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	$-1, 16(%rsp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movb	$0, %al
	movl	%r10d, -152(%rbp)       # 4-byte Spill
	callq	gtk_tree_model_get
.LBB15_2:                               # %if.end
	cmpq	$0, -104(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	-56(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-136(%rbp), %r9
	movq	-56(%rbp), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.37, %rcx
	movabsq	$.L.str.27, %r8
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %r9
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.40, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-176(%rbp), %r15        # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-168(%rbp), %r12        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movq	-184(%rbp), %r13        # 8-byte Reload
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movq	%r13, %rdx
	movq	-192(%rbp), %r15        # 8-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	%rax, (%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$-6, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	$-5, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r14, -240(%rbp)        # 8-byte Spill
	movl	%r11d, -244(%rbp)       # 4-byte Spill
	callq	gimp_viewable_dialog_new
	movq	-56(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movq	176(%rdi), %rdi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	addq	$176, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.37, %rsi
	movq	-56(%rbp), %rdi
	movq	176(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_dialog_factory_add_foreign
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_controller_editor_edit_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_ui_managers_from_name
	xorl	%edx, %edx
	movq	(%rax), %rax
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_action_editor_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movq	-128(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_action_editor_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_controller_editor_edit_activated, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	128(%rax), %rax
	movq	-56(%rbp), %r10
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-128(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gimp_action_editor_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-56(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-56(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	addq	$184, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-56(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB15_4:                               # %if.end.49
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_controller_editor_edit_clicked, .Lfunc_end15-gimp_controller_editor_edit_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_delete_clicked,@function
gimp_controller_editor_delete_clicked:  # @gimp_controller_editor_delete_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_controller_info_set_event_snooper
	leaq	-24(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB16_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB16_2:                               # %if.end
	cmpq	$0, -64(%rbp)
	je	.LBB16_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	48(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	g_hash_table_remove
	movq	-64(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_free
	movq	-24(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$3, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
.LBB16_4:                               # %if.end.7
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_controller_editor_delete_clicked, .Lfunc_end16-gimp_controller_editor_delete_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_snooper,@function
gimp_controller_editor_snooper:         # @gimp_controller_editor_snooper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_controller_editor_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_tree_selection_get_selected
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movl	16(%rcx), %esi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_controller_get_event_name
	leaq	-80(%rbp), %rsi
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -84(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB17_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_tree_selection_get_tree_view
	leaq	-80(%rbp), %rsi
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_tree_selection_select_iter
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_get_path
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movss	%xmm0, -136(%rbp)       # 4-byte Spill
	movss	-136(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_tree_view_scroll_to_cell
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gtk_tree_view_set_cursor
	movq	-120(%rbp), %rdi
	callq	gtk_tree_path_free
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_grab_focus
	movq	-104(%rbp), %rdi
	callq	g_free
	jmp	.LBB17_6
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-104(%rbp), %rdi
	callq	g_free
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -84(%rbp)
	jmp	.LBB17_1
.LBB17_6:                               # %for.end
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$1, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_controller_editor_snooper, .Lfunc_end17-gimp_controller_editor_snooper
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_edit_response,@function
gimp_controller_editor_edit_response:   # @gimp_controller_editor_edit_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	cmpl	$-5, -12(%rbp)
	jne	.LBB18_9
# BB#1:                                 # %if.then
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB18_3
# BB#2:                                 # %if.then.3
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	leaq	-80(%rbp), %rcx
	movl	$5, %r8d
	leaq	-88(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB18_3:                               # %if.end
	leaq	-32(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB18_5
# BB#4:                                 # %if.then.6
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB18_5:                               # %if.end.7
	cmpq	$0, -72(%rbp)
	je	.LBB18_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -88(%rbp)
	je	.LBB18_8
# BB#7:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	48(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-88(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_strdup
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_hash_table_insert
	movq	-32(%rbp), %rdx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	movl	$3, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %r9
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
.LBB18_8:                               # %if.end.16
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_controller_editor_sel_changed
.LBB18_9:                               # %if.end.18
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_controller_editor_edit_response, .Lfunc_end18-gimp_controller_editor_edit_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_editor_edit_activated,@function
gimp_controller_editor_edit_activated:  # @gimp_controller_editor_edit_activated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_response
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_controller_editor_edit_activated, .Lfunc_end19-gimp_controller_editor_edit_activated
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
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

	.type	gimp_controller_editor_get_type.g_define_type_id__volatile,@object # @gimp_controller_editor_get_type.g_define_type_id__volatile
	.local	gimp_controller_editor_get_type.g_define_type_id__volatile
	.comm	gimp_controller_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpControllerEditor"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_controller_editor_new,@object # @__func__.gimp_controller_editor_new
.L__func__.gimp_controller_editor_new:
	.asciz	"gimp_controller_editor_new"
	.size	.L__func__.gimp_controller_editor_new, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTROLLER_INFO (info)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"controller-info"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"context"
	.size	.L.str.5, 8

	.type	gimp_controller_editor_parent_class,@object # @gimp_controller_editor_parent_class
	.local	gimp_controller_editor_parent_class
	.comm	gimp_controller_editor_parent_class,8,8
	.type	GimpControllerEditor_private_offset,@object # @GimpControllerEditor_private_offset
	.local	GimpControllerEditor_private_offset
	.comm	GimpControllerEditor_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpcontrollereditor.c"
	.size	.L.str.6, 23

	.type	.L__func__.gimp_controller_editor_constructed,@object # @__func__.gimp_controller_editor_constructed
.L__func__.gimp_controller_editor_constructed:
	.asciz	"gimp_controller_editor_constructed"
	.size	.L__func__.gimp_controller_editor_constructed, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_CONTROLLER_INFO (editor->info)"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"General"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"name"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"debug-events"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Dump events from this controller"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"enabled"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Enable this controller"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Name:"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"State:"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"state"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"row-activated"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"changed"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<Image>"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Event"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"text"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Action"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"stock-id"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Grab event"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"toggled"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Select the next event arriving from the controller"
	.size	.L.str.26, 51

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-edit"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"clicked"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-clear"
	.size	.L.str.29, 10

	.type	.L__func__.gimp_controller_string_view_new,@object # @__func__.gimp_controller_string_view_new
.L__func__.gimp_controller_string_view_new:
	.asciz	"gimp_controller_string_view_new"
	.size	.L__func__.gimp_controller_string_view_new, 32

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"G_IS_PARAM_SPEC_STRING (pspec)"
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s-values"
	.size	.L.str.31, 10

	.type	.L__func__.gimp_controller_int_view_new,@object # @__func__.gimp_controller_int_view_new
.L__func__.gimp_controller_int_view_new:
	.asciz	"gimp_controller_int_view_new"
	.size	.L__func__.gimp_controller_int_view_new, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"G_IS_PARAM_SPEC_INT (pspec)"
	.size	.L.str.32, 28

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Remove the action assigned to '%s'"
	.size	.L.str.33, 35

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Assign an action to '%s'"
	.size	.L.str.34, 25

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Select Action for Event '%s'"
	.size	.L.str.35, 29

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Select Controller Event Action"
	.size	.L.str.36, 31

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-controller-action-dialog"
	.size	.L.str.37, 30

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-prefs-input-controllers"
	.size	.L.str.38, 29

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gtk-cancel"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gtk-ok"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"response"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.42, 54

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"property"
	.size	.L.str.43, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
