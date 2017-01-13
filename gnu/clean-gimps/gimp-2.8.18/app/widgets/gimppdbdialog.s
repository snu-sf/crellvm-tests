	.text
	.file	"gimppdbdialog.bc"
	.globl	gimp_pdb_dialog_get_type
	.align	16, 0x90
	.type	gimp_pdb_dialog_get_type,@function
gimp_pdb_dialog_get_type:               # @gimp_pdb_dialog_get_type
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
	cmpq	$0, gimp_pdb_dialog_get_type.dialog_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gimp_dialog_get_type
	movabsq	$.L.str, %rsi
	movabsq	$gimp_pdb_dialog_get_type.dialog_info, %rdx
	movl	$16, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_pdb_dialog_get_type.dialog_type
.LBB0_2:                                # %if.end
	movq	gimp_pdb_dialog_get_type.dialog_type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pdb_dialog_get_type, .Lfunc_end0-gimp_pdb_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_dialog_class_init,@function
gimp_pdb_dialog_class_init:             # @gimp_pdb_dialog_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent
	movabsq	$gimp_pdb_dialog_response, %rsi
	movabsq	$gimp_pdb_dialog_set_property, %rdi
	movabsq	$gimp_pdb_dialog_dispose, %rcx
	movabsq	$gimp_pdb_dialog_constructed, %rdx
	movq	%rax, parent_class
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 904(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 992(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_pdb_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_gtype
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$234, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$5, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_menu_factory_get_type
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$6, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pdb_dialog_class_init, .Lfunc_end1-gimp_pdb_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_dialog_init,@function
gimp_pdb_dialog_init:                   # @gimp_pdb_dialog_init
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	984(%rsi), %rdi
	movq	-8(%rbp), %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, 984(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	movq	%rax, %rdi
	callq	gtk_dialog_add_button
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pdb_dialog_init, .Lfunc_end2-gimp_pdb_dialog_init
	.cfi_endproc

	.globl	gimp_pdb_dialog_run_callback
	.align	16, 0x90
	.type	gimp_pdb_dialog_run_callback,@function
gimp_pdb_dialog_run_callback:           # @gimp_pdb_dialog_run_callback
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	288(%rax), %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB3_12
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 992(%rax)
	je	.LBB3_12
# BB#2:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB3_12
# BB#3:                                 # %land.lhs.true.4
	movq	-8(%rbp), %rax
	cmpl	$0, 312(%rax)
	jne	.LBB3_12
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 312(%rax)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	304(%rax), %rsi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	je	.LBB3_11
# BB#5:                                 # %if.then.10
	leaq	-48(%rbp), %rcx
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	992(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	cmpl	$3, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	280(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movl	$2, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_message
	jmp	.LBB3_10
.LBB3_7:                                # %if.else
	cmpq	$0, -48(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.21
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	280(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movq	-48(%rbp), %rdi
	callq	g_error_free
.LBB3_9:                                # %if.end
	jmp	.LBB3_10
.LBB3_10:                               # %if.end.25
	movq	-40(%rbp), %rdi
	callq	g_value_array_free
.LBB3_11:                               # %if.end.26
	movq	-8(%rbp), %rax
	movl	$0, 312(%rax)
.LBB3_12:                               # %if.end.28
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pdb_dialog_run_callback, .Lfunc_end3-gimp_pdb_dialog_run_callback
	.cfi_endproc

	.globl	gimp_pdb_dialog_get_by_callback
	.align	16, 0x90
	.type	gimp_pdb_dialog_get_by_callback,@function
gimp_pdb_dialog_get_by_callback:        # @gimp_pdb_dialog_get_by_callback
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
	movq	%rax, -40(%rbp)
	callq	gimp_pdb_dialog_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_7
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_class_is_a
	movl	%eax, -52(%rbp)
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.6
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_get_by_callback, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_27
.LBB4_10:                               # %if.end.8
	jmp	.LBB4_11
.LBB4_11:                               # %do.end
	jmp	.LBB4_12
.LBB4_12:                               # %do.body.9
	cmpq	$0, -24(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.11
	jmp	.LBB4_15
.LBB4_14:                               # %if.else.12
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_pdb_dialog_get_by_callback, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_27
.LBB4_15:                               # %if.end.13
	jmp	.LBB4_16
.LBB4_16:                               # %do.end.14
	movq	-16(%rbp), %rax
	movq	984(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB4_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_26
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB4_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	304(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_21
# BB#20:                                # %if.then.22
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_27
.LBB4_21:                               # %if.end.23
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_22
.LBB4_22:                               # %for.inc
                                        #   in Loop: Header=BB4_17 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_25
.LBB4_24:                               # %cond.false
                                        #   in Loop: Header=BB4_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_25
.LBB4_25:                               # %cond.end
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB4_17
.LBB4_26:                               # %for.end
	movq	$0, -8(%rbp)
.LBB4_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pdb_dialog_get_by_callback, .Lfunc_end4-gimp_pdb_dialog_get_by_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_dialog_constructed,@function
gimp_pdb_dialog_constructed:            # @gimp_pdb_dialog_constructed
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.7
	movl	$0, -44(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.10
	movl	$1, -44(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.11
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_9:                                # %if.end.13
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.14
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.16
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.17
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$186, %edx
	movabsq	$.L__func__.gimp_pdb_dialog_constructed, %rcx
	movabsq	$.L.str.12, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.18
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	jmp	.LBB5_15
.LBB5_15:                               # %do.body.19
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_17
# BB#16:                                # %if.then.28
	movl	$0, -68(%rbp)
	jmp	.LBB5_22
.LBB5_17:                               # %if.else.29
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_20
# BB#18:                                # %land.lhs.true.32
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_20
# BB#19:                                # %if.then.36
	movl	$1, -68(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.37
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_21:                               # %if.end.39
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.40
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_24
# BB#23:                                # %if.then.43
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.44
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$187, %edx
	movabsq	$.L__func__.gimp_pdb_dialog_constructed, %rcx
	movabsq	$.L.str.13, %r8
	callq	g_assertion_message_expr
.LBB5_25:                               # %if.end.45
	jmp	.LBB5_26
.LBB5_26:                               # %do.end.46
	jmp	.LBB5_27
.LBB5_27:                               # %do.body.47
	movq	-16(%rbp), %rax
	movq	288(%rax), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB5_29
# BB#28:                                # %if.then.51
	jmp	.LBB5_30
.LBB5_29:                               # %if.else.52
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$188, %edx
	movabsq	$.L__func__.gimp_pdb_dialog_constructed, %rcx
	movabsq	$.L.str.14, %r8
	callq	g_assertion_message_expr
.LBB5_30:                               # %if.end.53
	jmp	.LBB5_31
.LBB5_31:                               # %do.end.54
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_name
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_new
	movq	-16(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movq	-16(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	288(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	296(%rax), %rdx
	callq	gimp_context_set_by_type
	movq	-16(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-16(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gimp_context_type_to_signal_name
	movabsq	$gimp_pdb_dialog_context_changed, %rdx
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_pdb_dialog_plug_in_closed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	376(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -128(%rbp)        # 8-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pdb_dialog_constructed, .Lfunc_end5-gimp_pdb_dialog_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_dialog_dispose,@function
gimp_pdb_dialog_dispose:                # @gimp_pdb_dialog_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	984(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-24(%rbp), %rsi
	movq	%rax, 984(%rsi)
	movq	-16(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 264(%rax)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 272(%rax)
.LBB6_4:                                # %if.end.10
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 280(%rax)
.LBB6_6:                                # %if.end.15
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.17
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
.LBB6_8:                                # %if.end.20
	movq	-16(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB6_10
# BB#9:                                 # %if.then.22
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 320(%rax)
.LBB6_10:                               # %if.end.25
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_pdb_dialog_dispose, .Lfunc_end6-gimp_pdb_dialog_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_dialog_set_property,@function
gimp_pdb_dialog_set_property:           # @gimp_pdb_dialog_set_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
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
	ja	.LBB7_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 264(%rdi)
	jmp	.LBB7_12
.LBB7_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 272(%rdi)
	jmp	.LBB7_12
.LBB7_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_gtype
	movq	-40(%rbp), %rdi
	movq	%rax, 288(%rdi)
	jmp	.LBB7_12
.LBB7_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 296(%rdi)
	jmp	.LBB7_12
.LBB7_5:                                # %sw.bb.9
	movq	-40(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB7_7
# BB#6:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	304(%rax), %rdi
	callq	g_free
.LBB7_7:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 304(%rdi)
	jmp	.LBB7_12
.LBB7_8:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 320(%rdi)
	jmp	.LBB7_12
.LBB7_9:                                # %sw.default
	jmp	.LBB7_10
.LBB7_10:                               # %do.body
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$289, %edx              # imm = 0x121
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB7_12
.LBB7_12:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pdb_dialog_set_property, .Lfunc_end7-gimp_pdb_dialog_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_5
	.quad	.LBB7_8

	.text
	.align	16, 0x90
	.type	gimp_pdb_dialog_response,@function
gimp_pdb_dialog_response:               # @gimp_pdb_dialog_response
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_pdb_dialog_run_callback
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_pdb_dialog_response, .Lfunc_end8-gimp_pdb_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_dialog_context_changed,@function
gimp_pdb_dialog_context_changed:        # @gimp_pdb_dialog_context_changed
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_pdb_dialog_run_callback
.LBB9_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_pdb_dialog_context_changed, .Lfunc_end9-gimp_pdb_dialog_context_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_dialog_plug_in_closed,@function
gimp_pdb_dialog_plug_in_closed:         # @gimp_pdb_dialog_plug_in_closed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 272(%rdx)
	je	.LBB10_5
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB10_5
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	304(%rax), %rsi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	jne	.LBB10_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967289, %esi       # imm = 0xFFFFFFF9
	movq	%rax, %rdi
	callq	gtk_dialog_response
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_pdb_dialog_plug_in_closed, .Lfunc_end10-gimp_pdb_dialog_plug_in_closed
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.type	gimp_pdb_dialog_get_type.dialog_type,@object # @gimp_pdb_dialog_get_type.dialog_type
	.local	gimp_pdb_dialog_get_type.dialog_type
	.comm	gimp_pdb_dialog_get_type.dialog_type,8,8
	.type	gimp_pdb_dialog_get_type.dialog_info,@object # @gimp_pdb_dialog_get_type.dialog_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_pdb_dialog_get_type.dialog_info:
	.short	1000                    # 0x3e8
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_pdb_dialog_class_init
	.quad	0
	.quad	0
	.short	336                     # 0x150
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_pdb_dialog_init
	.quad	0
	.size	gimp_pdb_dialog_get_type.dialog_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPdbDialog"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Unable to run %s callback. The corresponding plug-in may have crashed."
	.size	.L.str.1, 71

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Widgets"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_pdb_dialog_get_by_callback,@object # @__func__.gimp_pdb_dialog_get_by_callback
.L__func__.gimp_pdb_dialog_get_by_callback:
	.asciz	"gimp_pdb_dialog_get_by_callback"
	.size	.L__func__.gimp_pdb_dialog_get_by_callback, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_PDB_DIALOG_CLASS (klass)"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"callback_name != NULL"
	.size	.L.str.4, 22

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"context"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pdb"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"select-type"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"initial-object"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"callback-name"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"menu-factory"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimppdbdialog.c"
	.size	.L.str.11, 16

	.type	.L__func__.gimp_pdb_dialog_constructed,@object # @__func__.gimp_pdb_dialog_constructed
.L__func__.gimp_pdb_dialog_constructed:
	.asciz	"gimp_pdb_dialog_constructed"
	.size	.L__func__.gimp_pdb_dialog_constructed, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_PDB (dialog->pdb)"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_CONTEXT (dialog->caller_context)"
	.size	.L.str.13, 41

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"g_type_is_a (dialog->select_type, GIMP_TYPE_OBJECT)"
	.size	.L.str.14, 52

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"plug-in-closed"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gtk-close"
	.size	.L.str.18, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
