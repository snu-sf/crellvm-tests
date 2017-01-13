	.text
	.file	"gimppluginmanager-file.bc"
	.globl	gimp_plug_in_manager_register_load_handler
	.align	16, 0x90
	.type	gimp_plug_in_manager_register_load_handler,@function
gimp_plug_in_manager_register_load_handler: # @gimp_plug_in_manager_register_load_handler
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_register_load_handler, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_61
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_register_load_handler, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_61
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB0_20
# BB#18:                                # %land.lhs.true.18
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$0, 736(%rax)
	je	.LBB0_20
# BB#19:                                # %if.then.21
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	736(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.24
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB0_21:                               # %if.end.25
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_procedure_find
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_23
# BB#22:                                # %if.then.28
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.3, %rcx
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %r8
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB0_61
.LBB0_23:                               # %if.end.29
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$3, 96(%rax)
	jl	.LBB0_57
# BB#24:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpl	$1, 112(%rax)
	jl	.LBB0_57
# BB#25:                                # %lor.lhs.false.34
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.43
	movl	$0, -116(%rbp)
	jmp	.LBB0_32
.LBB0_27:                               # %if.else.44
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_30
# BB#28:                                # %land.lhs.true.47
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_30
# BB#29:                                # %if.then.51
	movl	$1, -116(%rbp)
	jmp	.LBB0_31
.LBB0_30:                               # %if.else.52
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_31:                               # %if.end.54
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.55
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_57
# BB#33:                                # %lor.lhs.false.58
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_35
# BB#34:                                # %if.then.69
	movl	$0, -140(%rbp)
	jmp	.LBB0_40
.LBB0_35:                               # %if.else.70
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_38
# BB#36:                                # %land.lhs.true.73
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_38
# BB#37:                                # %if.then.77
	movl	$1, -140(%rbp)
	jmp	.LBB0_39
.LBB0_38:                               # %if.else.78
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_39:                               # %if.end.80
	jmp	.LBB0_40
.LBB0_40:                               # %if.end.81
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_57
# BB#41:                                # %lor.lhs.false.84
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB0_43
# BB#42:                                # %if.then.95
	movl	$0, -164(%rbp)
	jmp	.LBB0_48
.LBB0_43:                               # %if.else.96
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_46
# BB#44:                                # %land.lhs.true.99
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB0_46
# BB#45:                                # %if.then.103
	movl	$1, -164(%rbp)
	jmp	.LBB0_47
.LBB0_46:                               # %if.else.104
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB0_47:                               # %if.end.106
	jmp	.LBB0_48
.LBB0_48:                               # %if.end.107
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB0_57
# BB#49:                                # %lor.lhs.false.110
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB0_51
# BB#50:                                # %if.then.120
	movl	$0, -188(%rbp)
	jmp	.LBB0_56
.LBB0_51:                               # %if.else.121
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_54
# BB#52:                                # %land.lhs.true.124
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB0_54
# BB#53:                                # %if.then.128
	movl	$1, -188(%rbp)
	jmp	.LBB0_55
.LBB0_54:                               # %if.else.129
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB0_55:                               # %if.end.131
	jmp	.LBB0_56
.LBB0_56:                               # %if.end.132
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	jne	.LBB0_58
.LBB0_57:                               # %if.then.135
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.4, %rcx
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %r8
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB0_61
.LBB0_58:                               # %if.end.137
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	gimp_plug_in_procedure_set_file_proc
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	jne	.LBB0_60
# BB#59:                                # %if.then.140
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, 64(%rsi)
.LBB0_60:                               # %if.end.144
	movl	$1, -4(%rbp)
.LBB0_61:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_manager_register_load_handler, .Lfunc_end0-gimp_plug_in_manager_register_load_handler
	.cfi_endproc

	.globl	gimp_plug_in_manager_register_save_handler
	.align	16, 0x90
	.type	gimp_plug_in_manager_register_save_handler,@function
gimp_plug_in_manager_register_save_handler: # @gimp_plug_in_manager_register_save_handler
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_register_save_handler, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_74
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
	movabsq	$.L__func__.gimp_plug_in_manager_register_save_handler, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_74
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB1_20
# BB#18:                                # %land.lhs.true.18
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$0, 736(%rax)
	je	.LBB1_20
# BB#19:                                # %if.then.21
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	736(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.24
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB1_21:                               # %if.end.25
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_procedure_find
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_23
# BB#22:                                # %if.then.28
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.5, %rcx
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %r8
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB1_74
.LBB1_23:                               # %if.end.29
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$5, 96(%rax)
	jl	.LBB1_64
# BB#24:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.41
	movl	$0, -108(%rbp)
	jmp	.LBB1_31
.LBB1_26:                               # %if.else.42
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_29
# BB#27:                                # %land.lhs.true.45
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB1_29
# BB#28:                                # %if.then.49
	movl	$1, -108(%rbp)
	jmp	.LBB1_30
.LBB1_29:                               # %if.else.50
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB1_30:                               # %if.end.52
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.53
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB1_64
# BB#32:                                # %lor.lhs.false.56
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB1_34
# BB#33:                                # %if.then.67
	movl	$0, -132(%rbp)
	jmp	.LBB1_39
.LBB1_34:                               # %if.else.68
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_37
# BB#35:                                # %land.lhs.true.71
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB1_37
# BB#36:                                # %if.then.75
	movl	$1, -132(%rbp)
	jmp	.LBB1_38
.LBB1_37:                               # %if.else.76
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB1_38:                               # %if.end.78
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.79
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB1_64
# BB#40:                                # %lor.lhs.false.82
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_param_drawable_id_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB1_42
# BB#41:                                # %if.then.93
	movl	$0, -156(%rbp)
	jmp	.LBB1_47
.LBB1_42:                               # %if.else.94
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_45
# BB#43:                                # %land.lhs.true.97
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB1_45
# BB#44:                                # %if.then.101
	movl	$1, -156(%rbp)
	jmp	.LBB1_46
.LBB1_45:                               # %if.else.102
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB1_46:                               # %if.end.104
	jmp	.LBB1_47
.LBB1_47:                               # %if.end.105
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB1_64
# BB#48:                                # %lor.lhs.false.108
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB1_50
# BB#49:                                # %if.then.119
	movl	$0, -180(%rbp)
	jmp	.LBB1_55
.LBB1_50:                               # %if.else.120
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_53
# BB#51:                                # %land.lhs.true.123
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB1_53
# BB#52:                                # %if.then.127
	movl	$1, -180(%rbp)
	jmp	.LBB1_54
.LBB1_53:                               # %if.else.128
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB1_54:                               # %if.end.130
	jmp	.LBB1_55
.LBB1_55:                               # %if.end.131
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB1_64
# BB#56:                                # %lor.lhs.false.134
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB1_58
# BB#57:                                # %if.then.145
	movl	$0, -204(%rbp)
	jmp	.LBB1_63
.LBB1_58:                               # %if.else.146
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_61
# BB#59:                                # %land.lhs.true.149
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB1_61
# BB#60:                                # %if.then.153
	movl	$1, -204(%rbp)
	jmp	.LBB1_62
.LBB1_61:                               # %if.else.154
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB1_62:                               # %if.end.156
	jmp	.LBB1_63
.LBB1_63:                               # %if.end.157
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	jne	.LBB1_65
.LBB1_64:                               # %if.then.160
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movabsq	$.L.str.6, %rcx
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %r8
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB1_74
.LBB1_65:                               # %if.end.162
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_plug_in_procedure_set_file_proc
	movl	$2, %esi
	movq	-48(%rbp), %rdi
	callq	file_procedure_in_group
	cmpl	$0, %eax
	je	.LBB1_69
# BB#66:                                # %if.then.165
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	jne	.LBB1_68
# BB#67:                                # %if.then.168
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, 72(%rsi)
.LBB1_68:                               # %if.end.172
	jmp	.LBB1_69
.LBB1_69:                               # %if.end.173
	movl	$3, %esi
	movq	-48(%rbp), %rdi
	callq	file_procedure_in_group
	cmpl	$0, %eax
	je	.LBB1_73
# BB#70:                                # %if.then.176
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	jne	.LBB1_72
# BB#71:                                # %if.then.179
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, 80(%rsi)
.LBB1_72:                               # %if.end.183
	jmp	.LBB1_73
.LBB1_73:                               # %if.end.184
	movl	$1, -4(%rbp)
.LBB1_74:                               # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_manager_register_save_handler, .Lfunc_end1-gimp_plug_in_manager_register_save_handler
	.cfi_endproc

	.globl	gimp_plug_in_manager_register_mime_type
	.align	16, 0x90
	.type	gimp_plug_in_manager_register_mime_type,@function
gimp_plug_in_manager_register_mime_type: # @gimp_plug_in_manager_register_mime_type
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
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_plug_in_manager_get_type
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
	movabsq	$.L__func__.gimp_plug_in_manager_register_mime_type, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_29
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
	movabsq	$.L__func__.gimp_plug_in_manager_register_mime_type, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_29
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.19
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_register_mime_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_29
.LBB2_21:                               # %if.end.21
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB2_25
# BB#23:                                # %land.lhs.true.24
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$0, 736(%rax)
	je	.LBB2_25
# BB#24:                                # %if.then.27
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	736(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_26
.LBB2_25:                               # %if.else.30
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB2_26:                               # %if.end.31
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_procedure_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_28
# BB#27:                                # %if.then.34
	movl	$0, -4(%rbp)
	jmp	.LBB2_29
.LBB2_28:                               # %if.end.35
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_plug_in_procedure_set_mime_type
	movl	$1, -4(%rbp)
.LBB2_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_manager_register_mime_type, .Lfunc_end2-gimp_plug_in_manager_register_mime_type
	.cfi_endproc

	.globl	gimp_plug_in_manager_register_thumb_loader
	.align	16, 0x90
	.type	gimp_plug_in_manager_register_thumb_loader,@function
gimp_plug_in_manager_register_thumb_loader: # @gimp_plug_in_manager_register_thumb_loader
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_plug_in_manager_get_type
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
	movabsq	$.L__func__.gimp_plug_in_manager_register_thumb_loader, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_29
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_register_thumb_loader, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_29
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_register_thumb_loader, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_29
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB3_25
# BB#23:                                # %land.lhs.true.24
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$0, 736(%rax)
	je	.LBB3_25
# BB#24:                                # %if.then.27
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	736(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.30
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB3_26:                               # %if.end.31
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_procedure_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_28
# BB#27:                                # %if.then.34
	movl	$0, -4(%rbp)
	jmp	.LBB3_29
.LBB3_28:                               # %if.end.35
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_plug_in_procedure_set_thumb_loader
	movl	$1, -4(%rbp)
.LBB3_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_manager_register_thumb_loader, .Lfunc_end3-gimp_plug_in_manager_register_thumb_loader
	.cfi_endproc

	.globl	gimp_plug_in_manager_uri_has_exporter
	.align	16, 0x90
	.type	gimp_plug_in_manager_uri_has_exporter,@function
gimp_plug_in_manager_uri_has_exporter:  # @gimp_plug_in_manager_uri_has_exporter
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	80(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	file_procedure_find
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_manager_uri_has_exporter, .Lfunc_end4-gimp_plug_in_manager_uri_has_exporter
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_manager_register_load_handler,@object # @__func__.gimp_plug_in_manager_register_load_handler
.L__func__.gimp_plug_in_manager_register_load_handler:
	.asciz	"gimp_plug_in_manager_register_load_handler"
	.size	.L__func__.gimp_plug_in_manager_register_load_handler, 43

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN_MANAGER (manager)"
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"attempt to register nonexistent load handler \"%s\""
	.size	.L.str.3, 50

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"load handler \"%s\" does not take the standard load handler args"
	.size	.L.str.4, 63

	.type	.L__func__.gimp_plug_in_manager_register_save_handler,@object # @__func__.gimp_plug_in_manager_register_save_handler
.L__func__.gimp_plug_in_manager_register_save_handler:
	.asciz	"gimp_plug_in_manager_register_save_handler"
	.size	.L__func__.gimp_plug_in_manager_register_save_handler, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"attempt to register nonexistent save handler \"%s\""
	.size	.L.str.5, 50

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"save handler \"%s\" does not take the standard save handler args"
	.size	.L.str.6, 63

	.type	.L__func__.gimp_plug_in_manager_register_mime_type,@object # @__func__.gimp_plug_in_manager_register_mime_type
.L__func__.gimp_plug_in_manager_register_mime_type:
	.asciz	"gimp_plug_in_manager_register_mime_type"
	.size	.L__func__.gimp_plug_in_manager_register_mime_type, 40

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"mime_type != NULL"
	.size	.L.str.7, 18

	.type	.L__func__.gimp_plug_in_manager_register_thumb_loader,@object # @__func__.gimp_plug_in_manager_register_thumb_loader
.L__func__.gimp_plug_in_manager_register_thumb_loader:
	.asciz	"gimp_plug_in_manager_register_thumb_loader"
	.size	.L__func__.gimp_plug_in_manager_register_thumb_loader, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"load_proc"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"thumb_proc"
	.size	.L.str.9, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
