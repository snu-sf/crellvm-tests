	.text
	.file	"gimpconfig-iface.bc"
	.globl	gimp_config_interface_get_type
	.align	16, 0x90
	.type	gimp_config_interface_get_type,@function
gimp_config_interface_get_type:         # @gimp_config_interface_get_type
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
	cmpq	$0, gimp_config_interface_get_type.config_iface_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	leaq	gimp_config_interface_get_type.config_iface_info(%rip), %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, gimp_config_interface_get_type.config_iface_type(%rip)
	movq	gimp_config_interface_get_type.config_iface_type(%rip), %rdi
	callq	g_type_interface_add_prerequisite@PLT
.LBB0_2:                                # %if.end
	movq	gimp_config_interface_get_type.config_iface_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_interface_get_type, .Lfunc_end0-gimp_config_interface_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_iface_base_init,@function
gimp_config_iface_base_init:            # @gimp_config_iface_base_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	gimp_config_iface_copy(%rip), %rax
	leaq	gimp_config_iface_reset(%rip), %rcx
	leaq	gimp_config_iface_equal(%rip), %rdx
	leaq	gimp_config_iface_duplicate(%rip), %rsi
	leaq	gimp_config_iface_deserialize(%rip), %rdi
	leaq	gimp_config_iface_serialize(%rip), %r8
	movq	-8(%rbp), %r9
	movq	%r8, 16(%r9)
	movq	-8(%rbp), %r8
	movq	%rdi, 24(%r8)
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_config_iface_base_init, .Lfunc_end1-gimp_config_iface_base_init
	.cfi_endproc

	.globl	gimp_config_serialize_to_file
	.align	16, 0x90
	.type	gimp_config_serialize_to_file,@function
