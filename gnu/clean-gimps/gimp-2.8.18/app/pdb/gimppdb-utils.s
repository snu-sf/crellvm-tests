	.text
	.file	"gimppdb-utils.bc"
	.globl	gimp_pdb_get_brush
	.align	16, 0x90
	.type	gimp_pdb_get_brush,@function
gimp_pdb_get_brush:                     # @gimp_pdb_get_brush
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_brush, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_28
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB0_15
# BB#14:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_16
.LBB0_15:                               # %if.then.14
	jmp	.LBB0_17
.LBB0_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_brush, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_28
.LBB0_17:                               # %if.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB0_20
# BB#19:                                # %lor.lhs.false.19
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB0_21
.LBB0_20:                               # %if.then.22
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.3, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB0_28
.LBB0_21:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	464(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_get_data_factory_item
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_23
# BB#22:                                # %if.then.28
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.4, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_27
.LBB0_23:                               # %if.else.31
	cmpl	$0, -28(%rbp)
	je	.LBB0_26
# BB#24:                                # %land.lhs.true.33
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	jne	.LBB0_26
# BB#25:                                # %if.then.38
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB0_28
.LBB0_26:                               # %if.end.41
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.42
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pdb_get_brush, .Lfunc_end0-gimp_pdb_get_brush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_get_data_factory_item,@function
gimp_pdb_get_data_factory_item:         # @gimp_pdb_get_data_factory_item
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_data_factory_get_container
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_get_child_by_name
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_data_factory_get_container_obsolete
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_get_child_by_name
	movq	%rax, -24(%rbp)
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pdb_get_data_factory_item, .Lfunc_end1-gimp_pdb_get_data_factory_item
	.cfi_endproc

	.globl	gimp_pdb_get_generated_brush
	.align	16, 0x90
	.type	gimp_pdb_get_generated_brush,@function
gimp_pdb_get_generated_brush:           # @gimp_pdb_get_generated_brush
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_generated_brush, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_30
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB2_15
# BB#14:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_16
.LBB2_15:                               # %if.then.14
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_generated_brush, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_30
.LBB2_17:                               # %if.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.end.17
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	gimp_pdb_get_brush
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_20
# BB#19:                                # %if.then.20
	movq	$0, -8(%rbp)
	jmp	.LBB2_30
.LBB2_20:                               # %if.end.21
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_22
# BB#21:                                # %if.then.30
	movl	$0, -92(%rbp)
	jmp	.LBB2_27
.LBB2_22:                               # %if.else.31
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_25
# BB#23:                                # %land.lhs.true.34
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB2_25
# BB#24:                                # %if.then.38
	movl	$1, -92(%rbp)
	jmp	.LBB2_26
.LBB2_25:                               # %if.else.39
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB2_26:                               # %if.end.41
	jmp	.LBB2_27
.LBB2_27:                               # %if.end.42
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jne	.LBB2_29
# BB#28:                                # %if.then.45
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB2_30
.LBB2_29:                               # %if.end.48
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pdb_get_generated_brush, .Lfunc_end2-gimp_pdb_get_generated_brush
	.cfi_endproc

	.globl	gimp_pdb_get_dynamics
	.align	16, 0x90
	.type	gimp_pdb_get_dynamics,@function
gimp_pdb_get_dynamics:                  # @gimp_pdb_get_dynamics
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_dynamics, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB3_15
# BB#14:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_16
.LBB3_15:                               # %if.then.14
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_dynamics, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_17:                               # %if.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB3_20
# BB#19:                                # %lor.lhs.false.19
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB3_21
.LBB3_20:                               # %if.then.22
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_21:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	472(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_get_data_factory_item
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_23
# BB#22:                                # %if.then.28
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB3_27
.LBB3_23:                               # %if.else.31
	cmpl	$0, -28(%rbp)
	je	.LBB3_26
# BB#24:                                # %land.lhs.true.33
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	jne	.LBB3_26
# BB#25:                                # %if.then.38
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB3_28
.LBB3_26:                               # %if.end.41
	jmp	.LBB3_27
.LBB3_27:                               # %if.end.42
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pdb_get_dynamics, .Lfunc_end3-gimp_pdb_get_dynamics
	.cfi_endproc

	.globl	gimp_pdb_get_pattern
	.align	16, 0x90
	.type	gimp_pdb_get_pattern,@function
gimp_pdb_get_pattern:                   # @gimp_pdb_get_pattern
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_pattern, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_24
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB4_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_16
.LBB4_15:                               # %if.then.14
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_pattern, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_24
.LBB4_17:                               # %if.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB4_20
# BB#19:                                # %lor.lhs.false.19
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB4_21
.LBB4_20:                               # %if.then.22
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB4_24
.LBB4_21:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	480(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_get_data_factory_item
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_23
# BB#22:                                # %if.then.28
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.11, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB4_23:                               # %if.end.31
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pdb_get_pattern, .Lfunc_end4-gimp_pdb_get_pattern
	.cfi_endproc

	.globl	gimp_pdb_get_gradient
	.align	16, 0x90
	.type	gimp_pdb_get_gradient,@function
gimp_pdb_get_gradient:                  # @gimp_pdb_get_gradient
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_gradient, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_28
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB5_15
# BB#14:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_16
.LBB5_15:                               # %if.then.14
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_gradient, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_28
.LBB5_17:                               # %if.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB5_20
# BB#19:                                # %lor.lhs.false.19
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB5_21
.LBB5_20:                               # %if.then.22
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.12, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB5_28
.LBB5_21:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	488(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_get_data_factory_item
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_23
# BB#22:                                # %if.then.28
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB5_27
.LBB5_23:                               # %if.else.31
	cmpl	$0, -28(%rbp)
	je	.LBB5_26
# BB#24:                                # %land.lhs.true.33
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	jne	.LBB5_26
# BB#25:                                # %if.then.38
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.14, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB5_28
.LBB5_26:                               # %if.end.41
	jmp	.LBB5_27
.LBB5_27:                               # %if.end.42
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pdb_get_gradient, .Lfunc_end5-gimp_pdb_get_gradient
	.cfi_endproc

	.globl	gimp_pdb_get_palette
	.align	16, 0x90
	.type	gimp_pdb_get_palette,@function
gimp_pdb_get_palette:                   # @gimp_pdb_get_palette
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_palette, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_28
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB6_15
# BB#14:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_16
.LBB6_15:                               # %if.then.14
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_palette, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_28
.LBB6_17:                               # %if.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB6_20
# BB#19:                                # %lor.lhs.false.19
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB6_21
.LBB6_20:                               # %if.then.22
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.15, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB6_28
.LBB6_21:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	496(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_get_data_factory_item
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_23
# BB#22:                                # %if.then.28
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.16, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB6_27
.LBB6_23:                               # %if.else.31
	cmpl	$0, -28(%rbp)
	je	.LBB6_26
# BB#24:                                # %land.lhs.true.33
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	jne	.LBB6_26
# BB#25:                                # %if.then.38
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.17, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB6_28
.LBB6_26:                               # %if.end.41
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.42
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_pdb_get_palette, .Lfunc_end6-gimp_pdb_get_palette
	.cfi_endproc

	.globl	gimp_pdb_get_font
	.align	16, 0x90
	.type	gimp_pdb_get_font,@function
gimp_pdb_get_font:                      # @gimp_pdb_get_font
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_font, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_24
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB7_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_16
.LBB7_15:                               # %if.then.14
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_font, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_24
.LBB7_17:                               # %if.end.16
	jmp	.LBB7_18
.LBB7_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB7_20
# BB#19:                                # %lor.lhs.false.19
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB7_21
.LBB7_20:                               # %if.then.22
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.18, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB7_24
.LBB7_21:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	456(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_23
# BB#22:                                # %if.then.28
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.19, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB7_23:                               # %if.end.31
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pdb_get_font, .Lfunc_end7-gimp_pdb_get_font
	.cfi_endproc

	.globl	gimp_pdb_get_buffer
	.align	16, 0x90
	.type	gimp_pdb_get_buffer,@function
gimp_pdb_get_buffer:                    # @gimp_pdb_get_buffer
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_buffer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_24
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB8_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_16
.LBB8_15:                               # %if.then.14
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_buffer, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_24
.LBB8_17:                               # %if.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB8_20
# BB#19:                                # %lor.lhs.false.19
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB8_21
.LBB8_20:                               # %if.then.22
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.20, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB8_24
.LBB8_21:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	448(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_23
# BB#22:                                # %if.then.28
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.21, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB8_23:                               # %if.end.31
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_pdb_get_buffer, .Lfunc_end8-gimp_pdb_get_buffer
	.cfi_endproc

	.globl	gimp_pdb_get_paint_info
	.align	16, 0x90
	.type	gimp_pdb_get_paint_info,@function
gimp_pdb_get_paint_info:                # @gimp_pdb_get_paint_info
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_paint_info, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_24
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB9_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_16
.LBB9_15:                               # %if.then.14
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_paint_info, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_24
.LBB9_17:                               # %if.end.16
	jmp	.LBB9_18
.LBB9_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB9_20
# BB#19:                                # %lor.lhs.false.19
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB9_21
.LBB9_20:                               # %if.then.22
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.22, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB9_24
.LBB9_21:                               # %if.end.25
	movq	-16(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_23
# BB#22:                                # %if.then.28
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.23, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-24(%rbp), %r8
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
.LBB9_23:                               # %if.end.31
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_pdb_get_paint_info, .Lfunc_end9-gimp_pdb_get_paint_info
	.cfi_endproc

	.globl	gimp_pdb_item_is_attached
	.align	16, 0x90
	.type	gimp_pdb_item_is_attached,@function
gimp_pdb_item_is_attached:              # @gimp_pdb_item_is_attached
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_attached, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_39
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB10_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB10_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB10_21
.LBB10_16:                              # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB10_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB10_20
.LBB10_19:                              # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB10_20:                              # %if.end.32
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB10_23
.LBB10_22:                              # %if.then.36
	jmp	.LBB10_24
.LBB10_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_attached, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_39
.LBB10_24:                              # %if.end.38
	jmp	.LBB10_25
.LBB10_25:                              # %do.end.39
	jmp	.LBB10_26
.LBB10_26:                              # %do.body.40
	cmpq	$0, -40(%rbp)
	je	.LBB10_28
# BB#27:                                # %lor.lhs.false.42
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB10_29
.LBB10_28:                              # %if.then.44
	jmp	.LBB10_30
.LBB10_29:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_attached, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_39
.LBB10_30:                              # %if.end.46
	jmp	.LBB10_31
.LBB10_31:                              # %do.end.47
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB10_33
# BB#32:                                # %if.then.50
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.26, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB10_39
.LBB10_33:                              # %if.end.55
	cmpq	$0, -24(%rbp)
	je	.LBB10_36
# BB#34:                                # %land.lhs.true.57
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movq	-128(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB10_36
# BB#35:                                # %if.then.60
	movq	-40(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.27, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB10_39
.LBB10_36:                              # %if.end.65
	cmpl	$0, -28(%rbp)
	je	.LBB10_38
# BB#37:                                # %if.then.67
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_pdb_item_is_writable
	movl	%eax, -4(%rbp)
	jmp	.LBB10_39
.LBB10_38:                              # %if.end.69
	movl	$1, -4(%rbp)
.LBB10_39:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_pdb_item_is_attached, .Lfunc_end10-gimp_pdb_item_is_attached
	.cfi_endproc

	.globl	gimp_pdb_item_is_writable
	.align	16, 0x90
	.type	gimp_pdb_item_is_writable,@function
gimp_pdb_item_is_writable:              # @gimp_pdb_item_is_writable
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_writable, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_21
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB11_16
.LBB11_15:                              # %if.then.14
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_writable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_21
.LBB11_17:                              # %if.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.end.17
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB11_20
# BB#19:                                # %if.then.20
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.36, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB11_21
.LBB11_20:                              # %if.end.25
	movl	$1, -4(%rbp)
.LBB11_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_pdb_item_is_writable, .Lfunc_end11-gimp_pdb_item_is_writable
	.cfi_endproc

	.globl	gimp_pdb_item_is_in_tree
	.align	16, 0x90
	.type	gimp_pdb_item_is_in_tree,@function
gimp_pdb_item_is_in_tree:               # @gimp_pdb_item_is_in_tree
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_in_tree, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_36
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB12_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB12_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB12_21
.LBB12_16:                              # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB12_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB12_20
.LBB12_19:                              # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB12_20:                              # %if.end.32
	jmp	.LBB12_21
.LBB12_21:                              # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB12_23
.LBB12_22:                              # %if.then.36
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_in_tree, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_36
.LBB12_24:                              # %if.end.38
	jmp	.LBB12_25
.LBB12_25:                              # %do.end.39
	jmp	.LBB12_26
.LBB12_26:                              # %do.body.40
	cmpq	$0, -40(%rbp)
	je	.LBB12_28
# BB#27:                                # %lor.lhs.false.42
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_29
.LBB12_28:                              # %if.then.44
	jmp	.LBB12_30
.LBB12_29:                              # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_in_tree, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_36
.LBB12_30:                              # %if.end.46
	jmp	.LBB12_31
.LBB12_31:                              # %do.end.47
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	jne	.LBB12_33
# BB#32:                                # %if.then.50
	movl	$0, -4(%rbp)
	jmp	.LBB12_36
.LBB12_33:                              # %if.end.51
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_tree
	cmpq	$0, %rax
	jne	.LBB12_35
# BB#34:                                # %if.then.54
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.28, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB12_36
.LBB12_35:                              # %if.end.59
	movl	$1, -4(%rbp)
.LBB12_36:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_pdb_item_is_in_tree, .Lfunc_end12-gimp_pdb_item_is_in_tree
	.cfi_endproc

	.globl	gimp_pdb_item_is_in_same_tree
	.align	16, 0x90
	.type	gimp_pdb_item_is_in_same_tree,@function
gimp_pdb_item_is_in_same_tree:          # @gimp_pdb_item_is_in_same_tree
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_in_same_tree, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_49
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_in_same_tree, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_49
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	jmp	.LBB13_25
.LBB13_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB13_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB13_28
# BB#27:                                # %if.then.49
	movl	$0, -108(%rbp)
	jmp	.LBB13_33
.LBB13_28:                              # %if.else.50
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_31
# BB#29:                                # %land.lhs.true.53
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB13_31
# BB#30:                                # %if.then.57
	movl	$1, -108(%rbp)
	jmp	.LBB13_32
.LBB13_31:                              # %if.else.58
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB13_32:                              # %if.end.60
	jmp	.LBB13_33
.LBB13_33:                              # %if.end.61
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB13_35
.LBB13_34:                              # %if.then.64
	jmp	.LBB13_36
.LBB13_35:                              # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_in_same_tree, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_49
.LBB13_36:                              # %if.end.66
	jmp	.LBB13_37
.LBB13_37:                              # %do.end.67
	jmp	.LBB13_38
.LBB13_38:                              # %do.body.68
	cmpq	$0, -40(%rbp)
	je	.LBB13_40
# BB#39:                                # %lor.lhs.false.70
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB13_41
.LBB13_40:                              # %if.then.72
	jmp	.LBB13_42
.LBB13_41:                              # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_in_same_tree, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_49
.LBB13_42:                              # %if.end.74
	jmp	.LBB13_43
.LBB13_43:                              # %do.end.75
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rcx
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB13_45
# BB#44:                                # %lor.lhs.false.78
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rcx
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	jne	.LBB13_46
.LBB13_45:                              # %if.then.81
	movl	$0, -4(%rbp)
	jmp	.LBB13_49
.LBB13_46:                              # %if.end.82
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_tree
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_tree
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB13_48
# BB#47:                                # %if.then.86
	movq	-40(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.30, %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_ID
	movq	-24(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_object_get_name
	movq	-24(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movl	-156(%rbp), %r9d        # 4-byte Reload
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_49
.LBB13_48:                              # %if.end.93
	movl	$1, -4(%rbp)
.LBB13_49:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_pdb_item_is_in_same_tree, .Lfunc_end13-gimp_pdb_item_is_in_same_tree
	.cfi_endproc

	.globl	gimp_pdb_item_is_not_ancestor
	.align	16, 0x90
	.type	gimp_pdb_item_is_not_ancestor,@function
gimp_pdb_item_is_not_ancestor:          # @gimp_pdb_item_is_not_ancestor
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_not_ancestor, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_33
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB14_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB14_20
.LBB14_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB14_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB14_19:                              # %if.end.31
	jmp	.LBB14_20
.LBB14_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB14_22
# BB#21:                                # %if.then.35
	jmp	.LBB14_23
.LBB14_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_not_ancestor, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_33
.LBB14_23:                              # %if.end.37
	jmp	.LBB14_24
.LBB14_24:                              # %do.end.38
	jmp	.LBB14_25
.LBB14_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB14_27
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB14_28
.LBB14_27:                              # %if.then.42
	jmp	.LBB14_29
.LBB14_28:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_not_ancestor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_33
.LBB14_29:                              # %if.end.44
	jmp	.LBB14_30
.LBB14_30:                              # %do.end.45
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_is_ancestor
	cmpl	$0, %eax
	je	.LBB14_32
# BB#31:                                # %if.then.52
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.32, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_ID
	movq	-24(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_object_get_name
	movq	-24(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movl	-140(%rbp), %r9d        # 4-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB14_33
.LBB14_32:                              # %if.end.59
	movl	$1, -4(%rbp)
.LBB14_33:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_pdb_item_is_not_ancestor, .Lfunc_end14-gimp_pdb_item_is_not_ancestor
	.cfi_endproc

	.globl	gimp_pdb_item_is_floating
	.align	16, 0x90
	.type	gimp_pdb_item_is_floating,@function
gimp_pdb_item_is_floating:              # @gimp_pdb_item_is_floating
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_floating, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_36
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_floating, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_36
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	jmp	.LBB15_25
.LBB15_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB15_27
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB15_28
.LBB15_27:                              # %if.then.42
	jmp	.LBB15_29
.LBB15_28:                              # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_floating, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_36
.LBB15_29:                              # %if.end.44
	jmp	.LBB15_30
.LBB15_30:                              # %do.end.45
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_is_floating
	cmpl	$0, %eax
	jne	.LBB15_32
# BB#31:                                # %if.then.48
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.34, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB15_36
.LBB15_32:                              # %if.else.53
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	cmpq	-24(%rbp), %rax
	je	.LBB15_34
# BB#33:                                # %if.then.56
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.35, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB15_36
.LBB15_34:                              # %if.end.61
	jmp	.LBB15_35
.LBB15_35:                              # %if.end.62
	movl	$1, -4(%rbp)
.LBB15_36:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_pdb_item_is_floating, .Lfunc_end15-gimp_pdb_item_is_floating
	.cfi_endproc

	.globl	gimp_pdb_item_is_group
	.align	16, 0x90
	.type	gimp_pdb_item_is_group,@function
gimp_pdb_item_is_group:                 # @gimp_pdb_item_is_group
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_group, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_21
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB16_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB16_16
.LBB16_15:                              # %if.then.14
	jmp	.LBB16_17
.LBB16_16:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_group, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_21
.LBB16_17:                              # %if.end.16
	jmp	.LBB16_18
.LBB16_18:                              # %do.end.17
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB16_20
# BB#19:                                # %if.then.22
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.37, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB16_21
.LBB16_20:                              # %if.end.27
	movl	$1, -4(%rbp)
.LBB16_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_pdb_item_is_group, .Lfunc_end16-gimp_pdb_item_is_group
	.cfi_endproc

	.globl	gimp_pdb_item_is_not_group
	.align	16, 0x90
	.type	gimp_pdb_item_is_not_group,@function
gimp_pdb_item_is_not_group:             # @gimp_pdb_item_is_not_group
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_not_group, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_21
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB17_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB17_16
.LBB17_15:                              # %if.then.14
	jmp	.LBB17_17
.LBB17_16:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_item_is_not_group, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_21
.LBB17_17:                              # %if.end.16
	jmp	.LBB17_18
.LBB17_18:                              # %do.end.17
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB17_20
# BB#19:                                # %if.then.22
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.38, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB17_21
.LBB17_20:                              # %if.end.27
	movl	$1, -4(%rbp)
.LBB17_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_pdb_item_is_not_group, .Lfunc_end17-gimp_pdb_item_is_not_group
	.cfi_endproc

	.globl	gimp_pdb_layer_is_text_layer
	.align	16, 0x90
	.type	gimp_pdb_layer_is_text_layer,@function
gimp_pdb_layer_is_text_layer:           # @gimp_pdb_layer_is_text_layer
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_layer_is_text_layer, %rsi
	movabsq	$.L.str.39, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_21
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB18_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB18_16
.LBB18_15:                              # %if.then.14
	jmp	.LBB18_17
.LBB18_16:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_layer_is_text_layer, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_21
.LBB18_17:                              # %if.end.16
	jmp	.LBB18_18
.LBB18_18:                              # %do.end.17
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	jne	.LBB18_20
# BB#19:                                # %if.then.22
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.40, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movl	$3, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB18_21
.LBB18_20:                              # %if.end.29
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -4(%rbp)
.LBB18_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_pdb_layer_is_text_layer, .Lfunc_end18-gimp_pdb_layer_is_text_layer
	.cfi_endproc

	.globl	gimp_pdb_image_is_base_type
	.align	16, 0x90
	.type	gimp_pdb_image_is_base_type,@function
gimp_pdb_image_is_base_type:            # @gimp_pdb_image_is_base_type
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_image_is_base_type, %rsi
	movabsq	$.L.str.41, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_21
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB19_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB19_16
.LBB19_15:                              # %if.then.14
	jmp	.LBB19_17
.LBB19_16:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_image_is_base_type, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_21
.LBB19_17:                              # %if.end.16
	jmp	.LBB19_18
.LBB19_18:                              # %do.end.17
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	-20(%rbp), %eax
	jne	.LBB19_20
# BB#19:                                # %if.then.20
	movl	$1, -4(%rbp)
	jmp	.LBB19_21
.LBB19_20:                              # %if.end.21
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.42, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_display_name
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_ID
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_base_type_get_type
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_base_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_pdb_enum_value_get_nick
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_base_type_get_type
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_pdb_enum_value_get_nick
	movl	$3, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
.LBB19_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_pdb_image_is_base_type, .Lfunc_end19-gimp_pdb_image_is_base_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pdb_enum_value_get_nick,@function
gimp_pdb_enum_value_get_nick:           # @gimp_pdb_enum_value_get_nick
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_ref
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	g_enum_get_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_pdb_enum_value_get_nick, .Lfunc_end20-gimp_pdb_enum_value_get_nick
	.cfi_endproc

	.globl	gimp_pdb_image_is_not_base_type
	.align	16, 0x90
	.type	gimp_pdb_image_is_not_base_type,@function
gimp_pdb_image_is_not_base_type:        # @gimp_pdb_image_is_not_base_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_image_is_not_base_type, %rsi
	movabsq	$.L.str.41, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_21
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB21_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB21_16
.LBB21_15:                              # %if.then.14
	jmp	.LBB21_17
.LBB21_16:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_image_is_not_base_type, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_21
.LBB21_17:                              # %if.end.16
	jmp	.LBB21_18
.LBB21_18:                              # %do.end.17
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	-20(%rbp), %eax
	je	.LBB21_20
# BB#19:                                # %if.then.20
	movl	$1, -4(%rbp)
	jmp	.LBB21_21
.LBB21_20:                              # %if.end.21
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.43, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_display_name
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_ID
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_base_type_get_type
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_pdb_enum_value_get_nick
	movl	$3, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
.LBB21_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_pdb_image_is_not_base_type, .Lfunc_end21-gimp_pdb_image_is_not_base_type
	.cfi_endproc

	.globl	gimp_pdb_get_vectors_stroke
	.align	16, 0x90
	.type	gimp_pdb_get_vectors_stroke,@function
gimp_pdb_get_vectors_stroke:            # @gimp_pdb_get_vectors_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_vectors_stroke, %rsi
	movabsq	$.L.str.44, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_26
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB22_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB22_16
.LBB22_15:                              # %if.then.14
	jmp	.LBB22_17
.LBB22_16:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pdb_get_vectors_stroke, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_26
.LBB22_17:                              # %if.end.16
	jmp	.LBB22_18
.LBB22_18:                              # %do.end.17
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	jne	.LBB22_20
# BB#19:                                # %if.then.22
	movq	$0, -8(%rbp)
	jmp	.LBB22_26
.LBB22_20:                              # %if.end.23
	cmpl	$0, -24(%rbp)
	je	.LBB22_22
# BB#21:                                # %lor.lhs.false.25
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_writable
	cmpl	$0, %eax
	je	.LBB22_25
.LBB22_22:                              # %if.then.30
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_vectors_stroke_get_by_ID
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB22_24
# BB#23:                                # %if.then.33
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.45, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movl	$3, %edx
	movl	-20(%rbp), %r9d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	g_set_error
.LBB22_24:                              # %if.end.39
	jmp	.LBB22_25
.LBB22_25:                              # %if.end.40
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB22_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_pdb_get_vectors_stroke, .Lfunc_end22-gimp_pdb_get_vectors_stroke
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-PDB"
	.size	.L.str, 9

	.type	.L__func__.gimp_pdb_get_brush,@object # @__func__.gimp_pdb_get_brush
.L__func__.gimp_pdb_get_brush:
	.asciz	"gimp_pdb_get_brush"
	.size	.L__func__.gimp_pdb_get_brush, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Invalid empty brush name"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Brush '%s' not found"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Brush '%s' is not editable"
	.size	.L.str.5, 27

	.type	.L__func__.gimp_pdb_get_generated_brush,@object # @__func__.gimp_pdb_get_generated_brush
.L__func__.gimp_pdb_get_generated_brush:
	.asciz	"gimp_pdb_get_generated_brush"
	.size	.L__func__.gimp_pdb_get_generated_brush, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Brush '%s' is not a generated brush"
	.size	.L.str.6, 36

	.type	.L__func__.gimp_pdb_get_dynamics,@object # @__func__.gimp_pdb_get_dynamics
.L__func__.gimp_pdb_get_dynamics:
	.asciz	"gimp_pdb_get_dynamics"
	.size	.L__func__.gimp_pdb_get_dynamics, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Invalid empty paint dynamics name"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Paint dynamics '%s' not found"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Paint dynamics '%s' is not editable"
	.size	.L.str.9, 36

	.type	.L__func__.gimp_pdb_get_pattern,@object # @__func__.gimp_pdb_get_pattern
.L__func__.gimp_pdb_get_pattern:
	.asciz	"gimp_pdb_get_pattern"
	.size	.L__func__.gimp_pdb_get_pattern, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Invalid empty pattern name"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Pattern '%s' not found"
	.size	.L.str.11, 23

	.type	.L__func__.gimp_pdb_get_gradient,@object # @__func__.gimp_pdb_get_gradient
.L__func__.gimp_pdb_get_gradient:
	.asciz	"gimp_pdb_get_gradient"
	.size	.L__func__.gimp_pdb_get_gradient, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Invalid empty gradient name"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Gradient '%s' not found"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Gradient '%s' is not editable"
	.size	.L.str.14, 30

	.type	.L__func__.gimp_pdb_get_palette,@object # @__func__.gimp_pdb_get_palette
.L__func__.gimp_pdb_get_palette:
	.asciz	"gimp_pdb_get_palette"
	.size	.L__func__.gimp_pdb_get_palette, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Invalid empty palette name"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Palette '%s' not found"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Palette '%s' is not editable"
	.size	.L.str.17, 29

	.type	.L__func__.gimp_pdb_get_font,@object # @__func__.gimp_pdb_get_font
.L__func__.gimp_pdb_get_font:
	.asciz	"gimp_pdb_get_font"
	.size	.L__func__.gimp_pdb_get_font, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Invalid empty font name"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Font '%s' not found"
	.size	.L.str.19, 20

	.type	.L__func__.gimp_pdb_get_buffer,@object # @__func__.gimp_pdb_get_buffer
.L__func__.gimp_pdb_get_buffer:
	.asciz	"gimp_pdb_get_buffer"
	.size	.L__func__.gimp_pdb_get_buffer, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Invalid empty buffer name"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Named buffer '%s' not found"
	.size	.L.str.21, 28

	.type	.L__func__.gimp_pdb_get_paint_info,@object # @__func__.gimp_pdb_get_paint_info
.L__func__.gimp_pdb_get_paint_info:
	.asciz	"gimp_pdb_get_paint_info"
	.size	.L__func__.gimp_pdb_get_paint_info, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Invalid empty paint method name"
	.size	.L.str.22, 32

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Paint method '%s' does not exist"
	.size	.L.str.23, 33

	.type	.L__func__.gimp_pdb_item_is_attached,@object # @__func__.gimp_pdb_item_is_attached
.L__func__.gimp_pdb_item_is_attached:
	.asciz	"gimp_pdb_item_is_attached"
	.size	.L__func__.gimp_pdb_item_is_attached, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.25, 39

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Item '%s' (%d) cannot be used because it has not been added to an image"
	.size	.L.str.26, 72

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Item '%s' (%d) cannot be used because it is attached to another image"
	.size	.L.str.27, 70

	.type	.L__func__.gimp_pdb_item_is_in_tree,@object # @__func__.gimp_pdb_item_is_in_tree
.L__func__.gimp_pdb_item_is_in_tree:
	.asciz	"gimp_pdb_item_is_in_tree"
	.size	.L__func__.gimp_pdb_item_is_in_tree, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Item '%s' (%d) cannot be used because it is not a direct child of an item tree"
	.size	.L.str.28, 79

	.type	.L__func__.gimp_pdb_item_is_in_same_tree,@object # @__func__.gimp_pdb_item_is_in_same_tree
.L__func__.gimp_pdb_item_is_in_same_tree:
	.asciz	"gimp_pdb_item_is_in_same_tree"
	.size	.L__func__.gimp_pdb_item_is_in_same_tree, 30

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GIMP_IS_ITEM (item2)"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Items '%s' (%d) and '%s' (%d) cannot be used because they are not part of the same item tree"
	.size	.L.str.30, 93

	.type	.L__func__.gimp_pdb_item_is_not_ancestor,@object # @__func__.gimp_pdb_item_is_not_ancestor
.L__func__.gimp_pdb_item_is_not_ancestor:
	.asciz	"gimp_pdb_item_is_not_ancestor"
	.size	.L__func__.gimp_pdb_item_is_not_ancestor, 30

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"GIMP_IS_ITEM (not_descendant)"
	.size	.L.str.31, 30

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Item '%s' (%d) must not be an ancestor of '%s' (%d)"
	.size	.L.str.32, 52

	.type	.L__func__.gimp_pdb_item_is_floating,@object # @__func__.gimp_pdb_item_is_floating
.L__func__.gimp_pdb_item_is_floating:
	.asciz	"gimp_pdb_item_is_floating"
	.size	.L__func__.gimp_pdb_item_is_floating, 26

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"GIMP_IS_IMAGE (dest_image)"
	.size	.L.str.33, 27

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Item '%s' (%d) has already been added to an image"
	.size	.L.str.34, 50

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Trying to add item '%s' (%d) to wrong image"
	.size	.L.str.35, 44

	.type	.L__func__.gimp_pdb_item_is_writable,@object # @__func__.gimp_pdb_item_is_writable
.L__func__.gimp_pdb_item_is_writable:
	.asciz	"gimp_pdb_item_is_writable"
	.size	.L__func__.gimp_pdb_item_is_writable, 26

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Item '%s' (%d) cannot be modified because its contents are locked"
	.size	.L.str.36, 66

	.type	.L__func__.gimp_pdb_item_is_group,@object # @__func__.gimp_pdb_item_is_group
.L__func__.gimp_pdb_item_is_group:
	.asciz	"gimp_pdb_item_is_group"
	.size	.L__func__.gimp_pdb_item_is_group, 23

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Item '%s' (%d) cannot be used because it is not a group item"
	.size	.L.str.37, 61

	.type	.L__func__.gimp_pdb_item_is_not_group,@object # @__func__.gimp_pdb_item_is_not_group
.L__func__.gimp_pdb_item_is_not_group:
	.asciz	"gimp_pdb_item_is_not_group"
	.size	.L__func__.gimp_pdb_item_is_not_group, 27

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Item '%s' (%d) cannot be modified because it is a group item"
	.size	.L.str.38, 61

	.type	.L__func__.gimp_pdb_layer_is_text_layer,@object # @__func__.gimp_pdb_layer_is_text_layer
.L__func__.gimp_pdb_layer_is_text_layer:
	.asciz	"gimp_pdb_layer_is_text_layer"
	.size	.L__func__.gimp_pdb_layer_is_text_layer, 29

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"GIMP_IS_LAYER (layer)"
	.size	.L.str.39, 22

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Layer '%s' (%d) cannot be used because it is not a text layer"
	.size	.L.str.40, 62

	.type	.L__func__.gimp_pdb_image_is_base_type,@object # @__func__.gimp_pdb_image_is_base_type
.L__func__.gimp_pdb_image_is_base_type:
	.asciz	"gimp_pdb_image_is_base_type"
	.size	.L__func__.gimp_pdb_image_is_base_type, 28

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.41, 22

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Image '%s' (%d) is of type '%s', but an image of type '%s' is expected"
	.size	.L.str.42, 71

	.type	.L__func__.gimp_pdb_image_is_not_base_type,@object # @__func__.gimp_pdb_image_is_not_base_type
.L__func__.gimp_pdb_image_is_not_base_type:
	.asciz	"gimp_pdb_image_is_not_base_type"
	.size	.L__func__.gimp_pdb_image_is_not_base_type, 32

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Image '%s' (%d) is already of type '%s'"
	.size	.L.str.43, 40

	.type	.L__func__.gimp_pdb_get_vectors_stroke,@object # @__func__.gimp_pdb_get_vectors_stroke
.L__func__.gimp_pdb_get_vectors_stroke:
	.asciz	"gimp_pdb_get_vectors_stroke"
	.size	.L__func__.gimp_pdb_get_vectors_stroke, 28

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"GIMP_IS_VECTORS (vectors)"
	.size	.L.str.44, 26

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Vectors object %d does not contain stroke with ID %d"
	.size	.L.str.45, 53


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
