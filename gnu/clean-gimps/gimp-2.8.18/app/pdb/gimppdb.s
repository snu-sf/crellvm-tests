	.text
	.file	"gimppdb.bc"
	.globl	gimp_pdb_get_type
	.align	16, 0x90
	.type	gimp_pdb_get_type,@function
gimp_pdb_get_type:                      # @gimp_pdb_get_type
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
	movq	gimp_pdb_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_pdb_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$176, %edx
	movabsq	$gimp_pdb_class_intern_init, %rdi
	movl	$56, %r8d
	movabsq	$gimp_pdb_init, %rcx
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
	movabsq	$gimp_pdb_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_pdb_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pdb_get_type, .Lfunc_end0-gimp_pdb_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_class_intern_init,@function
gimp_pdb_class_intern_init:             # @gimp_pdb_class_intern_init
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
	movq	%rax, gimp_pdb_parent_class
	cmpl	$0, GimpPDB_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPDB_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_pdb_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pdb_class_intern_init, .Lfunc_end1-gimp_pdb_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_init,@function
gimp_pdb_init:                          # @gimp_pdb_init
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
	movabsq	$g_str_hash, %rax
	movabsq	$g_str_equal, %rsi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	g_hash_table_new
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	callq	g_hash_table_new
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pdb_init, .Lfunc_end2-gimp_pdb_init
	.cfi_endproc

	.globl	gimp_pdb_new
	.align	16, 0x90
	.type	gimp_pdb_new,@function
gimp_pdb_new:                           # @gimp_pdb_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_pdb_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_pdb_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pdb_new, .Lfunc_end3-gimp_pdb_new
	.cfi_endproc

	.globl	gimp_pdb_register_procedure
	.align	16, 0x90
	.type	gimp_pdb_register_procedure,@function
gimp_pdb_register_procedure:            # @gimp_pdb_register_procedure
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_pdb_get_type
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
	movabsq	$.L__func__.gimp_pdb_register_procedure, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_27
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_register_procedure, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_27
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB4_26
# BB#25:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 92(%rax)
	je	.LBB4_27
.LBB4_26:                               # %if.then.41
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_pdb_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB4_27:                               # %if.end.42
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pdb_register_procedure, .Lfunc_end4-gimp_pdb_register_procedure
	.cfi_endproc

	.globl	gimp_pdb_unregister_procedure
	.align	16, 0x90
	.type	gimp_pdb_unregister_procedure,@function
gimp_pdb_unregister_procedure:          # @gimp_pdb_unregister_procedure
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_unregister_procedure, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_unregister_procedure, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_pdb_signals+4, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_25:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pdb_unregister_procedure, .Lfunc_end5-gimp_pdb_unregister_procedure
	.cfi_endproc

	.globl	gimp_pdb_lookup_procedure
	.align	16, 0x90
	.type	gimp_pdb_lookup_procedure,@function
gimp_pdb_lookup_procedure:              # @gimp_pdb_lookup_procedure
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_lookup_procedure, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_20
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_lookup_procedure, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_20
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_19
# BB#18:                                # %if.then.19
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.end.20
	movq	$0, -8(%rbp)
.LBB6_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_pdb_lookup_procedure, .Lfunc_end6-gimp_pdb_lookup_procedure
	.cfi_endproc

	.globl	gimp_pdb_register_compat_proc_name
	.align	16, 0x90
	.type	gimp_pdb_register_compat_proc_name,@function
gimp_pdb_register_compat_proc_name:     # @gimp_pdb_register_compat_proc_name
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pdb_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_register_compat_proc_name, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_23
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_register_compat_proc_name, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_23
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB7_20
# BB#19:                                # %if.then.19
	jmp	.LBB7_21
.LBB7_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_register_compat_proc_name, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_23
.LBB7_21:                               # %if.end.21
	jmp	.LBB7_22
