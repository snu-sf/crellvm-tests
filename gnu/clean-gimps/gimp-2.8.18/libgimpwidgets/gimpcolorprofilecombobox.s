	.text
	.file	"gimpcolorprofilecombobox.bc"
	.globl	gimp_color_profile_combo_box_get_type
	.align	16, 0x90
	.type	gimp_color_profile_combo_box_get_type,@function
gimp_color_profile_combo_box_get_type:  # @gimp_color_profile_combo_box_get_type
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
	movq	gimp_color_profile_combo_box_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_profile_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
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
	leaq	gimp_color_profile_combo_box_class_intern_init(%rip), %rdi
	movl	$136, %r8d
	leaq	gimp_color_profile_combo_box_init(%rip), %rcx
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
	leaq	gimp_color_profile_combo_box_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_profile_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_profile_combo_box_get_type, .Lfunc_end0-gimp_color_profile_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_combo_box_class_intern_init,@function
gimp_color_profile_combo_box_class_intern_init: # @gimp_color_profile_combo_box_class_intern_init
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
	movq	%rax, gimp_color_profile_combo_box_parent_class(%rip)
	cmpl	$0, GimpColorProfileComboBox_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorProfileComboBox_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_profile_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_profile_combo_box_class_intern_init, .Lfunc_end1-gimp_color_profile_combo_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_combo_box_init,@function
