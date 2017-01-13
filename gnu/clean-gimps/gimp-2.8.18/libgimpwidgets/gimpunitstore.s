	.text
	.file	"gimpunitstore.bc"
	.globl	gimp_unit_store_get_type
	.align	16, 0x90
	.type	gimp_unit_store_get_type,@function
gimp_unit_store_get_type:               # @gimp_unit_store_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_unit_store_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_unit_store_get_type.g_define_type_id__volatile(%rip), %rax
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
	leaq	.L.str(%rip), %rdi
	callq	g_intern_static_string@PLT
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$168, %edx
	leaq	gimp_unit_store_class_intern_init(%rip), %rsi
	movl	$24, %r8d
	leaq	gimp_unit_store_init(%rip), %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	leaq	gimp_unit_store_get_type.g_implement_interface_info(%rip), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static@PLT
	leaq	gimp_unit_store_get_type.g_define_type_id__volatile(%rip), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_unit_store_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_unit_store_get_type, .Lfunc_end0-gimp_unit_store_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_class_intern_init,@function
gimp_unit_store_class_intern_init:      # @gimp_unit_store_class_intern_init
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
	movq	%rax, gimp_unit_store_parent_class(%rip)
	cmpl	$0, GimpUnitStore_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpUnitStore_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_unit_store_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_unit_store_class_intern_init, .Lfunc_end1-gimp_unit_store_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_init,@function