.LBB7_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	g_hash_table_insert
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB7_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pdb_register_compat_proc_name, .Lfunc_end7-gimp_pdb_register_compat_proc_name
	.cfi_endproc

	.globl	gimp_pdb_lookup_compat_proc_name
	.align	16, 0x90
	.type	gimp_pdb_lookup_compat_proc_name,@function
gimp_pdb_lookup_compat_proc_name:       # @gimp_pdb_lookup_compat_proc_name
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pdb_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_lookup_compat_proc_name, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_18
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_lookup_compat_proc_name, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_18
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -8(%rbp)
.LBB8_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_pdb_lookup_compat_proc_name, .Lfunc_end8-gimp_pdb_lookup_compat_proc_name
	.cfi_endproc

	.globl	gimp_pdb_execute_procedure_by_name_args
	.align	16, 0x90
	.type	gimp_pdb_execute_procedure_by_name_args,@function
gimp_pdb_execute_procedure_by_name_args: # @gimp_pdb_execute_procedure_by_name_args
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name_args, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_82
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name_args, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_82
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB9_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB9_28
# BB#27:                                # %if.then.49
	movl	$0, -140(%rbp)
	jmp	.LBB9_33
.LBB9_28:                               # %if.else.50
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_31
# BB#29:                                # %land.lhs.true.53
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB9_31
# BB#30:                                # %if.then.57
	movl	$1, -140(%rbp)
	jmp	.LBB9_32
.LBB9_31:                               # %if.else.58
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB9_32:                               # %if.end.60
	jmp	.LBB9_33
.LBB9_33:                               # %if.end.61
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB9_35
.LBB9_34:                               # %if.then.64
	jmp	.LBB9_36
.LBB9_35:                               # %if.else.65
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name_args, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_82
.LBB9_36:                               # %if.end.66
	jmp	.LBB9_37
.LBB9_37:                               # %do.end.67
	jmp	.LBB9_38
.LBB9_38:                               # %do.body.68
	cmpq	$0, -40(%rbp)
	je	.LBB9_40
# BB#39:                                # %lor.lhs.false.70
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_41
.LBB9_40:                               # %if.then.72
	jmp	.LBB9_42
.LBB9_41:                               # %if.else.73
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name_args, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_82
.LBB9_42:                               # %if.end.74
	jmp	.LBB9_43
.LBB9_43:                               # %do.end.75
	jmp	.LBB9_44
.LBB9_44:                               # %do.body.76
	cmpq	$0, -48(%rbp)
	je	.LBB9_46
# BB#45:                                # %if.then.78
	jmp	.LBB9_47
.LBB9_46:                               # %if.else.79
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name_args, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_82
.LBB9_47:                               # %if.end.80
	jmp	.LBB9_48
