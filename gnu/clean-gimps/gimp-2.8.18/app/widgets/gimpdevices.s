	.text
	.file	"gimpdevices.bc"
	.globl	gimp_devices_init
	.align	16, 0x90
	.type	gimp_devices_init,@function
gimp_devices_init:                      # @gimp_devices_init
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	cmpq	$0, -16(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.15
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_init, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_16:                               # %if.end.17
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.18
	movq	-8(%rbp), %rdi
	callq	gimp_device_manager_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movabsq	$g_object_unref, %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	g_object_set_data_full
.LBB0_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_devices_init, .Lfunc_end0-gimp_devices_init
	.cfi_endproc

	.globl	gimp_devices_exit
	.align	16, 0x90
	.type	gimp_devices_exit,@function
gimp_devices_exit:                      # @gimp_devices_exit
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_25
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.12
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_device_manager_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB1_19:                               # %if.end.32
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.36
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_exit, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_25
.LBB1_23:                               # %if.end.38
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.39
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB1_25:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_devices_exit, .Lfunc_end1-gimp_devices_exit
	.cfi_endproc

	.globl	gimp_devices_get_manager
	.align	16, 0x90
	.type	gimp_devices_get_manager,@function
gimp_devices_get_manager:               # @gimp_devices_get_manager
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_get_manager, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_25
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_device_manager_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.22
	movl	$0, -68(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.23
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.26
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.30
	movl	$1, -68(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.31
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_19:                               # %if.end.33
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.34
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.37
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.38
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_get_manager, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_25
.LBB2_23:                               # %if.end.39
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.40
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_devices_get_manager, .Lfunc_end2-gimp_devices_get_manager
	.cfi_endproc

	.globl	gimp_devices_restore
	.align	16, 0x90
	.type	gimp_devices_restore,@function
gimp_devices_restore:                   # @gimp_devices_restore
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
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
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_restore, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_38
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.12
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_device_manager_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_19:                               # %if.end.32
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.36
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_restore, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_38
.LBB3_23:                               # %if.end.38
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.39
	movq	-8(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB3_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_31
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15600, %edx            # imm = 0x3CF0
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_copy_properties
	movq	-112(%rbp), %rdi
	callq	gimp_device_info_set_default_tool
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB3_25 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB3_30
.LBB3_29:                               # %cond.false
                                        #   in Loop: Header=BB3_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB3_30
.LBB3_30:                               # %cond.end
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_25
.LBB3_31:                               # %for.end
	movabsq	$.L.str.5, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB3_33
# BB#32:                                # %if.then.51
	movq	-48(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.6, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB3_33:                               # %if.end.53
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	jne	.LBB3_37
# BB#34:                                # %if.then.58
	movq	-56(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB3_36
# BB#35:                                # %if.then.60
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
.LBB3_36:                               # %if.end.61
	movq	-56(%rbp), %rdi
	callq	g_error_free
.LBB3_37:                               # %if.end.62
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	gimp_device_manager_get_current_device
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15600, %edx            # imm = 0x3CF0
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_copy_properties
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_parent
.LBB3_38:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_devices_restore, .Lfunc_end3-gimp_devices_restore
	.cfi_endproc

	.globl	gimp_devices_save
	.align	16, 0x90
	.type	gimp_devices_save,@function
gimp_devices_save:                      # @gimp_devices_save
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_device_manager_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_19:                               # %if.end.32
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.36
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_save, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_23:                               # %if.end.38
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.39
	cmpl	$0, devicerc_deleted
	je	.LBB4_27
# BB#25:                                # %land.lhs.true.41
	cmpl	$0, -12(%rbp)
	jne	.LBB4_27
# BB#26:                                # %if.then.43
	jmp	.LBB4_32
.LBB4_27:                               # %if.end.44
	movabsq	$.L.str.5, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_29
# BB#28:                                # %if.then.47
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB4_29:                               # %if.end.49
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	-40(%rbp), %r9
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_file
	cmpl	$0, %eax
	jne	.LBB4_31
# BB#30:                                # %if.then.54
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-40(%rbp), %rdi
	callq	g_error_free
.LBB4_31:                               # %if.end.55
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$0, devicerc_deleted
.LBB4_32:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_devices_save, .Lfunc_end4-gimp_devices_save
	.cfi_endproc

	.globl	gimp_devices_clear
	.align	16, 0x90
	.type	gimp_devices_clear,@function
gimp_devices_clear:                     # @gimp_devices_clear
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_clear, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_29
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.12
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_device_manager_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB5_19:                               # %if.end.32
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.36
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_clear, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_29
.LBB5_23:                               # %if.end.38
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.39
	movabsq	$.L.str.5, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_unlink
	cmpl	$0, %eax
	je	.LBB5_27
# BB#25:                                # %land.lhs.true.43
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB5_27
# BB#26:                                # %if.then.46
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.10, %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movl	-112(%rbp), %edx        # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -44(%rbp)
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.54
	movl	$1, devicerc_deleted
.LBB5_28:                               # %if.end.55
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_devices_clear, .Lfunc_end5-gimp_devices_clear
	.cfi_endproc

	.globl	gimp_devices_add_widget
	.align	16, 0x90
	.type	gimp_devices_add_widget,@function
gimp_devices_add_widget:                # @gimp_devices_add_widget
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_add_widget, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_add_widget, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_set_extension_events
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_devices_check_callback, %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB6_25:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_devices_add_widget, .Lfunc_end6-gimp_devices_add_widget
	.cfi_endproc

	.globl	gimp_devices_check_callback
	.align	16, 0x90
	.type	gimp_devices_check_callback,@function
gimp_devices_check_callback:            # @gimp_devices_check_callback
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_check_callback, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_20
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_8
# BB#7:                                 # %if.then.2
	movl	$0, -52(%rbp)
	jmp	.LBB7_13
.LBB7_8:                                # %if.else.3
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_11
# BB#9:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_11
# BB#10:                                # %if.then.7
	movl	$1, -52(%rbp)
	jmp	.LBB7_12
.LBB7_11:                               # %if.else.8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_12:                               # %if.end.10
	jmp	.LBB7_13
.LBB7_13:                               # %if.end.11
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_check_callback, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_20
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-32(%rbp), %rax
	cmpl	$0, 308(%rax)
	jne	.LBB7_19
# BB#18:                                # %if.then.18
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_devices_check_change
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB7_19:                               # %if.end.20
	movl	$0, -4(%rbp)
.LBB7_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_devices_check_callback, .Lfunc_end7-gimp_devices_check_callback
	.cfi_endproc

	.globl	gimp_devices_check_change
	.align	16, 0x90
	.type	gimp_devices_check_change,@function
gimp_devices_check_change:              # @gimp_devices_check_change
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_check_change, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_41
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_check_change, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_41
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-16(%rbp), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -32(%rbp)
# BB#18:                                # %do.body.18
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_device_manager_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB8_20
# BB#19:                                # %if.then.27
	movl	$0, -100(%rbp)
	jmp	.LBB8_25
.LBB8_20:                               # %if.else.28
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_23
# BB#21:                                # %land.lhs.true.31
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB8_23
# BB#22:                                # %if.then.35
	movl	$1, -100(%rbp)
	jmp	.LBB8_24
.LBB8_23:                               # %if.else.36
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB8_24:                               # %if.end.38
	jmp	.LBB8_25
.LBB8_25:                               # %if.end.39
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB8_27
# BB#26:                                # %if.then.42
	jmp	.LBB8_28
.LBB8_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_devices_check_change, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_41
.LBB8_28:                               # %if.end.44
	jmp	.LBB8_29
.LBB8_29:                               # %do.end.45
	movq	-24(%rbp), %rdi
	callq	gtk_get_event_widget
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_32
# BB#30:                                # %land.lhs.true.48
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_extension_events
	cmpl	$0, %eax
	jne	.LBB8_32
# BB#31:                                # %if.then.51
	movl	$0, -4(%rbp)
	jmp	.LBB8_41
.LBB8_32:                               # %if.end.52
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$3, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%edx, -112(%rbp)        # 4-byte Spill
	je	.LBB8_33
	jmp	.LBB8_42
.LBB8_42:                               # %if.end.52
	movl	-108(%rbp), %eax        # 4-byte Reload
	addl	$-4, %eax
	subl	$4, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jb	.LBB8_34
	jmp	.LBB8_43
.LBB8_43:                               # %if.end.52
	movl	-108(%rbp), %eax        # 4-byte Reload
	addl	$-20, %eax
	subl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jb	.LBB8_35
	jmp	.LBB8_44
.LBB8_44:                               # %if.end.52
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$31, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB8_36
	jmp	.LBB8_37
.LBB8_33:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_38
.LBB8_34:                               # %sw.bb.54
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_38
.LBB8_35:                               # %sw.bb.56
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_38
.LBB8_36:                               # %sw.bb.58
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_38
.LBB8_37:                               # %sw.default
	movq	-32(%rbp), %rdi
	callq	gimp_device_manager_get_current_device
	movq	344(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB8_38:                               # %sw.epilog
	movq	-40(%rbp), %rdi
	callq	gimp_device_info_get_by_device
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_device_manager_get_current_device
	movq	-136(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB8_40
# BB#39:                                # %if.then.65
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_device_manager_set_current_device
	movl	$1, -4(%rbp)
	jmp	.LBB8_41
.LBB8_40:                               # %if.end.66
	movl	$0, -4(%rbp)
.LBB8_41:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_devices_check_change, .Lfunc_end8-gimp_devices_check_change
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_devices_init,@object # @__func__.gimp_devices_init
.L__func__.gimp_devices_init:
	.asciz	"gimp_devices_init"
	.size	.L__func__.gimp_devices_init, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-device-manager"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"manager == NULL"
	.size	.L.str.3, 16

	.type	.L__func__.gimp_devices_exit,@object # @__func__.gimp_devices_exit
.L__func__.gimp_devices_exit:
	.asciz	"gimp_devices_exit"
	.size	.L__func__.gimp_devices_exit, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_DEVICE_MANAGER (manager)"
	.size	.L.str.4, 33

	.type	.L__func__.gimp_devices_restore,@object # @__func__.gimp_devices_restore
.L__func__.gimp_devices_restore:
	.asciz	"gimp_devices_restore"
	.size	.L__func__.gimp_devices_restore, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"devicerc"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.6, 14

	.type	.L__func__.gimp_devices_save,@object # @__func__.gimp_devices_save
.L__func__.gimp_devices_save:
	.asciz	"gimp_devices_save"
	.size	.L__func__.gimp_devices_save, 18

	.type	devicerc_deleted,@object # @devicerc_deleted
	.local	devicerc_deleted
	.comm	devicerc_deleted,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Writing '%s'\n"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP devicerc"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"end of devicerc"
	.size	.L.str.9, 16

	.type	.L__func__.gimp_devices_clear,@object # @__func__.gimp_devices_clear
.L__func__.gimp_devices_clear:
	.asciz	"gimp_devices_clear"
	.size	.L__func__.gimp_devices_clear, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Deleting \"%s\" failed: %s"
	.size	.L.str.10, 25

	.type	.L__func__.gimp_devices_get_manager,@object # @__func__.gimp_devices_get_manager
.L__func__.gimp_devices_get_manager:
	.asciz	"gimp_devices_get_manager"
	.size	.L__func__.gimp_devices_get_manager, 25

	.type	.L__func__.gimp_devices_add_widget,@object # @__func__.gimp_devices_add_widget
.L__func__.gimp_devices_add_widget:
	.asciz	"gimp_devices_add_widget"
	.size	.L__func__.gimp_devices_add_widget, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"motion-notify-event"
	.size	.L.str.12, 20

	.type	.L__func__.gimp_devices_check_callback,@object # @__func__.gimp_devices_check_callback
.L__func__.gimp_devices_check_callback:
	.asciz	"gimp_devices_check_callback"
	.size	.L__func__.gimp_devices_check_callback, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"event != NULL"
	.size	.L.str.13, 14

	.type	.L__func__.gimp_devices_check_change,@object # @__func__.gimp_devices_check_change
.L__func__.gimp_devices_check_change:
	.asciz	"gimp_devices_check_change"
	.size	.L__func__.gimp_devices_check_change, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
