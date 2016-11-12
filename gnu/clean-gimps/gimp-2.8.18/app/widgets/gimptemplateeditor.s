	.text
	.file	"gimptemplateeditor.bc"
	.globl	gimp_template_editor_get_type
	.align	16, 0x90
	.type	gimp_template_editor_get_type,@function
gimp_template_editor_get_type:          # @gimp_template_editor_get_type
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
	movq	gimp_template_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_template_editor_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_template_editor_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_template_editor_init, %rcx
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
	movabsq	$gimp_template_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_template_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_template_editor_get_type, .Lfunc_end0-gimp_template_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_editor_class_intern_init,@function
gimp_template_editor_class_intern_init: # @gimp_template_editor_class_intern_init
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
	movq	%rax, gimp_template_editor_parent_class
	cmpl	$0, GimpTemplateEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTemplateEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_template_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_template_editor_class_intern_init, .Lfunc_end1-gimp_template_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_editor_init,@function
gimp_template_editor_init:              # @gimp_template_editor_init
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_template_editor_init, .Lfunc_end2-gimp_template_editor_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1065353216              # float 1
.LCPI3_1:
	.long	1056964608              # float 0.5
	.text
	.globl	gimp_template_editor_new
	.align	16, 0x90
	.type	gimp_template_editor_new,@function
gimp_template_editor_new:               # @gimp_template_editor_new
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -28(%rbp)
	je	.LBB3_10
# BB#2:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_11
.LBB3_10:                               # %if.then.9
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_template_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_16
.LBB3_12:                               # %if.end.11
	jmp	.LBB3_13
.LBB3_13:                               # %do.end
	callq	gimp_template_editor_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.17
	movl	$2, %eax
	xorl	%edx, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movl	$128, %edx
	movq	%rax, %rdi
	callq	gimp_prop_entry_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_prop_icon_picker_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-96(%rbp), %r8
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB3_15:                               # %if.end.45
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB3_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_template_editor_new, .Lfunc_end3-gimp_template_editor_new
	.cfi_endproc

	.globl	gimp_template_editor_get_template
	.align	16, 0x90
	.type	gimp_template_editor_get_template,@function
gimp_template_editor_get_template:      # @gimp_template_editor_get_template
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_template_editor_get_type
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
	movabsq	$.L__func__.gimp_template_editor_get_template, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_template_editor_get_template, .Lfunc_end4-gimp_template_editor_get_template
	.cfi_endproc

	.globl	gimp_template_editor_show_advanced
	.align	16, 0x90
	.type	gimp_template_editor_show_advanced,@function
gimp_template_editor_show_advanced:     # @gimp_template_editor_show_advanced
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_template_editor_get_type
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
	movabsq	$.L__func__.gimp_template_editor_show_advanced, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_expander_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_expander_set_expanded
.LBB5_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_template_editor_show_advanced, .Lfunc_end5-gimp_template_editor_show_advanced
	.cfi_endproc

	.globl	gimp_template_editor_get_size_se
	.align	16, 0x90
	.type	gimp_template_editor_get_size_se,@function
gimp_template_editor_get_size_se:       # @gimp_template_editor_get_size_se
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_template_editor_get_type
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
	movabsq	$.L__func__.gimp_template_editor_get_size_se, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_template_editor_get_size_se, .Lfunc_end6-gimp_template_editor_get_size_se
	.cfi_endproc

	.globl	gimp_template_editor_get_resolution_se
	.align	16, 0x90
	.type	gimp_template_editor_get_resolution_se,@function
gimp_template_editor_get_resolution_se: # @gimp_template_editor_get_resolution_se
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
	movq	%rax, -24(%rbp)
	callq	gimp_template_editor_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_template_editor_get_resolution_se, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_template_editor_get_resolution_se, .Lfunc_end7-gimp_template_editor_get_resolution_se
	.cfi_endproc

	.globl	gimp_template_editor_get_resolution_chain
	.align	16, 0x90
	.type	gimp_template_editor_get_resolution_chain,@function
gimp_template_editor_get_resolution_chain: # @gimp_template_editor_get_resolution_chain
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
	callq	gimp_template_editor_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_template_editor_get_resolution_chain, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_template_editor_get_resolution_chain, .Lfunc_end8-gimp_template_editor_get_resolution_chain
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_editor_class_init,@function
gimp_template_editor_class_init:        # @gimp_template_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_template_editor_get_property, %rsi
	movabsq	$gimp_template_editor_set_property, %rdi
	movabsq	$gimp_template_editor_finalize, %rcx
	movabsq	$gimp_template_editor_constructed, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_template_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_template_editor_class_init, .Lfunc_end9-gimp_template_editor_class_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_1:
	.quad	4607182418800017408     # double 1
