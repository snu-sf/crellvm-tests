	.text
	.file	"gimpplugin-progress.bc"
	.globl	gimp_plug_in_progress_attach
	.align	16, 0x90
	.type	gimp_plug_in_progress_attach,@function
gimp_plug_in_progress_attach:           # @gimp_plug_in_progress_attach
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_attach, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movslq	-20(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	-20(%rbp), %r8d
	movl	%r8d, -4(%rbp)
.LBB0_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_progress_attach, .Lfunc_end0-gimp_plug_in_progress_attach
	.cfi_endproc

	.globl	gimp_plug_in_progress_detach
	.align	16, 0x90
	.type	gimp_plug_in_progress_detach,@function
gimp_plug_in_progress_detach:           # @gimp_plug_in_progress_detach
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_detach, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_13
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movslq	-20(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	-20(%rbp), %r8d
	movl	%r8d, -4(%rbp)
.LBB1_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_progress_detach, .Lfunc_end1-gimp_plug_in_progress_detach
	.cfi_endproc

	.globl	gimp_plug_in_progress_start
	.align	16, 0x90
	.type	gimp_plug_in_progress_start,@function
gimp_plug_in_progress_start:            # @gimp_plug_in_progress_start
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_start, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_43
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB2_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB2_21
.LBB2_16:                               # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB2_20:                               # %if.end.32
	jmp	.LBB2_21
.LBB2_21:                               # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB2_23
.LBB2_22:                               # %if.then.36
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_start, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_43
.LBB2_24:                               # %if.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.end.39
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	.LBB2_29
# BB#26:                                # %if.then.42
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_new_progress
	movq	-32(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB2_28
# BB#27:                                # %if.then.47
	movq	-32(%rbp), %rax
	movl	$1, 56(%rax)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-32(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_progress_attach
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB2_28:                               # %if.end.52
	jmp	.LBB2_29
.LBB2_29:                               # %if.end.53
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB2_43
# BB#30:                                # %if.then.56
	movq	-32(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB2_32
# BB#31:                                # %if.then.58
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	addq	$48, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_plug_in_progress_cancel_callback, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
.LBB2_32:                               # %if.end.65
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_is_active
	cmpl	$0, %eax
	je	.LBB2_38
# BB#33:                                # %if.then.69
	cmpq	$0, -16(%rbp)
	je	.LBB2_35
# BB#34:                                # %if.then.71
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_progress_set_text
.LBB2_35:                               # %if.end.73
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_get_value
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_37
# BB#36:                                # %if.then.77
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_set_value
.LBB2_37:                               # %if.end.79
	jmp	.LBB2_42
.LBB2_38:                               # %if.else.80
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	cmpq	$0, -16(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	je	.LBB2_40
# BB#39:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB2_41
.LBB2_40:                               # %cond.false
	movabsq	$.L.str.6, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB2_41
.LBB2_41:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	$1, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB2_42:                               # %if.end.84
	jmp	.LBB2_43
.LBB2_43:                               # %if.end.85
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_progress_start, .Lfunc_end2-gimp_plug_in_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_progress_cancel_callback,@function
gimp_plug_in_progress_cancel_callback:  # @gimp_plug_in_progress_cancel_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$632, %rsi              # imm = 0x278
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 32(%rsi)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	get_cancel_return_values
	movq	-24(%rbp), %rdi
	movq	%rax, 40(%rdi)
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	get_cancel_return_values
	movq	-24(%rbp), %rdi
	movq	%rax, 40(%rdi)
.LBB3_6:                                # %if.end.8
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB3_10
.LBB3_9:                                # %cond.false
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB3_10
.LBB3_10:                               # %cond.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB3_3
.LBB3_11:                               # %for.end
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_close
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_progress_cancel_callback, .Lfunc_end3-gimp_plug_in_progress_cancel_callback
	.cfi_endproc

	.globl	gimp_plug_in_progress_end
	.align	16, 0x90
	.type	gimp_plug_in_progress_end,@function
gimp_plug_in_progress_end:              # @gimp_plug_in_progress_end
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_end, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_26
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_end, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_26
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB4_26
# BB#18:                                # %if.then.18
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB4_20
# BB#19:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	addq	$48, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
.LBB4_20:                               # %if.end.27
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_plug_in_progress_detach
	cmpl	$1, %eax
	jge	.LBB4_23
# BB#21:                                # %land.lhs.true.31
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_is_active
	cmpl	$0, %eax
	je	.LBB4_23
# BB#22:                                # %if.then.35
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_end
.LBB4_23:                               # %if.end.37
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_25
# BB#24:                                # %if.then.39
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	callq	gimp_free_progress
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB4_25:                               # %if.end.43
	jmp	.LBB4_26
.LBB4_26:                               # %if.end.44
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_progress_end, .Lfunc_end4-gimp_plug_in_progress_end
	.cfi_endproc

	.globl	gimp_plug_in_progress_set_text
	.align	16, 0x90
	.type	gimp_plug_in_progress_set_text,@function
gimp_plug_in_progress_set_text:         # @gimp_plug_in_progress_set_text
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_set_text, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_progress_set_text
.LBB5_14:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plug_in_progress_set_text, .Lfunc_end5-gimp_plug_in_progress_set_text
	.cfi_endproc

	.globl	gimp_plug_in_progress_set_value
	.align	16, 0x90
	.type	gimp_plug_in_progress_set_value,@function
gimp_plug_in_progress_set_value:        # @gimp_plug_in_progress_set_value
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_set_value, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_19
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB6_15
# BB#13:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_is_active
	cmpl	$0, %eax
	je	.LBB6_15
# BB#14:                                # %lor.lhs.false.16
	movq	-24(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB6_16
.LBB6_15:                               # %if.then.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_plug_in_progress_start
.LBB6_16:                               # %if.end.19
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.22
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_is_active
	cmpl	$0, %eax
	je	.LBB6_19
# BB#18:                                # %if.then.26
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_set_value
.LBB6_19:                               # %if.end.28
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_plug_in_progress_set_value, .Lfunc_end6-gimp_plug_in_progress_set_value
	.cfi_endproc

	.globl	gimp_plug_in_progress_pulse
	.align	16, 0x90
	.type	gimp_plug_in_progress_pulse,@function
gimp_plug_in_progress_pulse:            # @gimp_plug_in_progress_pulse
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_pulse, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_19
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_15
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_is_active
	cmpl	$0, %eax
	je	.LBB7_15
# BB#14:                                # %lor.lhs.false.16
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB7_16
.LBB7_15:                               # %if.then.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_plug_in_progress_start
.LBB7_16:                               # %if.end.19
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_19
# BB#17:                                # %land.lhs.true.22
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_is_active
	cmpl	$0, %eax
	je	.LBB7_19
# BB#18:                                # %if.then.26
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_pulse
.LBB7_19:                               # %if.end.28
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_plug_in_progress_pulse, .Lfunc_end7-gimp_plug_in_progress_pulse
	.cfi_endproc

	.globl	gimp_plug_in_progress_get_window_id
	.align	16, 0x90
	.type	gimp_plug_in_progress_get_window_id,@function
gimp_plug_in_progress_get_window_id:    # @gimp_plug_in_progress_get_window_id
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_get_window_id, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB8_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_progress_get_window_id
	movl	%eax, -4(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.end.16
	movl	$0, -4(%rbp)
.LBB8_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_plug_in_progress_get_window_id, .Lfunc_end8-gimp_plug_in_progress_get_window_id
	.cfi_endproc

	.globl	gimp_plug_in_progress_install
	.align	16, 0x90
	.type	gimp_plug_in_progress_install,@function
gimp_plug_in_progress_install:          # @gimp_plug_in_progress_install
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
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
	movabsq	$.L__func__.gimp_plug_in_progress_install, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_57
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_install, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_57
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_temporary_procedure_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB9_19
# BB#18:                                # %if.then.26
	movl	$0, -84(%rbp)
	jmp	.LBB9_24
.LBB9_19:                               # %if.else.27
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_22
# BB#20:                                # %land.lhs.true.30
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB9_22
# BB#21:                                # %if.then.34
	movl	$1, -84(%rbp)
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.35
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %if.end.38
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB9_51
# BB#25:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_temporary_procedure_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	288(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB9_51
# BB#26:                                # %lor.lhs.false.45
	movq	-40(%rbp), %rax
	cmpl	$3, 96(%rax)
	jne	.LBB9_51
# BB#27:                                # %lor.lhs.false.47
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB9_29
# BB#28:                                # %if.then.56
	movl	$0, -108(%rbp)
	jmp	.LBB9_34
.LBB9_29:                               # %if.else.57
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_32
# BB#30:                                # %land.lhs.true.60
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_32
# BB#31:                                # %if.then.64
	movl	$1, -108(%rbp)
	jmp	.LBB9_33
.LBB9_32:                               # %if.else.65
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB9_33:                               # %if.end.67
	jmp	.LBB9_34
.LBB9_34:                               # %if.end.68
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB9_51
# BB#35:                                # %lor.lhs.false.71
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB9_37
# BB#36:                                # %if.then.82
	movl	$0, -132(%rbp)
	jmp	.LBB9_42
.LBB9_37:                               # %if.else.83
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_40
# BB#38:                                # %land.lhs.true.86
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB9_40
# BB#39:                                # %if.then.90
	movl	$1, -132(%rbp)
	jmp	.LBB9_41
.LBB9_40:                               # %if.else.91
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB9_41:                               # %if.end.93
	jmp	.LBB9_42
.LBB9_42:                               # %if.end.94
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB9_51
# BB#43:                                # %lor.lhs.false.97
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB9_45
# BB#44:                                # %if.then.108
	movl	$0, -156(%rbp)
	jmp	.LBB9_50
.LBB9_45:                               # %if.else.109
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_48
# BB#46:                                # %land.lhs.true.112
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_48
# BB#47:                                # %if.then.116
	movl	$1, -156(%rbp)
	jmp	.LBB9_49
.LBB9_48:                               # %if.else.117
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB9_49:                               # %if.end.119
	jmp	.LBB9_50
.LBB9_50:                               # %if.end.120
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	jne	.LBB9_52
.LBB9_51:                               # %if.then.123
	movl	$0, -4(%rbp)
	jmp	.LBB9_57
.LBB9_52:                               # %if.end.124
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB9_56
# BB#53:                                # %if.then.127
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_plug_in_progress_end
	movq	-32(%rbp), %rsi
	cmpq	$0, 48(%rsi)
	je	.LBB9_55
# BB#54:                                # %if.then.130
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	$0, 48(%rax)
.LBB9_55:                               # %if.end.133
	jmp	.LBB9_56
.LBB9_56:                               # %if.end.134
	callq	gimp_pdb_progress_get_type
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %r8
	movq	32(%r8), %r8
	movq	32(%r8), %r8
	movq	520(%r8), %rdx
	movq	-32(%rbp), %r8
	movq	8(%r8), %r8
	movq	-24(%rbp), %r10
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	-32(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_plug_in_progress_attach
	movl	$1, -4(%rbp)
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB9_57:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_plug_in_progress_install, .Lfunc_end9-gimp_plug_in_progress_install
	.cfi_endproc

	.globl	gimp_plug_in_progress_uninstall
	.align	16, 0x90
	.type	gimp_plug_in_progress_uninstall,@function
gimp_plug_in_progress_uninstall:        # @gimp_plug_in_progress_uninstall
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_uninstall, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_27
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_uninstall, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_27
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_pdb_progress_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_19
# BB#18:                                # %if.then.26
	movl	$0, -76(%rbp)
	jmp	.LBB10_24
.LBB10_19:                              # %if.else.27
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_22
# BB#20:                                # %land.lhs.true.30
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB10_22
# BB#21:                                # %if.then.34
	movl	$1, -76(%rbp)
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.35
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %if.end.38
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB10_26
# BB#25:                                # %if.then.41
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_plug_in_progress_end
	movq	-32(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rsi
	movq	$0, 48(%rsi)
	movl	$1, -4(%rbp)
	jmp	.LBB10_27
.LBB10_26:                              # %if.end.44
	movl	$0, -4(%rbp)
.LBB10_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_plug_in_progress_uninstall, .Lfunc_end10-gimp_plug_in_progress_uninstall
	.cfi_endproc

	.globl	gimp_plug_in_progress_cancel
	.align	16, 0x90
	.type	gimp_plug_in_progress_cancel,@function
gimp_plug_in_progress_cancel:           # @gimp_plug_in_progress_cancel
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_get_type
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
	movabsq	$.L__func__.gimp_plug_in_progress_cancel, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_18
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_progress_cancel, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_18
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	movl	$0, -4(%rbp)
.LBB11_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_plug_in_progress_cancel, .Lfunc_end11-gimp_plug_in_progress_cancel
	.cfi_endproc

	.align	16, 0x90
	.type	get_cancel_return_values,@function
get_cancel_return_values:               # @get_cancel_return_values
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
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.12, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	-28(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rdx
	callq	g_error_new_literal
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_error_free
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	get_cancel_return_values, .Lfunc_end12-get_cancel_return_values
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_progress_attach,@object # @__func__.gimp_plug_in_progress_attach
.L__func__.gimp_plug_in_progress_attach:
	.asciz	"gimp_plug_in_progress_attach"
	.size	.L__func__.gimp_plug_in_progress_attach, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PROGRESS (progress)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"plug-in-progress-attach-count"
	.size	.L.str.2, 30

	.type	.L__func__.gimp_plug_in_progress_detach,@object # @__func__.gimp_plug_in_progress_detach
.L__func__.gimp_plug_in_progress_detach:
	.asciz	"gimp_plug_in_progress_detach"
	.size	.L__func__.gimp_plug_in_progress_detach, 29

	.type	.L__func__.gimp_plug_in_progress_start,@object # @__func__.gimp_plug_in_progress_start
.L__func__.gimp_plug_in_progress_start:
	.asciz	"gimp_plug_in_progress_start"
	.size	.L__func__.gimp_plug_in_progress_start, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_PLUG_IN (plug_in)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"display == NULL || GIMP_IS_OBJECT (display)"
	.size	.L.str.4, 44

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"cancel"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L__func__.gimp_plug_in_progress_end,@object # @__func__.gimp_plug_in_progress_end
.L__func__.gimp_plug_in_progress_end:
	.asciz	"gimp_plug_in_progress_end"
	.size	.L__func__.gimp_plug_in_progress_end, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"proc_frame != NULL"
	.size	.L.str.7, 19

	.type	.L__func__.gimp_plug_in_progress_set_text,@object # @__func__.gimp_plug_in_progress_set_text
.L__func__.gimp_plug_in_progress_set_text:
	.asciz	"gimp_plug_in_progress_set_text"
	.size	.L__func__.gimp_plug_in_progress_set_text, 31

	.type	.L__func__.gimp_plug_in_progress_set_value,@object # @__func__.gimp_plug_in_progress_set_value
.L__func__.gimp_plug_in_progress_set_value:
	.asciz	"gimp_plug_in_progress_set_value"
	.size	.L__func__.gimp_plug_in_progress_set_value, 32

	.type	.L__func__.gimp_plug_in_progress_pulse,@object # @__func__.gimp_plug_in_progress_pulse
.L__func__.gimp_plug_in_progress_pulse:
	.asciz	"gimp_plug_in_progress_pulse"
	.size	.L__func__.gimp_plug_in_progress_pulse, 28

	.type	.L__func__.gimp_plug_in_progress_get_window_id,@object # @__func__.gimp_plug_in_progress_get_window_id
.L__func__.gimp_plug_in_progress_get_window_id:
	.asciz	"gimp_plug_in_progress_get_window_id"
	.size	.L__func__.gimp_plug_in_progress_get_window_id, 36

	.type	.L__func__.gimp_plug_in_progress_install,@object # @__func__.gimp_plug_in_progress_install
.L__func__.gimp_plug_in_progress_install:
	.asciz	"gimp_plug_in_progress_install"
	.size	.L__func__.gimp_plug_in_progress_install, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"progress_callback != NULL"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"pdb"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"context"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"callback-name"
	.size	.L.str.11, 14

	.type	.L__func__.gimp_plug_in_progress_uninstall,@object # @__func__.gimp_plug_in_progress_uninstall
.L__func__.gimp_plug_in_progress_uninstall:
	.asciz	"gimp_plug_in_progress_uninstall"
	.size	.L__func__.gimp_plug_in_progress_uninstall, 32

	.type	.L__func__.gimp_plug_in_progress_cancel,@object # @__func__.gimp_plug_in_progress_cancel
.L__func__.gimp_plug_in_progress_cancel:
	.asciz	"gimp_plug_in_progress_cancel"
	.size	.L__func__.gimp_plug_in_progress_cancel, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Cancelled"
	.size	.L.str.12, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
