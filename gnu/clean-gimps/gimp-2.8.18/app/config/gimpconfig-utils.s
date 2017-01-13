	.text
	.file	"gimpconfig-utils.bc"
	.globl	gimp_config_connect
	.align	16, 0x90
	.type	gimp_config_connect,@function
gimp_config_connect:                    # @gimp_config_connect
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_config_connect, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_16
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB0_9
# BB#7:                                 # %land.lhs.true
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB0_9
# BB#8:                                 # %if.then.4
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_config_connect, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_16
.LBB0_10:                               # %if.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.end.7
	cmpq	$0, -24(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then.9
	movabsq	$.L.str.3, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -32(%rbp)
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.11
	movabsq	$.L.str.4, %rax
	movq	%rax, -32(%rbp)
.LBB0_14:                               # %if.end.12
	movabsq	$gimp_config_connect_notify, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$gimp_config_connect_notify, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	cmpq	$0, -24(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB0_16
# BB#15:                                # %if.then.16
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB0_16:                               # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_connect, .Lfunc_end0-gimp_config_connect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_connect_notify,@function
gimp_config_connect_notify:             # @gimp_config_connect_notify
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
	movq	-16(%rbp), %rdx
	movl	16(%rdx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB1_7
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_class_find_property
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_6
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB1_6
# BB#3:                                 # %land.lhs.true.3
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true.7
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_6
# BB#5:                                 # %if.then.11
	leaq	-56(%rbp), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	memset
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	g_value_init
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_object_get_property
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_config_connect_notify, %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	8(%r8), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_object_set_property
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_config_connect_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	leaq	-56(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_value_unset
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.18
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_config_connect_notify, .Lfunc_end1-gimp_config_connect_notify
	.cfi_endproc

	.globl	gimp_config_connect_full
	.align	16, 0x90
	.type	gimp_config_connect_full,@function
gimp_config_connect_full:               # @gimp_config_connect_full
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_config_connect_full, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_22
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB2_9
# BB#8:                                 # %if.then.4
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_config_connect_full, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_22
.LBB2_10:                               # %if.end.6
	jmp	.LBB2_11
.LBB2_11:                               # %do.end.7
	jmp	.LBB2_12
.LBB2_12:                               # %do.body.8
	cmpq	$0, -24(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.10
	jmp	.LBB2_15
.LBB2_14:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_config_connect_full, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_22
.LBB2_15:                               # %if.end.12
	jmp	.LBB2_16
.LBB2_16:                               # %do.end.13
	jmp	.LBB2_17
.LBB2_17:                               # %do.body.14
	cmpq	$0, -32(%rbp)
	je	.LBB2_19
# BB#18:                                # %if.then.16
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_config_connect_full, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_22
.LBB2_20:                               # %if.end.18
	jmp	.LBB2_21
.LBB2_21:                               # %do.end.19
	movabsq	$.L.str.3, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.7, %rdi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$gimp_config_connect_full_notify, %rdx
	xorl	%r8d, %r8d
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	g_strdup
	movabsq	$g_free, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.3, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.7, %rdi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$gimp_config_connect_full_notify, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	g_strdup
	movabsq	$g_free, %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB2_22:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_config_connect_full, .Lfunc_end2-gimp_config_connect_full
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_connect_full_notify,@function
gimp_config_connect_full_notify:        # @gimp_config_connect_full_notify
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	16(%rdx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB3_9
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rdi
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, -40(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_class_find_property
	movq	%rax, -48(%rbp)
.LBB3_3:                                # %if.end
	cmpq	$0, -48(%rbp)
	je	.LBB3_8
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB3_8
# BB#5:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB3_8
# BB#6:                                 # %land.lhs.true.11
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_8
# BB#7:                                 # %if.then.15
	leaq	-72(%rbp), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	memset
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	g_value_init
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_object_get_property
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_config_connect_full_notify, %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_object_set_property
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_config_connect_full_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	leaq	-72(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_value_unset
.LBB3_8:                                # %if.end.21
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.22
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_config_connect_full_notify, .Lfunc_end3-gimp_config_connect_full_notify
	.cfi_endproc

	.globl	gimp_config_disconnect
	.align	16, 0x90
	.type	gimp_config_disconnect,@function
gimp_config_disconnect:                 # @gimp_config_disconnect
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB4_4
# BB#3:                                 # %if.then
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_config_disconnect, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_7
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_config_connect_notify, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_config_connect_notify, %rdi
	movq	-8(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB4_7:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_config_disconnect, .Lfunc_end4-gimp_config_disconnect
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Config"
	.size	.L.str, 12

	.type	.L__func__.gimp_config_connect,@object # @__func__.gimp_config_connect
.L__func__.gimp_config_connect:
	.asciz	"gimp_config_connect"
	.size	.L__func__.gimp_config_connect, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"a != b"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"G_IS_OBJECT (a) && G_IS_OBJECT (b)"
	.size	.L.str.2, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"notify::"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"notify"
	.size	.L.str.4, 7

	.type	.L__func__.gimp_config_connect_full,@object # @__func__.gimp_config_connect_full
.L__func__.gimp_config_connect_full:
	.asciz	"gimp_config_connect_full"
	.size	.L__func__.gimp_config_connect_full, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"property_name_a != NULL"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"property_name_b != NULL"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%p-%s"
	.size	.L.str.7, 6

	.type	.L__func__.gimp_config_disconnect,@object # @__func__.gimp_config_disconnect
.L__func__.gimp_config_disconnect:
	.asciz	"gimp_config_disconnect"
	.size	.L__func__.gimp_config_disconnect, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
