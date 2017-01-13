	.text
	.file	"file-utils.bc"
	.globl	file_utils_filename_is_uri
	.align	16, 0x90
	.type	file_utils_filename_is_uri,@function
file_utils_filename_is_uri:             # @file_utils_filename_is_uri
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_filename_is_uri, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_9
.LBB0_8:                                # %if.then.4
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_filename_is_uri, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_10:                               # %if.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.end.7
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB0_18
# BB#12:                                # %if.then.8
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strstr
	movq	-16(%rbp), %rsi
	subq	%rsi, %rax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movabsq	$.L.str.4, %rsi
	movl	$45, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_strcanon
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_14
# BB#13:                                # %lor.lhs.false.15
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB0_15
.LBB0_14:                               # %if.then.19
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-32(%rbp), %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_15:                               # %if.end.22
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	jne	.LBB0_17
# BB#16:                                # %if.then.25
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	g_convert_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB0_19
.LBB0_17:                               # %if.end.28
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.end.29
	movl	$0, -4(%rbp)
.LBB0_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_utils_filename_is_uri, .Lfunc_end0-file_utils_filename_is_uri
	.cfi_endproc

	.globl	file_utils_filename_to_uri
	.align	16, 0x90
	.type	file_utils_filename_to_uri,@function
file_utils_filename_to_uri:             # @file_utils_filename_to_uri
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_filename_to_uri, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_37
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_filename_to_uri, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_37
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB1_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_21
.LBB1_20:                               # %if.then.20
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_filename_to_uri, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_37
.LBB1_22:                               # %if.end.22
	jmp	.LBB1_23
.LBB1_23:                               # %do.end.23
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	64(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	file_procedure_find_by_prefix
	cmpq	$0, %rax
	je	.LBB1_27
# BB#24:                                # %if.then.26
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB1_26
# BB#25:                                # %if.then.29
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB1_37
.LBB1_26:                               # %if.else.31
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	g_convert_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB1_37
.LBB1_27:                               # %if.else.34
	leaq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	file_utils_filename_is_uri
	cmpl	$0, %eax
	je	.LBB1_29
# BB#28:                                # %if.then.37
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB1_37
.LBB1_29:                               # %if.else.39
	cmpq	$0, -40(%rbp)
	je	.LBB1_31
# BB#30:                                # %if.then.41
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_propagate_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_37
.LBB1_31:                               # %if.end.42
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.43
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.44
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	jne	.LBB1_35
# BB#34:                                # %if.then.47
	callq	g_get_current_dir
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_36
.LBB1_35:                               # %if.else.51
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)
.LBB1_36:                               # %if.end.53
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	g_filename_to_uri
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_37:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_utils_filename_to_uri, .Lfunc_end1-file_utils_filename_to_uri
	.cfi_endproc

	.globl	file_utils_any_to_uri
	.align	16, 0x90
	.type	file_utils_any_to_uri,@function
file_utils_any_to_uri:                  # @file_utils_any_to_uri
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_any_to_uri, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_27
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_any_to_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_27
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB2_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_21
.LBB2_20:                               # %if.then.20
	jmp	.LBB2_22
.LBB2_21:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_any_to_uri, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_27
.LBB2_22:                               # %if.end.22
	jmp	.LBB2_23
.LBB2_23:                               # %do.end.23
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_from_uri
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB2_25
# BB#24:                                # %if.then.26
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
	jmp	.LBB2_26
.LBB2_25:                               # %if.else.28
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	file_utils_filename_to_uri
	movq	%rax, -40(%rbp)
.LBB2_26:                               # %if.end.30
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_utils_any_to_uri, .Lfunc_end2-file_utils_any_to_uri
	.cfi_endproc

	.globl	file_utils_filename_from_uri
	.align	16, 0x90
	.type	file_utils_filename_from_uri,@function
