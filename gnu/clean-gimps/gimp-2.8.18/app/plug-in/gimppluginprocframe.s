	.text
	.file	"gimppluginprocframe.bc"
	.globl	gimp_plug_in_proc_frame_new
	.align	16, 0x90
	.type	gimp_plug_in_proc_frame_new,@function
gimp_plug_in_proc_frame_new:            # @gimp_plug_in_proc_frame_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_38
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_38
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.40
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -108(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -108(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_38
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	movl	$96, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_plug_in_proc_frame_init
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_38:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_proc_frame_new, .Lfunc_end0-gimp_plug_in_proc_frame_new
	.cfi_endproc

	.globl	gimp_plug_in_proc_frame_init
	.align	16, 0x90
	.type	gimp_plug_in_proc_frame_init,@function
gimp_plug_in_proc_frame_init:           # @gimp_plug_in_proc_frame_init
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_init, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_51
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.2
	movl	$0, -52(%rbp)
	jmp	.LBB1_13
.LBB1_8:                                # %if.else.3
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_11
# BB#9:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_11
# BB#10:                                # %if.then.7
	movl	$1, -52(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB1_12:                               # %if.end.10
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.11
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_51
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB1_27
# BB#19:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.27
	movl	$0, -76(%rbp)
	jmp	.LBB1_26
.LBB1_21:                               # %if.else.28
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_24
# BB#22:                                # %land.lhs.true.31
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB1_24
# BB#23:                                # %if.then.35
	movl	$1, -76(%rbp)
	jmp	.LBB1_25
.LBB1_24:                               # %if.else.36
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB1_25:                               # %if.end.38
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.39
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB1_28
.LBB1_27:                               # %if.then.42
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_51
.LBB1_29:                               # %if.end.44
	jmp	.LBB1_30
.LBB1_30:                               # %do.end.45
	jmp	.LBB1_31
.LBB1_31:                               # %do.body.46
	cmpq	$0, -32(%rbp)
	je	.LBB1_40
# BB#32:                                # %lor.lhs.false.48
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_34
# BB#33:                                # %if.then.57
	movl	$0, -100(%rbp)
	jmp	.LBB1_39
.LBB1_34:                               # %if.else.58
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_37
# BB#35:                                # %land.lhs.true.61
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB1_37
# BB#36:                                # %if.then.65
	movl	$1, -100(%rbp)
	jmp	.LBB1_38
.LBB1_37:                               # %if.else.66
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB1_38:                               # %if.end.68
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.69
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB1_41
.LBB1_40:                               # %if.then.72
	jmp	.LBB1_42
.LBB1_41:                               # %if.else.73
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_init, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_51
.LBB1_42:                               # %if.end.74
	jmp	.LBB1_43
.LBB1_43:                               # %do.end.75
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -32(%rbp)
	je	.LBB1_45
# BB#44:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_46
.LBB1_45:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_46
.LBB1_46:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB1_48
# BB#47:                                # %cond.true.81
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_49
.LBB1_48:                               # %cond.false.83
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_49
.LBB1_49:                               # %cond.end.84
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 72(%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB1_51
# BB#50:                                # %if.then.88
	movq	-24(%rbp), %rdi
	callq	gimp_plug_in_progress_attach
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_51:                               # %if.end.90
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_proc_frame_init, .Lfunc_end1-gimp_plug_in_proc_frame_init
	.cfi_endproc

	.globl	gimp_plug_in_proc_frame_dispose
	.align	16, 0x90
	.type	gimp_plug_in_proc_frame_dispose,@function
gimp_plug_in_proc_frame_dispose:        # @gimp_plug_in_proc_frame_dispose
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_dispose, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_34
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_8
# BB#7:                                 # %if.then.2
	movl	$0, -36(%rbp)
	jmp	.LBB2_13
.LBB2_8:                                # %if.else.3
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_11
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_11
# BB#10:                                # %if.then.7
	movl	$1, -36(%rbp)
	jmp	.LBB2_12
.LBB2_11:                               # %if.else.8
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB2_12:                               # %if.end.10
	jmp	.LBB2_13
.LBB2_13:                               # %if.end.11
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_dispose, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_34
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB2_21
# BB#18:                                # %if.then.18
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_plug_in_progress_end
	movq	-8(%rbp), %rsi
	cmpq	$0, 48(%rsi)
	je	.LBB2_20
# BB#19:                                # %if.then.21
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.LBB2_20:                               # %if.end.24
	jmp	.LBB2_21
.LBB2_21:                               # %if.end.25
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_23
# BB#22:                                # %if.then.27
	movabsq	$g_object_unref, %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_free_full
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBB2_23:                               # %if.end.30
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_25
# BB#24:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.LBB2_25:                               # %if.end.35
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB2_27
# BB#26:                                # %if.then.37
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_value_array_free
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
.LBB2_27:                               # %if.end.40
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB2_29
# BB#28:                                # %if.then.42
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_main_loop_unref
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.LBB2_29:                               # %if.end.45
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB2_31
# BB#30:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB2_32
.LBB2_31:                               # %if.then.48
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_plug_in_cleanup
.LBB2_32:                               # %if.end.49
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_34
# BB#33:                                # %if.then.51
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
.LBB2_34:                               # %if.end.54
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_proc_frame_dispose, .Lfunc_end2-gimp_plug_in_proc_frame_dispose
	.cfi_endproc

	.globl	gimp_plug_in_proc_frame_ref
	.align	16, 0x90
	.type	gimp_plug_in_proc_frame_ref,@function
gimp_plug_in_proc_frame_ref:            # @gimp_plug_in_proc_frame_ref
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_ref, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_proc_frame_ref, .Lfunc_end3-gimp_plug_in_proc_frame_ref
	.cfi_endproc

	.globl	gimp_plug_in_proc_frame_unref
	.align	16, 0x90
	.type	gimp_plug_in_proc_frame_unref,@function
gimp_plug_in_proc_frame_unref:          # @gimp_plug_in_proc_frame_unref
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
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_unref, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_21
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_8
# BB#7:                                 # %if.then.2
	movl	$0, -36(%rbp)
	jmp	.LBB4_13
.LBB4_8:                                # %if.else.3
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_11
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_11
# BB#10:                                # %if.then.7
	movl	$1, -36(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.8
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_12:                               # %if.end.10
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.11
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_unref, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_21
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jge	.LBB4_21
# BB#18:                                # %if.then.19
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_plug_in_proc_frame_dispose
# BB#19:                                # %do.body.20
	movl	$96, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#20:                                # %do.end.21
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.22
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_proc_frame_unref, .Lfunc_end4-gimp_plug_in_proc_frame_unref
	.cfi_endproc

	.globl	gimp_plug_in_proc_frame_get_return_values
	.align	16, 0x90
	.type	gimp_plug_in_proc_frame_get_return_values,@function
gimp_plug_in_proc_frame_get_return_values: # @gimp_plug_in_proc_frame_get_return_values
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_get_return_values, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_12
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_10
# BB#6:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	112(%rax), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jb	.LBB5_8
# BB#7:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.7
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdx
	movl	(%rdx), %esi
	movl	%esi, %edx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_value_array_free
.LBB5_9:                                # %if.end.20
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.22
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movl	$4, %esi
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_error_new
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_error_free
.LBB5_11:                               # %if.end.30
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plug_in_proc_frame_get_return_values, .Lfunc_end5-gimp_plug_in_proc_frame_get_return_values
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_proc_frame_new,@object # @__func__.gimp_plug_in_proc_frame_new
.L__func__.gimp_plug_in_proc_frame_new:
	.asciz	"gimp_plug_in_proc_frame_new"
	.size	.L__func__.gimp_plug_in_proc_frame_new, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PDB_CONTEXT (context)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_PLUG_IN_PROCEDURE (procedure)"
	.size	.L.str.3, 38

	.type	.L__func__.gimp_plug_in_proc_frame_init,@object # @__func__.gimp_plug_in_proc_frame_init
.L__func__.gimp_plug_in_proc_frame_init:
	.asciz	"gimp_plug_in_proc_frame_init"
	.size	.L__func__.gimp_plug_in_proc_frame_init, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"proc_frame != NULL"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"procedure == NULL || GIMP_IS_PLUG_IN_PROCEDURE (procedure)"
	.size	.L.str.5, 59

	.type	.L__func__.gimp_plug_in_proc_frame_dispose,@object # @__func__.gimp_plug_in_proc_frame_dispose
.L__func__.gimp_plug_in_proc_frame_dispose:
	.asciz	"gimp_plug_in_proc_frame_dispose"
	.size	.L__func__.gimp_plug_in_proc_frame_dispose, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_PLUG_IN (plug_in)"
	.size	.L.str.6, 26

	.type	.L__func__.gimp_plug_in_proc_frame_ref,@object # @__func__.gimp_plug_in_proc_frame_ref
.L__func__.gimp_plug_in_proc_frame_ref:
	.asciz	"gimp_plug_in_proc_frame_ref"
	.size	.L__func__.gimp_plug_in_proc_frame_ref, 28

	.type	.L__func__.gimp_plug_in_proc_frame_unref,@object # @__func__.gimp_plug_in_proc_frame_unref
.L__func__.gimp_plug_in_proc_frame_unref:
	.asciz	"gimp_plug_in_proc_frame_unref"
	.size	.L__func__.gimp_plug_in_proc_frame_unref, 30

	.type	.L__func__.gimp_plug_in_proc_frame_get_return_values,@object # @__func__.gimp_plug_in_proc_frame_get_return_values
.L__func__.gimp_plug_in_proc_frame_get_return_values:
	.asciz	"gimp_plug_in_proc_frame_get_return_values"
	.size	.L__func__.gimp_plug_in_proc_frame_get_return_values, 42

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Procedure '%s' returned no return values"
	.size	.L.str.7, 41


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
