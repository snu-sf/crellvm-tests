	.text
	.file	"gimpstringcombobox.bc"
	.globl	gimp_string_combo_box_get_type
	.align	16, 0x90
	.type	gimp_string_combo_box_get_type,@function
gimp_string_combo_box_get_type:         # @gimp_string_combo_box_get_type
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
	movq	gimp_string_combo_box_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_string_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
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
	leaq	gimp_string_combo_box_class_intern_init(%rip), %rdi
	movl	$136, %r8d
	leaq	gimp_string_combo_box_init(%rip), %rcx
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
	leaq	gimp_string_combo_box_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_string_combo_box_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_string_combo_box_get_type, .Lfunc_end0-gimp_string_combo_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_string_combo_box_class_intern_init,@function
gimp_string_combo_box_class_intern_init: # @gimp_string_combo_box_class_intern_init
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
	movq	%rax, gimp_string_combo_box_parent_class(%rip)
	cmpl	$0, GimpStringComboBox_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpStringComboBox_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_string_combo_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_string_combo_box_class_intern_init, .Lfunc_end1-gimp_string_combo_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_string_combo_box_init,@function
gimp_string_combo_box_init:             # @gimp_string_combo_box_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_string_combo_box_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, 128(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_string_combo_box_init, .Lfunc_end2-gimp_string_combo_box_init
	.cfi_endproc

	.globl	gimp_string_combo_box_new
	.align	16, 0x90
	.type	gimp_string_combo_box_new,@function
gimp_string_combo_box_new:              # @gimp_string_combo_box_new
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
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_tree_model_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_string_combo_box_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_tree_model_get_column_type@PLT
	cmpq	$64, %rax
	jne	.LBB3_15
