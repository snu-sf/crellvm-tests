	.text
	.file	"gimprc-unknown.bc"
	.globl	gimp_rc_add_unknown_token
	.align	16, 0x90
	.type	gimp_rc_add_unknown_token,@function
gimp_rc_add_unknown_token:              # @gimp_rc_add_unknown_token
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_config_interface_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rc_add_unknown_token, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_34
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rc_add_unknown_token, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_34
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB0_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_29
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_24
# BB#20:                                # %if.then.23
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.26
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.29
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_rc_destroy_unknown_tokens, %rdi
	movq	-40(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_object_set_data_full
.LBB0_23:                               # %if.end.33
	jmp	.LBB0_34
.LBB0_24:                               # %if.end.34
                                        #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               # %for.inc
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_28
.LBB0_27:                               # %cond.false
                                        #   in Loop: Header=BB0_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_28
.LBB0_28:                               # %cond.end
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB0_18
.LBB0_29:                               # %for.end
	cmpq	$0, -24(%rbp)
	jne	.LBB0_31
# BB#30:                                # %if.then.37
	jmp	.LBB0_34
.LBB0_31:                               # %if.end.38
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	cmpq	$0, -48(%rbp)
	je	.LBB0_33
# BB#32:                                # %if.then.45
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movq	%rax, %rdi
	callq	g_slist_last
	movq	%rax, -48(%rbp)
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.48
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slist_append
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_rc_destroy_unknown_tokens, %rcx
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data_full
.LBB0_34:                               # %if.end.51
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rc_add_unknown_token, .Lfunc_end0-gimp_rc_add_unknown_token
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_destroy_unknown_tokens,@function
gimp_rc_destroy_unknown_tokens:         # @gimp_rc_destroy_unknown_tokens
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB1_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB1_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_9:                                # %for.end
	movq	-8(%rbp), %rdi
	callq	g_slist_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rc_destroy_unknown_tokens, .Lfunc_end1-gimp_rc_destroy_unknown_tokens
	.cfi_endproc

	.globl	gimp_rc_lookup_unknown_token
	.align	16, 0x90
	.type	gimp_rc_lookup_unknown_token,@function
gimp_rc_lookup_unknown_token:           # @gimp_rc_lookup_unknown_token
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_config_interface_get_type
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
	movabsq	$.L__func__.gimp_rc_lookup_unknown_token, %rsi
	movabsq	$.L.str.1, %rdx
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
	movabsq	$.L__func__.gimp_rc_lookup_unknown_token, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_27
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB2_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB2_26
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB2_18 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_21
# BB#20:                                # %if.then.24
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_27
.LBB2_21:                               # %if.end.25
                                        #   in Loop: Header=BB2_18 Depth=1
	jmp	.LBB2_22
.LBB2_22:                               # %for.inc
                                        #   in Loop: Header=BB2_18 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB2_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB2_18 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_25
.LBB2_24:                               # %cond.false
                                        #   in Loop: Header=BB2_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_25
.LBB2_25:                               # %cond.end
                                        #   in Loop: Header=BB2_18 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB2_18
.LBB2_26:                               # %for.end
	movq	$0, -8(%rbp)
.LBB2_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rc_lookup_unknown_token, .Lfunc_end2-gimp_rc_lookup_unknown_token
	.cfi_endproc

	.globl	gimp_rc_foreach_unknown_token
	.align	16, 0x90
	.type	gimp_rc_foreach_unknown_token,@function
gimp_rc_foreach_unknown_token:          # @gimp_rc_foreach_unknown_token
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_config_interface_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rc_foreach_unknown_token, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_24
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rc_foreach_unknown_token, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_24
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB3_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB3_18 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_23
.LBB3_22:                               # %cond.false
                                        #   in Loop: Header=BB3_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_23
.LBB3_23:                               # %cond.end
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_18
.LBB3_24:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rc_foreach_unknown_token, .Lfunc_end3-gimp_rc_foreach_unknown_token
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Config"
	.size	.L.str, 12

	.type	.L__func__.gimp_rc_add_unknown_token,@object # @__func__.gimp_rc_add_unknown_token
.L__func__.gimp_rc_add_unknown_token:
	.asciz	"gimp_rc_add_unknown_token"
	.size	.L__func__.gimp_rc_add_unknown_token, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CONFIG (config)"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"key != NULL"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-rc-unknown-tokens"
	.size	.L.str.3, 23

	.type	.L__func__.gimp_rc_lookup_unknown_token,@object # @__func__.gimp_rc_lookup_unknown_token
.L__func__.gimp_rc_lookup_unknown_token:
	.asciz	"gimp_rc_lookup_unknown_token"
	.size	.L__func__.gimp_rc_lookup_unknown_token, 29

	.type	.L__func__.gimp_rc_foreach_unknown_token,@object # @__func__.gimp_rc_foreach_unknown_token
.L__func__.gimp_rc_foreach_unknown_token:
	.asciz	"gimp_rc_foreach_unknown_token"
	.size	.L__func__.gimp_rc_foreach_unknown_token, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"func != NULL"
	.size	.L.str.4, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
