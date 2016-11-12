	.text
	.file	"gimprc-serialize.bc"
	.globl	gimp_rc_serialize
	.align	16, 0x90
	.type	gimp_rc_serialize,@function
gimp_rc_serialize:                      # @gimp_rc_serialize
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_12
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_rc_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true.3
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.5
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.6
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.8
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_12
# BB#9:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_rc_serialize_properties_diff
	cmpl	$0, %eax
	jne	.LBB0_11
# BB#10:                                # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_11:                               # %if.end.14
	jmp	.LBB0_15
.LBB0_12:                               # %if.else.15
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_config_serialize_properties
	cmpl	$0, %eax
	jne	.LBB0_14
# BB#13:                                # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_14:                               # %if.end.19
	jmp	.LBB0_15
.LBB0_15:                               # %if.end.20
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rc_serialize_unknown_tokens
	movl	%eax, -4(%rbp)
.LBB0_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rc_serialize, .Lfunc_end0-gimp_rc_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_serialize_properties_diff,@function
gimp_rc_serialize_properties_diff:      # @gimp_rc_serialize_properties_diff
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$1, -52(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rc_serialize_properties_diff, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_27
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.2
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB1_8
# BB#7:                                 # %if.then.5
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.6
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rc_serialize_properties_diff, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_27
.LBB1_9:                                # %if.end.7
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.8
	jmp	.LBB1_11
.LBB1_11:                               # %do.body.9
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB1_13
# BB#12:                                # %if.then.12
	jmp	.LBB1_14
.LBB1_13:                               # %if.else.13
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rc_serialize_properties_diff, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_27
.LBB1_14:                               # %if.end.14
	jmp	.LBB1_15
.LBB1_15:                               # %do.end.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$256, %edx              # imm = 0x100
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_diff
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_26
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	jne	.LBB1_19
# BB#18:                                # %if.then.21
                                        #   in Loop: Header=BB1_16 Depth=1
	jmp	.LBB1_22
.LBB1_19:                               # %if.end.22
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_config_serialize_property
	cmpl	$0, %eax
	jne	.LBB1_21
# BB#20:                                # %if.then.25
	movl	$0, -52(%rbp)
	jmp	.LBB1_26
.LBB1_21:                               # %if.end.26
                                        #   in Loop: Header=BB1_16 Depth=1
	jmp	.LBB1_22
.LBB1_22:                               # %for.inc
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_25
.LBB1_24:                               # %cond.false
                                        #   in Loop: Header=BB1_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_25
.LBB1_25:                               # %cond.end
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB1_16
.LBB1_26:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	g_list_free
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rc_serialize_properties_diff, .Lfunc_end1-gimp_rc_serialize_properties_diff
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_serialize_unknown_tokens,@function
gimp_rc_serialize_unknown_tokens:       # @gimp_rc_serialize_unknown_tokens
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rc_serialize_unknown_tokens, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movabsq	$serialize_unknown_token, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_rc_foreach_unknown_token
	movl	$1, -4(%rbp)
.LBB2_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rc_serialize_unknown_tokens, .Lfunc_end2-gimp_rc_serialize_unknown_tokens
	.cfi_endproc

	.align	16, 0x90
	.type	serialize_unknown_token,@function
serialize_unknown_token:                # @serialize_unknown_token
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_config_writer_open
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_config_writer_string
	movq	-32(%rbp), %rdi
	callq	gimp_config_writer_close
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	serialize_unknown_token, .Lfunc_end3-serialize_unknown_token
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Config"
	.size	.L.str, 12

	.type	.L__func__.gimp_rc_serialize_properties_diff,@object # @__func__.gimp_rc_serialize_properties_diff
.L__func__.gimp_rc_serialize_properties_diff:
	.asciz	"gimp_rc_serialize_properties_diff"
	.size	.L__func__.gimp_rc_serialize_properties_diff, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"G_IS_OBJECT (config)"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"G_IS_OBJECT (compare)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"G_TYPE_FROM_INSTANCE (config) == G_TYPE_FROM_INSTANCE (compare)"
	.size	.L.str.3, 64

	.type	.L__func__.gimp_rc_serialize_unknown_tokens,@object # @__func__.gimp_rc_serialize_unknown_tokens
.L__func__.gimp_rc_serialize_unknown_tokens:
	.asciz	"gimp_rc_serialize_unknown_tokens"
	.size	.L__func__.gimp_rc_serialize_unknown_tokens, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
