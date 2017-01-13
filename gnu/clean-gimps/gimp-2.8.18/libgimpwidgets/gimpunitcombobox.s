	.text
	.file	"gimpunitcombobox.bc"
	.globl	gimp_unit_combo_box_get_type
	.align	16, 0x90
	.type	gimp_unit_combo_box_get_type,@function
gimp_unit_combo_box_get_type:           # @gimp_unit_combo_box_get_type
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
	movq	gimp_unit_combo_box_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_unit_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gtk_combo_box_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$896, %edx              # imm = 0x380
	leaq	gimp_unit_combo_box_class_intern_init(%rip), %rdi
	movl	$128, %r8d
	leaq	gimp_unit_combo_box_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_unit_combo_box_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_unit_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_unit_combo_box_get_type, .Lfunc_end0-gimp_unit_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_combo_box_class_intern_init,@function
gimp_unit_combo_box_class_intern_init:  # @gimp_unit_combo_box_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_unit_combo_box_parent_class(%rip)
	cmpl	$0, GimpUnitComboBox_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpUnitComboBox_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_unit_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_unit_combo_box_class_intern_init, .Lfunc_end1-gimp_unit_combo_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_combo_box_init,@function
gimp_unit_combo_box_init:               # @gimp_unit_combo_box_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	callq	gtk_cell_renderer_text_new@PLT
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_cell_layout_pack_start@PLT
	leaq	.L.str.6(%rip), %rdx
	movl	$9, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes@PLT
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_unit_combo_box_popup_shown(%rip), %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r8
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_unit_combo_box_init, .Lfunc_end2-gimp_unit_combo_box_init
	.cfi_endproc

	.globl	gimp_unit_combo_box_new
	.align	16, 0x90
	.type	gimp_unit_combo_box_new,@function
gimp_unit_combo_box_new:                # @gimp_unit_combo_box_new
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
	subq	$16, %rsp
	xorl	%edi, %edi
	callq	gimp_unit_store_new@PLT
	movq	%rax, -16(%rbp)
	callq	gimp_unit_combo_box_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_unit_combo_box_new, .Lfunc_end3-gimp_unit_combo_box_new
	.cfi_endproc

	.globl	gimp_unit_combo_box_new_with_model
	.align	16, 0x90
	.type	gimp_unit_combo_box_new_with_model,@function
gimp_unit_combo_box_new_with_model:     # @gimp_unit_combo_box_new_with_model
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_unit_combo_box_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_unit_combo_box_new_with_model, .Lfunc_end4-gimp_unit_combo_box_new_with_model
	.cfi_endproc

	.globl	gimp_unit_combo_box_get_active
	.align	16, 0x90
	.type	gimp_unit_combo_box_get_active,@function
gimp_unit_combo_box_get_active:         # @gimp_unit_combo_box_get_active
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_unit_combo_box_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_combo_box_get_active(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active_iter@PLT
	movq	-16(%rbp), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-52(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movl	-52(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_unit_combo_box_get_active, .Lfunc_end5-gimp_unit_combo_box_get_active
	.cfi_endproc

	.globl	gimp_unit_combo_box_set_active
	.align	16, 0x90
	.type	gimp_unit_combo_box_set_active,@function
gimp_unit_combo_box_set_active:         # @gimp_unit_combo_box_set_active
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_unit_combo_box_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_combo_box_set_active(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	_gimp_unit_store_sync_units@PLT
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -60(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB6_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-92(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movl	-12(%rbp), %edx
	cmpl	-92(%rbp), %edx
	jne	.LBB6_16
# BB#15:                                # %if.then.20
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active_iter@PLT
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.23
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_17
.LBB6_17:                               # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -60(%rbp)
	jmp	.LBB6_13
.LBB6_18:                               # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_unit_combo_box_set_active, .Lfunc_end6-gimp_unit_combo_box_set_active
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI7_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_unit_combo_box_class_init,@function
gimp_unit_combo_box_class_init:         # @gimp_unit_combo_box_class_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.4(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movl	$225, %ecx
	leaq	gimp_unit_combo_box_style_set(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 280(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_double@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_unit_combo_box_class_init, .Lfunc_end7-gimp_unit_combo_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_combo_box_style_set,@function
gimp_unit_combo_box_style_set:          # @gimp_unit_combo_box_style_set
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gimp_unit_combo_box_parent_class(%rip), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	leaq	.L.str.4(%rip), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_cell_layout_clear@PLT
	callq	gtk_cell_renderer_text_get_type@PLT
	leaq	.L.str.5(%rip), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_new@PLT
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_cell_layout_pack_start@PLT
	leaq	.L.str.6(%rip), %rdx
	movl	$8, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_unit_combo_box_style_set, .Lfunc_end8-gimp_unit_combo_box_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_combo_box_popup_shown,@function
gimp_unit_combo_box_popup_shown:        # @gimp_unit_combo_box_popup_shown
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
	leaq	.L.str.1(%rip), %rax
	leaq	-24(%rbp), %rdx
	leaq	.L.str.8(%rip), %rcx
	leaq	-28(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_object_get@PLT
	cmpq	$0, -24(%rbp)
	je	.LBB9_4
# BB#1:                                 # %if.then
	cmpl	$0, -28(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then.2
	movq	-24(%rbp), %rdi
	callq	_gimp_unit_store_sync_units@PLT
.LBB9_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
.LBB9_4:                                # %if.end.3
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_unit_combo_box_popup_shown, .Lfunc_end9-gimp_unit_combo_box_popup_shown
	.cfi_endproc

	.type	gimp_unit_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_unit_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_unit_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_unit_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpUnitComboBox"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"model"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LibGimpWidgets"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_unit_combo_box_get_active,@object # @__func__.gimp_unit_combo_box_get_active
.L__func__.gimp_unit_combo_box_get_active:
	.asciz	"gimp_unit_combo_box_get_active"
	.size	.L__func__.gimp_unit_combo_box_get_active, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_UNIT_COMBO_BOX (combo)"
	.size	.L.str.3, 31

	.type	.L__func__.gimp_unit_combo_box_set_active,@object # @__func__.gimp_unit_combo_box_set_active
.L__func__.gimp_unit_combo_box_set_active:
	.asciz	"gimp_unit_combo_box_set_active"
	.size	.L__func__.gimp_unit_combo_box_set_active, 31

	.type	gimp_unit_combo_box_parent_class,@object # @gimp_unit_combo_box_parent_class
	.local	gimp_unit_combo_box_parent_class
	.comm	gimp_unit_combo_box_parent_class,8,8
	.type	GimpUnitComboBox_private_offset,@object # @GimpUnitComboBox_private_offset
	.local	GimpUnitComboBox_private_offset
	.comm	GimpUnitComboBox_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"label-scale"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"scale"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"text"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"notify::popup-shown"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"popup-shown"
	.size	.L.str.8, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
