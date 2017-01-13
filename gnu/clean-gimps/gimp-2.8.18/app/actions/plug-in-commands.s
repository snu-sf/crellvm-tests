	.text
	.file	"plug-in-commands.bc"
	.globl	plug_in_run_cmd_callback
	.align	16, 0x90
	.type	plug_in_run_cmd_callback,@function
plug_in_run_cmd_callback:               # @plug_in_run_cmd_callback
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_58
.LBB0_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_procedure_get_arguments
	movq	%rax, -48(%rbp)
	movslq	-52(%rbp), %rdi
	movq	8(%rax), %rax
	leaq	(%rdi,%rdi,2), %rdi
	leaq	(%rax,%rdi,8), %rdi
	xorl	%esi, %esi
	callq	g_value_set_int
	movl	-52(%rbp), %esi
	incl	%esi
	movl	%esi, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %esi
	movl	%esi, %eax
	movq	%rax, %rdi
	subq	$3, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	ja	.LBB0_55
# BB#59:                                # %if.end
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_3:                                # %sw.bb
	jmp	.LBB0_55
.LBB0_4:                                # %sw.bb.4
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_data_factory_view_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.7
	movl	$0, -84(%rbp)
	jmp	.LBB0_11
.LBB0_6:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_9
# BB#7:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_9
# BB#8:                                 # %if.then.10
	movl	$1, -84(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.11
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_10:                               # %if.end.13
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.14
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.LBB0_28
# BB#12:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_font_view_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_14
# BB#13:                                # %if.then.24
	movl	$0, -108(%rbp)
	jmp	.LBB0_19
.LBB0_14:                               # %if.else.25
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_17
# BB#15:                                # %land.lhs.true.28
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_17
# BB#16:                                # %if.then.32
	movl	$1, -108(%rbp)
	jmp	.LBB0_18
.LBB0_17:                               # %if.else.33
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB0_18:                               # %if.end.35
	jmp	.LBB0_19
.LBB0_19:                               # %if.end.36
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	jne	.LBB0_28
# BB#20:                                # %lor.lhs.false.39
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_buffer_view_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB0_22
# BB#21:                                # %if.then.48
	movl	$0, -132(%rbp)
	jmp	.LBB0_27
.LBB0_22:                               # %if.else.49
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_25
# BB#23:                                # %land.lhs.true.52
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB0_25
# BB#24:                                # %if.then.56
	movl	$1, -132(%rbp)
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.57
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB0_26:                               # %if.end.59
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.60
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB0_29
.LBB0_28:                               # %if.then.63
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	callq	plug_in_collect_data_args
	movl	%eax, -52(%rbp)
	jmp	.LBB0_53
.LBB0_29:                               # %if.else.77
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_image_editor_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB0_31
# BB#30:                                # %if.then.86
	movl	$0, -188(%rbp)
	jmp	.LBB0_36
.LBB0_31:                               # %if.else.87
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_34
# BB#32:                                # %land.lhs.true.90
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB0_34
# BB#33:                                # %if.then.94
	movl	$1, -188(%rbp)
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.95
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB0_35:                               # %if.end.97
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.98
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB0_38
# BB#37:                                # %if.then.101
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	gimp_image_editor_get_image
	movq	%rax, -208(%rbp)
	movq	-8(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	callq	plug_in_collect_image_args
	movl	%eax, -52(%rbp)
	jmp	.LBB0_52
.LBB0_38:                               # %if.else.110
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_item_tree_view_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.119
	movl	$0, -228(%rbp)
	jmp	.LBB0_45
.LBB0_40:                               # %if.else.120
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_43
# BB#41:                                # %land.lhs.true.123
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB0_43
# BB#42:                                # %if.then.127
	movl	$1, -228(%rbp)
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.128
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB0_44:                               # %if.end.130
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.131
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB0_50
# BB#46:                                # %if.then.134
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB0_48
# BB#47:                                # %if.then.144
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	920(%rax), %rax
	movq	-248(%rbp), %rdi
	callq	*%rax
	movq	%rax, -256(%rbp)
	jmp	.LBB0_49
.LBB0_48:                               # %if.else.147
	movq	$0, -256(%rbp)
.LBB0_49:                               # %if.end.148
	movq	-8(%rbp), %rdi
	movq	-248(%rbp), %rsi
	movq	-256(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	callq	plug_in_collect_item_args
	movl	%eax, -52(%rbp)
	jmp	.LBB0_51
.LBB0_50:                               # %if.else.151
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	callq	plug_in_collect_display_args
	movl	%eax, -52(%rbp)
.LBB0_51:                               # %if.end.155
	jmp	.LBB0_52
.LBB0_52:                               # %if.end.156
	jmp	.LBB0_53
.LBB0_53:                               # %if.end.157
	jmp	.LBB0_55
.LBB0_54:                               # %sw.bb.158
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -52(%rbp)
.LBB0_55:                               # %sw.epilog
	cmpl	$1, -52(%rbp)
	jl	.LBB0_57
# BB#56:                                # %if.then.160
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	callq	plug_in_procedure_execute
.LBB0_57:                               # %if.end.161
	movq	-48(%rbp), %rdi
	callq	g_value_array_free
.LBB0_58:                               # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end0:
	.size	plug_in_run_cmd_callback, .Lfunc_end0-plug_in_run_cmd_callback
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_54
	.quad	.LBB0_4
	.quad	.LBB0_3
	.quad	.LBB0_4

	.text
	.align	16, 0x90
	.type	plug_in_collect_data_args,@function
plug_in_collect_data_args:              # @plug_in_collect_data_args
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
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %r8d
	cmpl	-44(%rbp), %r8d
	jbe	.LBB1_13
# BB#1:                                 # %land.lhs.true
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_param_string_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true.2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.5
	movl	$1, -68(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.6
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.8
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB1_13
# BB#9:                                 # %if.then.10
	cmpq	$0, -24(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.12
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_string
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.16
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB1_14
.LBB1_12:                               # %if.end.17
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.18
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plug_in_collect_data_args, .Lfunc_end1-plug_in_collect_data_args
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_collect_image_args,@function
plug_in_collect_image_args:             # @plug_in_collect_image_args
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
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %r8d
	cmpl	-44(%rbp), %r8d
	jbe	.LBB2_13
# BB#1:                                 # %land.lhs.true
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_param_image_id_get_type
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
# BB#4:                                 # %land.lhs.true.2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.5
	movl	$1, -68(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.6
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.8
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_13
# BB#9:                                 # %if.then.10
	cmpq	$0, -24(%rbp)
	je	.LBB2_11
# BB#10:                                # %if.then.12
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	jmp	.LBB2_12
.LBB2_11:                               # %if.else.15
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB2_14
.LBB2_12:                               # %if.end.16
	jmp	.LBB2_13
.LBB2_13:                               # %if.end.17
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	plug_in_collect_image_args, .Lfunc_end2-plug_in_collect_image_args
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_collect_item_args,@function
plug_in_collect_item_args:              # @plug_in_collect_item_args
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
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %r9d
	cmpl	-52(%rbp), %r9d
	jbe	.LBB3_26
# BB#1:                                 # %land.lhs.true
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true.2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.5
	movl	$1, -76(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.6
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.8
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_26
# BB#9:                                 # %if.then.10
	cmpq	$0, -24(%rbp)
	je	.LBB3_25
# BB#10:                                # %if.then.12
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	cmpl	-52(%rbp), %edx
	jbe	.LBB3_24
# BB#11:                                # %land.lhs.true.17
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_param_item_id_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_13
# BB#12:                                # %if.then.28
	movl	$0, -100(%rbp)
	jmp	.LBB3_18
.LBB3_13:                               # %if.else.29
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_16
# BB#14:                                # %land.lhs.true.32
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_16
# BB#15:                                # %if.then.36
	movl	$1, -100(%rbp)
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.37
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_17:                               # %if.end.39
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.40
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_24
# BB#19:                                # %if.then.43
	cmpq	$0, -32(%rbp)
	je	.LBB3_22
# BB#20:                                # %land.lhs.true.45
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_param_item_id_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	96(%rax), %rsi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_22
# BB#21:                                # %if.then.54
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.59
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB3_27
.LBB3_23:                               # %if.end.60
	jmp	.LBB3_24
.LBB3_24:                               # %if.end.61
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.62
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.63
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	plug_in_collect_item_args, .Lfunc_end3-plug_in_collect_item_args
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_collect_display_args,@function
plug_in_collect_display_args:           # @plug_in_collect_display_args
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %r8d
	cmpl	-44(%rbp), %r8d
	jbe	.LBB4_13
# BB#1:                                 # %land.lhs.true
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_param_display_id_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true.2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.5
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.6
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.8
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_13
# BB#9:                                 # %if.then.10
	cmpq	$0, -24(%rbp)
	je	.LBB4_11
# BB#10:                                # %if.then.12
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_value_set_display
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.17
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB4_42
.LBB4_12:                               # %if.end.18
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.19
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	jbe	.LBB4_41
# BB#14:                                # %land.lhs.true.22
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.33
	movl	$0, -92(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.34
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.37
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.41
	movl	$1, -92(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.42
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_20:                               # %if.end.44
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.45
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_41
# BB#22:                                # %if.then.48
	cmpq	$0, -24(%rbp)
	je	.LBB4_24
# BB#23:                                # %cond.true
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB4_25
.LBB4_24:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB4_25
.LBB4_25:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB4_40
# BB#26:                                # %if.then.53
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	cmpl	-44(%rbp), %edx
	jbe	.LBB4_39
# BB#27:                                # %land.lhs.true.60
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_param_drawable_id_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB4_29
# BB#28:                                # %if.then.71
	movl	$0, -124(%rbp)
	jmp	.LBB4_34
.LBB4_29:                               # %if.else.72
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_32
# BB#30:                                # %land.lhs.true.75
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_32
# BB#31:                                # %if.then.79
	movl	$1, -124(%rbp)
	jmp	.LBB4_33
.LBB4_32:                               # %if.else.80
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB4_33:                               # %if.end.82
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.83
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_39
# BB#35:                                # %if.then.86
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB4_37
# BB#36:                                # %if.then.90
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	jmp	.LBB4_38
.LBB4_37:                               # %if.else.95
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB4_42
.LBB4_38:                               # %if.end.96
	jmp	.LBB4_39
.LBB4_39:                               # %if.end.97
	jmp	.LBB4_40
.LBB4_40:                               # %if.end.98
	jmp	.LBB4_41
.LBB4_41:                               # %if.end.99
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	plug_in_collect_display_args, .Lfunc_end4-plug_in_collect_display_args
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB5_2
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
.LBB5_2:                                # %entry
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
	movl	$.L.str.7, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_warning, .Lfunc_end5-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_procedure_execute,@function
plug_in_procedure_execute:              # @plug_in_procedure_execute
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_value_array_truncate
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	-24(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_procedure_execute_async
	cmpq	$0, -48(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movq	-48(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB6_13
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$2, 96(%rax)
	jl	.LBB6_12
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_param_image_id_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_5
# BB#4:                                 # %if.then.15
	movl	$0, -68(%rbp)
	jmp	.LBB6_10
.LBB6_5:                                # %if.else.16
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_8
# BB#6:                                 # %land.lhs.true.18
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_8
# BB#7:                                 # %if.then.21
	movl	$1, -68(%rbp)
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.22
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB6_9:                                # %if.end
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.24
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_12
# BB#11:                                # %if.then.26
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_plug_in_manager_history_add
.LBB6_12:                               # %if.end.27
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.28
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	plug_in_procedure_execute, .Lfunc_end6-plug_in_procedure_execute
	.cfi_endproc

	.globl	plug_in_repeat_cmd_callback
	.align	16, 0x90
	.type	plug_in_repeat_cmd_callback,@function
plug_in_repeat_cmd_callback:            # @plug_in_repeat_cmd_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_6
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.3
	jmp	.LBB7_6
.LBB7_4:                                # %if.end.4
	xorl	%esi, %esi
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	376(%rcx), %rdi
	callq	gimp_plug_in_manager_history_nth
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB7_6
# BB#5:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_procedure_get_arguments
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-52(%rbp), %esi
	callq	g_value_set_int
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movq	104(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	plug_in_collect_display_args
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movl	-68(%rbp), %r8d
	callq	plug_in_procedure_execute
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
.LBB7_6:                                # %if.end.15
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	plug_in_repeat_cmd_callback, .Lfunc_end7-plug_in_repeat_cmd_callback
	.cfi_endproc

	.globl	plug_in_history_cmd_callback
	.align	16, 0x90
	.type	plug_in_history_cmd_callback,@function
plug_in_history_cmd_callback:           # @plug_in_history_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.4
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_procedure_get_arguments
	xorl	%esi, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_set_int
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movq	104(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	plug_in_collect_display_args
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	callq	plug_in_procedure_execute
	movq	-48(%rbp), %rdi
	callq	g_value_array_free
.LBB8_5:                                # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	plug_in_history_cmd_callback, .Lfunc_end8-plug_in_history_cmd_callback
	.cfi_endproc

	.globl	plug_in_reset_all_cmd_callback
	.align	16, 0x90
	.type	plug_in_reset_all_cmd_callback,@function
plug_in_reset_all_cmd_callback:         # @plug_in_reset_all_cmd_callback
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.3, %rdx
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.4, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.5, %rsi
	movabsq	$plug_in_reset_all_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	-32(%rbp), %rbx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	264(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
.LBB9_3:                                # %return
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	plug_in_reset_all_cmd_callback, .Lfunc_end9-plug_in_reset_all_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_reset_all_response,@function
plug_in_reset_all_response:             # @plug_in_reset_all_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$-5, -12(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	callq	gimp_plug_in_manager_data_free
.LBB10_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	plug_in_reset_all_response, .Lfunc_end10-plug_in_reset_all_response
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unhandled procedure type."
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Reset all Filters"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-question"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-cancel"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-reset"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"response"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Do you really want to reset all filters to default values?"
	.size	.L.str.6, 59

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Actions"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Uh-oh, no active data object for the plug-in!"
	.size	.L.str.8, 46

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Uh-oh, no active image for the plug-in!"
	.size	.L.str.9, 40

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Uh-oh, no active item for the plug-in!"
	.size	.L.str.10, 39

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Uh-oh, no active display for the plug-in!"
	.size	.L.str.11, 42

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Uh-oh, no active drawable for the plug-in!"
	.size	.L.str.12, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