file_utils_filename_from_uri:           # @file_utils_filename_from_uri
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_filename_from_uri, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_10
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	leaq	-32(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	g_filename_from_uri
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %if.then.1
	movq	$0, -8(%rbp)
	jmp	.LBB3_10
.LBB3_7:                                # %if.end.2
	cmpq	$0, -32(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB3_9:                                # %if.end.5
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_utils_filename_from_uri, .Lfunc_end3-file_utils_filename_from_uri
	.cfi_endproc

	.globl	file_utils_uri_with_new_ext
	.align	16, 0x90
	.type	file_utils_uri_with_new_ext,@function
file_utils_uri_with_new_ext:            # @file_utils_uri_with_new_ext
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
	movq	-8(%rbp), %rdi
	callq	file_utils_uri_get_ext
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	file_utils_uri_get_ext
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	file_utils_uri_with_new_ext, .Lfunc_end4-file_utils_uri_with_new_ext
	.cfi_endproc

	.globl	file_utils_uri_get_ext
	.align	16, 0x90
	.type	file_utils_uri_get_ext,@function
file_utils_uri_get_ext:                 # @file_utils_uri_get_ext
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
	subq	$32, %rsp
	movabsq	$.L.str.10, %rsi
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	g_strrstr
	cmpq	$0, %rax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_6
.LBB5_2:                                # %if.else
	movabsq	$.L.str.11, %rsi
	movq	-8(%rbp), %rdi
	callq	g_strrstr
	cmpq	$0, %rax
	je	.LBB5_4
# BB#3:                                 # %if.then.4
	movl	-20(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_5
.LBB5_4:                                # %if.else.6
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.7
	movabsq	$.L.str.12, %rdx
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rsi
	callq	g_strrstr_len
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
.LBB5_8:                                # %if.end.12
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	file_utils_uri_get_ext, .Lfunc_end5-file_utils_uri_get_ext
	.cfi_endproc

	.globl	file_utils_uri_to_utf8_filename
	.align	16, 0x90
	.type	file_utils_uri_to_utf8_filename,@function
file_utils_uri_to_utf8_filename:        # @file_utils_uri_to_utf8_filename
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
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_uri_to_utf8_filename, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_12
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB6_11
# BB#6:                                 # %if.then.1
	movq	-16(%rbp), %rdi
	callq	file_utils_filename_from_uri
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_10
# BB#7:                                 # %if.then.4
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-32(%rbp), %r8
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rcx, %rdx
	callq	g_filename_to_utf8
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	cmpq	$0, -40(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_12
.LBB6_9:                                # %if.end.8
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-32(%rbp), %rdi
	callq	g_error_free
.LBB6_10:                               # %if.end.9
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.10
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB6_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	file_utils_uri_to_utf8_filename, .Lfunc_end6-file_utils_uri_to_utf8_filename
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB7_2
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
.LBB7_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_warning, .Lfunc_end7-g_warning
	.cfi_endproc

	.globl	file_utils_uri_display_basename
	.align	16, 0x90
	.type	file_utils_uri_display_basename,@function
file_utils_uri_display_basename:        # @file_utils_uri_display_basename
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
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_uri_display_basename, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_16
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB8_9
# BB#6:                                 # %if.then.1
	movq	-16(%rbp), %rdi
	callq	file_utils_filename_from_uri
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	callq	g_filename_display_basename
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB8_8:                                # %if.end.6
	jmp	.LBB8_12
.LBB8_9:                                # %if.else.7
	movq	-16(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$47, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strrchr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_11
# BB#10:                                # %if.then.11
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
.LBB8_11:                               # %if.end.13
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB8_12:                               # %if.end.14
	cmpq	$0, -24(%rbp)
	je	.LBB8_14
# BB#13:                                # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB8_15
.LBB8_14:                               # %cond.false
	movq	-16(%rbp), %rdi
	callq	file_utils_uri_to_utf8_basename
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB8_15:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB8_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	file_utils_uri_display_basename, .Lfunc_end8-file_utils_uri_display_basename
	.cfi_endproc

	.globl	file_utils_uri_display_name
	.align	16, 0x90
	.type	file_utils_uri_display_name,@function
file_utils_uri_display_name:            # @file_utils_uri_display_name
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_uri_display_name, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_14
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB9_9
# BB#6:                                 # %if.then.1
	movq	-16(%rbp), %rdi
	callq	file_utils_filename_from_uri
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	callq	g_filename_display_name
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB9_8:                                # %if.end.6
	jmp	.LBB9_10
.LBB9_9:                                # %if.else.7
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movabsq	$.L.str.16, %rdx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	callq	file_utils_unescape_uri
	movq	%rax, -24(%rbp)
.LBB9_10:                               # %if.end.9
	cmpq	$0, -24(%rbp)
	je	.LBB9_12
# BB#11:                                # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %cond.false
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB9_13:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB9_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	file_utils_uri_display_name, .Lfunc_end9-file_utils_uri_display_name
	.cfi_endproc

	.align	16, 0x90
	.type	file_utils_uri_to_utf8_basename,@function
file_utils_uri_to_utf8_basename:        # @file_utils_uri_to_utf8_basename
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
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_uri_to_utf8_basename, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_15
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	file_utils_uri_to_utf8_filename
	movabsq	$.L.str.16, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB10_7
# BB#6:                                 # %if.then.2
	movq	-24(%rbp), %rdi
	callq	g_path_get_basename
	movq	%rax, -32(%rbp)
	jmp	.LBB10_12
.LBB10_7:                               # %if.else.4
	movabsq	$.L.str.3, %rsi
	movq	-24(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB10_11
# BB#8:                                 # %if.then.7
	movl	$47, %esi
	movq	-16(%rbp), %rdi
	callq	strrchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.10
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -32(%rbp)
.LBB10_10:                              # %if.end.12
	jmp	.LBB10_11
.LBB10_11:                              # %if.end.13
	jmp	.LBB10_12
.LBB10_12:                              # %if.end.14
	cmpq	$0, -32(%rbp)
	je	.LBB10_14
# BB#13:                                # %if.then.16
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB10_15
.LBB10_14:                              # %if.end.17
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	file_utils_uri_to_utf8_basename, .Lfunc_end10-file_utils_uri_to_utf8_basename
	.cfi_endproc

	.align	16, 0x90
	.type	file_utils_unescape_uri,@function
file_utils_unescape_uri:                # @file_utils_unescape_uri
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
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB11_27
.LBB11_2:                               # %if.end
	cmpl	$0, -20(%rbp)
	jge	.LBB11_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB11_4:                               # %if.end.3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, -56(%rbp)
.LBB11_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB11_19
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$37, -76(%rbp)
	jne	.LBB11_17
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$3, %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB11_9
# BB#8:                                 # %if.then.15
	jmp	.LBB11_19
.LBB11_9:                               # %if.end.16
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	unescape_character
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jg	.LBB11_11
# BB#10:                                # %if.then.21
	jmp	.LBB11_19
.LBB11_11:                              # %if.end.22
                                        #   in Loop: Header=BB11_5 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB11_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_5 Depth=1
	cmpl	$127, -76(%rbp)
	jg	.LBB11_14
# BB#13:                                # %if.then.25
	jmp	.LBB11_19
.LBB11_14:                              # %if.end.26
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-32(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB11_16
# BB#15:                                # %if.then.30
	jmp	.LBB11_19
.LBB11_16:                              # %if.end.31
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
.LBB11_17:                              # %if.end.33
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)
	movb	%cl, (%rdx)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB11_5
.LBB11_19:                              # %for.end
	jmp	.LBB11_20
.LBB11_20:                              # %do.body
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB11_22
# BB#21:                                # %if.then.39
	jmp	.LBB11_23
.LBB11_22:                              # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$545, %edx              # imm = 0x221
	movabsq	$.L__func__.file_utils_unescape_uri, %rcx
	movabsq	$.L.str.19, %r8
	callq	g_assertion_message_expr
.LBB11_23:                              # %if.end.40
	jmp	.LBB11_24
.LBB11_24:                              # %do.end
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB11_26
# BB#25:                                # %if.then.43
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB11_27
.LBB11_26:                              # %if.end.44
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	file_utils_unescape_uri, .Lfunc_end11-file_utils_unescape_uri
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	file_utils_load_thumbnail
	.align	16, 0x90
	.type	file_utils_load_thumbnail,@function
file_utils_load_thumbnail:              # @file_utils_load_thumbnail
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_load_thumbnail, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_12
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_to_uri
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB12_7
# BB#6:                                 # %if.then.1
	callq	gimp_thumbnail_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_thumbnail_set_uri
	movl	$128, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_thumbnail_load_thumb
	movq	%rax, -32(%rbp)
.LBB12_7:                               # %if.end.4
	movq	-40(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB12_11
# BB#8:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels
	cmpl	$3, %eax
	je	.LBB12_10
# BB#9:                                 # %if.then.11
	xorl	%eax, %eax
	movl	$8, %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gdk_pixbuf_new
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movl	$255, %edx
	movl	$4, %esi
	movl	$1717986918, %edi       # imm = 0x66666666
	movl	$2576980377, %r8d       # imm = 0x99999999
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %r9
	movl	-44(%rbp), %r10d
	movl	-48(%rbp), %r11d
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, (%rsp)
	movl	$255, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$4, 32(%rsp)
	movl	$1717986918, 40(%rsp)   # imm = 0x66666666
	movl	$-1717986919, 48(%rsp)  # imm = 0xFFFFFFFF99999999
	callq	gdk_pixbuf_composite_color
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB12_10:                              # %if.end.13
	jmp	.LBB12_11
.LBB12_11:                              # %if.end.14
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	file_utils_load_thumbnail, .Lfunc_end12-file_utils_load_thumbnail
	.cfi_endproc

	.globl	file_utils_save_thumbnail
	.align	16, 0x90
	.type	file_utils_save_thumbnail,@function
file_utils_save_thumbnail:              # @file_utils_save_thumbnail
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L__func__.file_utils_save_thumbnail, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_24
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_utils_save_thumbnail, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_24
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB13_23
# BB#18:                                # %if.then.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_to_uri
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB13_22
# BB#19:                                # %if.then.23
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_21
# BB#20:                                # %if.then.26
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_imagefile_new
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_imagefile_save_thumbnail
	movl	%eax, -36(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_object_unref
.LBB13_21:                              # %if.end.30
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB13_22:                              # %if.end.31
	jmp	.LBB13_23
.LBB13_23:                              # %if.end.32
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_24:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	file_utils_save_thumbnail, .Lfunc_end13-file_utils_save_thumbnail
	.cfi_endproc

	.align	16, 0x90
	.type	unescape_character,@function
unescape_character:                     # @unescape_character
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	(%rdi), %edi
	callq	g_ascii_xdigit_value
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB14_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB14_5
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	g_ascii_xdigit_value
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB14_4
# BB#3:                                 # %if.then.4
	movl	$-1, -4(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %if.end.5
	movl	-20(%rbp), %eax
	shll	$4, %eax
	orl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	unescape_character, .Lfunc_end14-unescape_character
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-File"
	.size	.L.str, 10

	.type	.L__func__.file_utils_filename_is_uri,@object # @__func__.file_utils_filename_is_uri
.L__func__.file_utils_filename_is_uri:
	.asciz	"file_utils_filename_is_uri"
	.size	.L__func__.file_utils_filename_is_uri, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filename != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"://"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-."
	.size	.L.str.4, 66

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"'%s:' is not a valid URI scheme"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid character sequence in URI"
	.size	.L.str.6, 34

	.type	.L__func__.file_utils_filename_to_uri,@object # @__func__.file_utils_filename_to_uri
.L__func__.file_utils_filename_to_uri:
	.asciz	"file_utils_filename_to_uri"
	.size	.L__func__.file_utils_filename_to_uri, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.7, 20

	.type	.L__func__.file_utils_any_to_uri,@object # @__func__.file_utils_any_to_uri
.L__func__.file_utils_any_to_uri:
	.asciz	"file_utils_any_to_uri"
	.size	.L__func__.file_utils_any_to_uri, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"filename_or_uri != NULL"
	.size	.L.str.8, 24

	.type	.L__func__.file_utils_filename_from_uri,@object # @__func__.file_utils_filename_from_uri
.L__func__.file_utils_filename_from_uri:
	.asciz	"file_utils_filename_from_uri"
	.size	.L__func__.file_utils_filename_from_uri, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"uri != NULL"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	".gz"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	".bz2"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"."
	.size	.L.str.12, 2

	.type	.L__func__.file_utils_uri_to_utf8_filename,@object # @__func__.file_utils_uri_to_utf8_filename
.L__func__.file_utils_uri_to_utf8_filename:
	.asciz	"file_utils_uri_to_utf8_filename"
	.size	.L__func__.file_utils_uri_to_utf8_filename, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file:"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s: cannot convert filename to UTF-8: %s"
	.size	.L.str.14, 41

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"file-utils.c:300"
	.size	.L.str.15, 17

	.type	.L__func__.file_utils_uri_display_basename,@object # @__func__.file_utils_uri_display_basename
.L__func__.file_utils_uri_display_basename:
	.asciz	"file_utils_uri_display_basename"
	.size	.L__func__.file_utils_uri_display_basename, 32

	.type	.L__func__.file_utils_uri_display_name,@object # @__func__.file_utils_uri_display_name
.L__func__.file_utils_uri_display_name:
	.asciz	"file_utils_uri_display_name"
	.size	.L__func__.file_utils_uri_display_name, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/"
	.size	.L.str.16, 2

	.type	.L__func__.file_utils_load_thumbnail,@object # @__func__.file_utils_load_thumbnail
.L__func__.file_utils_load_thumbnail:
	.asciz	"file_utils_load_thumbnail"
	.size	.L__func__.file_utils_load_thumbnail, 26

	.type	.L__func__.file_utils_save_thumbnail,@object # @__func__.file_utils_save_thumbnail
.L__func__.file_utils_save_thumbnail:
	.asciz	"file_utils_save_thumbnail"
	.size	.L__func__.file_utils_save_thumbnail, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.17, 22

	.type	.L__func__.file_utils_uri_to_utf8_basename,@object # @__func__.file_utils_uri_to_utf8_basename
.L__func__.file_utils_uri_to_utf8_basename:
	.asciz	"file_utils_uri_to_utf8_basename"
	.size	.L__func__.file_utils_uri_to_utf8_basename, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"file-utils.c"
	.size	.L.str.18, 13

	.type	.L__func__.file_utils_unescape_uri,@object # @__func__.file_utils_unescape_uri
.L__func__.file_utils_unescape_uri:
	.asciz	"file_utils_unescape_uri"
	.size	.L__func__.file_utils_unescape_uri, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"out - result <= len"
	.size	.L.str.19, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
