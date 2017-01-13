	.text
	.file	"gimpconfig-utils.bc"
	.globl	gimp_config_diff
	.align	16, 0x90
	.type	gimp_config_diff,@function
gimp_config_diff:                       # @gimp_config_diff
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_diff(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_14
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.4
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_diff(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_14
.LBB0_9:                                # %if.end.6
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.7
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_12
# BB#11:                                # %if.then.10
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_config_diff_same
	movq	%rax, -40(%rbp)
	jmp	.LBB0_13
.LBB0_12:                               # %if.else.12
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_config_diff_other
	movq	%rax, -40(%rbp)
.LBB0_13:                               # %if.end.14
	movq	-40(%rbp), %rdi
	callq	g_list_reverse@PLT
	movq	%rax, -8(%rbp)
.LBB0_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_diff, .Lfunc_end0-gimp_config_diff
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_diff_same,@function
gimp_config_diff_same:                  # @gimp_config_diff_same
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
	subq	$64, %rsp
	leaq	-36(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	g_object_class_list_properties@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -40(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB1_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB1_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	andl	-20(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB1_7
.LBB1_4:                                # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_config_diff_property
	cmpl	$0, %eax
	je	.LBB1_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB1_6:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.7
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_8
.LBB1_8:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_1
.LBB1_9:                                # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_config_diff_same, .Lfunc_end1-gimp_config_diff_same
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_diff_other,@function
gimp_config_diff_other:                 # @gimp_config_diff_other
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
	leaq	-36(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	g_object_class_list_properties@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -40(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB2_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_class_find_property@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB2_9
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB2_9
# BB#4:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB2_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-64(%rbp), %rax
	andl	16(%rax), %ecx
	andl	-20(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB2_9
.LBB2_6:                                # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	gimp_config_diff_property
	cmpl	$0, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend@PLT
	movq	%rax, -48(%rbp)
.LBB2_8:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.15
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_10
.LBB2_10:                               # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB2_1
.LBB2_11:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_config_diff_other, .Lfunc_end2-gimp_config_diff_other
	.cfi_endproc

	.globl	gimp_config_sync
	.align	16, 0x90
	.type	gimp_config_sync,@function
gimp_config_sync:                       # @gimp_config_sync
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_sync(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB3_22
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB3_8
# BB#7:                                 # %if.then.4
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_sync(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB3_22
.LBB3_9:                                # %if.end.6
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.7
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB3_12
# BB#11:                                # %if.then.10
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %eax
	orl	$3, %eax
	movl	%eax, %edx
	callq	gimp_config_diff_same
	movq	%rax, -40(%rbp)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.12
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_config_diff_other
	movq	%rax, -40(%rbp)
.LBB3_13:                               # %if.end.14
	cmpq	$0, -40(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB3_22
.LBB3_15:                               # %if.end.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB3_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB3_21
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_19
# BB#18:                                # %if.then.22
                                        #   in Loop: Header=BB3_16 Depth=1
	leaq	-80(%rbp), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	memset@PLT
	movq	-56(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	g_value_init@PLT
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_object_get_property@PLT
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_set_property@PLT
	leaq	-80(%rbp), %rdi
	callq	g_value_unset@PLT
.LBB3_19:                               # %if.end.25
                                        #   in Loop: Header=BB3_16 Depth=1
	jmp	.LBB3_20
.LBB3_20:                               # %for.inc
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_16
.LBB3_21:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	movq	-40(%rbp), %rdi
	callq	g_list_free@PLT
	movl	$1, -4(%rbp)
.LBB3_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_config_sync, .Lfunc_end3-gimp_config_sync
	.cfi_endproc

	.globl	gimp_config_reset_properties
	.align	16, 0x90
	.type	gimp_config_reset_properties,@function
gimp_config_reset_properties:           # @gimp_config_reset_properties
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
	subq	$112, %rsp
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	memset@PLT
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_reset_properties(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_29
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	leaq	-52(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_object_class_list_properties@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.3
	jmp	.LBB4_29
.LBB4_7:                                # %if.end.4
	movq	-8(%rbp), %rdi
	callq	g_object_freeze_notify@PLT
	movl	$0, -56(%rbp)
.LBB4_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB4_28
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB4_26
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_26
# BB#11:                                # %if.then.9
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_13
# BB#12:                                # %if.then.12
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	$0, -84(%rbp)
	jmp	.LBB4_18
.LBB4_13:                               # %if.else.13
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_16
# BB#14:                                # %land.lhs.true.16
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_16
# BB#15:                                # %if.then.19
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	$1, -84(%rbp)
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.20
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB4_17:                               # %if.end.22
                                        #   in Loop: Header=BB4_8 Depth=1
	jmp	.LBB4_18
.LBB4_18:                               # %if.end.23
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_24
# BB#19:                                # %if.then.25
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB4_23
# BB#20:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	je	.LBB4_23
# BB#21:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	cmpq	$0, %rax
	je	.LBB4_23
# BB#22:                                # %if.then.38
                                        #   in Loop: Header=BB4_8 Depth=1
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_object_get_property@PLT
	leaq	-48(%rbp), %rdi
	callq	g_value_get_object@PLT
	movq	%rax, %rdi
	callq	gimp_config_reset@PLT
	leaq	-48(%rbp), %rdi
	callq	g_value_unset@PLT
.LBB4_23:                               # %if.end.42
                                        #   in Loop: Header=BB4_8 Depth=1
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.43
                                        #   in Loop: Header=BB4_8 Depth=1
	leaq	-48(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	leaq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_param_value_set_default@PLT
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_set_property@PLT
	leaq	-48(%rbp), %rdi
	callq	g_value_unset@PLT
.LBB4_25:                               # %if.end.47
                                        #   in Loop: Header=BB4_8 Depth=1
	jmp	.LBB4_26
.LBB4_26:                               # %if.end.48
                                        #   in Loop: Header=BB4_8 Depth=1
	jmp	.LBB4_27
.LBB4_27:                               # %for.inc
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB4_8
.LBB4_28:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	g_object_thaw_notify@PLT
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
.LBB4_29:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_config_reset_properties, .Lfunc_end4-gimp_config_reset_properties
	.cfi_endproc

	.globl	gimp_config_reset_property
	.align	16, 0x90
	.type	gimp_config_reset_property,@function
gimp_config_reset_property:             # @gimp_config_reset_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_reset_property(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_29
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.2
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_reset_property(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_29
.LBB5_9:                                # %if.end.4
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	g_object_class_find_property@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_12
# BB#11:                                # %if.then.8
	jmp	.LBB5_29
.LBB5_12:                               # %if.end.9
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB5_29
# BB#13:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	jne	.LBB5_29
# BB#14:                                # %if.then.14
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-56(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	memset@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	movq	152(%rdx), %rdx
	movq	%rdx, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.16
	movl	$0, -76(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.17
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.20
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.23
	movl	$1, -76(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.24
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB5_20:                               # %if.end.26
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.27
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_27
# BB#22:                                # %if.then.29
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB5_26
# BB#23:                                # %land.lhs.true.33
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	je	.LBB5_26
# BB#24:                                # %land.lhs.true.37
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	cmpq	$0, %rax
	je	.LBB5_26
# BB#25:                                # %if.then.42
	leaq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_object_get_property@PLT
	leaq	-56(%rbp), %rdi
	callq	g_value_get_object@PLT
	movq	%rax, %rdi
	callq	gimp_config_reset@PLT
	leaq	-56(%rbp), %rdi
	callq	g_value_unset@PLT
.LBB5_26:                               # %if.end.46
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.47
	leaq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_param_value_set_default@PLT
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_set_property@PLT
	leaq	-56(%rbp), %rdi
	callq	g_value_unset@PLT
.LBB5_28:                               # %if.end.51
	jmp	.LBB5_29
.LBB5_29:                               # %if.end.52
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_config_reset_property, .Lfunc_end5-gimp_config_reset_property
	.cfi_endproc

	.globl	gimp_config_string_append_escaped
	.align	16, 0x90
	.type	gimp_config_string_append_escaped,@function
gimp_config_string_append_escaped:      # @gimp_config_string_append_escaped
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_string_append_escaped(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_25
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB6_24
# BB#6:                                 # %if.then.1
	movl	$34, %esi
	movl	.Lgimp_config_string_append_escaped.buf(%rip), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -32(%rbp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB6_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB6_23
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$32, %ecx
	jl	.LBB6_11
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB6_11
# BB#10:                                # %lor.lhs.false.8
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB6_20
.LBB6_11:                               # %if.then.12
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-32(%rbp), %rdx
	callq	g_string_append_len@PLT
	movl	$2, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %ecx
	movl	%ecx, %r8d
	subl	$8, %r8d
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	je	.LBB6_12
	jmp	.LBB6_26
.LBB6_26:                               # %if.then.12
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB6_16
	jmp	.LBB6_27
.LBB6_27:                               # %if.then.12
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB6_14
	jmp	.LBB6_28
.LBB6_28:                               # %if.then.12
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$12, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB6_13
	jmp	.LBB6_29
.LBB6_29:                               # %if.then.12
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB6_15
	jmp	.LBB6_30
.LBB6_30:                               # %if.then.12
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$34, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB6_17
	jmp	.LBB6_31
.LBB6_31:                               # %if.then.12
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB6_17
	jmp	.LBB6_18
.LBB6_12:                               # %sw.bb
                                        #   in Loop: Header=BB6_7 Depth=1
	movb	$98, -27(%rbp)
	jmp	.LBB6_19
.LBB6_13:                               # %sw.bb.16
                                        #   in Loop: Header=BB6_7 Depth=1
	movb	$102, -27(%rbp)
	jmp	.LBB6_19
.LBB6_14:                               # %sw.bb.18
                                        #   in Loop: Header=BB6_7 Depth=1
	movb	$110, -27(%rbp)
	jmp	.LBB6_19
.LBB6_15:                               # %sw.bb.20
                                        #   in Loop: Header=BB6_7 Depth=1
	movb	$114, -27(%rbp)
	jmp	.LBB6_19
.LBB6_16:                               # %sw.bb.22
                                        #   in Loop: Header=BB6_7 Depth=1
	movb	$116, -27(%rbp)
	jmp	.LBB6_19
.LBB6_17:                               # %sw.bb.24
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -27(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %sw.default
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$4, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	sarl	$6, %ecx
	andl	$7, %ecx
	addl	$48, %ecx
	movb	%cl, %dl
	movb	%dl, -27(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	sarl	$3, %ecx
	andl	$7, %ecx
	addl	$48, %ecx
	movb	%cl, %dl
	movb	%dl, -26(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$7, %ecx
	addl	$48, %ecx
	movb	%cl, %dl
	movb	%dl, -25(%rbp)
.LBB6_19:                               # %sw.epilog
                                        #   in Loop: Header=BB6_7 Depth=1
	leaq	-28(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movslq	-32(%rbp), %rdx
	callq	g_string_append_len@PLT
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movl	$0, -32(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.42
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB6_21:                               # %if.end.43
                                        #   in Loop: Header=BB6_7 Depth=1
	jmp	.LBB6_22
.LBB6_22:                               # %for.inc
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_7
.LBB6_23:                               # %for.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-32(%rbp), %rdx
	callq	g_string_append_len@PLT
	movl	$34, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_24:                               # %if.else.47
	leaq	.L.str.8(%rip), %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	g_string_append_len@PLT
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB6_25:                               # %if.end.49
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_config_string_append_escaped, .Lfunc_end6-gimp_config_string_append_escaped
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB7_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB7_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_string_append_c_inline, .Lfunc_end7-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_diff_property,@function
gimp_config_diff_property:              # @gimp_config_diff_property
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
	subq	$176, %rsp
	leaq	-48(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$24, %r8d
	movl	%r8d, %r9d
	leaq	-72(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, -120(%rbp)        # 8-byte Spill
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	memset@PLT
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	memset@PLT
	movl	$0, -76(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init@PLT
	leaq	-72(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_value_init@PLT
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_object_get_property@PLT
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_get_property@PLT
	leaq	-48(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	g_param_values_cmp@PLT
	cmpl	$0, %eax
	je	.LBB8_16
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	je	.LBB8_14
# BB#2:                                 # %land.lhs.true
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.8
	movl	$0, -100(%rbp)
	jmp	.LBB8_9
.LBB8_4:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_7
# BB#5:                                 # %land.lhs.true.10
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB8_7
# BB#6:                                 # %if.then.12
	movl	$1, -100(%rbp)
	jmp	.LBB8_8
.LBB8_7:                                # %if.else.13
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB8_8:                                # %if.end
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.15
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB8_14
# BB#10:                                # %land.lhs.true.17
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	cmpq	$0, %rax
	je	.LBB8_14
# BB#11:                                # %if.then.23
	leaq	-48(%rbp), %rdi
	callq	g_value_get_object@PLT
	leaq	-72(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_value_get_object@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_is_equal_to@PLT
	cmpl	$0, %eax
	jne	.LBB8_13
# BB#12:                                # %if.then.28
	movl	$1, -76(%rbp)
.LBB8_13:                               # %if.end.29
	jmp	.LBB8_15
.LBB8_14:                               # %if.else.30
	movl	$1, -76(%rbp)
.LBB8_15:                               # %if.end.31
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.32
	leaq	-48(%rbp), %rdi
	callq	g_value_unset@PLT
	leaq	-72(%rbp), %rdi
	callq	g_value_unset@PLT
	movl	-76(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_config_diff_property, .Lfunc_end8-gimp_config_diff_property
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpConfig"
	.size	.L.str, 14

	.type	.L__func__.gimp_config_diff,@object # @__func__.gimp_config_diff
.L__func__.gimp_config_diff:
	.asciz	"gimp_config_diff"
	.size	.L__func__.gimp_config_diff, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"G_IS_OBJECT (a)"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"G_IS_OBJECT (b)"
	.size	.L.str.2, 16

	.type	.L__func__.gimp_config_sync,@object # @__func__.gimp_config_sync
.L__func__.gimp_config_sync:
	.asciz	"gimp_config_sync"
	.size	.L__func__.gimp_config_sync, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"G_IS_OBJECT (src)"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"G_IS_OBJECT (dest)"
	.size	.L.str.4, 19

	.type	.L__func__.gimp_config_reset_properties,@object # @__func__.gimp_config_reset_properties
.L__func__.gimp_config_reset_properties:
	.asciz	"gimp_config_reset_properties"
	.size	.L__func__.gimp_config_reset_properties, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"G_IS_OBJECT (object)"
	.size	.L.str.5, 21

	.type	.L__func__.gimp_config_reset_property,@object # @__func__.gimp_config_reset_property
.L__func__.gimp_config_reset_property:
	.asciz	"gimp_config_reset_property"
	.size	.L__func__.gimp_config_reset_property, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"property_name != NULL"
	.size	.L.str.6, 22

	.type	.L__func__.gimp_config_string_append_escaped,@object # @__func__.gimp_config_string_append_escaped
.L__func__.gimp_config_string_append_escaped:
	.asciz	"gimp_config_string_append_escaped"
	.size	.L__func__.gimp_config_string_append_escaped, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"string != NULL"
	.size	.L.str.7, 15

	.type	.Lgimp_config_string_append_escaped.buf,@object # @gimp_config_string_append_escaped.buf
	.section	.rodata.cst4,"aM",@progbits,4
.Lgimp_config_string_append_escaped.buf:
	.asciz	"\\\000\000"
	.size	.Lgimp_config_string_append_escaped.buf, 4

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"\"\""
	.size	.L.str.8, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