gimp_config_serialize_to_file:          # @gimp_config_serialize_to_file
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_serialize_to_file(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB2_26
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_serialize_to_file(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB2_26
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	cmpq	$0, -56(%rbp)
	je	.LBB2_20
# BB#19:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_21
.LBB2_20:                               # %if.then.20
	jmp	.LBB2_22
.LBB2_21:                               # %if.else.21
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_serialize_to_file(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB2_26
.LBB2_22:                               # %if.end.22
	jmp	.LBB2_23
.LBB2_23:                               # %do.end.23
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	gimp_config_writer_new_file@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_25
# BB#24:                                # %if.then.26
	movl	$0, -4(%rbp)
	jmp	.LBB2_26
.LBB2_25:                               # %if.end.27
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	*%rax
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_config_writer_finish@PLT
	movl	%eax, -4(%rbp)
.LBB2_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_config_serialize_to_file, .Lfunc_end2-gimp_config_serialize_to_file
	.cfi_endproc

	.globl	gimp_config_serialize_to_fd
	.align	16, 0x90
	.type	gimp_config_serialize_to_fd,@function
gimp_config_serialize_to_fd:            # @gimp_config_serialize_to_fd
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
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_config_interface_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_serialize_to_fd(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB3_20
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jle	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_serialize_to_fd(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB3_20
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movl	-20(%rbp), %edi
	callq	gimp_config_writer_new_fd@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_19
# BB#18:                                # %if.then.19
	movl	$0, -4(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.end.20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi
	movq	%rdx, %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_config_writer_finish@PLT
	movl	%eax, -4(%rbp)
.LBB3_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_config_serialize_to_fd, .Lfunc_end3-gimp_config_serialize_to_fd
	.cfi_endproc

	.globl	gimp_config_serialize_to_string
	.align	16, 0x90
	.type	gimp_config_serialize_to_string,@function
gimp_config_serialize_to_string:        # @gimp_config_serialize_to_string
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_serialize_to_string(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_new_string@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi
	movq	%rdx, %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_config_writer_finish@PLT
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_string_free@PLT
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_config_serialize_to_string, .Lfunc_end4-gimp_config_serialize_to_string
	.cfi_endproc

	.globl	gimp_config_deserialize_file
	.align	16, 0x90
	.type	gimp_config_deserialize_file,@function
gimp_config_deserialize_file:           # @gimp_config_deserialize_file
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize_file(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_34
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize_file(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_34
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB5_20
# BB#19:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_21
.LBB5_20:                               # %if.then.20
	jmp	.LBB5_22
.LBB5_21:                               # %if.else.21
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize_file(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_34
.LBB5_22:                               # %if.end.22
	jmp	.LBB5_23
.LBB5_23:                               # %do.end.23
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_scanner_new_file@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_25
# BB#24:                                # %if.then.26
	movl	$0, -4(%rbp)
	jmp	.LBB5_34
.LBB5_25:                               # %if.end.27
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	xorl	%edx, %edx
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	*%rax
	movl	$80, %edx
	movl	%edx, %esi
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	movq	-48(%rbp), %rdi
	callq	gimp_scanner_destroy@PLT
	cmpl	$0, -52(%rbp)
	jne	.LBB5_33
# BB#26:                                # %if.then.35
	jmp	.LBB5_27
.LBB5_27:                               # %do.body.36
	cmpq	$0, -40(%rbp)
	je	.LBB5_29
# BB#28:                                # %lor.lhs.false.38
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_30
.LBB5_29:                               # %if.then.40
	jmp	.LBB5_31
.LBB5_30:                               # %if.else.41
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$405, %edx              # imm = 0x195
	leaq	.L__func__.gimp_config_deserialize_file(%rip), %rcx
	leaq	.L.str.7(%rip), %r8
	callq	g_assertion_message_expr@PLT
.LBB5_31:                               # %if.end.42
	jmp	.LBB5_32
.LBB5_32:                               # %do.end.43
	jmp	.LBB5_33
.LBB5_33:                               # %if.end.44
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_34:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_config_deserialize_file, .Lfunc_end5-gimp_config_deserialize_file
	.cfi_endproc

	.globl	gimp_config_deserialize_string
	.align	16, 0x90
	.type	gimp_config_deserialize_string,@function
gimp_config_deserialize_string:         # @gimp_config_deserialize_string
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize_string(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_33
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	jne	.LBB6_15
# BB#14:                                # %lor.lhs.false
	cmpl	$0, -28(%rbp)
	jne	.LBB6_16
.LBB6_15:                               # %if.then.14
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize_string(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_33
.LBB6_17:                               # %if.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.end.17
	jmp	.LBB6_19
.LBB6_19:                               # %do.body.18
	cmpq	$0, -48(%rbp)
	je	.LBB6_21
# BB#20:                                # %lor.lhs.false.20
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_22
.LBB6_21:                               # %if.then.22
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.23
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize_string(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_33
.LBB6_23:                               # %if.end.24
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.25
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-48(%rbp), %rdx
	callq	gimp_scanner_new_string@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	xorl	%edx, %edx
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rcx
	callq	*%rax
	movl	$80, %edx
	movl	%edx, %esi
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	movq	-56(%rbp), %rdi
	callq	gimp_scanner_destroy@PLT
	cmpl	$0, -60(%rbp)
	jne	.LBB6_32
# BB#25:                                # %if.then.34
	jmp	.LBB6_26
.LBB6_26:                               # %do.body.35
	cmpq	$0, -48(%rbp)
	je	.LBB6_28
# BB#27:                                # %lor.lhs.false.37
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_29
.LBB6_28:                               # %if.then.39
	jmp	.LBB6_30
.LBB6_29:                               # %if.else.40
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$452, %edx              # imm = 0x1C4
	leaq	.L__func__.gimp_config_deserialize_string(%rip), %rcx
	leaq	.L.str.7(%rip), %r8
	callq	g_assertion_message_expr@PLT
.LBB6_30:                               # %if.end.41
	jmp	.LBB6_31
.LBB6_31:                               # %do.end.42
	jmp	.LBB6_32
.LBB6_32:                               # %if.end.43
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_config_deserialize_string, .Lfunc_end6-gimp_config_deserialize_string
	.cfi_endproc

	.globl	gimp_config_deserialize_return
	.align	16, 0x90
	.type	gimp_config_deserialize_return,@function
gimp_config_deserialize_return:         # @gimp_config_deserialize_return
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize_return(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_15
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	movl	%eax, -28(%rbp)
	cmpl	$40, -20(%rbp)
	je	.LBB7_7
# BB#6:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$1, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_15
.LBB7_7:                                # %if.else.5
	cmpl	$0, -24(%rbp)
	jle	.LBB7_10
# BB#8:                                 # %land.lhs.true
	cmpl	$41, -28(%rbp)
	jne	.LBB7_10
# BB#9:                                 # %if.then.8
	movl	$1, -4(%rbp)
	jmp	.LBB7_15
.LBB7_10:                               # %if.else.9
	cmpl	$0, -28(%rbp)
	je	.LBB7_12
# BB#11:                                # %if.then.11
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$1, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-72(%rbp), %esi         # 4-byte Reload
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_15
.LBB7_12:                               # %if.end.14
	jmp	.LBB7_13
.LBB7_13:                               # %if.end.15
	jmp	.LBB7_14
.LBB7_14:                               # %if.end.16
	movl	$1, -4(%rbp)
.LBB7_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_config_deserialize_return, .Lfunc_end7-gimp_config_deserialize_return
	.cfi_endproc

	.globl	gimp_config_serialize
	.align	16, 0x90
	.type	gimp_config_serialize,@function
gimp_config_serialize:                  # @gimp_config_serialize
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_serialize(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_config_serialize, .Lfunc_end8-gimp_config_serialize
	.cfi_endproc

	.globl	gimp_config_deserialize
	.align	16, 0x90
	.type	gimp_config_deserialize,@function
gimp_config_deserialize:                # @gimp_config_deserialize
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_config_interface_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_config_deserialize, .Lfunc_end9-gimp_config_deserialize
	.cfi_endproc

	.globl	gimp_config_duplicate
	.align	16, 0x90
	.type	gimp_config_duplicate,@function
gimp_config_duplicate:                  # @gimp_config_duplicate
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_duplicate(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB10_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_config_duplicate, .Lfunc_end10-gimp_config_duplicate
	.cfi_endproc

	.globl	gimp_config_is_equal_to
	.align	16, 0x90
	.type	gimp_config_is_equal_to,@function
gimp_config_is_equal_to:                # @gimp_config_is_equal_to
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_config_interface_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_is_equal_to(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB11_30
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_is_equal_to(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB11_30
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	jmp	.LBB11_25
.LBB11_25:                              # %do.body.39
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB11_27
# BB#26:                                # %if.then.45
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.46
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_is_equal_to(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB11_30
.LBB11_28:                              # %if.end.47
	jmp	.LBB11_29
.LBB11_29:                              # %do.end.48
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB11_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_config_is_equal_to, .Lfunc_end11-gimp_config_is_equal_to
	.cfi_endproc

	.globl	gimp_config_reset
	.align	16, 0x90
	.type	gimp_config_reset,@function
gimp_config_reset:                      # @gimp_config_reset
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_reset(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
.LBB12_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_config_reset, .Lfunc_end12-gimp_config_reset
	.cfi_endproc

	.globl	gimp_config_copy
	.align	16, 0x90
	.type	gimp_config_copy,@function
gimp_config_copy:                       # @gimp_config_copy
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_copy(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB13_30
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_copy(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB13_30
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	jmp	.LBB13_25
.LBB13_25:                              # %do.body.39
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB13_27
# BB#26:                                # %if.then.45
	jmp	.LBB13_28
.LBB13_27:                              # %if.else.46
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_config_copy(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB13_30
.LBB13_28:                              # %if.end.47
	jmp	.LBB13_29
.LBB13_29:                              # %do.end.48
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	*%rax
	movl	$80, %edx
	movl	%edx, %esi
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	movl	-32(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB13_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_config_copy, .Lfunc_end13-gimp_config_copy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_iface_serialize,@function
gimp_config_iface_serialize:            # @gimp_config_iface_serialize
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_config_serialize_properties@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_config_iface_serialize, .Lfunc_end14-gimp_config_iface_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_iface_deserialize,@function
gimp_config_iface_deserialize:          # @gimp_config_iface_deserialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_config_deserialize_properties@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_config_iface_deserialize, .Lfunc_end15-gimp_config_iface_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_iface_duplicate,@function
gimp_config_iface_duplicate:            # @gimp_config_iface_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	-36(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_object_class_list_properties@PLT
	movl	$32, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, %edi
	callq	g_malloc0_n@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -56(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB16_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB16_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-72(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-72(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB16_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movslq	%eax, %rdx
	shlq	$5, %rdx
	addq	-48(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-80(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-80(%rbp), %rdx
	addq	$8, %rdx
	movq	-72(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rdx, %rdi
	callq	g_value_init@PLT
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	-80(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_object_get_property@PLT
.LBB16_6:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_7
.LBB16_7:                               # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB16_1
.LBB16_8:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rdx
	callq	g_object_newv@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -56(%rbp)
.LBB16_9:                               # %for.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB16_12
# BB#10:                                # %for.body.23
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shlq	$5, %rcx
	addq	-48(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	g_value_unset@PLT
# BB#11:                                # %for.inc.27
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB16_9
.LBB16_12:                              # %for.end.29
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy@PLT
	movq	-64(%rbp), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_config_iface_duplicate, .Lfunc_end16-gimp_config_iface_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_iface_equal,@function
gimp_config_iface_equal:                # @gimp_config_iface_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	leaq	-36(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -44(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_object_class_list_properties@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -40(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -44(%rbp)
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB17_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	setb	%cl
	movb	%cl, -129(%rbp)         # 1-byte Spill
.LBB17_3:                               # %land.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_4
	jmp	.LBB17_24
.LBB17_4:                               # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-104(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	memset@PLT
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	memset@PLT
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movl	16(%rdx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB17_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_23
.LBB17_6:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	-80(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	leaq	-104(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_value_init@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	-80(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_get_property@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	-104(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_get_property@PLT
	leaq	-80(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-56(%rbp), %rdi
	callq	g_param_values_cmp@PLT
	cmpl	$0, %eax
	je	.LBB17_22
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	je	.LBB17_20
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB17_10
# BB#9:                                 # %if.then.16
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$0, -124(%rbp)
	jmp	.LBB17_15
.LBB17_10:                              # %if.else
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_13
# BB#11:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB17_13
# BB#12:                                # %if.then.22
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$1, -124(%rbp)
	jmp	.LBB17_14
.LBB17_13:                              # %if.else.23
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -124(%rbp)
.LBB17_14:                              # %if.end.25
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_15
.LBB17_15:                              # %if.end.26
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB17_20
# BB#16:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	cmpq	$0, %rax
	je	.LBB17_20
# BB#17:                                # %if.then.34
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	-80(%rbp), %rdi
	callq	g_value_get_object@PLT
	leaq	-104(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_value_get_object@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_is_equal_to@PLT
	cmpl	$0, %eax
	jne	.LBB17_19
# BB#18:                                # %if.then.39
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$0, -44(%rbp)
.LBB17_19:                              # %if.end.40
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_21
.LBB17_20:                              # %if.else.41
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$0, -44(%rbp)
.LBB17_21:                              # %if.end.42
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_22
.LBB17_22:                              # %if.end.43
                                        #   in Loop: Header=BB17_1 Depth=1
	leaq	-80(%rbp), %rdi
	callq	g_value_unset@PLT
	leaq	-104(%rbp), %rdi
	callq	g_value_unset@PLT
.LBB17_23:                              # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB17_1
.LBB17_24:                              # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movl	-44(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_config_iface_equal, .Lfunc_end17-gimp_config_iface_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_iface_reset,@function
gimp_config_iface_reset:                # @gimp_config_iface_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_config_reset_properties@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_config_iface_reset, .Lfunc_end18-gimp_config_iface_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_iface_copy,@function
gimp_config_iface_copy:                 # @gimp_config_iface_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_config_iface_copy, .Lfunc_end19-gimp_config_iface_copy
	.cfi_endproc

	.type	gimp_config_interface_get_type.config_iface_type,@object # @gimp_config_interface_get_type.config_iface_type
	.local	gimp_config_interface_get_type.config_iface_type
	.comm	gimp_config_interface_get_type.config_iface_type,8,8
	.type	gimp_config_interface_get_type.config_iface_info,@object # @gimp_config_interface_get_type.config_iface_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_config_interface_get_type.config_iface_info:
	.short	80                      # 0x50
	.zero	6
	.quad	gimp_config_iface_base_init
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_config_interface_get_type.config_iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpConfigInterface"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpConfig"
	.size	.L.str.1, 14

	.type	.L__func__.gimp_config_serialize_to_file,@object # @__func__.gimp_config_serialize_to_file
.L__func__.gimp_config_serialize_to_file:
	.asciz	"gimp_config_serialize_to_file"
	.size	.L__func__.gimp_config_serialize_to_file, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONFIG (config)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"filename != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L__func__.gimp_config_serialize_to_fd,@object # @__func__.gimp_config_serialize_to_fd
.L__func__.gimp_config_serialize_to_fd:
	.asciz	"gimp_config_serialize_to_fd"
	.size	.L__func__.gimp_config_serialize_to_fd, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"fd > 0"
	.size	.L.str.5, 7

	.type	.L__func__.gimp_config_serialize_to_string,@object # @__func__.gimp_config_serialize_to_string
.L__func__.gimp_config_serialize_to_string:
	.asciz	"gimp_config_serialize_to_string"
	.size	.L__func__.gimp_config_serialize_to_string, 32

	.type	.L__func__.gimp_config_deserialize_file,@object # @__func__.gimp_config_deserialize_file
.L__func__.gimp_config_deserialize_file:
	.asciz	"gimp_config_deserialize_file"
	.size	.L__func__.gimp_config_deserialize_file, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpconfig-iface.c"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"error == NULL || *error != NULL"
	.size	.L.str.7, 32

	.type	.L__func__.gimp_config_deserialize_string,@object # @__func__.gimp_config_deserialize_string
.L__func__.gimp_config_deserialize_string:
	.asciz	"gimp_config_deserialize_string"
	.size	.L__func__.gimp_config_deserialize_string, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"text != NULL || text_len == 0"
	.size	.L.str.8, 30

	.type	.L__func__.gimp_config_deserialize_return,@object # @__func__.gimp_config_deserialize_return
.L__func__.gimp_config_deserialize_return:
	.asciz	"gimp_config_deserialize_return"
	.size	.L__func__.gimp_config_deserialize_return, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"scanner != NULL"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp20-libgimp"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fatal parse error"
	.size	.L.str.11, 18

	.type	.L__func__.gimp_config_serialize,@object # @__func__.gimp_config_serialize
.L__func__.gimp_config_serialize:
	.asciz	"gimp_config_serialize"
	.size	.L__func__.gimp_config_serialize, 22

	.type	.L__func__.gimp_config_deserialize,@object # @__func__.gimp_config_deserialize
.L__func__.gimp_config_deserialize:
	.asciz	"gimp_config_deserialize"
	.size	.L__func__.gimp_config_deserialize, 24

	.type	.L__func__.gimp_config_duplicate,@object # @__func__.gimp_config_duplicate
.L__func__.gimp_config_duplicate:
	.asciz	"gimp_config_duplicate"
	.size	.L__func__.gimp_config_duplicate, 22

	.type	.L__func__.gimp_config_is_equal_to,@object # @__func__.gimp_config_is_equal_to
.L__func__.gimp_config_is_equal_to:
	.asciz	"gimp_config_is_equal_to"
	.size	.L__func__.gimp_config_is_equal_to, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_CONFIG (a)"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_CONFIG (b)"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"G_TYPE_FROM_INSTANCE (a) == G_TYPE_FROM_INSTANCE (b)"
	.size	.L.str.14, 53

	.type	.L__func__.gimp_config_reset,@object # @__func__.gimp_config_reset
.L__func__.gimp_config_reset:
	.asciz	"gimp_config_reset"
	.size	.L__func__.gimp_config_reset, 18

	.type	.L__func__.gimp_config_copy,@object # @__func__.gimp_config_copy
.L__func__.gimp_config_copy:
	.asciz	"gimp_config_copy"
	.size	.L__func__.gimp_config_copy, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_CONFIG (src)"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_IS_CONFIG (dest)"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"G_TYPE_FROM_INSTANCE (src) == G_TYPE_FROM_INSTANCE (dest)"
	.size	.L.str.17, 58


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
