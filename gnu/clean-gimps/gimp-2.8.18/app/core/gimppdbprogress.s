	.text
	.file	"gimppdbprogress.bc"
	.globl	gimp_pdb_progress_get_type
	.align	16, 0x90
	.type	gimp_pdb_progress_get_type,@function
gimp_pdb_progress_get_type:             # @gimp_pdb_progress_get_type
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
	subq	$16, %rsp
	cmpq	$0, gimp_pdb_progress_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_pdb_progress_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_pdb_progress_get_type.type
	movq	gimp_pdb_progress_get_type.type, %rdi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_pdb_progress_get_type.progress_iface_info, %rdx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
.LBB0_2:                                # %if.end
	movq	gimp_pdb_progress_get_type.type, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pdb_progress_get_type, .Lfunc_end0-gimp_pdb_progress_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_class_init,@function
gimp_pdb_progress_class_init:           # @gimp_pdb_progress_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent
	movabsq	$gimp_pdb_progress_set_property, %rsi
	movabsq	$gimp_pdb_progress_finalize, %rdi
	movabsq	$gimp_pdb_progress_dispose, %rcx
	movabsq	$gimp_pdb_progress_constructed, %rdx
	movq	%rax, parent_class
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 24(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pdb_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$234, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$3, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pdb_progress_class_init, .Lfunc_end1-gimp_pdb_progress_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_init,@function
gimp_pdb_progress_init:                 # @gimp_pdb_progress_init
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rdi
	movq	-8(%rbp), %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, 136(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pdb_progress_init, .Lfunc_end2-gimp_pdb_progress_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_progress_iface_init,@function
gimp_pdb_progress_progress_iface_init:  # @gimp_pdb_progress_progress_iface_init
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
	movabsq	$gimp_pdb_progress_progress_get_window_id, %rax
	movabsq	$gimp_pdb_progress_progress_pulse, %rcx
	movabsq	$gimp_pdb_progress_progress_get_value, %rdx
	movabsq	$gimp_pdb_progress_progress_set_value, %rsi
	movabsq	$gimp_pdb_progress_progress_set_text, %r8
	movabsq	$gimp_pdb_progress_progress_is_active, %r9
	movabsq	$gimp_pdb_progress_progress_end, %r10
	movabsq	$gimp_pdb_progress_progress_start, %r11
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r11, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r10, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pdb_progress_progress_iface_init, .Lfunc_end3-gimp_pdb_progress_progress_iface_init
	.cfi_endproc

	.globl	gimp_pdb_progress_get_by_callback
	.align	16, 0x90
	.type	gimp_pdb_progress_get_by_callback,@function
gimp_pdb_progress_get_by_callback:      # @gimp_pdb_progress_get_by_callback
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
	callq	gimp_pdb_progress_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_progress_get_by_callback, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_26
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_progress_get_by_callback, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_26
.LBB4_15:                               # %if.end.13
	jmp	.LBB4_16
.LBB4_16:                               # %do.end.14
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB4_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_25
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	56(%rax), %rsi
	callq	g_strcmp0
	cmpl	$0, %eax
	jne	.LBB4_20
# BB#19:                                # %if.then.20
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_26
.LBB4_20:                               # %if.end.21
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_21
.LBB4_21:                               # %for.inc
                                        #   in Loop: Header=BB4_17 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %cond.false
                                        #   in Loop: Header=BB4_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_24
.LBB4_24:                               # %cond.end
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB4_17
.LBB4_25:                               # %for.end
	movq	$0, -8(%rbp)
.LBB4_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pdb_progress_get_by_callback, .Lfunc_end4-gimp_pdb_progress_get_by_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_constructed,@function
gimp_pdb_progress_constructed:          # @gimp_pdb_progress_constructed
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
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
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_9:                                # %if.end.13
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.16
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$178, %edx
	movabsq	$.L__func__.gimp_pdb_progress_constructed, %rcx
	movabsq	$.L.str.8, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.18
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	jmp	.LBB5_15
.LBB5_15:                               # %do.body.19
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_17
# BB#16:                                # %if.then.28
	movl	$0, -60(%rbp)
	jmp	.LBB5_22
.LBB5_17:                               # %if.else.29
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_20
# BB#18:                                # %land.lhs.true.32
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_20
# BB#19:                                # %if.then.36
	movl	$1, -60(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.37
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_21:                               # %if.end.39
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.40
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_24
# BB#23:                                # %if.then.43
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$179, %edx
	movabsq	$.L__func__.gimp_pdb_progress_constructed, %rcx
	movabsq	$.L.str.9, %r8
	callq	g_assertion_message_expr
.LBB5_25:                               # %if.end.45
	jmp	.LBB5_26
.LBB5_26:                               # %do.end.46
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pdb_progress_constructed, .Lfunc_end5-gimp_pdb_progress_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_dispose,@function
gimp_pdb_progress_dispose:              # @gimp_pdb_progress_dispose
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, 136(%rdi)
	movq	parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_pdb_progress_dispose, .Lfunc_end6-gimp_pdb_progress_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_finalize,@function
gimp_pdb_progress_finalize:             # @gimp_pdb_progress_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB7_4:                                # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB7_6:                                # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pdb_progress_finalize, .Lfunc_end7-gimp_pdb_progress_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_set_property,@function
gimp_pdb_progress_set_property:         # @gimp_pdb_progress_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
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
	jmp	.LBB8_14
.LBB8_14:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_15
.LBB8_15:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB8_7
	jmp	.LBB8_10
.LBB8_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 40(%rdi)
	jmp	.LBB8_13
.LBB8_4:                                # %sw.bb.5
	movq	-40(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB8_6
# BB#5:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_6:                                # %if.end.9
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	jmp	.LBB8_13
.LBB8_7:                                # %sw.bb.12
	movq	-40(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB8_9
# BB#8:                                 # %if.then.14
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free
.LBB8_9:                                # %if.end.16
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 56(%rdi)
	jmp	.LBB8_13
.LBB8_10:                               # %sw.default
	jmp	.LBB8_11
.LBB8_11:                               # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$247, %edx
	movabsq	$.L.str.11, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#12:                                # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_pdb_progress_set_property, .Lfunc_end8-gimp_pdb_progress_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_progress_start,@function
gimp_pdb_progress_progress_start:       # @gimp_pdb_progress_progress_start
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_pdb_progress_run_callback
	xorps	%xmm1, %xmm1
	movq	-40(%rbp), %rdx
	movl	$1, 24(%rdx)
	movq	-40(%rbp), %rdx
	movsd	%xmm1, 32(%rdx)
	movq	-16(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_pdb_progress_progress_start, .Lfunc_end10-gimp_pdb_progress_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_progress_end,@function
gimp_pdb_progress_progress_end:         # @gimp_pdb_progress_progress_end
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rdi
	callq	gimp_pdb_progress_run_callback
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rdx
	movl	$0, 24(%rdx)
	movq	-16(%rbp), %rdx
	movsd	%xmm1, 32(%rdx)
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB11_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_pdb_progress_progress_end, .Lfunc_end11-gimp_pdb_progress_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_progress_is_active,@function
gimp_pdb_progress_progress_is_active:   # @gimp_pdb_progress_progress_is_active
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_pdb_progress_progress_is_active, .Lfunc_end12-gimp_pdb_progress_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_progress_set_text,@function
gimp_pdb_progress_progress_set_text:    # @gimp_pdb_progress_progress_set_text
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$2, %esi
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_pdb_progress_run_callback
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB13_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_pdb_progress_progress_set_text, .Lfunc_end13-gimp_pdb_progress_progress_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_progress_set_value,@function
gimp_pdb_progress_progress_set_value:   # @gimp_pdb_progress_progress_set_value
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$3, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_pdb_progress_run_callback
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rdx
	movsd	%xmm1, 32(%rdx)
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB14_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_pdb_progress_progress_set_value, .Lfunc_end14-gimp_pdb_progress_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_progress_get_value,@function
gimp_pdb_progress_progress_get_value:   # @gimp_pdb_progress_progress_get_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_pdb_progress_progress_get_value, .Lfunc_end15-gimp_pdb_progress_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_progress_pulse,@function
gimp_pdb_progress_progress_pulse:       # @gimp_pdb_progress_progress_pulse
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rdi
	callq	gimp_pdb_progress_run_callback
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB16_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_pdb_progress_progress_pulse, .Lfunc_end16-gimp_pdb_progress_progress_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_progress_get_window_id,@function
gimp_pdb_progress_progress_get_window_id: # @gimp_pdb_progress_progress_get_window_id
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pdb_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$5, %esi
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gimp_pdb_progress_run_callback
	cvttsd2si	%xmm0, %rax
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_pdb_progress_progress_get_window_id, .Lfunc_end17-gimp_pdb_progress_progress_get_window_id
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_progress_run_callback,@function
gimp_pdb_progress_run_callback:         # @gimp_pdb_progress_run_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$200, %rsp
.Ltmp57:
	.cfi_offset %rbx, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
	xorps	%xmm1, %xmm1
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movq	-32(%rbp), %rdx
	cmpq	$0, 56(%rdx)
	je	.LBB18_15
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB18_15
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	$1, 64(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	56(%rax), %r8
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r8, -120(%rbp)         # 8-byte Spill
	callq	gimp_int32_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$64, %ecx
	movl	%ecx, %edi
	movl	$60, %ecx
	movl	%ecx, %r8d
	movl	$4, %ecx
	movl	%ecx, %edx
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %r9
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movq	%rbx, %rcx
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movl	-148(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movq	$64, 8(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$60, 24(%rsp)
	movq	$4, 32(%rsp)
	movb	$1, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	cmpl	$3, %eax
	je	.LBB18_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.12, %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_type_name
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_message
	jmp	.LBB18_14
.LBB18_4:                               # %if.else
	movq	-72(%rbp), %rax
	cmpl	$2, (%rax)
	jb	.LBB18_13
# BB#5:                                 # %land.lhs.true.12
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, -80(%rbp)
	movq	$60, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB18_7
# BB#6:                                 # %if.then.16
	movl	$0, -92(%rbp)
	jmp	.LBB18_11
.LBB18_7:                               # %if.else.17
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB18_9
# BB#8:                                 # %if.then.20
	movl	$1, -92(%rbp)
	jmp	.LBB18_10
.LBB18_9:                               # %if.else.21
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -92(%rbp)
.LBB18_10:                              # %if.end
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.23
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB18_13
# BB#12:                                # %if.then.25
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
.LBB18_13:                              # %if.end.29
	jmp	.LBB18_14
.LBB18_14:                              # %if.end.30
	movq	-72(%rbp), %rdi
	callq	g_value_array_free
	movq	-32(%rbp), %rdi
	movl	$0, 64(%rdi)
.LBB18_15:                              # %if.end.32
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_pdb_progress_run_callback, .Lfunc_end18-gimp_pdb_progress_run_callback
	.cfi_endproc

	.type	gimp_pdb_progress_get_type.type,@object # @gimp_pdb_progress_get_type.type
	.local	gimp_pdb_progress_get_type.type
	.comm	gimp_pdb_progress_get_type.type,8,8
	.type	gimp_pdb_progress_get_type.info,@object # @gimp_pdb_progress_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_pdb_progress_get_type.info:
	.short	144                     # 0x90
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_pdb_progress_class_init
	.quad	0
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_pdb_progress_init
	.quad	0
	.size	gimp_pdb_progress_get_type.info, 72

	.type	gimp_pdb_progress_get_type.progress_iface_info,@object # @gimp_pdb_progress_get_type.progress_iface_info
	.align	8
gimp_pdb_progress_get_type.progress_iface_info:
	.quad	gimp_pdb_progress_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_pdb_progress_get_type.progress_iface_info, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPdbProgress"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_pdb_progress_get_by_callback,@object # @__func__.gimp_pdb_progress_get_by_callback
.L__func__.gimp_pdb_progress_get_by_callback:
	.asciz	"gimp_pdb_progress_get_by_callback"
	.size	.L__func__.gimp_pdb_progress_get_by_callback, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PDB_PROGRESS_CLASS (klass)"
	.size	.L.str.2, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"callback_name != NULL"
	.size	.L.str.3, 22

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pdb"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"context"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"callback-name"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimppdbprogress.c"
	.size	.L.str.7, 18

	.type	.L__func__.gimp_pdb_progress_constructed,@object # @__func__.gimp_pdb_progress_constructed
.L__func__.gimp_pdb_progress_constructed:
	.asciz	"gimp_pdb_progress_constructed"
	.size	.L__func__.gimp_pdb_progress_constructed, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_PDB (progress->pdb)"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_CONTEXT (progress->context)"
	.size	.L.str.9, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Unable to run %s callback. The corresponding plug-in may have crashed."
	.size	.L.str.12, 71


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
