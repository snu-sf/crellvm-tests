	.text
	.file	"gimpconfig-serialize.bc"
	.globl	gimp_config_serialize_properties
	.align	16, 0x90
	.type	gimp_config_serialize_properties,@function
gimp_config_serialize_properties:       # @gimp_config_serialize_properties
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
	leaq	.L__func__.gimp_config_serialize_properties(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	leaq	-44(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_object_class_list_properties@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then.3
	movl	$1, -4(%rbp)
	jmp	.LBB0_16
.LBB0_7:                                # %if.end.4
	movl	$0, -48(%rbp)
.LBB0_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB0_15
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB0_11
# BB#10:                                # %if.then.6
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_14
.LBB0_11:                               # %if.end.7
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property@PLT
	cmpl	$0, %eax
	jne	.LBB0_13
# BB#12:                                # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_13:                               # %if.end.11
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %for.inc
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_8
.LBB0_15:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movl	$1, -4(%rbp)
.LBB0_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_serialize_properties, .Lfunc_end0-gimp_config_serialize_properties
	.cfi_endproc

	.globl	gimp_config_serialize_property
	.align	16, 0x90
	.type	gimp_config_serialize_property,@function
gimp_config_serialize_property:         # @gimp_config_serialize_property
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
	subq	$272, %rsp              # imm = 0x110
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %r8d
	leaq	-72(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset@PLT
	movl	$0, -76(%rbp)
	movq	-24(%rbp), %rdx
	movl	16(%rdx), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB1_60
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$8192, %ecx             # imm = 0x2000
	cmpl	$0, %ecx
	je	.LBB1_4
# BB#3:                                 # %if.then.4
	movl	$1, -4(%rbp)
	jmp	.LBB1_60
.LBB1_4:                                # %if.end.5
	leaq	-72(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_get_property@PLT
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$4096, %ecx             # imm = 0x1000
	cmpl	$0, %ecx
	je	.LBB1_7
# BB#5:                                 # %land.lhs.true
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	g_param_value_defaults@PLT
	cmpl	$0, %eax
	je	.LBB1_7
# BB#6:                                 # %if.then.12
	leaq	-72(%rbp), %rdi
	callq	g_value_unset@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB1_60
.LBB1_7:                                # %if.end.13
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$80, %rax
	jne	.LBB1_11
# BB#8:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.21
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	%rax, -48(%rbp)
.LBB1_10:                               # %if.end.25
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.26
	cmpq	$0, -40(%rbp)
	je	.LBB1_16
# BB#12:                                # %land.lhs.true.28
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB1_16
# BB#13:                                # %land.lhs.true.30
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB1_16
# BB#14:                                # %land.lhs.true.32
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	68(%rcx), %esi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB1_16
# BB#15:                                # %if.then.36
	movl	$1, -76(%rbp)
.LBB1_16:                               # %if.end.37
	cmpl	$0, -76(%rbp)
	jne	.LBB1_59
# BB#17:                                # %if.then.39
	leaq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$80, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.41
	movl	$0, -116(%rbp)
	jmp	.LBB1_23
.LBB1_19:                               # %if.else
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB1_21
# BB#20:                                # %if.then.43
	movl	$1, -116(%rbp)
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.44
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -116(%rbp)
.LBB1_22:                               # %if.end.46
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.47
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB1_35
# BB#24:                                # %if.then.49
	leaq	-72(%rbp), %rdi
	movq	$0, -128(%rbp)
	callq	g_value_get_object@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB1_26
# BB#25:                                # %if.then.55
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	%rax, -128(%rbp)
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.58
	movl	$1, -76(%rbp)
.LBB1_27:                               # %if.end.59
	cmpq	$0, -128(%rbp)
	je	.LBB1_34
# BB#28:                                # %if.then.61
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_config_writer_open@PLT
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	jne	.LBB1_30
# BB#29:                                # %if.then.66
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_name@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string@PLT
.LBB1_30:                               # %if.end.71
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-136(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rcx
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then.74
	movq	-32(%rbp), %rdi
	callq	gimp_config_writer_close@PLT
	jmp	.LBB1_33
.LBB1_32:                               # %if.else.75
	movq	-32(%rbp), %rdi
	callq	gimp_config_writer_revert@PLT
.LBB1_33:                               # %if.end.76
	jmp	.LBB1_34
.LBB1_34:                               # %if.end.77
	jmp	.LBB1_47
.LBB1_35:                               # %if.else.78
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new@PLT
	leaq	-72(%rbp), %rdi
	movq	%rax, -152(%rbp)
	movq	%rdi, -160(%rbp)
	callq	gimp_rgb_get_type@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB1_37
# BB#36:                                # %if.then.89
	movl	$0, -172(%rbp)
	jmp	.LBB1_41
.LBB1_37:                               # %if.else.90
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB1_39
# BB#38:                                # %if.then.93
	movl	$1, -172(%rbp)
	jmp	.LBB1_40
.LBB1_39:                               # %if.else.94
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -172(%rbp)
.LBB1_40:                               # %if.end.96
	jmp	.LBB1_41
.LBB1_41:                               # %if.end.97
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB1_43
# BB#42:                                # %if.then.100
	movq	-24(%rbp), %rdi
	callq	gimp_param_spec_rgb_has_alpha@PLT
	leaq	-72(%rbp), %rdi
	movl	%eax, -180(%rbp)
	movq	-152(%rbp), %rsi
	movl	-180(%rbp), %edx
	callq	gimp_config_serialize_rgb
	movl	%eax, -76(%rbp)
	jmp	.LBB1_44
.LBB1_43:                               # %if.else.104
	leaq	-72(%rbp), %rdi
	movl	$1, %edx
	movq	-152(%rbp), %rsi
	callq	gimp_config_serialize_value@PLT
	movl	%eax, -76(%rbp)
.LBB1_44:                               # %if.end.106
	cmpl	$0, -76(%rbp)
	je	.LBB1_46
# BB#45:                                # %if.then.108
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_config_writer_open@PLT
	movq	-32(%rbp), %rdi
	movq	-152(%rbp), %rax
	movq	(%rax), %rsi
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	gimp_config_writer_print@PLT
	movq	-32(%rbp), %rdi
	callq	gimp_config_writer_close@PLT
.LBB1_46:                               # %if.end.111
	movl	$1, %esi
	movq	-152(%rbp), %rdi
	callq	g_string_free@PLT
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB1_47:                               # %if.end.113
	cmpl	$0, -76(%rbp)
	jne	.LBB1_58
# BB#48:                                # %if.then.115
	leaq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$64, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB1_50
# BB#49:                                # %if.then.123
	movl	$0, -204(%rbp)
	jmp	.LBB1_54
.LBB1_50:                               # %if.else.124
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB1_52
# BB#51:                                # %if.then.128
	movl	$1, -204(%rbp)
	jmp	.LBB1_53
.LBB1_52:                               # %if.else.129
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -204(%rbp)
.LBB1_53:                               # %if.end.131
	jmp	.LBB1_54
.LBB1_54:                               # %if.end.132
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB1_56
# BB#55:                                # %if.then.135
	movl	$1, -76(%rbp)
	jmp	.LBB1_57
.LBB1_56:                               # %if.else.136
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name@PLT
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdx
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.2(%rip), %rdi
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
.LBB1_57:                               # %if.end.143
	jmp	.LBB1_58
.LBB1_58:                               # %if.end.144
	jmp	.LBB1_59
.LBB1_59:                               # %if.end.145
	leaq	-72(%rbp), %rdi
	callq	g_value_unset@PLT
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_60:                               # %return
	movl	-4(%rbp), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_config_serialize_property, .Lfunc_end1-gimp_config_serialize_property
	.cfi_endproc

	.globl	gimp_config_serialize_changed_properties
	.align	16, 0x90
	.type	gimp_config_serialize_changed_properties,@function
gimp_config_serialize_changed_properties: # @gimp_config_serialize_changed_properties
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-72(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset@PLT
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_serialize_changed_properties(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB2_18
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	leaq	-44(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_object_class_list_properties@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_7
# BB#6:                                 # %if.then.3
	movl	$1, -4(%rbp)
	jmp	.LBB2_18
.LBB2_7:                                # %if.end.4
	movl	$0, -48(%rbp)
.LBB2_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB2_17
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB2_11
# BB#10:                                # %if.then.6
                                        #   in Loop: Header=BB2_8 Depth=1
	jmp	.LBB2_16
.LBB2_11:                               # %if.end.7
                                        #   in Loop: Header=BB2_8 Depth=1
	leaq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_get_property@PLT
	leaq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdi
	callq	g_param_value_defaults@PLT
	cmpl	$0, %eax
	jne	.LBB2_15
# BB#12:                                # %if.then.12
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property@PLT
	cmpl	$0, %eax
	jne	.LBB2_14
# BB#13:                                # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB2_18
.LBB2_14:                               # %if.end.16
                                        #   in Loop: Header=BB2_8 Depth=1
	jmp	.LBB2_15
.LBB2_15:                               # %if.end.17
                                        #   in Loop: Header=BB2_8 Depth=1
	leaq	-72(%rbp), %rdi
	callq	g_value_unset@PLT
.LBB2_16:                               # %for.inc
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_8
.LBB2_17:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movl	$1, -4(%rbp)
.LBB2_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_config_serialize_changed_properties, .Lfunc_end2-gimp_config_serialize_changed_properties
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_serialize_rgb,@function
gimp_config_serialize_rgb:              # @gimp_config_serialize_rgb
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_value_get_boxed@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movl	$39, %esi
	leaq	.L.str.6(%rip), %rdx
	leaq	-208(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_ascii_formatd@PLT
	movl	$39, %esi
	leaq	.L.str.6(%rip), %rdx
	leaq	-208(%rbp), %rdi
	addq	$39, %rdi
	movq	-40(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd@PLT
	movl	$39, %esi
	leaq	.L.str.6(%rip), %rdx
	leaq	-208(%rbp), %rcx
	addq	$78, %rcx
	movq	-40(%rbp), %rdi
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd@PLT
	cmpl	$0, -28(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	je	.LBB3_3
# BB#2:                                 # %if.then.9
	movl	$39, %esi
	leaq	.L.str.6(%rip), %rdx
	leaq	-208(%rbp), %rax
	addq	$117, %rax
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_ascii_formatd@PLT
	leaq	.L.str.12(%rip), %rsi
	leaq	-208(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r8
	addq	$78, %r8
	movq	%rcx, %r9
	addq	$117, %r9
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf@PLT
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.13(%rip), %rsi
	leaq	-208(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	addq	$39, %rcx
	movq	%rax, %rdx
	addq	$78, %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-256(%rbp), %r8         # 8-byte Reload
	movb	$0, %al
	callq	g_string_append_printf@PLT
.LBB3_4:                                # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %if.end.27
	movl	$0, -4(%rbp)
.LBB3_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_config_serialize_rgb, .Lfunc_end3-gimp_config_serialize_rgb
	.cfi_endproc

	.globl	gimp_config_serialize_value
	.align	16, 0x90
	.type	gimp_config_serialize_value,@function
gimp_config_serialize_value:            # @gimp_config_serialize_value
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
	subq	$704, %rsp              # imm = 0x2C0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	$20, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_6
.LBB4_2:                                # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_4
# BB#3:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB4_5
.LBB4_4:                                # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -52(%rbp)
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.3
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	callq	g_value_get_boolean@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.3(%rip), %rcx
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, -60(%rbp)
	cmovneq	%rcx, %rdi
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-544(%rbp), %rsi        # 8-byte Reload
	callq	g_string_append@PLT
	movl	$1, -4(%rbp)
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB4_97
.LBB4_8:                                # %if.end.10
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$48, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_10
# BB#9:                                 # %if.then.18
	movl	$0, -84(%rbp)
	jmp	.LBB4_14
.LBB4_10:                               # %if.else.19
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_12
# BB#11:                                # %if.then.22
	movl	$1, -84(%rbp)
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.23
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -84(%rbp)
.LBB4_13:                               # %if.end.25
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.26
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_19
# BB#15:                                # %if.then.29
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum@PLT
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_enum_get_value@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true
	movq	-104(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB4_18
# BB#17:                                # %if.then.38
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	16(%rax), %rsi
	callq	g_string_append@PLT
	movl	$1, -4(%rbp)
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB4_97
.LBB4_18:                               # %if.else.41
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_type_name@PLT
	leaq	.L.str.5(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_97
.LBB4_19:                               # %if.end.44
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$64, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB4_21
# BB#20:                                # %if.then.52
	movl	$0, -124(%rbp)
	jmp	.LBB4_25
.LBB4_21:                               # %if.else.53
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_23
# BB#22:                                # %if.then.56
	movl	$1, -124(%rbp)
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.57
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -124(%rbp)
.LBB4_24:                               # %if.end.59
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.60
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_32
# BB#26:                                # %if.then.63
	movq	-16(%rbp), %rdi
	callq	g_value_get_string@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB4_28
# BB#27:                                # %if.then.67
	movl	$0, -4(%rbp)
	jmp	.LBB4_97
.LBB4_28:                               # %if.end.68
	cmpl	$0, -28(%rbp)
	je	.LBB4_30
# BB#29:                                # %if.then.70
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	gimp_config_string_append_escaped@PLT
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.71
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_string_append@PLT
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB4_31:                               # %if.end.73
	movl	$1, -4(%rbp)
	jmp	.LBB4_97
.LBB4_32:                               # %if.end.74
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$60, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB4_34
# BB#33:                                # %if.then.82
	movl	$0, -156(%rbp)
	jmp	.LBB4_38
.LBB4_34:                               # %if.else.83
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB4_36
# BB#35:                                # %if.then.86
	movl	$1, -156(%rbp)
	jmp	.LBB4_37
.LBB4_36:                               # %if.else.87
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -156(%rbp)
.LBB4_37:                               # %if.end.89
	jmp	.LBB4_38
.LBB4_38:                               # %if.end.90
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	jne	.LBB4_46
# BB#39:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	$56, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB4_41
# BB#40:                                # %if.then.100
	movl	$0, -180(%rbp)
	jmp	.LBB4_45
.LBB4_41:                               # %if.else.101
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB4_43
# BB#42:                                # %if.then.104
	movl	$1, -180(%rbp)
	jmp	.LBB4_44
.LBB4_43:                               # %if.else.105
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -180(%rbp)
.LBB4_44:                               # %if.end.107
	jmp	.LBB4_45
.LBB4_45:                               # %if.end.108
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB4_56
.LBB4_46:                               # %if.then.111
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	$60, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB4_48
# BB#47:                                # %if.then.121
	movl	$0, -260(%rbp)
	jmp	.LBB4_52
.LBB4_48:                               # %if.else.122
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB4_50
# BB#49:                                # %if.then.125
	movl	$1, -260(%rbp)
	jmp	.LBB4_51
.LBB4_50:                               # %if.else.126
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -260(%rbp)
.LBB4_51:                               # %if.end.128
	jmp	.LBB4_52
.LBB4_52:                               # %if.end.129
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB4_54
# BB#53:                                # %if.then.132
	movq	-16(%rbp), %rdi
	callq	g_value_get_double@PLT
	movsd	%xmm0, -192(%rbp)
	jmp	.LBB4_55
.LBB4_54:                               # %if.else.134
	movq	-16(%rbp), %rdi
	callq	g_value_get_float@PLT
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -192(%rbp)
.LBB4_55:                               # %if.end.136
	movl	$39, %esi
	leaq	.L.str.6(%rip), %rdx
	leaq	-240(%rbp), %rdi
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	g_ascii_formatd@PLT
	leaq	-240(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	g_string_append@PLT
	movl	$1, -4(%rbp)
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB4_97
.LBB4_56:                               # %if.end.140
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)
	callq	gimp_rgb_get_type@PLT
	movq	%rax, -280(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.LBB4_58
# BB#57:                                # %if.then.149
	movl	$0, -284(%rbp)
	jmp	.LBB4_62
.LBB4_58:                               # %if.else.150
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-280(%rbp), %rax
	jne	.LBB4_60
# BB#59:                                # %if.then.154
	movl	$1, -284(%rbp)
	jmp	.LBB4_61
.LBB4_60:                               # %if.else.155
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -284(%rbp)
.LBB4_61:                               # %if.end.157
	jmp	.LBB4_62
.LBB4_62:                               # %if.end.158
	movl	-284(%rbp), %eax
	movl	%eax, -288(%rbp)
	cmpl	$0, -288(%rbp)
	je	.LBB4_64
# BB#63:                                # %if.then.161
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_config_serialize_rgb
	movl	%eax, -4(%rbp)
	jmp	.LBB4_97
.LBB4_64:                               # %if.end.163
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_matrix2_get_type@PLT
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB4_66
# BB#65:                                # %if.then.172
	movl	$0, -308(%rbp)
	jmp	.LBB4_70
.LBB4_66:                               # %if.else.173
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB4_68
# BB#67:                                # %if.then.177
	movl	$1, -308(%rbp)
	jmp	.LBB4_69
.LBB4_68:                               # %if.else.178
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -308(%rbp)
.LBB4_69:                               # %if.end.180
	jmp	.LBB4_70
.LBB4_70:                               # %if.end.181
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB4_83
# BB#71:                                # %if.then.184
	movq	-16(%rbp), %rdi
	callq	g_value_get_boxed@PLT
	movq	%rax, -320(%rbp)
	cmpq	$0, -320(%rbp)
	je	.LBB4_81
# BB#72:                                # %if.then.188
	movl	$0, -484(%rbp)
	movl	$0, -492(%rbp)
.LBB4_73:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_75 Depth 2
	cmpl	$2, -484(%rbp)
	jge	.LBB4_80
# BB#74:                                # %for.body
                                        #   in Loop: Header=BB4_73 Depth=1
	movl	$0, -488(%rbp)
.LBB4_75:                               # %for.cond.196
                                        #   Parent Loop BB4_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -488(%rbp)
	jge	.LBB4_78
# BB#76:                                # %for.body.199
                                        #   in Loop: Header=BB4_75 Depth=2
	movl	$39, %esi
	leaq	.L.str.6(%rip), %rdx
	leaq	-480(%rbp), %rax
	movslq	-492(%rbp), %rcx
	imulq	$39, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-488(%rbp), %rcx
	movslq	-484(%rbp), %rdi
	movq	-320(%rbp), %r8
	shlq	$4, %rdi
	addq	%rdi, %r8
	movsd	(%r8,%rcx,8), %xmm0     # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_ascii_formatd@PLT
	movq	%rax, -600(%rbp)        # 8-byte Spill
# BB#77:                                # %for.inc
                                        #   in Loop: Header=BB4_75 Depth=2
	movl	-488(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -488(%rbp)
	movl	-492(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -492(%rbp)
	jmp	.LBB4_75
.LBB4_78:                               # %for.end
                                        #   in Loop: Header=BB4_73 Depth=1
	jmp	.LBB4_79
.LBB4_79:                               # %for.inc.207
                                        #   in Loop: Header=BB4_73 Depth=1
	movl	-484(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -484(%rbp)
	jmp	.LBB4_73
.LBB4_80:                               # %for.end.209
	leaq	.L.str.7(%rip), %rsi
	leaq	-480(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	addq	$39, %rcx
	movq	%rax, %rdx
	addq	$78, %rdx
	movq	%rax, %r8
	addq	$117, %r8
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	%r8, -616(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-616(%rbp), %r9         # 8-byte Reload
	movb	$0, %al
	callq	g_string_append_printf@PLT
	jmp	.LBB4_82
.LBB4_81:                               # %if.else.218
	leaq	.L.str.8(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	g_string_append@PLT
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB4_82:                               # %if.end.220
	movl	$1, -4(%rbp)
	jmp	.LBB4_97
.LBB4_83:                               # %if.end.221
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_value_array_get_type@PLT
	movq	-632(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_94
# BB#84:                                # %if.then.226
	movq	-16(%rbp), %rdi
	callq	g_value_get_boxed@PLT
	movq	%rax, -504(%rbp)
	cmpq	$0, -504(%rbp)
	je	.LBB4_92
# BB#85:                                # %if.then.230
	leaq	.L.str.9(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	-504(%rbp), %rax
	movl	(%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf@PLT
	movl	$0, -508(%rbp)
.LBB4_86:                               # %for.cond.233
                                        # =>This Inner Loop Header: Depth=1
	movl	-508(%rbp), %eax
	movq	-504(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB4_91
# BB#87:                                # %for.body.237
                                        #   in Loop: Header=BB4_86 Depth=1
	leaq	.L.str.10(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	g_string_append@PLT
	movq	-504(%rbp), %rdi
	movl	-508(%rbp), %esi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	g_value_array_get_nth@PLT
	movl	$1, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_serialize_value@PLT
	cmpl	$0, %eax
	jne	.LBB4_89
# BB#88:                                # %if.then.242
	movl	$0, -4(%rbp)
	jmp	.LBB4_97
.LBB4_89:                               # %if.end.243
                                        #   in Loop: Header=BB4_86 Depth=1
	jmp	.LBB4_90
.LBB4_90:                               # %for.inc.244
                                        #   in Loop: Header=BB4_86 Depth=1
	movl	-508(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -508(%rbp)
	jmp	.LBB4_86
.LBB4_91:                               # %for.end.246
	jmp	.LBB4_93
.LBB4_92:                               # %if.else.247
	leaq	.L.str.11(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	g_string_append@PLT
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB4_93:                               # %if.end.249
	movl	$1, -4(%rbp)
	jmp	.LBB4_97
.LBB4_94:                               # %if.end.250
	movl	$64, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	g_value_type_transformable@PLT
	cmpl	$0, %eax
	je	.LBB4_96
# BB#95:                                # %if.then.254
	leaq	-536(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$24, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	memset@PLT
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	-656(%rbp), %rsi        # 8-byte Reload
	callq	g_value_init@PLT
	leaq	-536(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_value_transform@PLT
	leaq	-536(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -676(%rbp)        # 4-byte Spill
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	callq	g_value_get_string@PLT
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append@PLT
	leaq	-536(%rbp), %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_value_unset@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB4_97
.LBB4_96:                               # %if.end.260
	movl	$0, -4(%rbp)
.LBB4_97:                               # %return
	movl	-4(%rbp), %eax
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_config_serialize_value, .Lfunc_end4-gimp_config_serialize_value
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
	leaq	.L.str(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_warning, .Lfunc_end5-g_warning
	.cfi_endproc

	.globl	gimp_config_serialize_property_by_name
	.align	16, 0x90
	.type	gimp_config_serialize_property_by_name,@function
gimp_config_serialize_property_by_name: # @gimp_config_serialize_property_by_name
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
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	callq	g_object_class_find_property@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_config_serialize_property@PLT
	movl	%eax, -4(%rbp)
.LBB6_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_config_serialize_property_by_name, .Lfunc_end6-gimp_config_serialize_property_by_name
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpConfig"
	.size	.L.str, 14

	.type	.L__func__.gimp_config_serialize_properties,@object # @__func__.gimp_config_serialize_properties
.L__func__.gimp_config_serialize_properties:
	.asciz	"gimp_config_serialize_properties"
	.size	.L__func__.gimp_config_serialize_properties, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"G_IS_OBJECT (config)"
	.size	.L.str.1, 21

	.type	.L__func__.gimp_config_serialize_changed_properties,@object # @__func__.gimp_config_serialize_changed_properties
.L__func__.gimp_config_serialize_changed_properties:
	.asciz	"gimp_config_serialize_changed_properties"
	.size	.L__func__.gimp_config_serialize_changed_properties, 41

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"couldn't serialize property %s::%s of type %s"
	.size	.L.str.2, 46

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"yes"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"no"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Couldn't get nick for enum_value of %s"
	.size	.L.str.5, 39

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%f"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(matrix %s %s %s %s)"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"(matrix 1.0 1.0 1.0 1.0)"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" "
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"NULL"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"(color-rgba %s %s %s %s)"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"(color-rgb %s %s %s)"
	.size	.L.str.13, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