# BB#14:                                # %if.then.14
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_string_combo_box_new(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_16:                               # %if.end.16
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.17
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.18
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gtk_tree_model_get_column_type@PLT
	cmpq	$64, %rax
	jne	.LBB3_20
# BB#19:                                # %if.then.21
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.22
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_string_combo_box_new(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_23
.LBB3_21:                               # %if.end.23
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.24
	callq	gimp_string_combo_box_get_type@PLT
	leaq	.L.str.5(%rip), %rsi
	leaq	.L.str.6(%rip), %rcx
	leaq	.L.str.7(%rip), %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -8(%rbp)
.LBB3_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_string_combo_box_new, .Lfunc_end3-gimp_string_combo_box_new
	.cfi_endproc

	.globl	gimp_string_combo_box_set_active
	.align	16, 0x90
	.type	gimp_string_combo_box_set_active,@function
gimp_string_combo_box_set_active:       # @gimp_string_combo_box_set_active
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_string_combo_box_get_type@PLT
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
	leaq	.L__func__.gimp_string_combo_box_set_active(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB4_17
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB4_16
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	-88(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movl	(%rax), %edx
	movl	%edx, -92(%rbp)
	movq	-56(%rbp), %rdi
	movl	-92(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_string_model_lookup
	cmpl	$0, %eax
	je	.LBB4_15
# BB#14:                                # %if.then.21
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active_iter@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB4_17
.LBB4_15:                               # %if.end.24
	movl	$0, -4(%rbp)
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.25
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active@PLT
	movl	$1, -4(%rbp)
.LBB4_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_string_combo_box_set_active, .Lfunc_end4-gimp_string_combo_box_set_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_string_model_lookup,@function
gimp_string_model_lookup:               # @gimp_string_model_lookup
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
	xorl	%eax, %eax
	movl	$24, %r8d
	movl	%r8d, %r9d
	leaq	-56(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r10, %rdi
	movl	%eax, %esi
	movq	%r9, %rdx
	callq	memset@PLT
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -60(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB5_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	gtk_tree_model_get_value@PLT
	leaq	-56(%rbp), %rdi
	callq	g_value_get_string@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB5_5
# BB#4:                                 # %if.then
	leaq	-56(%rbp), %rdi
	callq	g_value_unset@PLT
	jmp	.LBB5_7
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-56(%rbp), %rdi
	callq	g_value_unset@PLT
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -60(%rbp)
	jmp	.LBB5_1
.LBB5_7:                                # %for.end
	movl	-60(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_string_model_lookup, .Lfunc_end5-gimp_string_model_lookup
	.cfi_endproc

	.globl	gimp_string_combo_box_get_active
	.align	16, 0x90
	.type	gimp_string_combo_box_get_active,@function
gimp_string_combo_box_get_active:       # @gimp_string_combo_box_get_active
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_string_combo_box_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_string_combo_box_get_active(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_15
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active_iter@PLT
	cmpl	$0, %eax
	je	.LBB6_14
# BB#13:                                # %if.then.15
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	leaq	-48(%rbp), %rsi
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movl	(%rax), %edx
	movl	%edx, -92(%rbp)
	movq	-80(%rbp), %rdi
	movl	-92(%rbp), %edx
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movq	-88(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB6_15
.LBB6_14:                               # %if.end.22
	movq	$0, -8(%rbp)
.LBB6_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_string_combo_box_get_active, .Lfunc_end6-gimp_string_combo_box_get_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_string_combo_box_class_init,@function
gimp_string_combo_box_class_init:       # @gimp_string_combo_box_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.6(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$235, %edx
	leaq	gimp_string_combo_box_get_property(%rip), %r9
	leaq	gimp_string_combo_box_set_property(%rip), %r10
	leaq	gimp_string_combo_box_constructed(%rip), %r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %r9          # 8-byte Reload
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movq	%r9, %rdx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	movl	-32(%rbp), %r9d         # 4-byte Reload
	movl	$235, (%rsp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_int@PLT
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.7(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$235, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$235, (%rsp)
	callq	g_param_spec_int@PLT
	movl	$2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	pango_ellipsize_mode_get_type@PLT
	leaq	.L.str.9(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$3, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movl	$16, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_string_combo_box_class_init, .Lfunc_end7-gimp_string_combo_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_string_combo_box_constructed,@function
gimp_string_combo_box_constructed:      # @gimp_string_combo_box_constructed
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
	movq	128(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	gimp_string_combo_box_parent_class(%rip), %rdi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 72(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_string_combo_box_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB8_2:                                # %if.end
	callq	gtk_cell_renderer_text_new@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_cell_layout_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.10(%rip), %rdx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_string_combo_box_constructed, .Lfunc_end8-gimp_string_combo_box_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_string_combo_box_set_property,@function
gimp_string_combo_box_set_property:     # @gimp_string_combo_box_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$1, %eax
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_8
.LBB9_8:                                # %entry
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_9
.LBB9_9:                                # %entry
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_4
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB9_7
.LBB9_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 4(%rdi)
	jmp	.LBB9_7
.LBB9_3:                                # %sw.bb.4
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_property@PLT
	jmp	.LBB9_7
.LBB9_4:                                # %sw.default
	jmp	.LBB9_5
.LBB9_5:                                # %do.body
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	movl	$185, %edx
	leaq	.L.str.13(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB9_7
.LBB9_7:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_string_combo_box_set_property, .Lfunc_end9-gimp_string_combo_box_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_string_combo_box_get_property,@function
gimp_string_combo_box_get_property:     # @gimp_string_combo_box_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$1, %eax
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_8
.LBB10_8:                               # %entry
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_9
.LBB10_9:                               # %entry
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB10_3
	jmp	.LBB10_4
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB10_7
.LBB10_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB10_7
.LBB10_3:                               # %sw.bb.3
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_get_property@PLT
	jmp	.LBB10_7
.LBB10_4:                               # %sw.default
	jmp	.LBB10_5
.LBB10_5:                               # %do.body
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	movl	$213, %edx
	leaq	.L.str.13(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB10_7
.LBB10_7:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_string_combo_box_get_property, .Lfunc_end10-gimp_string_combo_box_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.type	gimp_string_combo_box_get_type.g_define_type_id__volatile,@object # @gimp_string_combo_box_get_type.g_define_type_id__volatile
	.local	gimp_string_combo_box_get_type.g_define_type_id__volatile
	.comm	gimp_string_combo_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpStringComboBox"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_string_combo_box_new,@object # @__func__.gimp_string_combo_box_new
.L__func__.gimp_string_combo_box_new:
	.asciz	"gimp_string_combo_box_new"
	.size	.L__func__.gimp_string_combo_box_new, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_TREE_MODEL (model)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk_tree_model_get_column_type (model, id_column) == G_TYPE_STRING"
	.size	.L.str.3, 67

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk_tree_model_get_column_type (model, label_column) == G_TYPE_STRING"
	.size	.L.str.4, 70

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"model"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"id-column"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"label-column"
	.size	.L.str.7, 13

	.type	.L__func__.gimp_string_combo_box_set_active,@object # @__func__.gimp_string_combo_box_set_active
.L__func__.gimp_string_combo_box_set_active:
	.asciz	"gimp_string_combo_box_set_active"
	.size	.L__func__.gimp_string_combo_box_set_active, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_STRING_COMBO_BOX (combo_box)"
	.size	.L.str.8, 37

	.type	.L__func__.gimp_string_combo_box_get_active,@object # @__func__.gimp_string_combo_box_get_active
.L__func__.gimp_string_combo_box_get_active:
	.asciz	"gimp_string_combo_box_get_active"
	.size	.L__func__.gimp_string_combo_box_get_active, 33

	.type	gimp_string_combo_box_parent_class,@object # @gimp_string_combo_box_parent_class
	.local	gimp_string_combo_box_parent_class
	.comm	gimp_string_combo_box_parent_class,8,8
	.type	GimpStringComboBox_private_offset,@object # @GimpStringComboBox_private_offset
	.local	GimpStringComboBox_private_offset
	.comm	GimpStringComboBox_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ellipsize"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"text"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.11, 54

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimpstringcombobox.c"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"property"
	.size	.L.str.13, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
