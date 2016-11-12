	.text
	.file	"gimpstrokeeditor.bc"
	.globl	gimp_stroke_editor_get_type
	.align	16, 0x90
	.type	gimp_stroke_editor_get_type,@function
gimp_stroke_editor_get_type:            # @gimp_stroke_editor_get_type
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
	movq	gimp_stroke_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_stroke_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_fill_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_stroke_editor_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_stroke_editor_init, %rcx
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
	movabsq	$gimp_stroke_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_stroke_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_stroke_editor_get_type, .Lfunc_end0-gimp_stroke_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_editor_class_intern_init,@function
gimp_stroke_editor_class_intern_init:   # @gimp_stroke_editor_class_intern_init
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
	movq	%rax, gimp_stroke_editor_parent_class
	cmpl	$0, GimpStrokeEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpStrokeEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_stroke_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_stroke_editor_class_intern_init, .Lfunc_end1-gimp_stroke_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_editor_init,@function
gimp_stroke_editor_init:                # @gimp_stroke_editor_init
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
	.size	gimp_stroke_editor_init, .Lfunc_end2-gimp_stroke_editor_init
	.cfi_endproc

	.globl	gimp_stroke_editor_new
	.align	16, 0x90
	.type	gimp_stroke_editor_new,@function
gimp_stroke_editor_new:                 # @gimp_stroke_editor_new
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
	movsd	%xmm0, -24(%rbp)
	movl	%esi, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_stroke_options_get_type
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
	movabsq	$.L__func__.gimp_stroke_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_stroke_editor_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%edx, %edx
	movl	$1, %r9d
	movq	-16(%rbp), %r10
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpl	$0, -28(%rbp)
	cmovnel	%r9d, %edx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movq	$0, (%rsp)
	movb	$1, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_stroke_editor_new, .Lfunc_end3-gimp_stroke_editor_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI4_1:
	.quad	4679240012837945344     # double 65536
.LCPI4_2:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	gimp_stroke_editor_class_init,@function
gimp_stroke_editor_class_init:          # @gimp_stroke_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_stroke_editor_get_property, %rsi
	movabsq	$gimp_stroke_editor_set_property, %rdi
	movabsq	$gimp_stroke_editor_constructed, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movl	$235, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_stroke_editor_class_init, .Lfunc_end4-gimp_stroke_editor_class_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_stroke_editor_constructed,@function