.LBB9_48:                               # %do.end.81
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB9_50
# BB#49:                                # %if.then.84
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$2, %esi
	movq	-48(%rbp), %rcx
	movl	-188(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_error_new
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_propagate_error
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_82
.LBB9_50:                               # %if.end.90
	jmp	.LBB9_51
.LBB9_51:                               # %do.body.91
	cmpq	$0, -56(%rbp)
	je	.LBB9_53
# BB#52:                                # %if.then.93
	jmp	.LBB9_54
.LBB9_53:                               # %if.else.94
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name_args, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_82
.LBB9_54:                               # %if.end.95
	jmp	.LBB9_55
.LBB9_55:                               # %do.end.96
	jmp	.LBB9_56
.LBB9_56:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB9_81
# BB#57:                                # %for.body
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
# BB#58:                                # %do.body.99
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_procedure_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB9_60
# BB#59:                                # %if.then.108
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	$0, -180(%rbp)
	jmp	.LBB9_65
.LBB9_60:                               # %if.else.109
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_63
# BB#61:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB9_63
# BB#62:                                # %if.then.116
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	$1, -180(%rbp)
	jmp	.LBB9_64
.LBB9_63:                               # %if.else.117
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB9_64:                               # %if.end.119
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_65
.LBB9_65:                               # %if.end.120
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB9_67
# BB#66:                                # %if.then.123
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_68
.LBB9_67:                               # %if.else.124
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name_args, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_82
.LBB9_68:                               # %if.end.125
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_69
.LBB9_69:                               # %do.end.126
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-160(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-40(%rbp), %r9
	callq	gimp_procedure_execute
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	cmpl	$2, %eax
	jne	.LBB9_75
# BB#70:                                # %if.then.130
                                        #   in Loop: Header=BB9_56 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB9_72
# BB#71:                                # %cond.true
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB9_73
	jmp	.LBB9_74
.LBB9_72:                               # %cond.false
                                        #   in Loop: Header=BB9_56 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB9_73
	jmp	.LBB9_74
.LBB9_73:                               # %if.then.133
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
	movq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB9_74:                               # %if.end.134
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_76
.LBB9_75:                               # %if.else.135
	jmp	.LBB9_81
.LBB9_76:                               # %if.end.136
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_77
.LBB9_77:                               # %for.inc
                                        #   in Loop: Header=BB9_56 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB9_79
# BB#78:                                # %cond.true.138
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB9_80
.LBB9_79:                               # %cond.false.140
                                        #   in Loop: Header=BB9_56 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB9_80
.LBB9_80:                               # %cond.end
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB9_56
.LBB9_81:                               # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_82:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_pdb_execute_procedure_by_name_args, .Lfunc_end9-gimp_pdb_execute_procedure_by_name_args
	.cfi_endproc

	.globl	gimp_pdb_execute_procedure_by_name
	.align	16, 0x90
	.type	gimp_pdb_execute_procedure_by_name,@function
gimp_pdb_execute_procedure_by_name:     # @gimp_pdb_execute_procedure_by_name
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
	subq	$992, %rsp              # imm = 0x3E0
	testb	%al, %al
	movaps	%xmm7, -576(%rbp)       # 16-byte Spill
	movaps	%xmm6, -592(%rbp)       # 16-byte Spill
	movaps	%xmm5, -608(%rbp)       # 16-byte Spill
	movaps	%xmm4, -624(%rbp)       # 16-byte Spill
	movaps	%xmm3, -640(%rbp)       # 16-byte Spill
	movaps	%xmm2, -656(%rbp)       # 16-byte Spill
	movaps	%xmm1, -672(%rbp)       # 16-byte Spill
	movaps	%xmm0, -688(%rbp)       # 16-byte Spill
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%r9, -704(%rbp)         # 8-byte Spill
	movq	%r8, -712(%rbp)         # 8-byte Spill
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	movq	%rsi, -736(%rbp)        # 8-byte Spill
	je	.LBB10_102
# BB#101:                               # %entry
	movaps	-688(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -512(%rbp)
	movaps	-672(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -496(%rbp)
	movaps	-656(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -480(%rbp)
	movaps	-640(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -464(%rbp)
	movaps	-624(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -448(%rbp)
	movaps	-608(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -432(%rbp)
	movaps	-592(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -416(%rbp)
	movaps	-576(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -400(%rbp)
.LBB10_102:                             # %entry
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rax, -520(%rbp)
	movq	-712(%rbp), %rcx        # 8-byte Reload
	movq	-720(%rbp), %rdx        # 8-byte Reload
	movq	-728(%rbp), %rsi        # 8-byte Reload
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	-696(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_96
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -148(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -148(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_96
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	jmp	.LBB10_25
.LBB10_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB10_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB10_28
# BB#27:                                # %if.then.49
	movl	$0, -172(%rbp)
	jmp	.LBB10_33
.LBB10_28:                              # %if.else.50
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_31
# BB#29:                                # %land.lhs.true.53
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB10_31
# BB#30:                                # %if.then.57
	movl	$1, -172(%rbp)
	jmp	.LBB10_32
.LBB10_31:                              # %if.else.58
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB10_32:                              # %if.end.60
	jmp	.LBB10_33
.LBB10_33:                              # %if.end.61
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB10_35
.LBB10_34:                              # %if.then.64
	jmp	.LBB10_36
.LBB10_35:                              # %if.else.65
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_96
.LBB10_36:                              # %if.end.66
	jmp	.LBB10_37
.LBB10_37:                              # %do.end.67
	jmp	.LBB10_38
.LBB10_38:                              # %do.body.68
	cmpq	$0, -40(%rbp)
	je	.LBB10_40
# BB#39:                                # %lor.lhs.false.70
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB10_41
.LBB10_40:                              # %if.then.72
	jmp	.LBB10_42
.LBB10_41:                              # %if.else.73
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_96
.LBB10_42:                              # %if.end.74
	jmp	.LBB10_43
.LBB10_43:                              # %do.end.75
	jmp	.LBB10_44
.LBB10_44:                              # %do.body.76
	cmpq	$0, -48(%rbp)
	je	.LBB10_46
# BB#45:                                # %if.then.78
	jmp	.LBB10_47
.LBB10_46:                              # %if.else.79
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_96
.LBB10_47:                              # %if.end.80
	jmp	.LBB10_48
.LBB10_48:                              # %do.end.81
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_50
# BB#49:                                # %if.then.84
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -740(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$2, %esi
	movq	-48(%rbp), %rcx
	movl	-740(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_error_new
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_propagate_error
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_96
.LBB10_50:                              # %if.end.90
	movq	-56(%rbp), %rdi
	callq	gimp_procedure_get_arguments
	leaq	-96(%rbp), %rdi
	movq	%rax, -64(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, 16(%rdi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$40, (%rdi)
	movl	$0, -100(%rbp)
.LBB10_51:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_64 Depth 2
	movl	-100(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB10_95
# BB#52:                                # %for.body
                                        #   in Loop: Header=BB10_51 Depth=1
	leaq	-96(%rbp), %rax
	movq	$0, -208(%rbp)
	movl	-96(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -752(%rbp)        # 8-byte Spill
	movl	%ecx, -756(%rbp)        # 4-byte Spill
	ja	.LBB10_54
# BB#53:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB10_51 Depth=1
	movl	-756(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-752(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB10_55
.LBB10_54:                              # %vaarg.in_mem
                                        #   in Loop: Header=BB10_51 Depth=1
	movq	-752(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -768(%rbp)        # 8-byte Spill
.LBB10_55:                              # %vaarg.end
                                        #   in Loop: Header=BB10_51 Depth=1
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	cmpq	$4, -200(%rbp)
	jne	.LBB10_57
# BB#56:                                # %if.then.99
	jmp	.LBB10_95
.LBB10_57:                              # %if.end.100
                                        #   in Loop: Header=BB10_51 Depth=1
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	%rax, -192(%rbp)
	movq	-200(%rbp), %rax
	movq	-192(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB10_59
# BB#58:                                # %if.then.103
	movq	-192(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movq	%rax, -224(%rbp)
	movq	-200(%rbp), %rdi
	callq	g_type_name
	movq	%rax, -232(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.15, %rdi
	movl	%eax, -772(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movl	$3, %esi
	movl	-100(%rbp), %ecx
	addl	$1, %ecx
	movq	-224(%rbp), %r9
	movq	-232(%rbp), %rdi
	movl	-772(%rbp), %edx        # 4-byte Reload
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movq	-784(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -796(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-796(%rbp), %r8d        # 4-byte Reload
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	g_error_new
	xorl	%esi, %esi
	movq	%rax, -216(%rbp)
	movq	-56(%rbp), %rdi
	movq	-216(%rbp), %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_propagate_error
	leaq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB10_96
.LBB10_59:                              # %if.end.118
                                        #   in Loop: Header=BB10_51 Depth=1
	jmp	.LBB10_60
.LBB10_60:                              # %do.body.119
                                        #   in Loop: Header=BB10_51 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	g_type_value_table_peek
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB10_62
# BB#61:                                # %if.then.126
                                        #   in Loop: Header=BB10_51 Depth=1
	movq	-256(%rbp), %rax
	movq	8(%rax), %rax
	movq	-240(%rbp), %rdi
	callq	*%rax
.LBB10_62:                              # %if.end.128
                                        #   in Loop: Header=BB10_51 Depth=1
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	movq	-240(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	memset
# BB#63:                                # %do.body.129
                                        #   in Loop: Header=BB10_51 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	$134217728, -268(%rbp)  # imm = 0x8000000
	movq	-248(%rbp), %rdi
	callq	g_type_value_table_peek
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-352(%rbp), %rdi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -288(%rbp)
	callq	memset
	movl	$0, -356(%rbp)
	movq	-248(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rdx)
.LBB10_64:                              # %while.cond
                                        #   Parent Loop BB10_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-288(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB10_89
# BB#65:                                # %while.body
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-356(%rbp), %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	incl	%eax
	movl	%eax, -356(%rbp)
	leaq	-352(%rbp,%rcx,8), %rcx
	movq	%rcx, -368(%rbp)
	movq	-288(%rbp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, -288(%rbp)
	movsbl	(%rcx), %eax
	movl	%eax, %esi
	subl	$100, %esi
	movl	%eax, -812(%rbp)        # 4-byte Spill
	movl	%esi, -816(%rbp)        # 4-byte Spill
	je	.LBB10_78
	jmp	.LBB10_97
.LBB10_97:                              # %while.body
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-812(%rbp), %eax        # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	je	.LBB10_66
	jmp	.LBB10_98
.LBB10_98:                              # %while.body
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-812(%rbp), %eax        # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -824(%rbp)        # 4-byte Spill
	je	.LBB10_70
	jmp	.LBB10_99
.LBB10_99:                              # %while.body
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-812(%rbp), %eax        # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
	je	.LBB10_82
	jmp	.LBB10_100
.LBB10_100:                             # %while.body
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-812(%rbp), %eax        # 4-byte Reload
	subl	$113, %eax
	movl	%eax, -832(%rbp)        # 4-byte Spill
	je	.LBB10_74
	jmp	.LBB10_86
.LBB10_66:                              # %sw.bb
                                        #   in Loop: Header=BB10_64 Depth=2
	leaq	-96(%rbp), %rax
	movl	-96(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -840(%rbp)        # 8-byte Spill
	movl	%ecx, -844(%rbp)        # 4-byte Spill
	ja	.LBB10_68
# BB#67:                                # %vaarg.in_reg.145
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-844(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	jmp	.LBB10_69
.LBB10_68:                              # %vaarg.in_mem.147
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-840(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -856(%rbp)        # 8-byte Spill
.LBB10_69:                              # %vaarg.end.151
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movq	-368(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB10_88
.LBB10_70:                              # %sw.bb.153
                                        #   in Loop: Header=BB10_64 Depth=2
	leaq	-96(%rbp), %rax
	movl	-96(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -864(%rbp)        # 8-byte Spill
	movl	%ecx, -868(%rbp)        # 4-byte Spill
	ja	.LBB10_72
# BB#71:                                # %vaarg.in_reg.158
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-868(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-864(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	jmp	.LBB10_73
.LBB10_72:                              # %vaarg.in_mem.160
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -880(%rbp)        # 8-byte Spill
.LBB10_73:                              # %vaarg.end.164
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-368(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB10_88
.LBB10_74:                              # %sw.bb.166
                                        #   in Loop: Header=BB10_64 Depth=2
	leaq	-96(%rbp), %rax
	movl	-96(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	movl	%ecx, -892(%rbp)        # 4-byte Spill
	ja	.LBB10_76
# BB#75:                                # %vaarg.in_reg.171
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-892(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-888(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	jmp	.LBB10_77
.LBB10_76:                              # %vaarg.in_mem.173
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -904(%rbp)        # 8-byte Spill
.LBB10_77:                              # %vaarg.end.177
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-904(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-368(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB10_88
.LBB10_78:                              # %sw.bb.179
                                        #   in Loop: Header=BB10_64 Depth=2
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	-92(%rbp), %edx
	cmpl	$160, %edx
	movq	%rax, -912(%rbp)        # 8-byte Spill
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	movl	%edx, -924(%rbp)        # 4-byte Spill
	ja	.LBB10_80
# BB#79:                                # %vaarg.in_reg.181
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-924(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-912(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-920(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	jmp	.LBB10_81
.LBB10_80:                              # %vaarg.in_mem.183
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-912(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -936(%rbp)        # 8-byte Spill
.LBB10_81:                              # %vaarg.end.187
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-936(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-368(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_88
.LBB10_82:                              # %sw.bb.189
                                        #   in Loop: Header=BB10_64 Depth=2
	leaq	-96(%rbp), %rax
	movl	-96(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -944(%rbp)        # 8-byte Spill
	movl	%ecx, -948(%rbp)        # 4-byte Spill
	ja	.LBB10_84
# BB#83:                                # %vaarg.in_reg.194
                                        #   in Loop: Header=BB10_64 Depth=2
	movl	-948(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-944(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB10_85
.LBB10_84:                              # %vaarg.in_mem.196
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-944(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -960(%rbp)        # 8-byte Spill
.LBB10_85:                              # %vaarg.end.200
                                        #   in Loop: Header=BB10_64 Depth=2
	movq	-960(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	-368(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB10_88
.LBB10_86:                              # %sw.default
	jmp	.LBB10_87
.LBB10_87:                              # %do.body.202
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$435, %edx              # imm = 0x1B3
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB10_88:                              # %sw.epilog
                                        #   in Loop: Header=BB10_64 Depth=2
	jmp	.LBB10_64
.LBB10_89:                              # %while.end
                                        #   in Loop: Header=BB10_51 Depth=1
	leaq	-352(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	40(%rax), %rax
	movq	-264(%rbp), %rdi
	movl	-356(%rbp), %esi
	movl	-268(%rbp), %ecx
	callq	*%rax
	movq	%rax, -208(%rbp)
# BB#90:                                # %do.end.206
                                        #   in Loop: Header=BB10_51 Depth=1
	jmp	.LBB10_91
.LBB10_91:                              # %do.end.207
                                        #   in Loop: Header=BB10_51 Depth=1
	cmpq	$0, -208(%rbp)
	je	.LBB10_93
# BB#92:                                # %if.then.209
	callq	gimp_pdb_error_quark
	movl	$5, %esi
	movq	-208(%rbp), %rdx
	movl	%eax, %edi
	callq	g_error_new_literal
	movabsq	$.L.str.17, %rdi
	movabsq	$.L__func__.gimp_pdb_execute_procedure_by_name, %rsi
	movq	%rax, -376(%rbp)
	movq	-208(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-208(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movq	-376(%rbp), %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-376(%rbp), %rsi
	callq	g_propagate_error
	leaq	-96(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB10_96
.LBB10_93:                              # %if.end.217
                                        #   in Loop: Header=BB10_51 Depth=1
	jmp	.LBB10_94
.LBB10_94:                              # %for.inc
                                        #   in Loop: Header=BB10_51 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB10_51
.LBB10_95:                              # %for.end
	leaq	-96(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gimp_pdb_execute_procedure_by_name_args
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_96:                              # %return
	movq	-8(%rbp), %rax
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_pdb_execute_procedure_by_name, .Lfunc_end10-gimp_pdb_execute_procedure_by_name
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
	movl	$.L.str.1, %r9d
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

	.globl	gimp_pdb_get_deprecated_procedures
	.align	16, 0x90
	.type	gimp_pdb_get_deprecated_procedures,@function
gimp_pdb_get_deprecated_procedures:     # @gimp_pdb_get_deprecated_procedures
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_pdb_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pdb_get_deprecated_procedures, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_22
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_hash_table_get_values
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB12_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB12_21
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB12_16
# BB#15:                                # %if.then.19
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
.LBB12_16:                              # %if.end.21
                                        #   in Loop: Header=BB12_13 Depth=1
	jmp	.LBB12_17
.LBB12_17:                              # %for.inc
                                        #   in Loop: Header=BB12_13 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB12_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB12_20
.LBB12_19:                              # %cond.false
                                        #   in Loop: Header=BB12_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB12_20
.LBB12_20:                              # %cond.end
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB12_13
.LBB12_21:                              # %for.end
	movabsq	$gimp_procedure_name_compare, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_list_sort
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_pdb_get_deprecated_procedures, .Lfunc_end12-gimp_pdb_get_deprecated_procedures
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_class_init,@function
gimp_pdb_class_init:                    # @gimp_pdb_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
.Ltmp42:
	.cfi_offset %rbx, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movabsq	$.L.str.18, %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_pdb_signals
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movabsq	$.L.str.19, %rdi
	movl	$1, %edx
	movl	$168, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$gimp_pdb_real_unregister_procedure, %rsi
	movabsq	$gimp_pdb_real_register_procedure, %rdi
	movabsq	$gimp_pdb_get_memsize, %r8
	movabsq	$gimp_pdb_finalize, %r9
	movl	%eax, gimp_pdb_signals+4
	movq	-40(%rbp), %r10
	movq	%r9, 48(%r10)
	movq	-48(%rbp), %r9
	movq	%r8, 152(%r9)
	movq	-32(%rbp), %r8
	movq	%rdi, 160(%r8)
	movq	-32(%rbp), %rdi
	movq	%rsi, 168(%rdi)
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_pdb_class_init, .Lfunc_end13-gimp_pdb_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_finalize,@function
gimp_pdb_finalize:                      # @gimp_pdb_finalize
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
	callq	gimp_pdb_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$gimp_pdb_entry_free, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	g_hash_table_foreach
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	g_hash_table_destroy
	movq	-16(%rbp), %rcx
	movq	$0, 40(%rcx)
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB14_4:                               # %if.end.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_pdb_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_pdb_finalize, .Lfunc_end14-gimp_pdb_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_get_memsize,@function
gimp_pdb_get_memsize:                   # @gimp_pdb_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_pdb_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_pdb_entry_get_memsize, %rsi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_g_hash_table_get_memsize_foreach
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_g_hash_table_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_pdb_parent_class, %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_pdb_get_memsize, .Lfunc_end15-gimp_pdb_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_real_register_procedure,@function
gimp_pdb_real_register_procedure:       # @gimp_pdb_real_register_procedure
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
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	g_object_ref
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_hash_table_replace
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_pdb_real_register_procedure, .Lfunc_end16-gimp_pdb_real_register_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_real_unregister_procedure,@function
gimp_pdb_real_unregister_procedure:     # @gimp_pdb_real_unregister_procedure
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_object_get_name
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_replace
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_remove
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB17_4:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB17_5:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_pdb_real_unregister_procedure, .Lfunc_end17-gimp_pdb_real_unregister_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_entry_free,@function
gimp_pdb_entry_free:                    # @gimp_pdb_entry_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movabsq	$g_object_unref, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_list_free_full
.LBB18_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_pdb_entry_free, .Lfunc_end18-gimp_pdb_entry_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_entry_get_memsize,@function
gimp_pdb_entry_get_memsize:             # @gimp_pdb_entry_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$gimp_object_get_memsize, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_g_list_get_memsize_foreach
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_pdb_entry_get_memsize, .Lfunc_end19-gimp_pdb_entry_get_memsize
	.cfi_endproc

	.type	gimp_pdb_get_type.g_define_type_id__volatile,@object # @gimp_pdb_get_type.g_define_type_id__volatile
	.local	gimp_pdb_get_type.g_define_type_id__volatile
	.comm	gimp_pdb_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPDB"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-PDB"
	.size	.L.str.1, 9

	.type	.L__func__.gimp_pdb_new,@object # @__func__.gimp_pdb_new
.L__func__.gimp_pdb_new:
	.asciz	"gimp_pdb_new"
	.size	.L__func__.gimp_pdb_new, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pdb"
	.size	.L.str.4, 4

	.type	.L__func__.gimp_pdb_register_procedure,@object # @__func__.gimp_pdb_register_procedure
.L__func__.gimp_pdb_register_procedure:
	.asciz	"gimp_pdb_register_procedure"
	.size	.L__func__.gimp_pdb_register_procedure, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PDB (pdb)"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_PROCEDURE (procedure)"
	.size	.L.str.6, 30

	.type	gimp_pdb_signals,@object # @gimp_pdb_signals
	.local	gimp_pdb_signals
	.comm	gimp_pdb_signals,8,4
	.type	.L__func__.gimp_pdb_unregister_procedure,@object # @__func__.gimp_pdb_unregister_procedure
.L__func__.gimp_pdb_unregister_procedure:
	.asciz	"gimp_pdb_unregister_procedure"
	.size	.L__func__.gimp_pdb_unregister_procedure, 30

	.type	.L__func__.gimp_pdb_lookup_procedure,@object # @__func__.gimp_pdb_lookup_procedure
.L__func__.gimp_pdb_lookup_procedure:
	.asciz	"gimp_pdb_lookup_procedure"
	.size	.L__func__.gimp_pdb_lookup_procedure, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"name != NULL"
	.size	.L.str.7, 13

	.type	.L__func__.gimp_pdb_register_compat_proc_name,@object # @__func__.gimp_pdb_register_compat_proc_name
.L__func__.gimp_pdb_register_compat_proc_name:
	.asciz	"gimp_pdb_register_compat_proc_name"
	.size	.L__func__.gimp_pdb_register_compat_proc_name, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"old_name != NULL"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"new_name != NULL"
	.size	.L.str.9, 17

	.type	.L__func__.gimp_pdb_lookup_compat_proc_name,@object # @__func__.gimp_pdb_lookup_compat_proc_name
.L__func__.gimp_pdb_lookup_compat_proc_name:
	.asciz	"gimp_pdb_lookup_compat_proc_name"
	.size	.L__func__.gimp_pdb_lookup_compat_proc_name, 33

	.type	.L__func__.gimp_pdb_execute_procedure_by_name_args,@object # @__func__.gimp_pdb_execute_procedure_by_name_args
.L__func__.gimp_pdb_execute_procedure_by_name_args:
	.asciz	"gimp_pdb_execute_procedure_by_name_args"
	.size	.L__func__.gimp_pdb_execute_procedure_by_name_args, 40

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.11, 48

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Procedure '%s' not found"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"args != NULL"
	.size	.L.str.14, 13

	.type	.L__func__.gimp_pdb_execute_procedure_by_name,@object # @__func__.gimp_pdb_execute_procedure_by_name
.L__func__.gimp_pdb_execute_procedure_by_name:
	.asciz	"gimp_pdb_execute_procedure_by_name"
	.size	.L__func__.gimp_pdb_execute_procedure_by_name, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Procedure '%s' has been called with a wrong type for argument #%d. Expected %s, got %s."
	.size	.L.str.15, 88

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimppdb.c"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: %s"
	.size	.L.str.17, 7

	.type	.L__func__.gimp_pdb_get_deprecated_procedures,@object # @__func__.gimp_pdb_get_deprecated_procedures
.L__func__.gimp_pdb_get_deprecated_procedures:
	.asciz	"gimp_pdb_get_deprecated_procedures"
	.size	.L__func__.gimp_pdb_get_deprecated_procedures, 35

	.type	gimp_pdb_parent_class,@object # @gimp_pdb_parent_class
	.local	gimp_pdb_parent_class
	.comm	gimp_pdb_parent_class,8,8
	.type	GimpPDB_private_offset,@object # @GimpPDB_private_offset
	.local	GimpPDB_private_offset
	.comm	GimpPDB_private_offset,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"register-procedure"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"unregister-procedure"
	.size	.L.str.19, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