gimp_unit_store_init:                   # @gimp_unit_store_init
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	leaq	.L.str.9(%rip), %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	callq	g_strdup@PLT
	leaq	.L.str.11(%rip), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	callq	g_strdup@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, 24(%rsi)
	callq	gimp_unit_get_number_of_units@PLT
	subl	$1, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 48(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_unit_store_init, .Lfunc_end2-gimp_unit_store_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_tree_model_init,@function
gimp_unit_store_tree_model_init:        # @gimp_unit_store_tree_model_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	leaq	gimp_unit_store_iter_parent(%rip), %rax
	leaq	gimp_unit_store_iter_nth_child(%rip), %rcx
	leaq	gimp_unit_store_iter_n_children(%rip), %rdx
	leaq	gimp_unit_store_iter_has_child(%rip), %rsi
	leaq	gimp_unit_store_iter_children(%rip), %r8
	leaq	gimp_unit_store_iter_next(%rip), %r9
	leaq	gimp_unit_store_tree_model_get_value(%rip), %r10
	leaq	gimp_unit_store_get_path(%rip), %r11
	leaq	gimp_unit_store_get_iter(%rip), %rbx
	leaq	gimp_unit_store_get_column_type(%rip), %r14
	leaq	gimp_unit_store_get_n_columns(%rip), %r15
	leaq	gimp_unit_store_get_flags(%rip), %r12
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%r12, 56(%rdi)
	movq	-40(%rbp), %rdi
	movq	%r15, 64(%rdi)
	movq	-40(%rbp), %rdi
	movq	%r14, 72(%rdi)
	movq	-40(%rbp), %rdi
	movq	%rbx, 80(%rdi)
	movq	-40(%rbp), %rdi
	movq	%r11, 88(%rdi)
	movq	-40(%rbp), %rdi
	movq	%r10, 96(%rdi)
	movq	-40(%rbp), %rdi
	movq	%r9, 104(%rdi)
	movq	-40(%rbp), %rdi
	movq	%r8, 112(%rdi)
	movq	-40(%rbp), %rdi
	movq	%rsi, 120(%rdi)
	movq	-40(%rbp), %rsi
	movq	%rdx, 128(%rsi)
	movq	-40(%rbp), %rdx
	movq	%rcx, 136(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 144(%rcx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_unit_store_tree_model_init, .Lfunc_end3-gimp_unit_store_tree_model_init
	.cfi_endproc

	.globl	gimp_unit_store_new
	.align	16, 0x90
	.type	gimp_unit_store_new,@function
gimp_unit_store_new:                    # @gimp_unit_store_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	gimp_unit_store_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	-4(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_unit_store_new, .Lfunc_end4-gimp_unit_store_new
	.cfi_endproc

	.globl	gimp_unit_store_set_has_pixels
	.align	16, 0x90
	.type	gimp_unit_store_set_has_pixels,@function
gimp_unit_store_set_has_pixels:         # @gimp_unit_store_set_has_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_unit_store_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_set_has_pixels(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_21
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	cmovnel	%edx, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	cmpl	4(%rax), %ecx
	je	.LBB5_21
# BB#13:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.22
	leaq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	leaq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gtk_tree_model_get_path@PLT
	movq	%rax, -64(%rbp)
.LBB5_15:                               # %if.end.26
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	cmpl	$0, -12(%rbp)
	je	.LBB5_17
# BB#16:                                # %if.then.29
	leaq	-136(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	leaq	-136(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gtk_tree_model_get_path@PLT
	leaq	-136(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_tree_model_row_inserted@PLT
	movq	-104(%rbp), %rdi
	callq	gtk_tree_path_free@PLT
	jmp	.LBB5_20
.LBB5_17:                               # %if.else.35
	cmpq	$0, -64(%rbp)
	je	.LBB5_19
# BB#18:                                # %if.then.37
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_tree_model_row_deleted@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_tree_path_free@PLT
.LBB5_19:                               # %if.end.38
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.39
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB5_21:                               # %if.end.41
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_unit_store_set_has_pixels, .Lfunc_end5-gimp_unit_store_set_has_pixels
	.cfi_endproc

	.globl	gimp_unit_store_get_has_pixels
	.align	16, 0x90
	.type	gimp_unit_store_get_has_pixels,@function
gimp_unit_store_get_has_pixels:         # @gimp_unit_store_get_has_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_unit_store_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_get_has_pixels(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_unit_store_get_has_pixels, .Lfunc_end6-gimp_unit_store_get_has_pixels
	.cfi_endproc

	.globl	gimp_unit_store_set_has_percent
	.align	16, 0x90
	.type	gimp_unit_store_set_has_percent,@function
gimp_unit_store_set_has_percent:        # @gimp_unit_store_set_has_percent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_unit_store_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_set_has_percent(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_25
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	cmovnel	%edx, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	cmpl	8(%rax), %ecx
	je	.LBB7_25
# BB#13:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB7_17
# BB#14:                                # %if.then.22
	leaq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movq	-24(%rbp), %rsi
	cmpl	$0, 4(%rsi)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB7_16
# BB#15:                                # %if.then.26
	leaq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB7_16:                               # %if.end.28
	leaq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_get_path@PLT
	movq	%rax, -64(%rbp)
.LBB7_17:                               # %if.end.30
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	cmpl	$0, -12(%rbp)
	je	.LBB7_21
# BB#18:                                # %if.then.33
	leaq	-136(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movq	-24(%rbp), %rsi
	cmpl	$0, 4(%rsi)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB7_20
# BB#19:                                # %if.then.40
	leaq	-136(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB7_20:                               # %if.end.42
	leaq	-136(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_get_path@PLT
	leaq	-136(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_tree_model_row_inserted@PLT
	movq	-104(%rbp), %rdi
	callq	gtk_tree_path_free@PLT
	jmp	.LBB7_24
.LBB7_21:                               # %if.else.44
	cmpq	$0, -64(%rbp)
	je	.LBB7_23
# BB#22:                                # %if.then.46
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_tree_model_row_deleted@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_tree_path_free@PLT
.LBB7_23:                               # %if.end.47
	jmp	.LBB7_24
.LBB7_24:                               # %if.end.48
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB7_25:                               # %if.end.50
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_unit_store_set_has_percent, .Lfunc_end7-gimp_unit_store_set_has_percent
	.cfi_endproc

	.globl	gimp_unit_store_get_has_percent
	.align	16, 0x90
	.type	gimp_unit_store_get_has_percent,@function
gimp_unit_store_get_has_percent:        # @gimp_unit_store_get_has_percent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_unit_store_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_get_has_percent(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_unit_store_get_has_percent, .Lfunc_end8-gimp_unit_store_get_has_percent
	.cfi_endproc

	.globl	gimp_unit_store_set_pixel_value
	.align	16, 0x90
	.type	gimp_unit_store_set_pixel_value,@function
gimp_unit_store_set_pixel_value:        # @gimp_unit_store_set_pixel_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_unit_store_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_set_pixel_value(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_19
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.13
	cmpl	$0, -12(%rbp)
	jle	.LBB9_16
# BB#14:                                # %land.lhs.true.15
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB9_16
# BB#15:                                # %if.then.17
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.18
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_set_pixel_value(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_19
.LBB9_17:                               # %if.end.19
	jmp	.LBB9_18
.LBB9_18:                               # %do.end.20
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB9_19:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_unit_store_set_pixel_value, .Lfunc_end9-gimp_unit_store_set_pixel_value
	.cfi_endproc

	.globl	gimp_unit_store_set_pixel_values
	.align	16, 0x90
	.type	gimp_unit_store_set_pixel_values,@function
gimp_unit_store_set_pixel_values:       # @gimp_unit_store_set_pixel_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       # 16-byte Spill
	movaps	%xmm6, -288(%rbp)       # 16-byte Spill
	movaps	%xmm5, -304(%rbp)       # 16-byte Spill
	movaps	%xmm4, -320(%rbp)       # 16-byte Spill
	movaps	%xmm3, -336(%rbp)       # 16-byte Spill
	movaps	%xmm2, -352(%rbp)       # 16-byte Spill
	movaps	%xmm1, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	je	.LBB10_23
# BB#22:                                # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
.LBB10_23:                              # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -224(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -232(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -240(%rbp)
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -248(%rbp)
	movsd	-424(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_unit_store_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_set_pixel_values(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_21
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, -24(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, 16(%rsi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rsi)
	movl	$64, 4(%rsi)
	movl	$8, (%rsi)
	movl	$0, -52(%rbp)
.LBB10_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB10_20
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB10_13 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movq	-24(%rbp), %rax
	cmpl	(%rax), %edx
	jge	.LBB10_19
# BB#15:                                # %if.then.17
                                        #   in Loop: Header=BB10_13 Depth=1
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	-44(%rbp), %edx
	cmpl	$160, %edx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movl	%edx, -452(%rbp)        # 4-byte Spill
	ja	.LBB10_17
# BB#16:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB10_13 Depth=1
	movl	-452(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-440(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB10_18
.LBB10_17:                              # %vaarg.in_mem
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -464(%rbp)        # 8-byte Spill
.LBB10_18:                              # %vaarg.end
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB10_19:                              # %if.end.19
                                        #   in Loop: Header=BB10_13 Depth=1
	jmp	.LBB10_13
.LBB10_20:                              # %for.end
	leaq	-48(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB10_21:                              # %return
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_unit_store_set_pixel_values, .Lfunc_end10-gimp_unit_store_set_pixel_values
	.cfi_endproc

	.globl	gimp_unit_store_set_resolution
	.align	16, 0x90
	.type	gimp_unit_store_set_resolution,@function
gimp_unit_store_set_resolution:         # @gimp_unit_store_set_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_unit_store_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_set_resolution(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_19
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.13
	cmpl	$0, -12(%rbp)
	jle	.LBB11_16
# BB#14:                                # %land.lhs.true.15
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB11_16
# BB#15:                                # %if.then.17
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.18
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_set_resolution(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_19
.LBB11_17:                              # %if.end.19
	jmp	.LBB11_18
.LBB11_18:                              # %do.end.20
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	40(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB11_19:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_unit_store_set_resolution, .Lfunc_end11-gimp_unit_store_set_resolution
	.cfi_endproc

	.globl	gimp_unit_store_set_resolutions
	.align	16, 0x90
	.type	gimp_unit_store_set_resolutions,@function
gimp_unit_store_set_resolutions:        # @gimp_unit_store_set_resolutions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       # 16-byte Spill
	movaps	%xmm6, -288(%rbp)       # 16-byte Spill
	movaps	%xmm5, -304(%rbp)       # 16-byte Spill
	movaps	%xmm4, -320(%rbp)       # 16-byte Spill
	movaps	%xmm3, -336(%rbp)       # 16-byte Spill
	movaps	%xmm2, -352(%rbp)       # 16-byte Spill
	movaps	%xmm1, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	je	.LBB12_23
# BB#22:                                # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
.LBB12_23:                              # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -224(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -232(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -240(%rbp)
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -248(%rbp)
	movsd	-424(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_unit_store_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_set_resolutions(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_21
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, -24(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, 16(%rsi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rsi)
	movl	$64, 4(%rsi)
	movl	$8, (%rsi)
	movl	$0, -52(%rbp)
.LBB12_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB12_20
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB12_13 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movq	-24(%rbp), %rax
	cmpl	(%rax), %edx
	jge	.LBB12_19
# BB#15:                                # %if.then.17
                                        #   in Loop: Header=BB12_13 Depth=1
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	-44(%rbp), %edx
	cmpl	$160, %edx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movl	%edx, -452(%rbp)        # 4-byte Spill
	ja	.LBB12_17
# BB#16:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	-452(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-440(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB12_18
.LBB12_17:                              # %vaarg.in_mem
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -464(%rbp)        # 8-byte Spill
.LBB12_18:                              # %vaarg.end
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
.LBB12_19:                              # %if.end.19
                                        #   in Loop: Header=BB12_13 Depth=1
	jmp	.LBB12_13
.LBB12_20:                              # %for.end
	leaq	-48(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB12_21:                              # %return
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_unit_store_set_resolutions, .Lfunc_end12-gimp_unit_store_set_resolutions
	.cfi_endproc

	.globl	gimp_unit_store_get_value
	.align	16, 0x90
	.type	gimp_unit_store_get_value,@function
gimp_unit_store_get_value:              # @gimp_unit_store_get_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %r8d
	leaq	-88(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset@PLT
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_unit_store_get_type@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -108(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_get_value(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_19
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.13
	cmpl	$0, -24(%rbp)
	jl	.LBB13_16
# BB#14:                                # %land.lhs.true.15
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB13_16
# BB#15:                                # %if.then.17
	jmp	.LBB13_17
.LBB13_16:                              # %if.else.18
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_get_value(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_19
.LBB13_17:                              # %if.end.19
	jmp	.LBB13_18
.LBB13_18:                              # %do.end.20
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	leaq	-88(%rbp), %rcx
	movl	-24(%rbp), %edx
	addl	$10, %edx
	movq	%rax, %rdi
	callq	gimp_unit_store_tree_model_get_value
	leaq	-88(%rbp), %rdi
	callq	g_value_get_double@PLT
	movsd	%xmm0, -8(%rbp)
.LBB13_19:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_unit_store_get_value, .Lfunc_end13-gimp_unit_store_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_tree_model_get_value,@function
gimp_unit_store_tree_model_get_value:   # @gimp_unit_store_tree_model_get_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -20(%rbp)
	jl	.LBB14_4
# BB#2:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	addl	$10, %edx
	cmpl	%edx, %eax
	jge	.LBB14_4
# BB#3:                                 # %if.then
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_tree_model_get_value(%rip), %rsi
	leaq	.L.str.18(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_31
.LBB14_5:                               # %if.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.end
	movq	-32(%rbp), %rdi
	cmpl	$10, -20(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jge	.LBB14_8
# BB#7:                                 # %cond.true
	leaq	column_types(%rip), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB14_9
.LBB14_8:                               # %cond.false
	movl	$60, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB14_9
.LBB14_9:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_init@PLT
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	%esi, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jb	.LBB14_11
# BB#10:                                # %land.lhs.true.7
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB14_13
.LBB14_11:                              # %lor.lhs.false
	cmpl	$65536, -44(%rbp)       # imm = 0x10000
	jne	.LBB14_31
# BB#12:                                # %land.lhs.true.13
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB14_31
.LBB14_13:                              # %if.then.14
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$9, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	ja	.LBB14_24
# BB#32:                                # %if.then.14
	leaq	.LJTI14_0(%rip), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB14_14:                              # %sw.bb
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB14_30
.LBB14_15:                              # %sw.bb.15
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %eax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_factor@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	g_value_set_double@PLT
	jmp	.LBB14_30
.LBB14_16:                              # %sw.bb.17
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %eax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_digits@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_int@PLT
	jmp	.LBB14_30
.LBB14_17:                              # %sw.bb.19
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %eax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_identifier@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_static_string@PLT
	jmp	.LBB14_30
.LBB14_18:                              # %sw.bb.21
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %eax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_symbol@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_static_string@PLT
	jmp	.LBB14_30
.LBB14_19:                              # %sw.bb.23
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %eax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_abbreviation@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_static_string@PLT
	jmp	.LBB14_30
.LBB14_20:                              # %sw.bb.25
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %eax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_singular@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_static_string@PLT
	jmp	.LBB14_30
.LBB14_21:                              # %sw.bb.27
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %eax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_plural@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_static_string@PLT
	jmp	.LBB14_30
.LBB14_22:                              # %sw.bb.29
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %esi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_unit_format_string@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_take_string@PLT
	jmp	.LBB14_30
.LBB14_23:                              # %sw.bb.31
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-44(%rbp), %esi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_unit_format_string@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_take_string@PLT
	jmp	.LBB14_30
.LBB14_24:                              # %sw.default
	movl	-20(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB14_26
# BB#25:                                # %if.then.35
	movq	-32(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB14_29
.LBB14_26:                              # %if.else.38
	xorps	%xmm0, %xmm0
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB14_27
	jp	.LBB14_27
	jmp	.LBB14_28
.LBB14_27:                              # %if.then.42
	movq	-32(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movl	-44(%rbp), %edx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	divsd	(%rcx,%rax,8), %xmm1
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm1, %xmm0
	callq	g_value_set_double@PLT
.LBB14_28:                              # %if.end.50
	jmp	.LBB14_29
.LBB14_29:                              # %if.end.51
	jmp	.LBB14_30
.LBB14_30:                              # %sw.epilog
	jmp	.LBB14_31
.LBB14_31:                              # %if.end.52
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_unit_store_tree_model_get_value, .Lfunc_end14-gimp_unit_store_tree_model_get_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI14_0:
	.long	.LBB14_14-.LJTI14_0
	.long	.LBB14_15-.LJTI14_0
	.long	.LBB14_16-.LJTI14_0
	.long	.LBB14_17-.LJTI14_0
	.long	.LBB14_18-.LJTI14_0
	.long	.LBB14_19-.LJTI14_0
	.long	.LBB14_20-.LJTI14_0
	.long	.LBB14_21-.LJTI14_0
	.long	.LBB14_22-.LJTI14_0
	.long	.LBB14_23-.LJTI14_0

	.text
	.globl	gimp_unit_store_get_values
	.align	16, 0x90
	.type	gimp_unit_store_get_values,@function
gimp_unit_store_get_values:             # @gimp_unit_store_get_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       # 16-byte Spill
	movaps	%xmm6, -304(%rbp)       # 16-byte Spill
	movaps	%xmm5, -320(%rbp)       # 16-byte Spill
	movaps	%xmm4, -336(%rbp)       # 16-byte Spill
	movaps	%xmm3, -352(%rbp)       # 16-byte Spill
	movaps	%xmm2, -368(%rbp)       # 16-byte Spill
	movaps	%xmm1, -384(%rbp)       # 16-byte Spill
	movaps	%xmm0, -400(%rbp)       # 16-byte Spill
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r9, -416(%rbp)         # 8-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movl	%esi, -444(%rbp)        # 4-byte Spill
	je	.LBB15_25
# BB#24:                                # %entry
	movaps	-400(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -112(%rbp)
.LBB15_25:                              # %entry
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movl	-444(%rbp), %edi        # 4-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_unit_store_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_get_values(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_23
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, 16(%rsi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rsi)
	movl	$48, 4(%rsi)
	movl	$24, (%rsi)
	movl	$0, -68(%rbp)
.LBB15_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB15_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB15_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_16
# BB#15:                                # %if.then.16
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-68(%rbp), %edx
	callq	gimp_unit_store_get_value@PLT
	movq	-24(%rbp), %rdi
	movsd	%xmm0, (%rdi)
.LBB15_16:                              # %if.end.18
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB15_21
# BB#17:                                # %if.then.21
                                        #   in Loop: Header=BB15_13 Depth=1
	leaq	-64(%rbp), %rax
	movl	-64(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	ja	.LBB15_19
# BB#18:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	-468(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-464(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB15_20
.LBB15_19:                              # %vaarg.in_mem
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -480(%rbp)        # 8-byte Spill
.LBB15_20:                              # %vaarg.end
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB15_21:                              # %if.end.23
                                        #   in Loop: Header=BB15_13 Depth=1
	jmp	.LBB15_13
.LBB15_22:                              # %for.end
	leaq	-64(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB15_23:                              # %return
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_unit_store_get_values, .Lfunc_end15-gimp_unit_store_get_values
	.cfi_endproc

	.globl	_gimp_unit_store_sync_units
	.align	16, 0x90
	.type	_gimp_unit_store_sync_units,@function
_gimp_unit_store_sync_units:            # @_gimp_unit_store_sync_units
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_unit_store_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__._gimp_unit_store_sync_units(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB16_20
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -60(%rbp)
.LBB16_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB16_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB16_13 Depth=1
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-92(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$65536, -92(%rbp)       # imm = 0x10000
	je	.LBB16_17
# BB#15:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	-92(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jbe	.LBB16_17
# BB#16:                                # %if.then.21
                                        #   in Loop: Header=BB16_13 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_path@PLT
	leaq	-56(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_tree_model_row_inserted@PLT
	movq	-104(%rbp), %rdi
	callq	gtk_tree_path_free@PLT
.LBB16_17:                              # %if.end.24
                                        #   in Loop: Header=BB16_13 Depth=1
	jmp	.LBB16_18
.LBB16_18:                              # %for.inc
                                        #   in Loop: Header=BB16_13 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -60(%rbp)
	jmp	.LBB16_13
.LBB16_19:                              # %for.end
	callq	gimp_unit_get_number_of_units@PLT
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 48(%rcx)
.LBB16_20:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_gimp_unit_store_sync_units, .Lfunc_end16-_gimp_unit_store_sync_units
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_class_init,@function
gimp_unit_store_class_init:             # @gimp_unit_store_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -16(%rbp)
	callq	gimp_unit_get_type@PLT
	leaq	.L.str.1(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$235, %edx
	leaq	gimp_unit_store_get_property(%rip), %r9
	leaq	gimp_unit_store_set_property(%rip), %r10
	leaq	gimp_unit_store_finalize(%rip), %r11
	movq	%rax, column_types(%rip)
	movq	-16(%rbp), %rax
	movq	%r11, 48(%rax)
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
	leaq	.L.str.4(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean@PLT
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.5(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean@PLT
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.8(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	leaq	.L.str.9(%rip), %rcx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_string@PLT
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.10(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	leaq	.L.str.11(%rip), %rcx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_string@PLT
	movl	$5, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movl	$56, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_unit_store_class_init, .Lfunc_end17-gimp_unit_store_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_finalize,@function
gimp_unit_store_finalize:               # @gimp_unit_store_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB18_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB18_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB18_6
# BB#5:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB18_6:                               # %if.end.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_unit_store_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_unit_store_finalize, .Lfunc_end18-gimp_unit_store_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_set_property,@function
gimp_unit_store_set_property:           # @gimp_unit_store_set_property
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB19_17
# BB#21:                                # %entry
	leaq	.LJTI19_0(%rip), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB19_1:                               # %sw.bb
	jmp	.LBB19_2
.LBB19_2:                               # %do.body
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB19_4
# BB#3:                                 # %if.then
	jmp	.LBB19_5
.LBB19_4:                               # %if.else
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_set_property(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB19_20
.LBB19_5:                               # %if.end
	jmp	.LBB19_6
.LBB19_6:                               # %do.end
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-40(%rbp), %rdi
	cmpl	$0, (%rdi)
	je	.LBB19_8
# BB#7:                                 # %if.then.5
	movl	$8, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc0_n@PLT
	movl	$8, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-40(%rbp), %rax
	movslq	(%rax), %rdi
	callq	g_malloc0_n@PLT
	movq	-40(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB19_8:                               # %if.end.11
	jmp	.LBB19_20
.LBB19_9:                               # %sw.bb.12
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_value_get_boolean@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_unit_store_set_has_pixels@PLT
	jmp	.LBB19_20
.LBB19_10:                              # %sw.bb.16
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_value_get_boolean@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_unit_store_set_has_percent@PLT
	jmp	.LBB19_20
.LBB19_11:                              # %sw.bb.20
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB19_13
# BB#12:                                # %if.then.25
	leaq	.L.str.9(%rip), %rdi
	callq	g_strdup@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
.LBB19_13:                              # %if.end.28
	jmp	.LBB19_20
.LBB19_14:                              # %sw.bb.29
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB19_16
# BB#15:                                # %if.then.34
	leaq	.L.str.9(%rip), %rdi
	callq	g_strdup@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
.LBB19_16:                              # %if.end.37
	jmp	.LBB19_20
.LBB19_17:                              # %sw.default
	jmp	.LBB19_18
.LBB19_18:                              # %do.body.38
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
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%r9, -136(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$270, %edx              # imm = 0x10E
	leaq	.L.str.15(%rip), %rcx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#19:                                # %do.end.43
	jmp	.LBB19_20
.LBB19_20:                              # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_unit_store_set_property, .Lfunc_end19-gimp_unit_store_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI19_0:
	.long	.LBB19_1-.LJTI19_0
	.long	.LBB19_9-.LJTI19_0
	.long	.LBB19_10-.LJTI19_0
	.long	.LBB19_11-.LJTI19_0
	.long	.LBB19_14-.LJTI19_0

	.text
	.align	16, 0x90
	.type	gimp_unit_store_get_property,@function
gimp_unit_store_get_property:           # @gimp_unit_store_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB20_6
# BB#10:                                # %entry
	leaq	.LJTI20_0(%rip), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB20_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB20_9
.LBB20_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB20_9
.LBB20_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_boolean@PLT
	jmp	.LBB20_9
.LBB20_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB20_9
.LBB20_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB20_9
.LBB20_6:                               # %sw.default
	jmp	.LBB20_7
.LBB20_7:                               # %do.body
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$302, %edx              # imm = 0x12E
	leaq	.L.str.15(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB20_9
.LBB20_9:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_unit_store_get_property, .Lfunc_end20-gimp_unit_store_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI20_0:
	.long	.LBB20_1-.LJTI20_0
	.long	.LBB20_2-.LJTI20_0
	.long	.LBB20_3-.LJTI20_0
	.long	.LBB20_4-.LJTI20_0
	.long	.LBB20_5-.LJTI20_0

	.text
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
	je	.LBB21_2
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
.LBB21_2:                               # %entry
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
	leaq	.L.str.2(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end21:
	.size	g_warning, .Lfunc_end21-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_get_flags,@function
gimp_unit_store_get_flags:              # @gimp_unit_store_get_flags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	movl	$3, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_unit_store_get_flags, .Lfunc_end22-gimp_unit_store_get_flags
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_get_n_columns,@function
gimp_unit_store_get_n_columns:          # @gimp_unit_store_get_n_columns
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$10, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_unit_store_get_n_columns, .Lfunc_end23-gimp_unit_store_get_n_columns
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_get_column_type,@function
gimp_unit_store_get_column_type:        # @gimp_unit_store_get_column_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -20(%rbp)
	jl	.LBB24_3
# BB#2:                                 # %if.then
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_get_column_type(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB24_8
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %do.end
	cmpl	$10, -20(%rbp)
	jge	.LBB24_7
# BB#6:                                 # %if.then.2
	leaq	column_types(%rip), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB24_8
.LBB24_7:                               # %if.end.3
	movq	$60, -8(%rbp)
.LBB24_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_unit_store_get_column_type, .Lfunc_end24-gimp_unit_store_get_column_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_get_iter,@function
gimp_unit_store_get_iter:               # @gimp_unit_store_get_iter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_get_depth@PLT
	cmpl	$0, %eax
	jle	.LBB25_3
# BB#2:                                 # %if.then
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_unit_store_get_iter(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB25_25
.LBB25_4:                               # %if.end
	jmp	.LBB25_5
.LBB25_5:                               # %do.end
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_get_indices@PLT
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB25_7
# BB#6:                                 # %if.then.4
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB25_7:                               # %if.end.5
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB25_19
# BB#8:                                 # %if.then.7
	movl	-48(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rcx
	cmpl	$0, 4(%rcx)
	je	.LBB25_15
# BB#9:                                 # %if.then.10
	cmpl	$0, -44(%rbp)
	jne	.LBB25_11
# BB#10:                                # %if.then.12
	movl	$0, -48(%rbp)
	jmp	.LBB25_14
.LBB25_11:                              # %if.else.13
	cmpl	$1, -44(%rbp)
	jne	.LBB25_13
# BB#12:                                # %if.then.15
	movl	$65536, -48(%rbp)       # imm = 0x10000
.LBB25_13:                              # %if.end.16
	jmp	.LBB25_14
.LBB25_14:                              # %if.end.17
	jmp	.LBB25_18
.LBB25_15:                              # %if.else.18
	cmpl	$0, -44(%rbp)
	jne	.LBB25_17
# BB#16:                                # %if.then.20
	movl	$65536, -48(%rbp)       # imm = 0x10000
.LBB25_17:                              # %if.end.21
	jmp	.LBB25_18
.LBB25_18:                              # %if.end.22
	jmp	.LBB25_19
.LBB25_19:                              # %if.end.23
	cmpl	$0, -48(%rbp)
	jb	.LBB25_21
# BB#20:                                # %land.lhs.true
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB25_23
.LBB25_21:                              # %lor.lhs.false
	cmpl	$65536, -48(%rbp)       # imm = 0x10000
	jne	.LBB25_24
# BB#22:                                # %land.lhs.true.28
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB25_24
.LBB25_23:                              # %if.then.31
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movl	$1, -4(%rbp)
	jmp	.LBB25_25
.LBB25_24:                              # %if.end.32
	movl	$0, -4(%rbp)
.LBB25_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_unit_store_get_iter, .Lfunc_end25-gimp_unit_store_get_iter
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_get_path,@function
gimp_unit_store_get_path:               # @gimp_unit_store_get_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	callq	gtk_tree_path_new@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
.LBB26_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB26_14
# BB#3:                                 # %if.then.4
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rcx
	cmpl	$0, 4(%rcx)
	je	.LBB26_10
# BB#4:                                 # %if.then.7
	cmpl	$0, -36(%rbp)
	jne	.LBB26_6
# BB#5:                                 # %if.then.9
	movl	$0, -40(%rbp)
	jmp	.LBB26_9
.LBB26_6:                               # %if.else
	cmpl	$65536, -36(%rbp)       # imm = 0x10000
	jne	.LBB26_8
# BB#7:                                 # %if.then.12
	movl	$1, -40(%rbp)
.LBB26_8:                               # %if.end.13
	jmp	.LBB26_9
.LBB26_9:                               # %if.end.14
	jmp	.LBB26_13
.LBB26_10:                              # %if.else.15
	cmpl	$65536, -36(%rbp)       # imm = 0x10000
	jne	.LBB26_12
# BB#11:                                # %if.then.18
	movl	$0, -40(%rbp)
.LBB26_12:                              # %if.end.19
	jmp	.LBB26_13
.LBB26_13:                              # %if.end.20
	jmp	.LBB26_14
.LBB26_14:                              # %if.end.21
	movq	-32(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	gtk_tree_path_append_index@PLT
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_unit_store_get_path, .Lfunc_end26-gimp_unit_store_get_path
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_iter_next,@function
gimp_unit_store_iter_next:              # @gimp_unit_store_iter_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB27_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB27_3
# BB#2:                                 # %if.then
	movl	$65536, -36(%rbp)       # imm = 0x10000
	jmp	.LBB27_11
.LBB27_3:                               # %if.else
	cmpl	$65536, -36(%rbp)       # imm = 0x10000
	jne	.LBB27_5
# BB#4:                                 # %if.then.5
	movl	$1, -36(%rbp)
	jmp	.LBB27_10
.LBB27_5:                               # %if.else.6
	cmpl	$0, -36(%rbp)
	jb	.LBB27_8
# BB#6:                                 # %land.lhs.true.9
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	subl	$1, %eax
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jae	.LBB27_8
# BB#7:                                 # %if.then.13
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB27_9
.LBB27_8:                               # %if.else.14
	movl	$0, -4(%rbp)
	jmp	.LBB27_12
.LBB27_9:                               # %if.end
	jmp	.LBB27_10
.LBB27_10:                              # %if.end.15
	jmp	.LBB27_11
.LBB27_11:                              # %if.end.16
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movl	$1, -4(%rbp)
.LBB27_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_unit_store_iter_next, .Lfunc_end27-gimp_unit_store_iter_next
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_iter_children,@function
gimp_unit_store_iter_children:          # @gimp_unit_store_iter_children
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB28_9
.LBB28_2:                               # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB28_4
# BB#3:                                 # %if.then.3
	movl	$0, -44(%rbp)
	jmp	.LBB28_8
.LBB28_4:                               # %if.else
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB28_6
# BB#5:                                 # %if.then.5
	movl	$65536, -44(%rbp)       # imm = 0x10000
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.6
	movl	$1, -44(%rbp)
.LBB28_7:                               # %if.end.7
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.8
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movl	$1, -4(%rbp)
.LBB28_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_unit_store_iter_children, .Lfunc_end28-gimp_unit_store_iter_children
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_iter_has_child,@function
gimp_unit_store_iter_has_child:         # @gimp_unit_store_iter_has_child
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_unit_store_iter_has_child, .Lfunc_end29-gimp_unit_store_iter_has_child
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_iter_n_children,@function
gimp_unit_store_iter_n_children:        # @gimp_unit_store_iter_n_children
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB30_7
.LBB30_2:                               # %if.end
	callq	gimp_unit_get_number_of_units@PLT
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	$0, 4(%rcx)
	jne	.LBB30_4
# BB#3:                                 # %if.then.4
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
.LBB30_4:                               # %if.end.5
	movq	-32(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB30_6
# BB#5:                                 # %if.then.7
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB30_6:                               # %if.end.8
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB30_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_unit_store_iter_n_children, .Lfunc_end30-gimp_unit_store_iter_n_children
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_iter_nth_child,@function
gimp_unit_store_iter_nth_child:         # @gimp_unit_store_iter_nth_child
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB31_20
.LBB31_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_unit_store_iter_n_children
	movl	%eax, -52(%rbp)
	cmpl	$0, -36(%rbp)
	jl	.LBB31_19
# BB#3:                                 # %land.lhs.true
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB31_19
# BB#4:                                 # %if.then.4
	movl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rcx
	cmpl	$0, 4(%rcx)
	jne	.LBB31_6
# BB#5:                                 # %if.then.6
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB31_6:                               # %if.end.7
	movq	-48(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB31_18
# BB#7:                                 # %if.then.9
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rcx
	cmpl	$0, 4(%rcx)
	je	.LBB31_14
# BB#8:                                 # %if.then.12
	cmpl	$0, -36(%rbp)
	jne	.LBB31_10
# BB#9:                                 # %if.then.14
	movl	$0, -56(%rbp)
	jmp	.LBB31_13
.LBB31_10:                              # %if.else
	cmpl	$1, -36(%rbp)
	jne	.LBB31_12
# BB#11:                                # %if.then.16
	movl	$65536, -56(%rbp)       # imm = 0x10000
.LBB31_12:                              # %if.end.17
	jmp	.LBB31_13
.LBB31_13:                              # %if.end.18
	jmp	.LBB31_17
.LBB31_14:                              # %if.else.19
	cmpl	$0, -36(%rbp)
	jne	.LBB31_16
# BB#15:                                # %if.then.21
	movl	$65536, -56(%rbp)       # imm = 0x10000
.LBB31_16:                              # %if.end.22
	jmp	.LBB31_17
.LBB31_17:                              # %if.end.23
	jmp	.LBB31_18
.LBB31_18:                              # %if.end.24
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movl	$1, -4(%rbp)
	jmp	.LBB31_20
.LBB31_19:                              # %if.end.25
	movl	$0, -4(%rbp)
.LBB31_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_unit_store_iter_nth_child, .Lfunc_end31-gimp_unit_store_iter_nth_child
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_store_iter_parent,@function
gimp_unit_store_iter_parent:            # @gimp_unit_store_iter_parent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_unit_store_iter_parent, .Lfunc_end32-gimp_unit_store_iter_parent
	.cfi_endproc

	.type	gimp_unit_store_get_type.g_define_type_id__volatile,@object # @gimp_unit_store_get_type.g_define_type_id__volatile
	.local	gimp_unit_store_get_type.g_define_type_id__volatile
	.comm	gimp_unit_store_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpUnitStore"
	.size	.L.str, 14

	.type	gimp_unit_store_get_type.g_implement_interface_info,@object # @gimp_unit_store_get_type.g_implement_interface_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_unit_store_get_type.g_implement_interface_info:
	.quad	gimp_unit_store_tree_model_init
	.quad	0
	.quad	0
	.size	gimp_unit_store_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"num-values"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LibGimpWidgets"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_unit_store_set_has_pixels,@object # @__func__.gimp_unit_store_set_has_pixels
.L__func__.gimp_unit_store_set_has_pixels:
	.asciz	"gimp_unit_store_set_has_pixels"
	.size	.L__func__.gimp_unit_store_set_has_pixels, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_UNIT_STORE (store)"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"has-pixels"
	.size	.L.str.4, 11

	.type	.L__func__.gimp_unit_store_get_has_pixels,@object # @__func__.gimp_unit_store_get_has_pixels
.L__func__.gimp_unit_store_get_has_pixels:
	.asciz	"gimp_unit_store_get_has_pixels"
	.size	.L__func__.gimp_unit_store_get_has_pixels, 31

	.type	.L__func__.gimp_unit_store_set_has_percent,@object # @__func__.gimp_unit_store_set_has_percent
.L__func__.gimp_unit_store_set_has_percent:
	.asciz	"gimp_unit_store_set_has_percent"
	.size	.L__func__.gimp_unit_store_set_has_percent, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"has-percent"
	.size	.L.str.5, 12

	.type	.L__func__.gimp_unit_store_get_has_percent,@object # @__func__.gimp_unit_store_get_has_percent
.L__func__.gimp_unit_store_get_has_percent:
	.asciz	"gimp_unit_store_get_has_percent"
	.size	.L__func__.gimp_unit_store_get_has_percent, 32

	.type	.L__func__.gimp_unit_store_set_pixel_value,@object # @__func__.gimp_unit_store_set_pixel_value
.L__func__.gimp_unit_store_set_pixel_value:
	.asciz	"gimp_unit_store_set_pixel_value"
	.size	.L__func__.gimp_unit_store_set_pixel_value, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"index > 0 && index < private->num_values"
	.size	.L.str.6, 41

	.type	.L__func__.gimp_unit_store_set_pixel_values,@object # @__func__.gimp_unit_store_set_pixel_values
.L__func__.gimp_unit_store_set_pixel_values:
	.asciz	"gimp_unit_store_set_pixel_values"
	.size	.L__func__.gimp_unit_store_set_pixel_values, 33

	.type	.L__func__.gimp_unit_store_set_resolution,@object # @__func__.gimp_unit_store_set_resolution
.L__func__.gimp_unit_store_set_resolution:
	.asciz	"gimp_unit_store_set_resolution"
	.size	.L__func__.gimp_unit_store_set_resolution, 31

	.type	.L__func__.gimp_unit_store_set_resolutions,@object # @__func__.gimp_unit_store_set_resolutions
.L__func__.gimp_unit_store_set_resolutions:
	.asciz	"gimp_unit_store_set_resolutions"
	.size	.L__func__.gimp_unit_store_set_resolutions, 32

	.type	.L__func__.gimp_unit_store_get_value,@object # @__func__.gimp_unit_store_get_value
.L__func__.gimp_unit_store_get_value:
	.asciz	"gimp_unit_store_get_value"
	.size	.L__func__.gimp_unit_store_get_value, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"index >= 0 && index < private->num_values"
	.size	.L.str.7, 42

	.type	.L__func__.gimp_unit_store_get_values,@object # @__func__.gimp_unit_store_get_values
.L__func__.gimp_unit_store_get_values:
	.asciz	"gimp_unit_store_get_values"
	.size	.L__func__.gimp_unit_store_get_values, 27

	.type	.L__func__._gimp_unit_store_sync_units,@object # @__func__._gimp_unit_store_sync_units
.L__func__._gimp_unit_store_sync_units:
	.asciz	"_gimp_unit_store_sync_units"
	.size	.L__func__._gimp_unit_store_sync_units, 28

	.type	gimp_unit_store_parent_class,@object # @gimp_unit_store_parent_class
	.local	gimp_unit_store_parent_class
	.comm	gimp_unit_store_parent_class,8,8
	.type	GimpUnitStore_private_offset,@object # @GimpUnitStore_private_offset
	.local	GimpUnitStore_private_offset
	.comm	GimpUnitStore_private_offset,4,4
	.type	column_types,@object    # @column_types
	.data
	.align	16
column_types:
	.quad	0                       # 0x0
	.quad	60                      # 0x3c
	.quad	24                      # 0x18
	.quad	64                      # 0x40
	.quad	64                      # 0x40
	.quad	64                      # 0x40
	.quad	64                      # 0x40
	.quad	64                      # 0x40
	.quad	64                      # 0x40
	.quad	64                      # 0x40
	.size	column_types, 80

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"short-format"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%a"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"long-format"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%p"
	.size	.L.str.11, 3

	.type	.L__func__.gimp_unit_store_set_property,@object # @__func__.gimp_unit_store_set_property
.L__func__.gimp_unit_store_set_property:
	.asciz	"gimp_unit_store_set_property"
	.size	.L__func__.gimp_unit_store_set_property, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"private->num_values == 0"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpunitstore.c"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"property"
	.size	.L.str.15, 9

	.type	.L__func__.gimp_unit_store_get_column_type,@object # @__func__.gimp_unit_store_get_column_type
.L__func__.gimp_unit_store_get_column_type:
	.asciz	"gimp_unit_store_get_column_type"
	.size	.L__func__.gimp_unit_store_get_column_type, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"index >= 0"
	.size	.L.str.16, 11

	.type	.L__func__.gimp_unit_store_get_iter,@object # @__func__.gimp_unit_store_get_iter
.L__func__.gimp_unit_store_get_iter:
	.asciz	"gimp_unit_store_get_iter"
	.size	.L__func__.gimp_unit_store_get_iter, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk_tree_path_get_depth (path) > 0"
	.size	.L.str.17, 35

	.type	.L__func__.gimp_unit_store_tree_model_get_value,@object # @__func__.gimp_unit_store_tree_model_get_value
.L__func__.gimp_unit_store_tree_model_get_value:
	.asciz	"gimp_unit_store_tree_model_get_value"
	.size	.L__func__.gimp_unit_store_tree_model_get_value, 37

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"column >= 0 && column < GIMP_UNIT_STORE_UNIT_COLUMNS + private->num_values"
	.size	.L.str.18, 75


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