gimp_color_profile_combo_box_init:      # @gimp_color_profile_combo_box_init
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
	callq	gtk_cell_renderer_text_new@PLT
	leaq	.L.str.12(%rip), %rsi
	movl	$3, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.13(%rip), %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes@PLT
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	gimp_color_profile_row_separator_func(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	gtk_combo_box_set_row_separator_func@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_profile_combo_box_init, .Lfunc_end2-gimp_color_profile_combo_box_init
	.cfi_endproc

	.globl	gimp_color_profile_combo_box_new
	.align	16, 0x90
	.type	gimp_color_profile_combo_box_new,@function
gimp_color_profile_combo_box_new:       # @gimp_color_profile_combo_box_new
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
	movq	%rax, -48(%rbp)
	callq	gtk_dialog_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_combo_box_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_color_profile_store_new@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_profile_combo_box_new_with_model@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_profile_combo_box_new, .Lfunc_end3-gimp_color_profile_combo_box_new
	.cfi_endproc

	.globl	gimp_color_profile_combo_box_new_with_model
	.align	16, 0x90
	.type	gimp_color_profile_combo_box_new_with_model,@function
gimp_color_profile_combo_box_new_with_model: # @gimp_color_profile_combo_box_new_with_model
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_dialog_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_combo_box_new_with_model(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_color_profile_store_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_combo_box_new_with_model(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	callq	gimp_color_profile_combo_box_get_type@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	.L.str.5(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -8(%rbp)
.LBB4_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_profile_combo_box_new_with_model, .Lfunc_end4-gimp_color_profile_combo_box_new_with_model
	.cfi_endproc

	.globl	gimp_color_profile_combo_box_add
	.align	16, 0x90
	.type	gimp_color_profile_combo_box_add,@function
gimp_color_profile_combo_box_add:       # @gimp_color_profile_combo_box_add
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
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_color_profile_combo_box_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_combo_box_add(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_19
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	jne	.LBB5_15
# BB#14:                                # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	jne	.LBB5_16
.LBB5_15:                               # %if.then.14
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_combo_box_add(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_19
.LBB5_17:                               # %if.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.17
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_profile_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_color_profile_store_add@PLT
.LBB5_19:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_profile_combo_box_add, .Lfunc_end5-gimp_color_profile_combo_box_add
	.cfi_endproc

	.globl	gimp_color_profile_combo_box_set_active
	.align	16, 0x90
	.type	gimp_color_profile_combo_box_set_active,@function
gimp_color_profile_combo_box_set_active: # @gimp_color_profile_combo_box_set_active
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_color_profile_combo_box_get_type@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_combo_box_set_active(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_14
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_profile_store_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_gimp_color_profile_store_history_add
	cmpl	$0, %eax
	je	.LBB6_14
# BB#13:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active_iter@PLT
.LBB6_14:                               # %if.end.21
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_profile_combo_box_set_active, .Lfunc_end6-gimp_color_profile_combo_box_set_active
	.cfi_endproc

	.globl	gimp_color_profile_combo_box_get_active
	.align	16, 0x90
	.type	gimp_color_profile_combo_box_get_active,@function
gimp_color_profile_combo_box_get_active: # @gimp_color_profile_combo_box_get_active
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_color_profile_combo_box_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_combo_box_get_active(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB7_17
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active_iter@PLT
	cmpl	$0, %eax
	je	.LBB7_16
# BB#13:                                # %if.then.18
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-92(%rbp), %rcx
	movl	$2, %r8d
	leaq	-88(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$0, -92(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.22
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_17
.LBB7_15:                               # %if.end.23
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
.LBB7_16:                               # %if.end.24
	movq	$0, -8(%rbp)
.LBB7_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_profile_combo_box_get_active, .Lfunc_end7-gimp_color_profile_combo_box_get_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_combo_box_class_init,@function
gimp_color_profile_combo_box_class_init: # @gimp_color_profile_combo_box_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_color_profile_combo_box_changed(%rip), %rsi
	leaq	gimp_color_profile_combo_box_finalize(%rip), %rdi
	leaq	gimp_color_profile_combo_box_get_property(%rip), %rcx
	leaq	gimp_color_profile_combo_box_set_property(%rip), %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 824(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	leaq	.L.str.4(%rip), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object@PLT
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_profile_store_get_type@PLT
	leaq	.L.str.5(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object@PLT
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movl	$8, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_profile_combo_box_class_init, .Lfunc_end8-gimp_color_profile_combo_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_combo_box_set_property,@function
gimp_color_profile_combo_box_set_property: # @gimp_color_profile_combo_box_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_profile_combo_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_12
.LBB9_12:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB9_7
	jmp	.LBB9_8
.LBB9_1:                                # %sw.bb
	jmp	.LBB9_2
.LBB9_2:                                # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, 128(%rax)
	jne	.LBB9_4
# BB#3:                                 # %if.then
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_combo_box_set_property(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_11
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB9_11
.LBB9_7:                                # %sw.bb.4
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_value_get_object@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_combo_box_set_model@PLT
	jmp	.LBB9_11
.LBB9_8:                                # %sw.default
	jmp	.LBB9_9
.LBB9_9:                                # %do.body.8
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movl	$194, %edx
	leaq	.L.str.11(%rip), %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#10:                                # %do.end.13
	jmp	.LBB9_11
.LBB9_11:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_profile_combo_box_set_property, .Lfunc_end9-gimp_color_profile_combo_box_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_combo_box_get_property,@function
gimp_color_profile_combo_box_get_property: # @gimp_color_profile_combo_box_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_profile_combo_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_7
.LBB10_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_3
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object@PLT
	jmp	.LBB10_6
.LBB10_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object@PLT
	jmp	.LBB10_6
.LBB10_3:                               # %sw.default
	jmp	.LBB10_4
.LBB10_4:                               # %do.body
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movl	$219, %edx
	leaq	.L.str.11(%rip), %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_profile_combo_box_get_property, .Lfunc_end10-gimp_color_profile_combo_box_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_combo_box_finalize,@function
gimp_color_profile_combo_box_finalize:  # @gimp_color_profile_combo_box_finalize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_profile_combo_box_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_profile_combo_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_tree_path_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB11_4:                               # %if.end.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_profile_combo_box_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_profile_combo_box_finalize, .Lfunc_end11-gimp_color_profile_combo_box_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_combo_box_changed,@function
gimp_color_profile_combo_box_changed:   # @gimp_color_profile_combo_box_changed
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_combo_box_get_active_iter@PLT
	cmpl	$0, %eax
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_20
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movb	%al, %cl
	leaq	-56(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	movl	$-1, %r8d
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-112(%rbp), %r9         # 8-byte Reload
	movb	%cl, -113(%rbp)         # 1-byte Spill
	movq	%r9, %rcx
	movb	-113(%rbp), %al         # 1-byte Reload
	callq	gtk_tree_model_get@PLT
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_color_profile_combo_box_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	je	.LBB12_16
	jmp	.LBB12_21
.LBB12_21:                              # %if.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jne	.LBB12_19
	jmp	.LBB12_3
.LBB12_3:                               # %sw.bb
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_color_profile_combo_box_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	128(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_window_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB12_5
# BB#4:                                 # %if.then.12
	movl	$0, -100(%rbp)
	jmp	.LBB12_10
.LBB12_5:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_8
# BB#6:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_8
# BB#7:                                 # %if.then.15
	movl	$1, -100(%rbp)
	jmp	.LBB12_9
.LBB12_8:                               # %if.else.16
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB12_9:                               # %if.end.18
	jmp	.LBB12_10
.LBB12_10:                              # %if.end.19
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB12_12
# BB#11:                                # %if.then.21
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-80(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for@PLT
.LBB12_12:                              # %if.end.26
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_window_present@PLT
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_15
# BB#13:                                # %land.lhs.true.30
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	callq	gtk_tree_model_get_iter@PLT
	cmpl	$0, %eax
	je	.LBB12_15
# BB#14:                                # %if.then.34
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_combo_box_set_active_iter@PLT
.LBB12_15:                              # %if.end.35
	jmp	.LBB12_20
.LBB12_16:                              # %sw.bb.36
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_18
# BB#17:                                # %if.then.39
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_tree_path_free@PLT
.LBB12_18:                              # %if.end.41
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_path@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_color_profile_store_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	_gimp_color_profile_store_history_reorder
	jmp	.LBB12_20
.LBB12_19:                              # %sw.default
	jmp	.LBB12_20
.LBB12_20:                              # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_profile_combo_box_changed, .Lfunc_end12-gimp_color_profile_combo_box_changed
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_row_separator_func,@function
gimp_color_profile_row_separator_func:  # @gimp_color_profile_row_separator_func
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	xorl	%eax, %eax
	movb	%al, %cl
	leaq	-36(%rbp), %rdx
	movl	$-1, %r8d
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movb	%cl, -49(%rbp)          # 1-byte Spill
	movq	%r9, %rcx
	movb	-49(%rbp), %al          # 1-byte Reload
	callq	gtk_tree_model_get@PLT
	movl	-36(%rbp), %edx
	decl	%edx
	subl	$1, %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
	ja	.LBB14_2
	jmp	.LBB14_1
.LBB14_1:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %sw.default
	movl	$0, -4(%rbp)
.LBB14_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_profile_row_separator_func, .Lfunc_end14-gimp_color_profile_row_separator_func
	.cfi_endproc

	.type	gimp_color_profile_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_color_profile_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_color_profile_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_color_profile_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorProfileComboBox"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_color_profile_combo_box_new,@object # @__func__.gimp_color_profile_combo_box_new
.L__func__.gimp_color_profile_combo_box_new:
	.asciz	"gimp_color_profile_combo_box_new"
	.size	.L__func__.gimp_color_profile_combo_box_new, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_DIALOG (dialog)"
	.size	.L.str.2, 23

	.type	.L__func__.gimp_color_profile_combo_box_new_with_model,@object # @__func__.gimp_color_profile_combo_box_new_with_model
.L__func__.gimp_color_profile_combo_box_new_with_model:
	.asciz	"gimp_color_profile_combo_box_new_with_model"
	.size	.L__func__.gimp_color_profile_combo_box_new_with_model, 44

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_COLOR_PROFILE_STORE (model)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dialog"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"model"
	.size	.L.str.5, 6

	.type	.L__func__.gimp_color_profile_combo_box_add,@object # @__func__.gimp_color_profile_combo_box_add
.L__func__.gimp_color_profile_combo_box_add:
	.asciz	"gimp_color_profile_combo_box_add"
	.size	.L__func__.gimp_color_profile_combo_box_add, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_COLOR_PROFILE_COMBO_BOX (combo)"
	.size	.L.str.6, 40

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"label != NULL || filename == NULL"
	.size	.L.str.7, 34

	.type	.L__func__.gimp_color_profile_combo_box_set_active,@object # @__func__.gimp_color_profile_combo_box_set_active
.L__func__.gimp_color_profile_combo_box_set_active:
	.asciz	"gimp_color_profile_combo_box_set_active"
	.size	.L__func__.gimp_color_profile_combo_box_set_active, 40

	.type	.L__func__.gimp_color_profile_combo_box_get_active,@object # @__func__.gimp_color_profile_combo_box_get_active
.L__func__.gimp_color_profile_combo_box_get_active:
	.asciz	"gimp_color_profile_combo_box_get_active"
	.size	.L__func__.gimp_color_profile_combo_box_get_active, 40

	.type	gimp_color_profile_combo_box_parent_class,@object # @gimp_color_profile_combo_box_parent_class
	.local	gimp_color_profile_combo_box_parent_class
	.comm	gimp_color_profile_combo_box_parent_class,8,8
	.type	GimpColorProfileComboBox_private_offset,@object # @GimpColorProfileComboBox_private_offset
	.local	GimpColorProfileComboBox_private_offset
	.comm	GimpColorProfileComboBox_private_offset,4,4
	.type	.L__func__.gimp_color_profile_combo_box_set_property,@object # @__func__.gimp_color_profile_combo_box_set_property
.L__func__.gimp_color_profile_combo_box_set_property:
	.asciz	"gimp_color_profile_combo_box_set_property"
	.size	.L__func__.gimp_color_profile_combo_box_set_property, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"combo_box->dialog == NULL"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpcolorprofilecombobox.c"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ellipsize"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"text"
	.size	.L.str.13, 5

	.hidden	_gimp_color_profile_store_history_add
	.hidden	_gimp_color_profile_store_history_reorder

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