gimp_stroke_editor_constructed:         # @gimp_stroke_editor_constructed
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
	subq	$800, %rsp              # imm = 0x320
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_fill_editor_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_stroke_editor_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movl	$0, -124(%rbp)
	movq	gimp_stroke_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_stroke_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_stroke_options_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.10
	movl	$0, -148(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.13
	movl	$1, -148(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.14
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB5_9:                                # %if.end.16
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.17
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.19
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$121, %edx
	movabsq	$.L__func__.gimp_stroke_editor_constructed, %rcx
	movabsq	$.L.str.7, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.21
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_stroke_options_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -32(%rbp)
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %r8
	movl	$1, %r9d
	movq	-24(%rbp), %rdi
	movsd	144(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_prop_size_entry_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_pixel_digits
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %ecx        # 4-byte Reload
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_expander_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gimp_frame_new
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$5, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-88(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gimp_prop_enum_stock_box_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -124(%rbp)
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movl	$1, %ecx
	movq	-56(%rbp), %r8
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movl	-356(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gimp_prop_enum_stock_box_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -124(%rbp)
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movl	$1, %ecx
	movq	-56(%rbp), %r8
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	-396(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movl	-124(%rbp), %edx
	movl	%edx, %r9d
	addl	$1, %r9d
	movl	%r9d, -124(%rbp)
	movl	%edx, -444(%rbp)        # 4-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.20, %rsi
	xorl	%ecx, %ecx
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %r8         # 8-byte Reload
	movl	%edx, -460(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movl	-444(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movsd	-472(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -480(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-480(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-480(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_prop_scale_entry_new
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_frame_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-88(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -124(%rbp)
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-80(%rbp), %r8
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movl	-508(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	%edx, %esi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gimp_dash_editor_new
	movq	%rax, -104(%rbp)
	callq	gtk_button_get_type
	movabsq	$.L.str.23, %rsi
	movl	$14, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -548(%rbp)        # 4-byte Spill
	movl	-548(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_dash_editor_shift_left, %rax
	movl	$2, %r8d
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_stroke_editor_paint_button, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$1, %r9d
	movq	-112(%rbp), %rdx
	movq	-112(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_button_get_type
	movabsq	$.L.str.23, %rsi
	movl	$14, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -596(%rbp)        # 4-byte Spill
	movl	-596(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_dash_editor_shift_right, %rax
	movl	$2, %r8d
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_stroke_editor_paint_button, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movl	$1, %r9d
	movq	-112(%rbp), %rdi
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-608(%rbp), %rcx        # 8-byte Reload
	movq	-608(%rbp), %r8         # 8-byte Reload
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_enum_store_get_type
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_dash_preset_get_type
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_dash_pattern_get_type
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	-640(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB5_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB5_15 Depth=1
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_enum_value_get_desc
	movq	%rax, -192(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_append
	movq	-40(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-184(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	movq	-192(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	%r9d, -668(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB5_15
.LBB5_18:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	gimp_enum_combo_box_new_with_model
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-88(%rbp), %rdi
	movl	%eax, -684(%rbp)        # 4-byte Spill
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-56(%rbp), %r8
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	-700(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_cell_renderer_dashes_get_type
	movabsq	$.L.str.29, %rsi
	movl	$2, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdx
	movl	$4, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_add_attribute
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_stroke_editor_combo_fill
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_stroke_editor_dash_preset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-760(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_int_combo_box_set_active, %rcx
	movl	$2, %r8d
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-768(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -784(%rbp)        # 8-byte Spill
	addq	$800, %rsp              # imm = 0x320
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_stroke_editor_constructed, .Lfunc_end5-gimp_stroke_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_editor_set_property,@function
gimp_stroke_editor_set_property:        # @gimp_stroke_editor_set_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_fill_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_stroke_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r9d, -96(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_9
.LBB6_9:                                # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB6_4
	jmp	.LBB6_5
.LBB6_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB6_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB6_8
.LBB6_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 144(%rdi)
	jmp	.LBB6_8
.LBB6_5:                                # %sw.default
	jmp	.LBB6_6
.LBB6_6:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$283, %edx              # imm = 0x11B
	movabsq	$.L.str.35, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB6_8
.LBB6_8:                                # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_stroke_editor_set_property, .Lfunc_end6-gimp_stroke_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_editor_get_property,@function
gimp_stroke_editor_get_property:        # @gimp_stroke_editor_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_fill_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_stroke_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r9d, -96(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	144(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_6
.LBB7_3:                                # %sw.default
	jmp	.LBB7_4
.LBB7_4:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$308, %edx              # imm = 0x134
	movabsq	$.L.str.35, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_stroke_editor_get_property, .Lfunc_end7-gimp_stroke_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_editor_paint_button,@function
gimp_stroke_editor_paint_button:        # @gimp_stroke_editor_paint_button
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
	subq	$168, %rsp
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
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_style
	leaq	-88(%rbp), %rsi
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	-80(%rbp), %ecx
	cmpl	-76(%rbp), %ecx
	jge	.LBB8_2
# BB#1:                                 # %cond.true
	movl	-80(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movl	-76(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB8_3:                                # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	$3, %ecx
	shll	$1, %eax
	cltd
	idivl	%ecx
	movl	%eax, -92(%rbp)
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gtk_widget_get_window
	movq	-48(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_state
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$2, %r8d
	movl	$3, %r9d
	movq	-56(%rbp), %rdi
	addq	$20, %rdi
	movq	-48(%rbp), %r10
	cmpq	$0, -64(%rbp)
	cmovnel	%r8d, %r9d
	movl	-88(%rbp), %r11d
	movl	-80(%rbp), %ebx
	subl	-92(%rbp), %ebx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ebx, %eax
	cltd
	idivl	%r8d
	addl	%eax, %r11d
	movl	-84(%rbp), %eax
	movl	-76(%rbp), %ebx
	subl	-92(%rbp), %ebx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ebx, %eax
	cltd
	idivl	%r8d
	movl	-120(%rbp), %r8d        # 4-byte Reload
	addl	%eax, %r8d
	movl	-92(%rbp), %eax
	movl	-92(%rbp), %ebx
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movl	-116(%rbp), %r12d       # 4-byte Reload
	movl	%r12d, %edx
	movq	-128(%rbp), %r13        # 8-byte Reload
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	movq	%r13, %r8
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	movq	%r10, %r9
	movq	$0, (%rsp)
	movl	-144(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	-140(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 32(%rsp)
	movl	%eax, 40(%rsp)
	movl	%ebx, 48(%rsp)
	callq	gtk_paint_arrow
	xorl	%eax, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_stroke_editor_paint_button, .Lfunc_end8-gimp_stroke_editor_paint_button
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_editor_combo_fill,@function
gimp_stroke_editor_combo_fill:          # @gimp_stroke_editor_combo_fill
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_combo_box_get_model
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -60(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB9_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpl	$0, -64(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_dash_info
	leaq	-56(%rbp), %rsi
	movl	$4, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_set
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_stroke_editor_combo_update, %rcx
	movl	$2, %r8d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rcx, %rdx
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-64(%rbp), %edi
	callq	gimp_dash_pattern_new_from_preset
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movl	$4, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_list_store_set
	movq	-72(%rbp), %rdi
	callq	gimp_dash_pattern_free
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -60(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_stroke_editor_combo_fill, .Lfunc_end9-gimp_stroke_editor_combo_fill
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_editor_dash_preset,@function
gimp_stroke_editor_dash_preset:         # @gimp_stroke_editor_dash_preset
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB10_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -20(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_stroke_options_take_dash_pattern
.LBB10_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_stroke_editor_dash_preset, .Lfunc_end10-gimp_stroke_editor_dash_preset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_stroke_editor_combo_update,@function
gimp_stroke_editor_combo_update:        # @gimp_stroke_editor_combo_update
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
	subq	$80, %rsp
	xorl	%eax, %eax
	leaq	-56(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movq	%rcx, %rdx
	callq	gimp_int_store_lookup_by_value
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_stroke_options_get_dash_info
	leaq	-56(%rbp), %rsi
	movl	$4, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_set
.LBB11_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_stroke_editor_combo_update, .Lfunc_end11-gimp_stroke_editor_combo_update
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.type	gimp_stroke_editor_get_type.g_define_type_id__volatile,@object # @gimp_stroke_editor_get_type.g_define_type_id__volatile
	.local	gimp_stroke_editor_get_type.g_define_type_id__volatile
	.comm	gimp_stroke_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpStrokeEditor"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_stroke_editor_new,@object # @__func__.gimp_stroke_editor_new
.L__func__.gimp_stroke_editor_new:
	.asciz	"gimp_stroke_editor_new"
	.size	.L__func__.gimp_stroke_editor_new, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_STROKE_OPTIONS (options)"
	.size	.L.str.2, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"options"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"resolution"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"edit-context"
	.size	.L.str.5, 13

	.type	gimp_stroke_editor_parent_class,@object # @gimp_stroke_editor_parent_class
	.local	gimp_stroke_editor_parent_class
	.comm	gimp_stroke_editor_parent_class,8,8
	.type	GimpStrokeEditor_private_offset,@object # @GimpStrokeEditor_private_offset
	.local	GimpStrokeEditor_private_offset
	.comm	GimpStrokeEditor_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpstrokeeditor.c"
	.size	.L.str.6, 19

	.type	.L__func__.gimp_stroke_editor_constructed,@object # @__func__.gimp_stroke_editor_constructed
.L__func__.gimp_stroke_editor_constructed:
	.asciz	"gimp_stroke_editor_constructed"
	.size	.L__func__.gimp_stroke_editor_constructed, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_STROKE_OPTIONS (fill_editor->options)"
	.size	.L.str.7, 46

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Line width:"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"width"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"unit"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%a"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"_Line Style"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<expander>"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"cap-style"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-cap"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Cap style:"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"join-style"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-join"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Join style:"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"miter-limit"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_Miter limit:"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Dash pattern:"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"width-request"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"clicked"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"expose-event"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"enum-type"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"user-data-type"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Dash _preset:"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"xpad"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"pattern"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"changed"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"dash-info-changed"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"notify::dash-info"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.34, 54

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"property"
	.size	.L.str.35, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
