	.text
	.file	"gimp-templates.bc"
	.globl	gimp_templates_load
	.align	16, 0x90
	.type	gimp_templates_load,@function
gimp_templates_load:                    # @gimp_templates_load
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
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_templates_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_34
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_list_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_templates_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_34
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	movabsq	$.L.str.3, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB0_26
# BB#25:                                # %if.then.41
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB0_26:                               # %if.end.43
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	jne	.LBB0_33
# BB#27:                                # %if.then.49
	movq	-24(%rbp), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB0_31
# BB#28:                                # %if.then.51
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
	movq	-16(%rbp), %rdi
	callq	g_free
	callq	gimp_sysconf_directory
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	jne	.LBB0_30
# BB#29:                                # %if.then.59
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
.LBB0_30:                               # %if.end.60
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.61
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
.LBB0_32:                               # %if.end.63
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
.LBB0_33:                               # %if.end.64
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_list_reverse
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB0_34:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_templates_load, .Lfunc_end0-gimp_templates_load
	.cfi_endproc

	.globl	gimp_templates_save
	.align	16, 0x90
	.type	gimp_templates_save,@function
gimp_templates_save:                    # @gimp_templates_save
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
	subq	$96, %rsp
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.5, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_templates_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_29
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_list_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_templates_save, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_29
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	movabsq	$.L.str.3, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB1_26
# BB#25:                                # %if.then.41
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB1_26:                               # %if.end.43
	movq	-8(%rbp), %rax
	movq	552(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	-40(%rbp), %r9
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_file
	cmpl	$0, %eax
	jne	.LBB1_28
# BB#27:                                # %if.then.49
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-40(%rbp), %rdi
	callq	g_error_free
.LBB1_28:                               # %if.end.50
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB1_29:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_templates_save, .Lfunc_end1-gimp_templates_save
	.cfi_endproc

	.globl	gimp_templates_migrate
	.align	16, 0x90
	.type	gimp_templates_migrate,@function
gimp_templates_migrate:                 # @gimp_templates_migrate
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_template_get_type
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movabsq	$.L.str.3, %rdi
	movq	%rax, -16(%rbp)
	callq	gimp_personal_rc_file
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	je	.LBB2_7
# BB#1:                                 # %if.then
	callq	gimp_sysconf_directory
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_5
# BB#2:                                 # %land.lhs.true
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB2_4
# BB#3:                                 # %lor.lhs.false
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB2_5
.LBB2_4:                                # %if.then.13
	movabsq	$gimp_templates_migrate_get_child_by_name, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_config_deserialize_file
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 224(%rdx)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	gimp_config_deserialize_file
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB2_6:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_list_reverse
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	-152(%rbp), %r9         # 8-byte Reload
	callq	gimp_config_serialize_to_file
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB2_7:                                # %if.end.29
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_templates_migrate, .Lfunc_end2-gimp_templates_migrate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_templates_migrate_get_child_by_name,@function
gimp_templates_migrate_get_child_by_name: # @gimp_templates_migrate_get_child_by_name
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	$-1, %rsi
	movq	%rax, %rdi
	callq	g_ascii_strdown
	movq	$-1, %rsi
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_ascii_strdown
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.10, %rsi
	movq	-56(%rbp), %rdi
	callq	strstr
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB3_8
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.11, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rdi
	callq	strncpy
	movabsq	$.L.str.12, %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	g_print
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_7
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.16
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.17
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_13
.LBB3_12:                               # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_13
.LBB3_13:                               # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_1
.LBB3_14:                               # %for.end
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_templates_migrate_get_child_by_name, .Lfunc_end3-gimp_templates_migrate_get_child_by_name
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_templates_load,@object # @__func__.gimp_templates_load
.L__func__.gimp_templates_load:
	.asciz	"gimp_templates_load"
	.size	.L__func__.gimp_templates_load, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_LIST (gimp->templates)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"templaterc"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP templaterc\n\nThis file will be entirely rewritten each time you exit."
	.size	.L.str.5, 74

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"end of templaterc"
	.size	.L.str.6, 18

	.type	.L__func__.gimp_templates_save,@object # @__func__.gimp_templates_save
.L__func__.gimp_templates_save:
	.asciz	"gimp_templates_save"
	.size	.L__func__.gimp_templates_save, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Writing '%s'\n"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"2.0"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2.2"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dpi"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ppi"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"replaced: %s\n"
	.size	.L.str.12, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