.LCPI10_2:
	.quad	4621819117588971520     # double 10
.LCPI10_3:
	.quad	4605681218924226942     # double 0.83333333333329995
	.text
	.align	16, 0x90
	.type	gimp_template_editor_constructed,@function
gimp_template_editor_constructed:       # @gimp_template_editor_constructed
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
	pushq	%r14
	pushq	%rbx
	subq	$1216, %rsp             # imm = 0x4C0
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	$0, -176(%rbp)
	movq	gimp_template_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_template_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
.LBB10_2:                               # %if.end
	jmp	.LBB10_3
.LBB10_3:                               # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_5
# BB#4:                                 # %if.then.8
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$153, %edx
	movabsq	$.L__func__.gimp_template_editor_constructed, %rcx
	movabsq	$.L.str.10, %r8
	callq	g_assertion_message_expr
.LBB10_6:                               # %if.end.9
	jmp	.LBB10_7
.LBB10_7:                               # %do.end
	movabsq	$.L.str.11, %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-104(%rbp), %rdi
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-256(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-256(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	leaq	-104(%rbp), %rdi
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-272(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-272(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-88(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$6, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-308(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-312(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -316(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-96(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-88(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$6, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -352(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gimp_template_get_unit
	movabsq	$.L.str.14, %rdi
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$8, %r8d
	movl	%ecx, %edi
	movl	-368(%rbp), %esi        # 4-byte Reload
	movl	%edx, -372(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	-372(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-376(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -380(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$8, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_size_entry_new
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	movl	-412(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-492(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -496(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-496(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %r8
	movq	-48(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movq	%r8, -512(%rbp)         # 8-byte Spill
	callq	gimp_template_get_resolution_x
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	callq	gimp_template_get_resolution_y
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %r8         # 8-byte Reload
	movsd	-520(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -528(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-528(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_prop_coordinates_connect
	xorl	%edi, %edi
	movl	$12, %esi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$3, %r10d
	movl	$2, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	callq	gtk_table_attach_defaults
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	movl	-556(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_aspect_type_get_type
	movabsq	$.L.str.18, %rsi
	movl	$1, %edx
	movabsq	$gimp_template_editor_aspect_callback, %rdi
	movq	-32(%rbp), %r11
	movq	-40(%rbp), %rbx
	addq	$8, %rbx
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movq	%r11, %r8
	movq	%rbx, %r9
	callq	gimp_enum_stock_box_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_hide
	movq	-80(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -580(%rbp)        # 4-byte Spill
	movl	-580(%rbp), %ecx        # 4-byte Reload
	movl	-580(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	-40(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI10_3, %xmm0        # xmm0 = mem[0],zero
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-40(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -612(%rbp)       # 4-byte Spill
	movss	-612(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -628(%rbp)        # 4-byte Spill
	movl	-628(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	-40(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI10_3, %xmm0        # xmm0 = mem[0],zero
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-40(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -652(%rbp)       # 4-byte Spill
	movss	-652(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -668(%rbp)        # 4-byte Spill
	movl	-668(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -184(%rbp)
	callq	gtk_expander_get_type
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.23, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-184(%rbp), %rdx
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-184(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rdi
	callq	gimp_frame_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$5, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-88(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-64(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-104(%rbp), %rdi
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
	movsd	-736(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-736(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-736(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-736(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	leaq	-104(%rbp), %rdi
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
	movsd	-752(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-752(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-752(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-752(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-96(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-88(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$6, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -788(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-788(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -792(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-792(%rbp), %r14d       # 4-byte Reload
	movl	%r8d, -796(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-96(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-88(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$6, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -828(%rbp)        # 4-byte Spill
	movl	-828(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -832(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -844(%rbp)        # 4-byte Spill
	movl	-844(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gimp_template_get_resolution_unit
	movabsq	$.L.str.27, %rdi
	movl	%eax, -848(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$8, %edx
	movl	$2, %r8d
	movl	%ecx, %edi
	movl	-848(%rbp), %esi        # 4-byte Reload
	movl	%edx, -852(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -856(%rbp)        # 4-byte Spill
	movl	-856(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -860(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	$8, (%rsp)
	movl	$2, 8(%rsp)
	callq	gimp_size_entry_new
	movq	-40(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -900(%rbp)        # 4-byte Spill
	movl	-900(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, -920(%rbp)        # 8-byte Spill
	movq	%rsi, -928(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -940(%rbp)        # 4-byte Spill
	movl	-940(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	movq	%rsi, -968(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -980(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-980(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -984(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-984(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gimp_template_get_resolution_x
	xorl	%ecx, %ecx
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gimp_template_get_resolution_y
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	callq	gimp_size_entry_set_resolution
	movl	$3, %edi
	callq	gimp_chain_button_new
	movq	-40(%rbp), %r11
	movq	%rax, 72(%r11)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, -1028(%rbp)       # 4-byte Spill
	movl	-1028(%rbp), %r9d       # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.30, %rcx
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	64(%rdi), %r8
	movq	-40(%rbp), %rdi
	movq	72(%rdi), %r9
	movq	%rax, %rdi
	movsd	%xmm0, -1040(%rbp)      # 8-byte Spill
	movsd	-1040(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_prop_coordinates_connect
	movq	-176(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	64(%rcx), %rcx
	movl	%eax, -1044(%rbp)       # 4-byte Spill
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	168(%rax), %rax
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_set_focus_chain
	movq	-176(%rbp), %rdi
	callq	g_list_free
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rax, %rdi
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-144(%rbp), %r8
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rax, %rdi
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-144(%rbp), %r8
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gtk_scrolled_window_new
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-152(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_scrolled_window_set_policy
	movq	-88(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	xorps	%xmm0, %xmm0
	movl	$1, %r9d
	movq	-152(%rbp), %r8
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movss	%xmm0, -1156(%rbp)      # 4-byte Spill
	movss	-1156(%rbp), %xmm1      # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movl	$512, %edx              # imm = 0x200
	movq	%rax, %rdi
	callq	gimp_prop_text_buffer_new
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	gtk_text_view_new_with_buffer
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-160(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movq	-152(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_template_editor_template_notify, %rax
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1192(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_object
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gimp_template_editor_template_notify
	addq	$1216, %rsp             # imm = 0x4C0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_template_editor_constructed, .Lfunc_end10-gimp_template_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_editor_finalize,@function
gimp_template_editor_finalize:          # @gimp_template_editor_finalize
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
	callq	gimp_template_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB11_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_template_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_template_editor_finalize, .Lfunc_end11-gimp_template_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_editor_set_property,@function
gimp_template_editor_set_property:      # @gimp_template_editor_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
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
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
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
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$455, %edx              # imm = 0x1C7
	movabsq	$.L.str.43, %rcx
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
	.size	gimp_template_editor_set_property, .Lfunc_end12-gimp_template_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_editor_get_property,@function
gimp_template_editor_get_property:      # @gimp_template_editor_get_property
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
	callq	gimp_template_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB13_2
	jmp	.LBB13_1
.LBB13_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB13_5
.LBB13_2:                               # %sw.default
	jmp	.LBB13_3
.LBB13_3:                               # %do.body
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
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$475, %edx              # imm = 0x1DB
	movabsq	$.L.str.43, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB13_5
.LBB13_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_template_editor_get_property, .Lfunc_end13-gimp_template_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_editor_aspect_callback,@function
gimp_template_editor_aspect_callback:   # @gimp_template_editor_aspect_callback
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp47:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB14_5
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB14_5
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_template_get_width
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_template_get_height
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_template_get_resolution_x
	movsd	%xmm0, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_template_get_resolution_y
	movsd	%xmm0, -64(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB14_4
# BB#3:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	jmp	.LBB14_5
.LBB14_4:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_template_editor_template_notify, %rdx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.28, %r9
	movabsq	$.L.str.29, %rax
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-40(%rbp), %r8
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ebx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%ebx, %r8d
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$2, %al
	callq	g_object_set
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_template_editor_template_notify, %rcx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %r9
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %ebx        # 4-byte Reload
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_template_editor_set_pixels
.LBB14_5:                               # %if.end.23
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_template_editor_aspect_callback, .Lfunc_end14-gimp_template_editor_aspect_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_template_editor_template_notify,@function
gimp_template_editor_template_notify:   # @gimp_template_editor_template_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB15_7
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.28, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_3
# BB#2:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_template_get_resolution_x
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	jmp	.LBB15_6
.LBB15_3:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.29, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_5
# BB#4:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_template_get_resolution_y
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_resolution
.LBB15_5:                               # %if.end
	jmp	.LBB15_6
.LBB15_6:                               # %if.end.16
	jmp	.LBB15_7
.LBB15_7:                               # %if.end.17
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_template_editor_set_pixels
	movq	-8(%rbp), %rdi
	callq	gimp_template_get_width
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_template_get_height
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB15_9
# BB#8:                                 # %if.then.20
	movl	$2, -36(%rbp)
	jmp	.LBB15_13
.LBB15_9:                               # %if.else.21
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB15_11
# BB#10:                                # %if.then.23
	movl	$1, -36(%rbp)
	jmp	.LBB15_12
.LBB15_11:                              # %if.else.24
	movl	$0, -36(%rbp)
.LBB15_12:                              # %if.end.25
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.26
	movq	-32(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	callq	gimp_image_base_type_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_template_get_image_type
	xorl	%esi, %esi
	movl	%esi, %edi
	leaq	-48(%rbp), %r8
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, %esi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movq	-8(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_template_get_resolution_x
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_template_get_resolution_y
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	je	.LBB15_15
# BB#14:                                # %if.then.39
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.42
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movl	-72(%rbp), %esi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
.LBB15_16:                              # %if.end.45
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-56(%rbp), %rdi
	callq	g_free
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_template_editor_template_notify, .Lfunc_end15-gimp_template_editor_template_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_editor_set_pixels,@function
gimp_template_editor_set_pixels:        # @gimp_template_editor_set_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_template_get_height
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movslq	%eax, %rdx
	callq	ngettext
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_template_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_template_get_height
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_template_editor_set_pixels, .Lfunc_end16-gimp_template_editor_set_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
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
	je	.LBB17_2
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
.LBB17_2:                               # %entry
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
.Lfunc_end17:
	.size	g_warning, .Lfunc_end17-g_warning
	.cfi_endproc

	.type	gimp_template_editor_get_type.g_define_type_id__volatile,@object # @gimp_template_editor_get_type.g_define_type_id__volatile
	.local	gimp_template_editor_get_type.g_define_type_id__volatile
	.comm	gimp_template_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTemplateEditor"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_template_editor_new,@object # @__func__.gimp_template_editor_new
.L__func__.gimp_template_editor_new:
	.asciz	"gimp_template_editor_new"
	.size	.L__func__.gimp_template_editor_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!edit_template || GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"template"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"_Name:"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"stock-id"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Icon:"
	.size	.L.str.7, 7

	.type	.L__func__.gimp_template_editor_get_template,@object # @__func__.gimp_template_editor_get_template
.L__func__.gimp_template_editor_get_template:
	.asciz	"gimp_template_editor_get_template"
	.size	.L__func__.gimp_template_editor_get_template, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_TEMPLATE_EDITOR (editor)"
	.size	.L.str.8, 33

	.type	.L__func__.gimp_template_editor_show_advanced,@object # @__func__.gimp_template_editor_show_advanced
.L__func__.gimp_template_editor_show_advanced:
	.asciz	"gimp_template_editor_show_advanced"
	.size	.L__func__.gimp_template_editor_show_advanced, 35

	.type	.L__func__.gimp_template_editor_get_size_se,@object # @__func__.gimp_template_editor_get_size_se
.L__func__.gimp_template_editor_get_size_se:
	.asciz	"gimp_template_editor_get_size_se"
	.size	.L__func__.gimp_template_editor_get_size_se, 33

	.type	.L__func__.gimp_template_editor_get_resolution_se,@object # @__func__.gimp_template_editor_get_resolution_se
.L__func__.gimp_template_editor_get_resolution_se:
	.asciz	"gimp_template_editor_get_resolution_se"
	.size	.L__func__.gimp_template_editor_get_resolution_se, 39

	.type	.L__func__.gimp_template_editor_get_resolution_chain,@object # @__func__.gimp_template_editor_get_resolution_chain
.L__func__.gimp_template_editor_get_resolution_chain:
	.asciz	"gimp_template_editor_get_resolution_chain"
	.size	.L__func__.gimp_template_editor_get_resolution_chain, 42

	.type	gimp_template_editor_parent_class,@object # @gimp_template_editor_parent_class
	.local	gimp_template_editor_parent_class
	.comm	gimp_template_editor_parent_class,8,8
	.type	GimpTemplateEditor_private_offset,@object # @GimpTemplateEditor_private_offset
	.local	GimpTemplateEditor_private_offset
	.comm	GimpTemplateEditor_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimptemplateeditor.c"
	.size	.L.str.9, 21

	.type	.L__func__.gimp_template_editor_constructed,@object # @__func__.gimp_template_editor_constructed
.L__func__.gimp_template_editor_constructed:
	.asciz	"gimp_template_editor_constructed"
	.size	.L__func__.gimp_template_editor_constructed, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"private->template != NULL"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Image Size"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_Width:"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"H_eight:"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%p"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"width"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"height"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"unit"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"<b>%s</b>"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Advanced Options"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"label"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"use-markup"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"use-underline"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"<expander>"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"_X resolution:"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Y resolution:"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"pixels/%s"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"xresolution"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"yresolution"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"resolution-unit"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"image-type"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Color _space:"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"fill-type"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Fill with:"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Comme_nt:"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"comment"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"notify"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%d \303\227 %d pixel"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%d \303\227 %d pixels"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%d \303\227 %d ppi, %s"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%d ppi, %s"
	.size	.L.str.41, 11

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
