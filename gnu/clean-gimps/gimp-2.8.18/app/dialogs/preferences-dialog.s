	.text
	.file	"preferences-dialog.bc"
	.globl	preferences_dialog_create
	.align	16, 0x90
	.type	preferences_dialog_create,@function
preferences_dialog_create:              # @preferences_dialog_create
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.preferences_dialog_create, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	cmpq	$0, prefs_dialog
	je	.LBB0_14
# BB#13:                                # %if.then.12
	movq	prefs_dialog, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_rc_set_autosave
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_config_duplicate
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.2, %rsi
	movabsq	$prefs_config_notify, %rdi
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.2, %rsi
	movabsq	$prefs_config_copy_notify, %rcx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	prefs_dialog_new
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, prefs_dialog
	movq	prefs_dialog, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$prefs_dialog, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	prefs_dialog, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	prefs_dialog, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movabsq	$g_object_unref, %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	prefs_dialog, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movabsq	$g_object_unref, %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full
	movq	prefs_dialog, %rax
	movq	%rax, -8(%rbp)
.LBB0_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	preferences_dialog_create, .Lfunc_end0-preferences_dialog_create
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_config_notify,@function
prefs_config_notify:                    # @prefs_config_notify
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
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memset
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-72(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_value_init
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_object_get_property
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_get_property
	leaq	-48(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	g_param_values_cmp
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$prefs_config_copy_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	8(%r8), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_object_set_property
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$prefs_config_copy_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB1_2:                                # %if.end
	leaq	-48(%rbp), %rdi
	callq	g_value_unset
	leaq	-72(%rbp), %rdi
	callq	g_value_unset
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	prefs_config_notify, .Lfunc_end1-prefs_config_notify
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_config_copy_notify,@function
prefs_config_copy_notify:               # @prefs_config_copy_notify
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
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memset
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-72(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_value_init
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_object_get_property
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_object_get_property
	leaq	-48(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	g_param_values_cmp
	cmpl	$0, %eax
	je	.LBB2_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB2_3
# BB#2:                                 # %if.then.6
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$prefs_config_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	8(%r8), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_object_set_property
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$prefs_config_notify, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.10
	leaq	-48(%rbp), %rdi
	callq	g_value_unset
	leaq	-72(%rbp), %rdi
	callq	g_value_unset
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	prefs_config_copy_notify, .Lfunc_end2-prefs_config_copy_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4616189618054758400     # double 4
.LCPI3_2:
	.quad	4617315517961601024     # double 5
.LCPI3_3:
	.quad	4608083138725491507     # double 1.2
.LCPI3_5:
	.quad	4621819117588971520     # double 10
.LCPI3_6:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_4:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	prefs_dialog_new,@function
prefs_dialog_new:                       # @prefs_dialog_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$6760, %rsp             # imm = 0x1A68
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -200(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)
	callq	gimp_get_type
	movq	%rax, -368(%rbp)
	cmpq	$0, -360(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -372(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-360(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-368(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.4
	movl	$1, -372(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.5
	movq	-360(%rbp), %rdi
	movq	-368(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -372(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.7
	movl	-372(%rbp), %eax
	movl	%eax, -376(%rbp)
	cmpl	$0, -376(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.9
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.prefs_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_69
.LBB3_11:                               # %if.end.11
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.12
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)
	callq	gimp_config_interface_get_type
	movq	%rax, -392(%rbp)
	cmpq	$0, -384(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.21
	movl	$0, -396(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.22
	movq	-384(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.25
	movq	-384(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-392(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.29
	movl	$1, -396(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.30
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -396(%rbp)
.LBB3_19:                               # %if.end.32
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.33
	movl	-396(%rbp), %eax
	movl	%eax, -400(%rbp)
	cmpl	$0, -400(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.36
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.prefs_dialog_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_69
.LBB3_23:                               # %if.end.38
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.39
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -336(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_core_config_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -344(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	%rax, -352(%rbp)
	callq	gettext
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%ecx, %ecx
	movabsq	$prefs_help_func, %r8
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.11, %r11
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.12, %r14
	movl	$4294967291, %r15d      # imm = 0xFFFFFFFB
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -884(%rbp)       # 4-byte Spill
	movl	%ebx, -888(%rbp)        # 4-byte Spill
	movl	%r10d, -892(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.13, %rsi
	movabsq	$prefs_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	-72(%rbp), %r14
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-912(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-248(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-208(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-248(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -972(%rbp)        # 4-byte Spill
	movl	-972(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-208(%rbp), %rdi
	callq	gtk_widget_show
	callq	gdk_pixbuf_get_type
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gdk_pixbuf_get_type
	movl	$5, %edi
	movl	$64, %ecx
	movl	%ecx, %esi
	movl	$24, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-984(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -992(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-992(%rbp), %rdx        # 8-byte Reload
	movq	-992(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gtk_tree_store_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-80(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	callq	gtk_tree_view_column_new
	movq	%rax, -96(%rbp)
	callq	gtk_cell_renderer_pixbuf_new
	xorl	%edx, %edx
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.15, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-80(%rbp), %rdx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movq	-208(%rbp), %rdx
	movl	%eax, -1020(%rbp)       # 4-byte Spill
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -232(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-232(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-232(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_event_box_new
	movl	$3, %esi
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	gtk_widget_set_state
	movq	-232(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-216(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -1052(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-1052(%rbp), %r8d       # 4-byte Reload
	movl	%ecx, -1056(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	-1056(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-216(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-216(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-248(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-280(%rbp), %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	gtk_label_get_type
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movl	$4, %edx
	movl	$700, %ecx              # imm = 0x2BC
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-248(%rbp), %rdi
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1100(%rbp)       # 4-byte Spill
	movl	-1100(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-280(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_image_new
	movq	%rax, -288(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-288(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1116(%rbp)       # 4-byte Spill
	movl	-1116(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-288(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_notebook_new
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_tabs
	movq	-224(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_border
	movq	-232(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-224(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	-224(%rbp), %rdi
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1152(%rbp), %rdx       # 8-byte Reload
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	-280(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	-288(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-80(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movabsq	$.L.str.19, %rsi
	movabsq	$prefs_tree_select_callback, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-224(%rbp), %rdi
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rsi
	movabsq	$prefs_notebook_page_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-224(%rbp), %rdx
	movq	-112(%rbp), %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movl	$0, -188(%rbp)
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rcx
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movabsq	$.L.str.23, %rdx
	leaq	-152(%rbp), %rsi
	movl	-188(%rbp), %r10d
	movl	%r10d, %ebx
	addl	$1, %ebx
	movl	%ebx, -188(%rbp)
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	-1216(%rbp), %r8        # 8-byte Reload
	movq	%rsi, -1240(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	-1224(%rbp), %r11       # 8-byte Reload
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
	movq	%r11, %rdx
	movq	%rax, %r8
	movq	-1248(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-1240(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	%r10d, 24(%rsp)
	callq	prefs_notebook_append_page
	leaq	-152(%rbp), %rsi
	movq	%rax, -232(%rbp)
	movq	-112(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
	movl	$1, %edi
	callq	gtk_size_group_new
	movabsq	$.L.str.24, %rdi
	movq	%rax, -200(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	movq	%rcx, -1264(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.26, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	movq	%rcx, -1296(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	xorl	%edx, %edx
	movq	-200(%rbp), %rcx
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movl	%edx, -1300(%rbp)       # 4-byte Spill
	movq	-1288(%rbp), %r8        # 8-byte Reload
	movq	%rcx, -1312(%rbp)       # 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movl	-1300(%rbp), %r9d       # 4-byte Reload
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	callq	prefs_spin_button_add
	movabsq	$.L.str.28, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	movq	%rcx, -1328(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	movq	%rcx, -1344(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rsi
	movl	$1, %r8d
	movq	-200(%rbp), %r9
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	-1336(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_memsize_entry_add
	movabsq	$.L.str.30, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movl	$2, %r8d
	movq	-200(%rbp), %r9
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	-1368(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_memsize_entry_add
	movabsq	$.L.str.32, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	movq	%rcx, -1392(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	movq	%rcx, -1408(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movl	$3, %r8d
	movq	-200(%rbp), %r9
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	-1400(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_memsize_entry_add
	movabsq	$.L.str.34, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	movq	%rcx, -1424(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	movq	%rcx, -1440(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	xorl	%edx, %edx
	movl	$4, %r9d
	movq	-200(%rbp), %rcx
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movq	-1432(%rbp), %r11       # 8-byte Reload
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
	movq	%r11, %rcx
	movq	%rax, %r8
	movq	-1448(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	callq	prefs_spin_button_add
	movabsq	$.L.str.35, %rdi
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	movq	%rcx, -1472(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.37, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	movq	%rcx, -1504(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1504(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	xorl	%edx, %edx
	movq	-200(%rbp), %rcx
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	movl	%edx, -1508(%rbp)       # 4-byte Spill
	movl	-1508(%rbp), %r9d       # 4-byte Reload
	movq	%rcx, -1520(%rbp)       # 8-byte Spill
	movl	%r9d, %ecx
	movq	-1496(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	-1520(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.39, %rdi
	movq	-336(%rbp), %rsi
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	movq	%rsi, -1536(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rsi
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	movq	%rsi, -1552(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movl	$1, %r8d
	movq	-200(%rbp), %r9
	movq	-1536(%rbp), %rdi       # 8-byte Reload
	movq	-1544(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_memsize_entry_add
	movq	-200(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	callq	g_object_unref
	movabsq	$.L.str.40, %rdi
	movq	$0, -200(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	movq	%rcx, -1576(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1576(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-1568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.42, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	movq	%rcx, -1600(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movq	-1584(%rbp), %rdi       # 8-byte Reload
	movq	-1592(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rcx
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	movq	%rdi, -1616(%rbp)       # 8-byte Spill
	movq	%rcx, -1624(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1624(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	movq	%rcx, -1648(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-1648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.44, %rcx
	movabsq	$.L.str.46, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	leaq	-152(%rbp), %rdi
	movl	-188(%rbp), %r8d
	movl	%r8d, %r10d
	addl	$1, %r10d
	movl	%r10d, -188(%rbp)
	movq	-1616(%rbp), %r9        # 8-byte Reload
	movq	%rdi, -1664(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	-1632(%rbp), %r11       # 8-byte Reload
	movq	%rsi, -1672(%rbp)       # 8-byte Spill
	movq	%r11, %rsi
	movq	-1640(%rbp), %r14       # 8-byte Reload
	movq	%rdx, -1680(%rbp)       # 8-byte Spill
	movq	%r14, %rdx
	movq	-1656(%rbp), %r12       # 8-byte Reload
	movl	%r8d, -1684(%rbp)       # 4-byte Spill
	movq	%r12, %r8
	movq	%rax, %r9
	movq	-1680(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-1664(%rbp), %r13       # 8-byte Reload
	movq	%r13, 16(%rsp)
	movl	-1684(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, 24(%rsp)
	callq	prefs_notebook_append_page
	movabsq	$.L.str.47, %rdi
	movq	%rax, -232(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	movq	%rcx, -1704(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1704(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-1696(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.49, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	movq	%rcx, -1728(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rsi
	movq	-1712(%rbp), %rdi       # 8-byte Reload
	movq	-1720(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movq	-240(%rbp), %rcx
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	movq	%rcx, -1744(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1744(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.51, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	movq	%rcx, -1768(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1768(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	xorl	%r10d, %r10d
	movq	-200(%rbp), %rcx
	movq	-1752(%rbp), %rdi       # 8-byte Reload
	movl	%r10d, %edx
	movq	%rcx, -1776(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movq	-1760(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	-1776(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.53, %rdi
	movq	-336(%rbp), %rsi
	movq	%rax, -1784(%rbp)       # 8-byte Spill
	movq	%rsi, -1792(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rsi
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	movq	%rsi, -1808(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-200(%rbp), %rdi
	movq	-1792(%rbp), %r8        # 8-byte Reload
	movq	%rdi, -1816(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movl	%edx, -1820(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	-1800(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	movq	-1816(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.54, %rdi
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rsi
	movq	%rax, -1840(%rbp)       # 8-byte Spill
	movq	%rsi, -1848(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-1840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.56, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rsi
	movq	%rax, -1864(%rbp)       # 8-byte Spill
	movq	%rsi, -1872(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movq	-1864(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.58, %rdi
	movq	%rax, -1880(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	movq	%rcx, -1896(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	-1888(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_keyboard_shortcuts_dialog, %rcx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -1904(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1904(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.61, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	movq	%rcx, -1920(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -1928(%rbp)       # 8-byte Spill
	movq	%rcx, -1936(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1936(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rsi
	movq	-1920(%rbp), %rdi       # 8-byte Reload
	movq	-1928(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.63, %rdi
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	movq	%rcx, -1960(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1960(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rdi
	movq	-1952(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_menus_save_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -1968(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1968(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.64, %rdi
	movq	%rax, -1976(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -1984(%rbp)       # 8-byte Spill
	movq	%rcx, -1992(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1992(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	-1984(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_menus_clear_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -2000(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-2000(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-256(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -2008(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	-264(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.67, %rdi
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -2016(%rbp)       # 8-byte Spill
	movq	%rcx, -2024(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rdi
	movq	-2016(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_menus_remove_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -2032(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-2032(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rcx
	movq	%rax, -2040(%rbp)       # 8-byte Spill
	movq	%rdi, -2048(%rbp)       # 8-byte Spill
	movq	%rcx, -2056(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-2056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rdi
	movq	%rax, -2064(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	%rax, -2072(%rbp)       # 8-byte Spill
	movq	%rcx, -2080(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-2080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movabsq	$.L.str.70, %rdx
	leaq	-152(%rbp), %rsi
	movl	-188(%rbp), %r10d
	movl	%r10d, %ebx
	addl	$1, %ebx
	movl	%ebx, -188(%rbp)
	movq	-2048(%rbp), %rdi       # 8-byte Reload
	movq	-2064(%rbp), %r8        # 8-byte Reload
	movq	%rsi, -2088(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	-2072(%rbp), %r11       # 8-byte Reload
	movq	%rdx, -2096(%rbp)       # 8-byte Spill
	movq	%r11, %rdx
	movq	%rax, %r8
	movq	-2096(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-2088(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	%r10d, 24(%rsp)
	callq	prefs_notebook_append_page
	movabsq	$.L.str.71, %rdi
	movq	%rax, -232(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -2104(%rbp)       # 8-byte Spill
	movq	%rcx, -2112(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-2104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -240(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gtk_scrolled_window_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$80, %edx
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-408(%rbp), %rax
	movq	%rax, -2120(%rbp)       # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-2120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-408(%rbp), %rax
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-2128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-240(%rbp), %rax
	movq	%rax, -2136(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-408(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -2140(%rbp)       # 4-byte Spill
	movl	-2140(%rbp), %ecx       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-408(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$64, %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -2152(%rbp)       # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-2152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -424(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -2160(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-424(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-424(%rbp), %rdi
	callq	gtk_widget_show
	movq	-416(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-424(%rbp), %rax
	movq	%rax, -2168(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-2168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rdi
	movq	%rax, -2176(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, -2184(%rbp)       # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	xorl	%ecx, %ecx
	movabsq	$.L.str.15, %r8
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	-2176(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	movq	-2184(%rbp), %r9        # 8-byte Reload
	movq	%rdx, -2192(%rbp)       # 8-byte Spill
	movq	%r9, %rdx
	movl	%ecx, -2196(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	-2196(%rbp), %r9d       # 4-byte Reload
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-424(%rbp), %rcx
	movl	%eax, -2200(%rbp)       # 4-byte Spill
	movq	%rcx, -2208(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-2208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.72, %rdi
	movq	%rax, -2216(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, -2224(%rbp)       # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movl	$1, %r9d
	movabsq	$.L.str.15, %r8
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-2216(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %esi
	movq	-2224(%rbp), %rdx       # 8-byte Reload
	movq	%rcx, -2232(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-424(%rbp), %rcx
	movl	%eax, -2236(%rbp)       # 4-byte Spill
	movq	%rcx, -2248(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-2248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-444(%rbp), %rsi
	movq	%rax, -432(%rbp)
	movq	-56(%rbp), %rdi
	callq	themes_list_themes
	movq	%rax, -440(%rbp)
	movl	$0, -448(%rbp)
.LBB3_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-448(%rbp), %eax
	cmpl	-444(%rbp), %eax
	jge	.LBB3_31
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB3_25 Depth=1
	leaq	-480(%rbp), %rsi
	movq	-416(%rbp), %rdi
	callq	gtk_list_store_append
	movq	-416(%rbp), %rdi
	movslq	-448(%rbp), %rsi
	movq	-440(%rbp), %rax
	movq	(%rax,%rsi,8), %rcx
	movq	-56(%rbp), %rax
	movslq	-448(%rbp), %rsi
	movq	-440(%rbp), %rdx
	movq	(%rdx,%rsi,8), %rsi
	movq	%rdi, -2256(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -2264(%rbp)       # 8-byte Spill
	callq	themes_get_theme_dir
	leaq	-480(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-2256(%rbp), %rdi       # 8-byte Reload
	movq	-2264(%rbp), %rcx       # 8-byte Reload
	movl	%r9d, -2268(%rbp)       # 4-byte Spill
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	movq	-336(%rbp), %rcx
	movq	%rcx, -2280(%rbp)       # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-2280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 656(%rax)
	je	.LBB3_29
# BB#27:                                # %land.lhs.true.289
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-336(%rbp), %rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-2288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	656(%rax), %rdi
	movslq	-448(%rbp), %rax
	movq	-440(%rbp), %rsi
	movq	(%rsi,%rax,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_29
# BB#28:                                # %if.then.297
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-416(%rbp), %rax
	movq	%rax, -2296(%rbp)       # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-2296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-480(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -488(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-2304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	-488(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_cursor
	movq	-424(%rbp), %rax
	movq	%rax, -2312(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-2312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-488(%rbp), %rsi
	movq	%rax, %rdi
	movss	%xmm0, -2316(%rbp)      # 4-byte Spill
	movss	-2316(%rbp), %xmm1      # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_tree_view_scroll_to_cell
	movq	-488(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB3_29:                               # %if.end.307
                                        #   in Loop: Header=BB3_25 Depth=1
	jmp	.LBB3_30
.LBB3_30:                               # %for.inc
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	-448(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -448(%rbp)
	jmp	.LBB3_25
.LBB3_31:                               # %for.end
	cmpq	$0, -440(%rbp)
	je	.LBB3_33
# BB#32:                                # %if.then.310
	movq	-440(%rbp), %rdi
	callq	g_strfreev
.LBB3_33:                               # %if.end.311
	movabsq	$.L.str.19, %rsi
	movabsq	$prefs_theme_select_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-432(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -2328(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-2328(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -2336(%rbp)       # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -2344(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-248(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.74, %rdi
	callq	gettext
	movq	-248(%rbp), %rsi
	movq	%rax, -2352(%rbp)       # 8-byte Spill
	movq	%rsi, -2360(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rdi
	movq	-2352(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_theme_reload_callback, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rdi, -2368(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-2368(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rcx
	movq	%rax, -2376(%rbp)       # 8-byte Spill
	movq	%rdi, -2384(%rbp)       # 8-byte Spill
	movq	%rcx, -2392(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-2392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.75, %rdi
	movq	%rax, -2400(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	%rax, -2408(%rbp)       # 8-byte Spill
	movq	%rcx, -2416(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-2416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.76, %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movabsq	$.L.str.77, %rdx
	leaq	-152(%rbp), %rsi
	movl	-188(%rbp), %r10d
	movl	%r10d, %r11d
	addl	$1, %r11d
	movl	%r11d, -188(%rbp)
	movq	-2384(%rbp), %rdi       # 8-byte Reload
	movq	-2400(%rbp), %r8        # 8-byte Reload
	movq	%rsi, -2424(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	-2408(%rbp), %rbx       # 8-byte Reload
	movq	%rdx, -2432(%rbp)       # 8-byte Spill
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	-2432(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-2424(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	%r10d, 24(%rsp)
	callq	prefs_notebook_append_page
	movl	$1, %edi
	movq	%rax, -232(%rbp)
	callq	gtk_size_group_new
	movabsq	$.L.str.78, %rdi
	movq	%rax, -200(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -2440(%rbp)       # 8-byte Spill
	movq	%rcx, -2448(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2448(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-2440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.80, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -2456(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -2464(%rbp)       # 8-byte Spill
	movq	%rcx, -2472(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.79, %rsi
	movq	-2456(%rbp), %rdi       # 8-byte Reload
	movq	-2464(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.82, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -2480(%rbp)       # 8-byte Spill
	movq	%rcx, -2488(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -2496(%rbp)       # 8-byte Spill
	movq	%rcx, -2504(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2504(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.81, %rsi
	movq	-2488(%rbp), %rdi       # 8-byte Reload
	movq	-2496(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movq	-240(%rbp), %rcx
	movq	%rax, -2512(%rbp)       # 8-byte Spill
	movq	%rcx, -2520(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.84, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -2528(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.85, %rdi
	movq	%rax, -2536(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.86, %rdi
	movq	%rax, -2544(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -2552(%rbp)       # 8-byte Spill
	movq	%rcx, -2560(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-2560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.83, %rsi
	xorl	%r10d, %r10d
	movq	-200(%rbp), %rcx
	movq	-2528(%rbp), %rdi       # 8-byte Reload
	movq	-2536(%rbp), %rdx       # 8-byte Reload
	movq	-2544(%rbp), %r8        # 8-byte Reload
	movq	%rcx, -2568(%rbp)       # 8-byte Spill
	movq	%r8, %rcx
	movq	-2552(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	-2568(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r10d, -2572(%rbp)      # 4-byte Spill
	callq	prefs_boolean_combo_box_add
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_help_set_help_data
	movq	-56(%rbp), %rdi
	callq	gimp_help_user_manual_is_installed
	cmpl	$0, %eax
	je	.LBB3_35
# BB#34:                                # %if.then.361
	movabsq	$.L.str.88, %rdi
	movabsq	$.L.str.87, %rax
	movq	%rax, -528(%rbp)
	callq	gettext
	movq	%rax, -536(%rbp)
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.363
	movabsq	$.L.str.90, %rdi
	movabsq	$.L.str.89, %rax
	movq	%rax, -528(%rbp)
	callq	gettext
	movq	%rax, -536(%rbp)
.LBB3_36:                               # %if.end.365
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -504(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -2584(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-2584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	movq	-504(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -2588(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-2588(%rbp), %r8d       # 4-byte Reload
	movl	%ecx, -2592(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	-2592(%rbp), %r8d       # 4-byte Reload
	movl	-2588(%rbp), %r9d       # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-504(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %esi
	movq	-528(%rbp), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -512(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -2600(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-512(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -2604(%rbp)       # 4-byte Spill
	movl	-2604(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-512(%rbp), %rdi
	callq	gtk_widget_show
	movq	-536(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -520(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -2616(%rbp)       # 8-byte Spill
	callq	gtk_label_get_type
	movq	-2616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-520(%rbp), %rdi
	movq	%rdi, -2624(%rbp)       # 8-byte Spill
	callq	gtk_label_get_type
	movq	-2624(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-520(%rbp), %rax
	movq	%rax, -2632(%rbp)       # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-2632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-504(%rbp), %rax
	movq	%rax, -2640(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-520(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-520(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.91, %rsi
	movq	-56(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	je	.LBB3_38
# BB#37:                                # %if.then.383
	movabsq	$.L.str.92, %rdi
	callq	gettext
	movq	-232(%rbp), %rdi
	movq	%rax, -2648(%rbp)       # 8-byte Spill
	movq	%rdi, -2656(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-2648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -2664(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2664(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.94, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -2672(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rsi
	movq	%rax, -2680(%rbp)       # 8-byte Spill
	movq	%rsi, -2688(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-2688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.93, %rsi
	xorl	%edx, %edx
	movq	-200(%rbp), %rdi
	movq	-2672(%rbp), %rcx       # 8-byte Reload
	movq	%rdi, -2696(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movl	%edx, -2700(%rbp)       # 4-byte Spill
	movl	-2700(%rbp), %ecx       # 4-byte Reload
	movq	-2680(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	-2696(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movq	%rax, -2712(%rbp)       # 8-byte Spill
.LBB3_38:                               # %if.end.395
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, -200(%rbp)
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -2720(%rbp)       # 8-byte Spill
	movq	%rax, -2728(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-2728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.95, %rdi
	movq	%rax, -2736(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, -2744(%rbp)       # 8-byte Spill
	movq	%rsi, -2752(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-2752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.96, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.97, %rsi
	leaq	-152(%rbp), %rdi
	movl	-188(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -188(%rbp)
	movq	-2720(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -2760(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	-2736(%rbp), %r11       # 8-byte Reload
	movq	%rsi, -2768(%rbp)       # 8-byte Spill
	movq	%r11, %rsi
	movq	-2744(%rbp), %rbx       # 8-byte Reload
	movl	%edx, -2772(%rbp)       # 4-byte Spill
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	-2768(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-2760(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	-2772(%rbp), %r15d      # 4-byte Reload
	movl	%r15d, 24(%rsp)
	callq	prefs_notebook_append_page
	movl	$1, %edi
	movq	%rax, -232(%rbp)
	callq	gtk_size_group_new
	movabsq	$.L.str.78, %rdi
	movq	%rax, -200(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -2784(%rbp)       # 8-byte Spill
	movq	%rcx, -2792(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2792(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-2784(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.99, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -2800(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -2808(%rbp)       # 8-byte Spill
	movq	%rcx, -2816(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2816(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.98, %rsi
	movq	-2800(%rbp), %rdi       # 8-byte Reload
	movq	-2808(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.100, %rdi
	movq	%rax, -2824(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -2832(%rbp)       # 8-byte Spill
	movq	%rcx, -2840(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rdi
	movq	-2832(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_tool_options_save_callback, %rcx
	xorl	%r15d, %r15d
	movl	%r15d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -2848(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-2848(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.101, %rdi
	movq	%rax, -2856(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -2864(%rbp)       # 8-byte Spill
	movq	%rcx, -2872(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-2872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	-2864(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_tool_options_clear_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -2880(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-2880(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-256(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -2888(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	-264(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.102, %rdi
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -2896(%rbp)       # 8-byte Spill
	movq	%rcx, -2904(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2904(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-2896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -2912(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2912(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.104, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -2920(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -2928(%rbp)       # 8-byte Spill
	movq	%rcx, -2936(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-2936(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.103, %rsi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	xorl	%edx, %edx
	movq	-200(%rbp), %rcx
	movq	-2920(%rbp), %rdi       # 8-byte Reload
	movl	%edx, -2940(%rbp)       # 4-byte Spill
	movq	-2928(%rbp), %r8        # 8-byte Reload
	movq	%rcx, -2952(%rbp)       # 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movl	-2940(%rbp), %r9d       # 4-byte Reload
	movq	-2952(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	callq	prefs_spin_button_add
	movabsq	$.L.str.105, %rdi
	movq	%rax, -2960(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -2968(%rbp)       # 8-byte Spill
	movq	%rcx, -2976(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2976(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-2968(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -2984(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-2984(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.107, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -2992(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -3000(%rbp)       # 8-byte Spill
	movq	%rcx, -3008(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-3008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.106, %rsi
	xorl	%edx, %edx
	movq	-200(%rbp), %rcx
	movq	-2992(%rbp), %rdi       # 8-byte Reload
	movl	%edx, -3012(%rbp)       # 4-byte Spill
	movl	-3012(%rbp), %r9d       # 4-byte Reload
	movq	%rcx, -3024(%rbp)       # 8-byte Spill
	movl	%r9d, %ecx
	movq	-3000(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	-3024(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movq	-200(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -3032(%rbp)       # 8-byte Spill
	callq	g_object_unref
	movl	$1, %edi
	callq	gtk_size_group_new
	movabsq	$.L.str.108, %rdi
	movq	%rax, -200(%rbp)
	callq	gettext
	movq	-232(%rbp), %rsi
	movq	%rax, -3040(%rbp)       # 8-byte Spill
	movq	%rsi, -3048(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-3040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.110, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -3056(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rsi
	movq	%rax, -3064(%rbp)       # 8-byte Spill
	movq	%rsi, -3072(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.109, %rsi
	movabsq	$.L.str.111, %rcx
	movq	-200(%rbp), %r9
	movq	-3056(%rbp), %rdi       # 8-byte Reload
	movq	-3064(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %r8
	callq	prefs_check_button_add_with_icon
	movabsq	$.L.str.113, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -3080(%rbp)       # 8-byte Spill
	movq	%rcx, -3088(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -3096(%rbp)       # 8-byte Spill
	movq	%rcx, -3104(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.112, %rsi
	movabsq	$.L.str.114, %rcx
	movq	-200(%rbp), %r9
	movq	-3088(%rbp), %rdi       # 8-byte Reload
	movq	-3096(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %r8
	callq	prefs_check_button_add_with_icon
	movabsq	$.L.str.116, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -3112(%rbp)       # 8-byte Spill
	movq	%rcx, -3120(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -3128(%rbp)       # 8-byte Spill
	movq	%rcx, -3136(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.115, %rsi
	movabsq	$.L.str.117, %rcx
	movq	-200(%rbp), %r9
	movq	-3120(%rbp), %rdi       # 8-byte Reload
	movq	-3128(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %r8
	callq	prefs_check_button_add_with_icon
	movabsq	$.L.str.119, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -3144(%rbp)       # 8-byte Spill
	movq	%rcx, -3152(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -3160(%rbp)       # 8-byte Spill
	movq	%rcx, -3168(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.118, %rsi
	movabsq	$.L.str.120, %rcx
	movq	-200(%rbp), %r9
	movq	-3152(%rbp), %rdi       # 8-byte Reload
	movq	-3160(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %r8
	callq	prefs_check_button_add_with_icon
	movabsq	$.L.str.121, %rdi
	movq	%rax, -3176(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -3184(%rbp)       # 8-byte Spill
	movq	%rcx, -3192(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-3184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.123, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -3200(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -3208(%rbp)       # 8-byte Spill
	movq	%rcx, -3216(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.122, %rsi
	movabsq	$.L.str.124, %rcx
	movq	-200(%rbp), %r9
	movq	-3200(%rbp), %rdi       # 8-byte Reload
	movq	-3208(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %r8
	callq	prefs_check_button_add_with_icon
	movq	-200(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -3224(%rbp)       # 8-byte Spill
	callq	g_object_unref
	movq	$0, -200(%rbp)
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -3232(%rbp)       # 8-byte Spill
	movq	%rax, -3240(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-3240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.125, %rdi
	movq	%rax, -3248(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	%rax, -3256(%rbp)       # 8-byte Spill
	movq	%rcx, -3264(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-3264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.126, %rcx
	xorl	%r15d, %r15d
	movl	%r15d, %r9d
	movabsq	$.L.str.127, %rdx
	leaq	-152(%rbp), %rsi
	movl	-188(%rbp), %r15d
	movl	%r15d, %r12d
	addl	$1, %r12d
	movl	%r12d, -188(%rbp)
	movq	-3232(%rbp), %rdi       # 8-byte Reload
	movq	-3248(%rbp), %r8        # 8-byte Reload
	movq	%rsi, -3272(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	-3256(%rbp), %r10       # 8-byte Reload
	movq	%rdx, -3280(%rbp)       # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %r8
	movq	-3280(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-3272(%rbp), %r11       # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	%r15d, 24(%rsp)
	callq	prefs_notebook_append_page
	movl	$1, %edi
	movq	%rax, -232(%rbp)
	callq	gtk_size_group_new
	movabsq	$.L.str.128, %rdi
	movq	%rax, -200(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -3288(%rbp)       # 8-byte Spill
	movq	%rcx, -3296(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-3288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.130, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -3304(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -3312(%rbp)       # 8-byte Spill
	movq	%rcx, -3320(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.129, %rsi
	movabsq	$.L.str.131, %rcx
	movq	-200(%rbp), %r9
	movq	-3304(%rbp), %rdi       # 8-byte Reload
	movq	-3312(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %r8
	callq	prefs_check_button_add_with_icon
	movabsq	$.L.str.133, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -3328(%rbp)       # 8-byte Spill
	movq	%rcx, -3336(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -3344(%rbp)       # 8-byte Spill
	movq	%rcx, -3352(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.132, %rsi
	movabsq	$.L.str.111, %rcx
	movq	-200(%rbp), %r9
	movq	-3336(%rbp), %rdi       # 8-byte Reload
	movq	-3344(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %r8
	callq	prefs_check_button_add_with_icon
	movabsq	$.L.str.135, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -3360(%rbp)       # 8-byte Spill
	movq	%rcx, -3368(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -3376(%rbp)       # 8-byte Spill
	movq	%rcx, -3384(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.134, %rsi
	movabsq	$.L.str.136, %rcx
	movq	-200(%rbp), %r9
	movq	-3368(%rbp), %rdi       # 8-byte Reload
	movq	-3376(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %r8
	callq	prefs_check_button_add_with_icon
	movq	-200(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -3392(%rbp)       # 8-byte Spill
	callq	g_object_unref
	movabsq	$.L.str.137, %rdi
	movq	$0, -200(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -3400(%rbp)       # 8-byte Spill
	movq	%rcx, -3408(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-3400(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-56(%rbp), %rax
	movq	528(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	584(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, -3416(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -3424(%rbp)       # 8-byte Spill
	callq	gimp_tools_get_default_order
	movl	$24, %ecx
	movl	$1, %r8d
	movq	-3416(%rbp), %rdi       # 8-byte Reload
	movq	-3424(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_tool_editor_new
	movq	%rax, tool_editor
	movq	-240(%rbp), %rax
	movq	%rax, -3432(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	tool_editor, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	tool_editor, %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -3440(%rbp)       # 8-byte Spill
	movq	%rax, -3448(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-3448(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.138, %rdi
	movq	%rax, -3456(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, -3464(%rbp)       # 8-byte Spill
	movq	%rsi, -3472(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-3472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.140, %rdi
	movq	%rax, -3480(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.139, %rcx
	movabsq	$.L.str.141, %rsi
	xorl	%edx, %edx
	movl	%edx, %edi
	leaq	-152(%rbp), %r9
	movl	-188(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -188(%rbp)
	movq	-3440(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -3488(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	-3456(%rbp), %r11       # 8-byte Reload
	movq	%rsi, -3496(%rbp)       # 8-byte Spill
	movq	%r11, %rsi
	movq	-3464(%rbp), %rbx       # 8-byte Reload
	movl	%edx, -3500(%rbp)       # 4-byte Spill
	movq	%rbx, %rdx
	movq	-3480(%rbp), %r8        # 8-byte Reload
	movq	%r9, -3512(%rbp)        # 8-byte Spill
	movq	%rax, %r9
	movq	-3496(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-3512(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	-3500(%rbp), %r15d      # 4-byte Reload
	movl	%r15d, 24(%rsp)
	callq	prefs_notebook_append_page
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -3520(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movq	%rax, -272(%rbp)
	movq	-56(%rbp), %rax
	movq	552(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -3528(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movl	$16, %edx
	xorl	%ecx, %ecx
	movq	-3528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_combo_box_new
	movq	%rax, -544(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -3536(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-3536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.142, %rdi
	movq	%rax, -3544(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-544(%rbp), %r8
	movq	-3544(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-544(%rbp), %rcx
	movq	%rax, -3552(%rbp)       # 8-byte Spill
	movq	%rcx, -3560(%rbp)       # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-3560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	gimp_container_view_select_item
	movabsq	$.L.str.143, %rsi
	movabsq	$prefs_template_select_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-544(%rbp), %rdi
	movq	-344(%rbp), %r10
	movq	296(%r10), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movl	%eax, -3564(%rbp)       # 4-byte Spill
	callq	g_signal_connect_data
	xorl	%edx, %edx
	movq	-344(%rbp), %rcx
	movq	296(%rcx), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -3576(%rbp)       # 8-byte Spill
	callq	gimp_template_editor_new
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -3584(%rbp)       # 8-byte Spill
	callq	gimp_template_editor_get_type
	movq	-3584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_template_editor_show_advanced
	movq	-232(%rbp), %rax
	movq	%rax, -3592(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3592(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-320(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -3596(%rbp)       # 4-byte Spill
	movl	-3596(%rbp), %ecx       # 4-byte Reload
	movl	-3596(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-320(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.144, %rdi
	callq	gettext
	movq	-232(%rbp), %rsi
	movq	%rax, -3608(%rbp)       # 8-byte Spill
	movq	%rsi, -3616(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-3608(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -3624(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3624(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.146, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -3632(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.145, %rsi
	movl	$40, %ecx
	movl	$24, %r8d
	movl	$1, %r9d
	movq	-3632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_color_button_new
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -3640(%rbp)       # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-3640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -3648(%rbp)       # 8-byte Spill
	callq	gimp_get_user_context
	movq	-3648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_panel_set_context
	movabsq	$.L.str.147, %rdi
	movq	-256(%rbp), %rax
	movq	%rax, -3656(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rdx
	movq	%rax, -3664(%rbp)       # 8-byte Spill
	movq	%rdx, -3672(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-3672(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-3656(%rbp), %rdi       # 8-byte Reload
	movq	-3664(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_widget_add_aligned
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rdx
	movq	%rax, -3680(%rbp)       # 8-byte Spill
	movq	%rdi, -3688(%rbp)       # 8-byte Spill
	movq	%rdx, -3696(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-3696(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.148, %rdi
	movq	%rax, -3704(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdx
	movq	%rax, -3712(%rbp)       # 8-byte Spill
	movq	%rdx, -3720(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-3720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.150, %rdi
	movq	%rax, -3728(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.149, %rcx
	movabsq	$.L.str.151, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	leaq	-152(%rbp), %rdi
	movl	-188(%rbp), %r8d
	movl	%r8d, %r15d
	addl	$1, %r15d
	movl	%r15d, -188(%rbp)
	movq	-3688(%rbp), %r9        # 8-byte Reload
	movq	%rdi, -3736(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	-3704(%rbp), %r10       # 8-byte Reload
	movq	%rsi, -3744(%rbp)       # 8-byte Spill
	movq	%r10, %rsi
	movq	-3712(%rbp), %r11       # 8-byte Reload
	movq	%rdx, -3752(%rbp)       # 8-byte Spill
	movq	%r11, %rdx
	movq	-3728(%rbp), %rbx       # 8-byte Reload
	movl	%r8d, -3756(%rbp)       # 4-byte Spill
	movq	%rbx, %r8
	movq	%rax, %r9
	movq	-3752(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-3736(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	-3756(%rbp), %r15d      # 4-byte Reload
	movl	%r15d, 24(%rsp)
	callq	prefs_notebook_append_page
	movq	%rax, -232(%rbp)
	movq	-344(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -3768(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	-344(%rbp), %rcx
	movq	296(%rcx), %rdi
	movq	%rax, -3776(%rbp)       # 8-byte Spill
	callq	gimp_template_get_resolution_x
	movq	-344(%rbp), %rax
	movq	296(%rax), %rdi
	movsd	%xmm0, -3784(%rbp)      # 8-byte Spill
	callq	gimp_template_get_resolution_y
	movq	-3768(%rbp), %rdi       # 8-byte Reload
	movq	-3776(%rbp), %rsi       # 8-byte Reload
	movsd	-3784(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -3792(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-3792(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_grid_editor_new
	movq	%rax, -320(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -3800(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r15d
	xorl	%r8d, %r8d
	movq	-320(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r15d, %edx
	movl	%r15d, %ecx
	callq	gtk_box_pack_start
	movq	-320(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -3808(%rbp)       # 8-byte Spill
	movq	%rax, -3816(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-3816(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.152, %rdi
	movq	%rax, -3824(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, -3832(%rbp)       # 8-byte Spill
	movq	%rsi, -3840(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-3840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.153, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.154, %rsi
	leaq	-152(%rbp), %rdi
	movl	-188(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -188(%rbp)
	movq	-3808(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -3848(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	-3824(%rbp), %r11       # 8-byte Reload
	movq	%rsi, -3856(%rbp)       # 8-byte Spill
	movq	%r11, %rsi
	movq	-3832(%rbp), %rbx       # 8-byte Reload
	movl	%edx, -3860(%rbp)       # 4-byte Spill
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	-3856(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-3848(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	-3860(%rbp), %r15d      # 4-byte Reload
	movl	%r15d, 24(%rsp)
	callq	prefs_notebook_append_page
	movl	$1, %edi
	movq	%rax, -232(%rbp)
	callq	gtk_size_group_new
	movabsq	$.L.str.78, %rdi
	movq	%rax, -200(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -3872(%rbp)       # 8-byte Spill
	movq	%rcx, -3880(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3880(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-3872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.156, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -3888(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -3896(%rbp)       # 8-byte Spill
	movq	%rcx, -3904(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-3904(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.155, %rsi
	movq	-3888(%rbp), %rdi       # 8-byte Reload
	movq	-3896(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movq	-240(%rbp), %rcx
	movq	%rax, -3912(%rbp)       # 8-byte Spill
	movq	%rcx, -3920(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3920(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.158, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -3928(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -3936(%rbp)       # 8-byte Spill
	movq	%rcx, -3944(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-3944(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.157, %rsi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_5, %xmm1         # xmm1 = mem[0],zero
	xorl	%r15d, %r15d
	movq	-200(%rbp), %rcx
	movq	-3928(%rbp), %rdi       # 8-byte Reload
	movl	%r15d, %edx
	movq	-3936(%rbp), %r8        # 8-byte Reload
	movq	%rcx, -3952(%rbp)       # 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movl	%r15d, %r9d
	movq	-3952(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	callq	prefs_spin_button_add
	movabsq	$.L.str.159, %rdi
	movq	%rax, -3960(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -3968(%rbp)       # 8-byte Spill
	movq	%rcx, -3976(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-3976(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-3968(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.161, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -3984(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -3992(%rbp)       # 8-byte Spill
	movq	%rcx, -4000(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-4000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.160, %rsi
	movq	-3984(%rbp), %rdi       # 8-byte Reload
	movq	-3992(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.163, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -4008(%rbp)       # 8-byte Spill
	movq	%rcx, -4016(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -4024(%rbp)       # 8-byte Spill
	movq	%rcx, -4032(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-4032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.162, %rsi
	movq	-4016(%rbp), %rdi       # 8-byte Reload
	movq	-4024(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movq	-240(%rbp), %rcx
	movq	%rax, -4040(%rbp)       # 8-byte Spill
	movq	%rcx, -4048(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-4048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.165, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -4056(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.167, %rdi
	movq	%rax, -4064(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -4072(%rbp)       # 8-byte Spill
	movq	%rcx, -4080(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-4080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.164, %rsi
	movabsq	$.L.str.166, %rcx
	xorl	%r9d, %r9d
	movq	-200(%rbp), %rdx
	movq	-4056(%rbp), %rdi       # 8-byte Reload
	movq	-4064(%rbp), %r8        # 8-byte Reload
	movq	%rdx, -4088(%rbp)       # 8-byte Spill
	movq	%r8, %rdx
	movq	-4072(%rbp), %r8        # 8-byte Reload
	movl	%r9d, -4092(%rbp)       # 4-byte Spill
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	-4088(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_boolean_combo_box_add
	movabsq	$.L.str.168, %rdi
	movq	%rax, -4104(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -4112(%rbp)       # 8-byte Spill
	movq	%rcx, -4120(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-4120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-4112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -4128(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-4128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.170, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -4136(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -4144(%rbp)       # 8-byte Spill
	movq	%rcx, -4152(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-4152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.169, %rsi
	xorl	%edx, %edx
	movq	-200(%rbp), %rcx
	movq	-4136(%rbp), %rdi       # 8-byte Reload
	movl	%edx, -4156(%rbp)       # 4-byte Spill
	movl	-4156(%rbp), %r15d      # 4-byte Reload
	movq	%rcx, -4168(%rbp)       # 8-byte Spill
	movl	%r15d, %ecx
	movq	-4144(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	-4168(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.171, %rdi
	movq	%rax, -4176(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rsi
	movq	%rax, -4184(%rbp)       # 8-byte Spill
	movq	%rsi, -4192(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-4192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-4184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.173, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -4200(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rsi
	movq	%rax, -4208(%rbp)       # 8-byte Spill
	movq	%rsi, -4216(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-4216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.172, %rsi
	movq	-4200(%rbp), %rdi       # 8-byte Reload
	movq	-4208(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.175, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -4224(%rbp)       # 8-byte Spill
	movq	%rcx, -4232(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -4240(%rbp)       # 8-byte Spill
	movq	%rcx, -4248(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-4248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.174, %rsi
	movq	-4232(%rbp), %rdi       # 8-byte Reload
	movq	-4240(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movq	-240(%rbp), %rcx
	movq	%rax, -4256(%rbp)       # 8-byte Spill
	movq	%rcx, -4264(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-4264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.177, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -4272(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -4280(%rbp)       # 8-byte Spill
	movq	%rcx, -4288(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-4288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.176, %rsi
	xorl	%r15d, %r15d
	movq	-200(%rbp), %rcx
	movq	-4272(%rbp), %rdi       # 8-byte Reload
	movl	%r15d, %edx
	movq	%rcx, -4296(%rbp)       # 8-byte Spill
	movl	%r15d, %ecx
	movq	-4280(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	-4296(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.179, %rdi
	movq	-336(%rbp), %rsi
	movq	%rax, -4304(%rbp)       # 8-byte Spill
	movq	%rsi, -4312(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rsi
	movq	%rax, -4320(%rbp)       # 8-byte Spill
	movq	%rsi, -4328(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-4328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.178, %rsi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-200(%rbp), %rdi
	movq	-4312(%rbp), %r8        # 8-byte Reload
	movq	%rdi, -4336(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movl	%edx, -4340(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	-4320(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	movq	-4336(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.181, %rdi
	movq	-336(%rbp), %rsi
	movq	%rax, -4352(%rbp)       # 8-byte Spill
	movq	%rsi, -4360(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rsi
	movq	%rax, -4368(%rbp)       # 8-byte Spill
	movq	%rsi, -4376(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-4376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.180, %rsi
	xorl	%ecx, %ecx
	movl	$2, %edx
	xorl	%r15d, %r15d
	movl	%r15d, %edi
	movq	-4360(%rbp), %r8        # 8-byte Reload
	movq	%rdi, -4384(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movl	%edx, -4388(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	-4368(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$2, (%rsp)
	movq	$0, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movq	-200(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -4400(%rbp)       # 8-byte Spill
	callq	g_object_unref
	movq	$0, -200(%rbp)
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -4408(%rbp)       # 8-byte Spill
	movq	%rax, -4416(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-4416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.182, %rdi
	movq	%rax, -4424(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, -4432(%rbp)       # 8-byte Spill
	movq	%rsi, -4440(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-4440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rdi
	movq	%rax, -4448(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.153, %rcx
	movabsq	$.L.str.183, %rsi
	leaq	-152(%rbp), %rdi
	leaq	-184(%rbp), %r8
	movl	-188(%rbp), %edx
	movl	%edx, %r15d
	addl	$1, %r15d
	movl	%r15d, -188(%rbp)
	movq	-4408(%rbp), %r9        # 8-byte Reload
	movq	%rdi, -4456(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	-4424(%rbp), %r10       # 8-byte Reload
	movq	%rsi, -4464(%rbp)       # 8-byte Spill
	movq	%r10, %rsi
	movq	-4432(%rbp), %r11       # 8-byte Reload
	movl	%edx, -4468(%rbp)       # 4-byte Spill
	movq	%r11, %rdx
	movq	-4448(%rbp), %rbx       # 8-byte Reload
	movq	%r8, -4480(%rbp)        # 8-byte Spill
	movq	%rbx, %r8
	movq	%rax, %r9
	movq	-4464(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-4456(%rbp), %r14       # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	-4480(%rbp), %r13       # 8-byte Reload
	movq	%r13, 16(%rsp)
	movl	-4468(%rbp), %r15d      # 4-byte Reload
	movl	%r15d, 24(%rsp)
	callq	prefs_notebook_append_page
	movl	$80, %r15d
	movl	%r15d, %esi
	movq	%rax, -232(%rbp)
	movq	-56(%rbp), %rdi
	movq	-352(%rbp), %rax
	movq	520(%rax), %rax
	movq	%rdi, -4488(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.184, %rdi
	movq	%rax, -4496(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -4504(%rbp)       # 8-byte Spill
	movq	%rcx, -4512(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-4512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-4488(%rbp), %rdi       # 8-byte Reload
	movq	-4496(%rbp), %rsi       # 8-byte Reload
	movq	-4504(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_display_options_frame_add
	movl	$80, %r15d
	movl	%r15d, %esi
	movq	-56(%rbp), %rdi
	movq	-352(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rdi, -4520(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.185, %rdi
	movq	%rax, -4528(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -4536(%rbp)       # 8-byte Spill
	movq	%rcx, -4544(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-4544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-4520(%rbp), %rdi       # 8-byte Reload
	movq	-4528(%rbp), %rsi       # 8-byte Reload
	movq	-4536(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_display_options_frame_add
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -4552(%rbp)       # 8-byte Spill
	movq	%rax, -4560(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-4560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.186, %rdi
	movq	%rax, -4568(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	%rax, -4576(%rbp)       # 8-byte Spill
	movq	%rcx, -4584(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-4584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.188, %rdi
	movq	%rax, -4592(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.187, %rcx
	movabsq	$.L.str.189, %rdx
	leaq	-152(%rbp), %rsi
	leaq	-184(%rbp), %rdi
	movl	-188(%rbp), %r15d
	movl	%r15d, %r12d
	addl	$1, %r12d
	movl	%r12d, -188(%rbp)
	movq	-4552(%rbp), %r8        # 8-byte Reload
	movq	%rdi, -4600(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	-4568(%rbp), %r9        # 8-byte Reload
	movq	%rsi, -4608(%rbp)       # 8-byte Spill
	movq	%r9, %rsi
	movq	-4576(%rbp), %r10       # 8-byte Reload
	movq	%rdx, -4616(%rbp)       # 8-byte Spill
	movq	%r10, %rdx
	movq	-4592(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movq	-4616(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-4608(%rbp), %r11       # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-4600(%rbp), %rbx       # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movl	%r15d, 24(%rsp)
	callq	prefs_notebook_append_page
	movabsq	$.L.str.203, %rcx
	movabsq	$.L.str.202, %rdx
	movabsq	$.L.str.201, %rsi
	movabsq	$.L.str.200, %rdi
	movabsq	$.L.str.199, %r8
	movabsq	$.L.str.198, %r9
	xorl	%r15d, %r15d
	movl	$64, %r12d
	movl	%r12d, %r10d
	leaq	-704(%rbp), %r11
	movabsq	$.L.str.197, %rbx
	movabsq	$.L.str.196, %r14
	movabsq	$.L.str.195, %r13
	movabsq	$.L.str.194, %r12
	movq	%rax, -4624(%rbp)       # 8-byte Spill
	movabsq	$.L.str.193, %rax
	movq	%rsi, -4632(%rbp)       # 8-byte Spill
	movl	$40, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -4640(%rbp)       # 8-byte Spill
	leaq	-640(%rbp), %rax
	movq	%rax, -4648(%rbp)       # 8-byte Spill
	movabsq	$.L.str.192, %rax
	movq	%rax, -4656(%rbp)       # 8-byte Spill
	movabsq	$.L.str.191, %rax
	movq	%rax, -4664(%rbp)       # 8-byte Spill
	movabsq	$.L.str.190, %rax
	movq	%rax, -4672(%rbp)       # 8-byte Spill
	leaq	-592(%rbp), %rax
	movq	%rax, -4680(%rbp)       # 8-byte Spill
	movq	-4624(%rbp), %rax       # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-4680(%rbp), %rax       # 8-byte Reload
	movq	%rdi, -4688(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -4696(%rbp)       # 8-byte Spill
	movl	%r15d, %esi
	movq	-4696(%rbp), %rax       # 8-byte Reload
	movq	%rdx, -4704(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%r14, -4712(%rbp)       # 8-byte Spill
	movq	%rcx, -4720(%rbp)       # 8-byte Spill
	movq	%r12, -4728(%rbp)       # 8-byte Spill
	movq	%r13, -4736(%rbp)       # 8-byte Spill
	movq	%r8, -4744(%rbp)        # 8-byte Spill
	movq	%r9, -4752(%rbp)        # 8-byte Spill
	movl	%r15d, -4756(%rbp)      # 4-byte Spill
	movq	%r10, -4768(%rbp)       # 8-byte Spill
	movq	%r11, -4776(%rbp)       # 8-byte Spill
	movq	%rbx, -4784(%rbp)       # 8-byte Spill
	callq	memset
	movq	-4672(%rbp), %rax       # 8-byte Reload
	movq	%rax, -576(%rbp)
	movq	-4664(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -568(%rbp)
	movq	-4656(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -560(%rbp)
	movq	-4648(%rbp), %rdi       # 8-byte Reload
	movl	-4756(%rbp), %esi       # 4-byte Reload
	movq	-4696(%rbp), %rdx       # 8-byte Reload
	callq	memset
	movq	-4640(%rbp), %rax       # 8-byte Reload
	movq	%rax, -640(%rbp)
	movq	-4728(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -632(%rbp)
	movq	-4736(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -624(%rbp)
	movq	-4712(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, -616(%rbp)
	movq	-4784(%rbp), %r8        # 8-byte Reload
	movq	%r8, -608(%rbp)
	movq	-4776(%rbp), %r9        # 8-byte Reload
	movq	%r9, %rdi
	movl	-4756(%rbp), %esi       # 4-byte Reload
	movq	-4768(%rbp), %rdx       # 8-byte Reload
	callq	memset
	movq	-4752(%rbp), %rax       # 8-byte Reload
	movq	%rax, -696(%rbp)
	movq	-4744(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -688(%rbp)
	movq	-4688(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -680(%rbp)
	movq	-4632(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, -664(%rbp)
	movq	-4704(%rbp), %r8        # 8-byte Reload
	movq	%r8, -656(%rbp)
	movq	-4720(%rbp), %r9        # 8-byte Reload
	movq	%r9, -648(%rbp)
# BB#39:                                # %do.body.676
	jmp	.LBB3_40
.LBB3_40:                               # %do.end.677
	movq	-352(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-352(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, -672(%rbp)
	movl	$0, -708(%rbp)
.LBB3_41:                               # %for.cond.681
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_43 Depth 2
	movslq	-708(%rbp), %rax
	cmpq	$2, %rax
	jae	.LBB3_50
# BB#42:                                # %for.body.684
                                        #   in Loop: Header=BB3_41 Depth=1
	leaq	-704(%rbp), %rax
	movslq	-708(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, -592(%rbp)
	movslq	-708(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	8(%rdx), %rcx
	movq	%rcx, -584(%rbp)
	movslq	-708(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdi
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -4792(%rbp)       # 8-byte Spill
	movq	%rcx, -4800(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-4800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-4792(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	xorl	%edx, %edx
	leaq	-704(%rbp), %rcx
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rdi
	movslq	-708(%rbp), %rax
	shlq	$5, %rax
	addq	%rax, %rcx
	movq	24(%rcx), %rsi
	callq	gimp_prop_entry_new
	movq	%rax, -296(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -4808(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-4808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-296(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -4812(%rbp)       # 4-byte Spill
	movl	-4812(%rbp), %ecx       # 4-byte Reload
	movl	-4812(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-296(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -720(%rbp)
	movq	-720(%rbp), %rax
	movq	%rax, -4824(%rbp)       # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-4824(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-720(%rbp), %rax
	movq	%rax, -4832(%rbp)       # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-4832(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-240(%rbp), %rax
	movq	%rax, -4840(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-4840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-720(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-720(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$64, %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -728(%rbp)
	movq	-728(%rbp), %rax
	movq	%rax, -4848(%rbp)       # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-4848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -736(%rbp)
	movq	-736(%rbp), %rax
	movq	%rax, -4856(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-4856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	movq	-720(%rbp), %rax
	movq	%rax, -4864(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-4864(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-736(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-736(%rbp), %rdi
	callq	gtk_widget_show
	movq	-728(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-736(%rbp), %rax
	movq	%rax, -4872(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-4872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -4880(%rbp)       # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movabsq	$.L.str.15, %r8
	movq	-4880(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, -4884(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	-4884(%rbp), %r9d       # 4-byte Reload
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-736(%rbp), %rcx
	movl	%eax, -4888(%rbp)       # 4-byte Spill
	movq	%rcx, -4896(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-4896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -4904(%rbp)       # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movabsq	$.L.str.15, %r8
	movq	-4904(%rbp), %rdi       # 8-byte Reload
	movl	%r9d, %esi
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-736(%rbp), %rcx
	movl	%eax, -4908(%rbp)       # 4-byte Spill
	movq	%rcx, -4920(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-4920(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movq	%rax, -744(%rbp)
	movl	$0, -748(%rbp)
.LBB3_43:                               # %for.cond.739
                                        #   Parent Loop BB3_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-748(%rbp), %rax
	cmpq	$5, %rax
	jae	.LBB3_48
# BB#44:                                # %for.body.743
                                        #   in Loop: Header=BB3_43 Depth=2
	leaq	-784(%rbp), %rsi
	movq	-728(%rbp), %rdi
	callq	gtk_list_store_append
	movq	-728(%rbp), %rdi
	movslq	-748(%rbp), %rsi
	movq	-640(%rbp,%rsi,8), %rsi
	movq	%rdi, -4928(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	callq	gettext
	leaq	-784(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movslq	-748(%rbp), %rdi
	movq	-592(%rbp,%rdi,8), %r9
	movq	-4928(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, -4932(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	cmpl	$0, -748(%rbp)
	jne	.LBB3_46
# BB#45:                                # %if.then.753
                                        #   in Loop: Header=BB3_43 Depth=2
	leaq	-784(%rbp), %rsi
	movq	-744(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
.LBB3_46:                               # %if.end.754
                                        #   in Loop: Header=BB3_43 Depth=2
	jmp	.LBB3_47
.LBB3_47:                               # %for.inc.755
                                        #   in Loop: Header=BB3_43 Depth=2
	movl	-748(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -748(%rbp)
	jmp	.LBB3_43
.LBB3_48:                               # %for.end.757
                                        #   in Loop: Header=BB3_41 Depth=1
	movabsq	$.L.str.19, %rsi
	movabsq	$prefs_format_string_select_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-744(%rbp), %rdx
	movq	-296(%rbp), %rdi
	movq	%rdi, -4944(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-4944(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -4952(%rbp)       # 8-byte Spill
# BB#49:                                # %for.inc.759
                                        #   in Loop: Header=BB3_41 Depth=1
	movl	-708(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -708(%rbp)
	jmp	.LBB3_41
.LBB3_50:                               # %for.end.761
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -4960(%rbp)       # 8-byte Spill
	movq	%rax, -4968(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-4968(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.204, %rdi
	movq	%rax, -4976(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, -4984(%rbp)       # 8-byte Spill
	movq	%rsi, -4992(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-4992(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.205, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.206, %rsi
	leaq	-152(%rbp), %rdi
	movl	-188(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -188(%rbp)
	movq	-4960(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -5000(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	-4976(%rbp), %r11       # 8-byte Reload
	movq	%rsi, -5008(%rbp)       # 8-byte Spill
	movq	%r11, %rsi
	movq	-4984(%rbp), %rbx       # 8-byte Reload
	movl	%edx, -5012(%rbp)       # 4-byte Spill
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	-5008(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-5000(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	-5012(%rbp), %r15d      # 4-byte Reload
	movl	%r15d, 24(%rsp)
	callq	prefs_notebook_append_page
	movl	$1, %edi
	movq	%rax, -232(%rbp)
	callq	gtk_size_group_new
	movabsq	$.L.str.207, %rdi
	movq	%rax, -200(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -5024(%rbp)       # 8-byte Spill
	movq	%rcx, -5032(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-5032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-5024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -5040(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-5040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.209, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -5048(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -5056(%rbp)       # 8-byte Spill
	movq	%rcx, -5064(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.208, %rsi
	xorl	%edx, %edx
	movq	-200(%rbp), %rcx
	movq	-5048(%rbp), %rdi       # 8-byte Reload
	movl	%edx, -5068(%rbp)       # 4-byte Spill
	movl	-5068(%rbp), %r15d      # 4-byte Reload
	movq	%rcx, -5080(%rbp)       # 8-byte Spill
	movl	%r15d, %ecx
	movq	-5056(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	-5080(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.211, %rdi
	movq	-336(%rbp), %rsi
	movq	%rax, -5088(%rbp)       # 8-byte Spill
	movq	%rsi, -5096(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rsi
	movq	%rax, -5104(%rbp)       # 8-byte Spill
	movq	%rsi, -5112(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.210, %rsi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-200(%rbp), %rdi
	movq	-5096(%rbp), %r8        # 8-byte Reload
	movq	%rdi, -5120(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movl	%edx, -5124(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	-5104(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	movq	-5120(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.212, %rdi
	movq	%rax, -5136(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rsi
	movq	%rax, -5144(%rbp)       # 8-byte Spill
	movq	%rsi, -5152(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-5152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-5144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.213, %rdi
	movq	%rax, -240(%rbp)
	callq	gettext
	movabsq	$.L.str.214, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.215, %rsi
	movabsq	$.L.str.216, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$2, %r9d
	xorps	%xmm0, %xmm0
	movl	$1, %r15d
	movq	%rax, -792(%rbp)
	movq	-336(%rbp), %rdi
	movq	-792(%rbp), %r8
	movsd	%xmm0, -5160(%rbp)      # 8-byte Spill
	movsd	-5160(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	%r15d, -5164(%rbp)      # 4-byte Spill
	callq	gimp_prop_coordinates_new
	movq	%rax, -296(%rbp)
	movq	-792(%rbp), %rdi
	callq	g_free
	movq	-296(%rbp), %rax
	movq	%rax, -5176(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-296(%rbp), %rax
	movq	%rax, -5184(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-296(%rbp), %rax
	movq	%rax, -5192(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-5192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.217, %rdi
	movq	%rax, -5200(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movq	-5200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	-296(%rbp), %rsi
	movq	%rax, -5208(%rbp)       # 8-byte Spill
	movq	%rsi, -5216(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-5216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.218, %rdi
	movq	%rax, -5224(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$2, %ecx
	xorps	%xmm0, %xmm0
	movq	-5224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	-296(%rbp), %rsi
	movq	%rax, -5232(%rbp)       # 8-byte Spill
	movq	%rsi, -5240(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-5240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.219, %rdi
	movq	%rax, -5248(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movl	$4, %ecx
	xorps	%xmm0, %xmm0
	movq	-5248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	%rax, -5256(%rbp)       # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -5264(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-5264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$24, %r8d
	movq	-296(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-296(%rbp), %rdi
	callq	gtk_widget_show
	movq	-296(%rbp), %rdi
	movq	-352(%rbp), %rax
	cmpl	$0, 512(%rax)
	setne	%r12b
	xorb	$-1, %r12b
	andb	$1, %r12b
	movzbl	%r12b, %esi
	callq	gtk_widget_set_sensitive
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	-800(%rbp), %rsi
	leaq	-808(%rbp), %rdx
	movq	$0, -312(%rbp)
	callq	gimp_get_screen_resolution
	movabsq	$.L.str.220, %rdi
	callq	gettext
	movsd	.LCPI3_6, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-800(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	-808(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -816(%rbp)
	movq	-312(%rbp), %rdi
	movq	-816(%rbp), %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -256(%rbp)
	movq	-816(%rbp), %rdi
	callq	g_free
	movq	-256(%rbp), %rax
	movq	%rax, -5272(%rbp)       # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-5272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -312(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -5280(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-5280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -5284(%rbp)       # 4-byte Spill
	movl	-5284(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-256(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.221, %rsi
	movq	-296(%rbp), %rdi
	movq	%rdi, -5296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-5296(%rbp), %rdx       # 8-byte Reload
	callq	g_object_set_data
	movabsq	$.L.str.222, %rsi
	movabsq	$prefs_resolution_source_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-256(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -5304(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-5304(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.223, %rdi
	movq	-312(%rbp), %rcx
	movq	%rax, -5312(%rbp)       # 8-byte Spill
	movq	%rcx, -5320(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-5320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -5328(%rbp)       # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-5328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -312(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -5336(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-5336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-256(%rbp), %rdi
	callq	gtk_widget_show
	movq	-240(%rbp), %rax
	movq	%rax, -5344(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-5344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -5348(%rbp)       # 4-byte Spill
	movl	-5348(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-248(%rbp), %rdi
	callq	gtk_widget_show
	movq	-352(%rbp), %rax
	cmpl	$0, 512(%rax)
	jne	.LBB3_52
# BB#51:                                # %if.then.840
	movq	-256(%rbp), %rax
	movq	%rax, -5360(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-5360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB3_52:                               # %if.end.843
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -5368(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-5368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -5372(%rbp)       # 4-byte Spill
	movl	-5372(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-248(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.224, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -5384(%rbp)       # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-5384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -5392(%rbp)       # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-5392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_misc_set_padding
	movq	-248(%rbp), %rax
	movq	%rax, -5400(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-5400(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-304(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -5404(%rbp)       # 4-byte Spill
	movl	-5404(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-304(%rbp), %rdi
	callq	gtk_widget_show
	movq	-304(%rbp), %rdi
	movq	-352(%rbp), %rax
	cmpl	$0, 512(%rax)
	setne	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.225, %rsi
	movabsq	$.L.str.226, %rcx
	movl	$2, %r8d
	movq	-256(%rbp), %rax
	movq	-296(%rbp), %rdi
	movq	%rdi, -5416(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-5416(%rbp), %rdx       # 8-byte Reload
	callq	g_object_bind_property
	movabsq	$.L.str.225, %rsi
	movabsq	$.L.str.226, %rcx
	movl	$2, %r8d
	movq	-256(%rbp), %rdx
	movq	-304(%rbp), %rdi
	movq	%rdi, -5424(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	-5424(%rbp), %rdx       # 8-byte Reload
	movq	%rax, -5432(%rbp)       # 8-byte Spill
	callq	g_object_bind_property
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_resolution_calibrate_callback, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rdi
	movq	%rdi, -5440(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-5440(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -5448(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-200(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -5456(%rbp)       # 8-byte Spill
	callq	g_object_unref
	movq	$0, -200(%rbp)
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -5464(%rbp)       # 8-byte Spill
	movq	%rax, -5472(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-5472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.227, %rdi
	movq	%rax, -5480(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	%rax, -5488(%rbp)       # 8-byte Spill
	movq	%rcx, -5496(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-5496(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.228, %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movabsq	$.L.str.229, %rdx
	leaq	-152(%rbp), %rsi
	movl	-188(%rbp), %r10d
	movl	%r10d, %r11d
	addl	$1, %r11d
	movl	%r11d, -188(%rbp)
	movq	-5464(%rbp), %rdi       # 8-byte Reload
	movq	-5480(%rbp), %r8        # 8-byte Reload
	movq	%rsi, -5504(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	-5488(%rbp), %rbx       # 8-byte Reload
	movq	%rdx, -5512(%rbp)       # 8-byte Spill
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	-5512(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-5504(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	%r10d, 24(%rsp)
	callq	prefs_notebook_append_page
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -5520(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-5520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$10, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.228, %rsi
	leaq	-824(%rbp), %rdx
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -272(%rbp)
	movl	$0, -844(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.243, %rdi
	movq	-824(%rbp), %rcx
	movq	%rcx, -5528(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -5536(%rbp)       # 8-byte Spill
	movq	%rcx, -5544(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.242, %rsi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movl	-844(%rbp), %r11d
	movl	%r11d, %r15d
	addl	$1, %r15d
	movl	%r15d, -844(%rbp)
	movq	-5528(%rbp), %rdi       # 8-byte Reload
	movl	%r10d, %edx
	movq	%rcx, -5552(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movq	-5536(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	%r11d, (%rsp)
	movq	$0, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movq	-272(%rbp), %rsi
	movq	%rax, -5560(%rbp)       # 8-byte Spill
	movq	%rsi, -5568(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-844(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_table_set_row_spacing
	movabsq	$.L.str.244, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rdi
	callq	gimp_color_profile_store_new
	movq	%rax, -832(%rbp)
	movq	-840(%rbp), %rdi
	callq	g_free
	movq	-832(%rbp), %rax
	movq	%rax, -5576(%rbp)       # 8-byte Spill
	callq	gimp_color_profile_store_get_type
	movq	-5576(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -5584(%rbp)       # 8-byte Spill
	movq	-5584(%rbp), %rdx       # 8-byte Reload
	callq	gimp_color_profile_store_add
	movl	$0, -324(%rbp)
.LBB3_53:                               # %for.cond.888
                                        # =>This Inner Loop Header: Depth=1
	movslq	-324(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB3_60
# BB#54:                                # %for.body.892
                                        #   in Loop: Header=BB3_53 Depth=1
	movabsq	$prefs_dialog_new.profiles, %rax
	movq	-56(%rbp), %rdi
	movq	-824(%rbp), %rsi
	movq	-832(%rbp), %rdx
	movslq	-324(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rdi, -5592(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -5600(%rbp)       # 8-byte Spill
	movq	%rsi, -5608(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$prefs_dialog_new.profiles, %rcx
	movslq	-324(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	16(%rcx), %r8
	movq	-5592(%rbp), %rdi       # 8-byte Reload
	movq	-5608(%rbp), %rsi       # 8-byte Reload
	movq	-5600(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_profile_combo_box_new
	movq	%rax, -256(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -5616(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$prefs_dialog_new.profiles, %rcx
	movl	-844(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -844(%rbp)
	movslq	-324(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdi
	movl	%r9d, -5620(%rbp)       # 4-byte Spill
	movq	%rax, -5632(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-256(%rbp), %r8
	movq	-5632(%rbp), %rdi       # 8-byte Reload
	movl	-5620(%rbp), %edx       # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	cmpl	$2, -324(%rbp)
	movq	%rax, -5640(%rbp)       # 8-byte Spill
	jne	.LBB3_56
# BB#55:                                # %if.then.910
                                        #   in Loop: Header=BB3_53 Depth=1
	movq	-272(%rbp), %rax
	movq	%rax, -5648(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-844(%rbp), %ecx
	subl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_table_set_row_spacing
	movabsq	$.L.str.246, %rdi
	movq	-824(%rbp), %rax
	movq	%rax, -5656(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.245, %rsi
	movq	-5656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -256(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -5664(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5664(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movq	-256(%rbp), %rsi
	movl	-844(%rbp), %r8d
	movl	-844(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-256(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.248, %rdi
	movl	-844(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -844(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -5672(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rsi
	movq	%rax, -5680(%rbp)       # 8-byte Spill
	movq	%rsi, -5688(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.247, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	-844(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -844(%rbp)
	movq	-5672(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -5696(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movl	%edx, -5700(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	-5680(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	-5700(%rbp), %r11d      # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	$0, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movq	-272(%rbp), %rsi
	movq	%rax, -5712(%rbp)       # 8-byte Spill
	movq	%rsi, -5720(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-844(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_table_set_row_spacing
.LBB3_56:                               # %if.end.928
                                        #   in Loop: Header=BB3_53 Depth=1
	cmpl	$3, -324(%rbp)
	jne	.LBB3_58
# BB#57:                                # %if.then.931
                                        #   in Loop: Header=BB3_53 Depth=1
	movabsq	$.L.str.250, %rdi
	movq	-824(%rbp), %rax
	movq	%rax, -5728(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rdi
	movq	%rax, -5736(%rbp)       # 8-byte Spill
	movq	%rdi, -5744(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5744(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.249, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	-844(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -844(%rbp)
	movq	-5728(%rbp), %r9        # 8-byte Reload
	movq	%rdi, -5752(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movl	%edx, -5756(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	-5736(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	-5756(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	$0, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movq	%rax, -5768(%rbp)       # 8-byte Spill
.LBB3_58:                               # %if.end.937
                                        #   in Loop: Header=BB3_53 Depth=1
	jmp	.LBB3_59
.LBB3_59:                               # %for.inc.938
                                        #   in Loop: Header=BB3_53 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB3_53
.LBB3_60:                               # %for.end.940
	movq	-832(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -248(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -5776(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5776(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movq	-248(%rbp), %rsi
	movl	-844(%rbp), %r8d
	movl	-844(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-248(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.252, %rdi
	movl	-844(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -844(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -5784(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.251, %rsi
	movq	-5784(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -5792(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-5792(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-256(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.254, %rdi
	movq	-824(%rbp), %rax
	movq	%rax, -5800(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.253, %rsi
	movl	$40, %ecx
	movl	$24, %r8d
	xorl	%r9d, %r9d
	movq	-5800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_color_button_new
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -5808(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-5808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-256(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -5812(%rbp)       # 4-byte Spill
	movl	-5812(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-256(%rbp), %rdi
	callq	gtk_widget_show
	movq	-256(%rbp), %rax
	movq	%rax, -5824(%rbp)       # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-5824(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi
	movq	%rax, -5832(%rbp)       # 8-byte Spill
	callq	gimp_get_user_context
	movq	-5832(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_panel_set_context
	movq	-272(%rbp), %rax
	movq	%rax, -5840(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-844(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_table_set_row_spacing
	movabsq	$.L.str.256, %rdi
	movq	-336(%rbp), %rax
	movq	%rax, -5848(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rdi
	movq	%rax, -5856(%rbp)       # 8-byte Spill
	movq	%rdi, -5864(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-5864(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.255, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	-844(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -844(%rbp)
	movq	-5848(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -5872(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movl	%edx, -5876(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movq	-5856(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	-5876(%rbp), %r11d      # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	$0, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movq	%rax, -256(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -5888(%rbp)       # 8-byte Spill
	movq	%rax, -5896(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-5896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.257, %rdi
	movq	%rax, -5904(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, -5912(%rbp)       # 8-byte Spill
	movq	%rsi, -5920(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-5920(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.258, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.259, %rsi
	leaq	-152(%rbp), %rdi
	movl	-188(%rbp), %edx
	movl	%edx, %r11d
	addl	$1, %r11d
	movl	%r11d, -188(%rbp)
	movq	-5888(%rbp), %r8        # 8-byte Reload
	movq	%rdi, -5928(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	-5904(%rbp), %r10       # 8-byte Reload
	movq	%rsi, -5936(%rbp)       # 8-byte Spill
	movq	%r10, %rsi
	movq	-5912(%rbp), %rbx       # 8-byte Reload
	movl	%edx, -5940(%rbp)       # 4-byte Spill
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	-5936(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-5928(%rbp), %r14       # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	-5940(%rbp), %r11d      # 4-byte Reload
	movl	%r11d, 24(%rsp)
	callq	prefs_notebook_append_page
	movabsq	$.L.str.260, %rdi
	movq	%rax, -232(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -5952(%rbp)       # 8-byte Spill
	movq	%rcx, -5960(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-5960(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-5952(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.261, %rdi
	movq	%rax, -240(%rbp)
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -5968(%rbp)       # 8-byte Spill
	movq	%rcx, -5976(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-5976(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	-5968(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_input_devices_dialog, %rcx
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -5984(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-5984(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.263, %rdi
	movq	-336(%rbp), %rcx
	movq	%rax, -5992(%rbp)       # 8-byte Spill
	movq	%rcx, -6000(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -6008(%rbp)       # 8-byte Spill
	movq	%rcx, -6016(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-6016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.262, %rsi
	movq	-6000(%rbp), %rdi       # 8-byte Reload
	movq	-6008(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.264, %rdi
	movq	%rax, -6024(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -6032(%rbp)       # 8-byte Spill
	movq	%rcx, -6040(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-6040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rdi
	movq	-6032(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_devices_save_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -6048(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-6048(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.265, %rdi
	movq	%rax, -6056(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -6064(%rbp)       # 8-byte Spill
	movq	%rcx, -6072(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-6072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	-6064(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_devices_clear_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -6080(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-6080(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-256(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -6088(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	-264(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -6096(%rbp)       # 8-byte Spill
	movq	%rax, -6104(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-6104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.266, %rdi
	movq	%rax, -6112(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	%rax, -6120(%rbp)       # 8-byte Spill
	movq	%rcx, -6128(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-6128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.268, %rdi
	movq	%rax, -6136(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.267, %rcx
	movabsq	$.L.str.269, %rdx
	leaq	-152(%rbp), %rsi
	leaq	-184(%rbp), %rdi
	movl	-188(%rbp), %r9d
	movl	%r9d, %r11d
	addl	$1, %r11d
	movl	%r11d, -188(%rbp)
	movq	-6096(%rbp), %r8        # 8-byte Reload
	movq	%rdi, -6144(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	-6112(%rbp), %r10       # 8-byte Reload
	movq	%rsi, -6152(%rbp)       # 8-byte Spill
	movq	%r10, %rsi
	movq	-6120(%rbp), %rbx       # 8-byte Reload
	movq	%rdx, -6160(%rbp)       # 8-byte Spill
	movq	%rbx, %rdx
	movq	-6136(%rbp), %r8        # 8-byte Reload
	movl	%r9d, -6164(%rbp)       # 4-byte Spill
	movq	%rax, %r9
	movq	-6160(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-6152(%rbp), %r14       # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	-6144(%rbp), %r15       # 8-byte Reload
	movq	%r15, 16(%rsp)
	movl	-6164(%rbp), %r11d      # 4-byte Reload
	movl	%r11d, 24(%rsp)
	callq	prefs_notebook_append_page
	movq	%rax, -232(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_controller_list_new
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -6176(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-6176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r11d
	xorl	%r8d, %r8d
	movq	-240(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r11d, %edx
	movl	%r11d, %ecx
	callq	gtk_box_pack_start
	movq	-240(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -6184(%rbp)       # 8-byte Spill
	movq	%rax, -6192(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-6192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.270, %rdi
	movq	%rax, -6200(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, -6208(%rbp)       # 8-byte Spill
	movq	%rsi, -6216(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-6216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.271, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.272, %rsi
	leaq	-152(%rbp), %rdi
	movl	-188(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -188(%rbp)
	movq	-6184(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -6224(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	-6200(%rbp), %rbx       # 8-byte Reload
	movq	%rsi, -6232(%rbp)       # 8-byte Spill
	movq	%rbx, %rsi
	movq	-6208(%rbp), %r14       # 8-byte Reload
	movl	%edx, -6236(%rbp)       # 4-byte Spill
	movq	%r14, %rdx
	movq	%rax, %r8
	movq	-6232(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-6224(%rbp), %r15       # 8-byte Reload
	movq	%r15, 16(%rsp)
	movl	-6236(%rbp), %r11d      # 4-byte Reload
	movl	%r11d, 24(%rsp)
	callq	prefs_notebook_append_page
	movabsq	$.L.str.273, %rdi
	movq	%rax, -232(%rbp)
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -6248(%rbp)       # 8-byte Spill
	movq	%rcx, -6256(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-6256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-6248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -6264(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-6264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.275, %rdi
	movq	%rax, -272(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -6272(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rcx
	movq	%rax, -6280(%rbp)       # 8-byte Spill
	movq	%rcx, -6288(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-6288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.274, %rsi
	xorl	%edx, %edx
	movl	$1, %r11d
	movq	-200(%rbp), %rcx
	movq	-6272(%rbp), %rdi       # 8-byte Reload
	movl	%edx, -6292(%rbp)       # 4-byte Spill
	movl	-6292(%rbp), %r12d      # 4-byte Reload
	movq	%rcx, -6304(%rbp)       # 8-byte Spill
	movl	%r12d, %ecx
	movq	-6280(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	movq	-6304(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r11d, -6308(%rbp)      # 4-byte Spill
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.276, %rdi
	movq	%rax, -6320(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rsi
	movq	%rax, -6328(%rbp)       # 8-byte Spill
	movq	%rsi, -6336(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-6336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-6328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.278, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -6344(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rsi
	movq	%rax, -6352(%rbp)       # 8-byte Spill
	movq	%rsi, -6360(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-6360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.277, %rsi
	movq	-6344(%rbp), %rdi       # 8-byte Reload
	movq	-6352(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.279, %rdi
	movq	%rax, -6368(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-232(%rbp), %rcx
	movq	%rax, -6376(%rbp)       # 8-byte Spill
	movq	%rcx, -6384(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-6384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-6376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	prefs_frame_new
	movabsq	$.L.str.281, %rdi
	movq	%rax, -240(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -6392(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -6400(%rbp)       # 8-byte Spill
	movq	%rcx, -6408(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-6408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.280, %rsi
	movq	-6392(%rbp), %rdi       # 8-byte Reload
	movq	-6400(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.282, %rdi
	movq	%rax, -6416(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -6424(%rbp)       # 8-byte Spill
	movq	%rcx, -6432(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-6432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rdi
	movq	-6424(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_session_save_callback, %rcx
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -6440(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-6440(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.283, %rdi
	movq	%rax, -6448(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rcx
	movq	%rax, -6456(%rbp)       # 8-byte Spill
	movq	%rcx, -6464(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-6464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	-6456(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	prefs_button_add
	movabsq	$.L.str.59, %rsi
	movabsq	$prefs_session_clear_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -6472(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-6472(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-256(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -6480(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	-264(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -6488(%rbp)       # 8-byte Spill
	movq	%rax, -6496(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-6496(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.284, %rdi
	movq	%rax, -6504(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rcx
	movq	%rax, -6512(%rbp)       # 8-byte Spill
	movq	%rcx, -6520(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-6520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.285, %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movabsq	$.L.str.286, %rdx
	leaq	-152(%rbp), %rsi
	movl	-188(%rbp), %r11d
	movl	%r11d, %r12d
	addl	$1, %r12d
	movl	%r12d, -188(%rbp)
	movq	-6488(%rbp), %rdi       # 8-byte Reload
	movq	-6504(%rbp), %r8        # 8-byte Reload
	movq	%rsi, -6528(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	-6512(%rbp), %r10       # 8-byte Reload
	movq	%rdx, -6536(%rbp)       # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %r8
	movq	-6536(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-6528(%rbp), %rbx       # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	callq	prefs_notebook_append_page
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -6544(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-6544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movq	%rax, -272(%rbp)
	movl	$0, -324(%rbp)
.LBB3_61:                               # %for.cond.1062
                                        # =>This Inner Loop Header: Depth=1
	movslq	-324(%rbp), %rax
	cmpq	$2, %rax
	jae	.LBB3_64
# BB#62:                                # %for.body.1066
                                        #   in Loop: Header=BB3_61 Depth=1
	movabsq	$prefs_dialog_new.dirs, %rax
	movq	-336(%rbp), %rdi
	movslq	-324(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rsi
	movslq	-324(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	%rdi, -6552(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -6560(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$2, %ecx
	movq	-6552(%rbp), %rdi       # 8-byte Reload
	movq	-6560(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_file_chooser_button_new
	movq	%rax, -256(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -6568(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-6568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$prefs_dialog_new.dirs, %rdx
	movl	-324(%rbp), %ecx
	movslq	-324(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rdx
	movq	8(%rdx), %rdi
	movl	%ecx, -6572(%rbp)       # 4-byte Spill
	movq	%rax, -6584(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-256(%rbp), %r8
	movq	-6584(%rbp), %rdi       # 8-byte Reload
	movl	-6572(%rbp), %edx       # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -6592(%rbp)       # 8-byte Spill
# BB#63:                                # %for.inc.1082
                                        #   in Loop: Header=BB3_61 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB3_61
.LBB3_64:                               # %for.end.1084
	movl	$0, -324(%rbp)
.LBB3_65:                               # %for.cond.1085
                                        # =>This Inner Loop Header: Depth=1
	movslq	-324(%rbp), %rax
	cmpq	$13, %rax
	jae	.LBB3_68
# BB#66:                                # %for.body.1089
                                        #   in Loop: Header=BB3_65 Depth=1
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -6600(%rbp)       # 8-byte Spill
	movq	%rax, -6608(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-6608(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$prefs_dialog_new.paths, %rsi
	movslq	-324(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -6616(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$prefs_dialog_new.paths, %rsi
	movslq	-324(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rsi
	movq	16(%rsi), %rcx
	movq	-88(%rbp), %rsi
	movq	%rax, -6624(%rbp)       # 8-byte Spill
	movq	%rcx, -6632(%rbp)       # 8-byte Spill
	movq	%rsi, -6640(%rbp)       # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-6640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$prefs_dialog_new.paths, %rcx
	movslq	-324(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rdi
	movq	%rax, -6648(%rbp)       # 8-byte Spill
	callq	gettext
	leaq	-152(%rbp), %rcx
	leaq	-184(%rbp), %rsi
	movabsq	$prefs_dialog_new.paths, %rdi
	movslq	-324(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rdi
	movq	24(%rdi), %rdx
	movl	-188(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -188(%rbp)
	movq	-6600(%rbp), %rdi       # 8-byte Reload
	movq	-6616(%rbp), %r10       # 8-byte Reload
	movq	%rsi, -6656(%rbp)       # 8-byte Spill
	movq	%r10, %rsi
	movq	-6624(%rbp), %r11       # 8-byte Reload
	movq	%rdx, -6664(%rbp)       # 8-byte Spill
	movq	%r11, %rdx
	movq	-6632(%rbp), %rbx       # 8-byte Reload
	movq	%rcx, -6672(%rbp)       # 8-byte Spill
	movq	%rbx, %rcx
	movq	-6648(%rbp), %r14       # 8-byte Reload
	movl	%r8d, -6676(%rbp)       # 4-byte Spill
	movq	%r14, %r8
	movq	%rax, %r9
	movq	-6664(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-6672(%rbp), %rax       # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-6656(%rbp), %r15       # 8-byte Reload
	movq	%r15, 16(%rsp)
	movl	-6676(%rbp), %r12d      # 4-byte Reload
	movl	%r12d, 24(%rsp)
	callq	prefs_notebook_append_page
	movabsq	$prefs_dialog_new.paths, %rcx
	movq	%rax, -232(%rbp)
	movq	-336(%rbp), %rdi
	movslq	-324(%rbp), %rax
	imulq	$56, %rax, %rax
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movq	40(%rdx), %rsi
	movslq	-324(%rbp), %rax
	imulq	$56, %rax, %rax
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movq	48(%rdx), %rdx
	movslq	-324(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rax, %rcx
	movq	32(%rcx), %rax
	movq	%rdi, -6688(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -6696(%rbp)       # 8-byte Spill
	movq	%rsi, -6704(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-6688(%rbp), %rdi       # 8-byte Reload
	movq	-6704(%rbp), %rsi       # 8-byte Reload
	movq	-6696(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_prop_path_editor_new
	movq	%rax, -856(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -6712(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-6712(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r12d
	xorl	%r8d, %r8d
	movq	-856(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r12d, %ecx
	callq	gtk_box_pack_start
	movq	-856(%rbp), %rdi
	callq	gtk_widget_show
# BB#67:                                # %for.inc.1121
                                        #   in Loop: Header=BB3_65 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB3_65
.LBB3_68:                               # %for.end.1123
	movq	-80(%rbp), %rax
	movq	%rax, -6720(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-6720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_expand_all
	movq	-88(%rbp), %rax
	movq	%rax, -6728(%rbp)       # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-6728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -6736(%rbp)       # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-6736(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_collapse_row
	movq	-120(%rbp), %rdi
	movl	%eax, -6740(%rbp)       # 4-byte Spill
	callq	gtk_tree_path_free
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-224(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rsi
	movq	%rsi, -48(%rbp)
.LBB3_69:                               # %return
	movq	-48(%rbp), %rax
	addq	$6760, %rsp             # imm = 0x1A68
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	prefs_dialog_new, .Lfunc_end3-prefs_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_help_func,@function
prefs_help_func:                        # @prefs_help_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_current_page
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_get_nth_page
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.376, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_standard_help_func
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	prefs_help_func, .Lfunc_end4-prefs_help_func
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_response,@function
prefs_response:                         # @prefs_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp23:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$-5, %r8d
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	%r8d, -200(%rbp)        # 4-byte Spill
	je	.LBB5_4
	jmp	.LBB5_31
.LBB5_31:                               # %entry
	movl	-196(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jne	.LBB5_21
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movabsq	$.L.str.377, %rdi
	callq	gettext
	movabsq	$.L.str.378, %rsi
	movl	$3, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.11, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.10, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-32(%rbp), %rbx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movq	%rbx, %rdx
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -224(%rbp)       # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.379, %rdi
	movq	264(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-48(%rbp), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_config_reset
.LBB5_3:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB5_30
.LBB5_4:                                # %sw.bb.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$2048, %edx             # imm = 0x800
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_diff
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB5_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB5_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB5_5 Depth=1
	leaq	-120(%rbp), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	-88(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -96(%rbp)
	movq	%rax, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	memset
	movq	-96(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-120(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_object_get_property
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_set_property
	leaq	-120(%rbp), %rdi
	callq	g_value_unset
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB5_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false
                                        #   in Loop: Header=BB5_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB5_10
.LBB5_10:                               # %cond.end
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB5_5
.LBB5_11:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-80(%rbp), %rdi
	callq	g_list_free
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rc_save
	movl	$80, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$1024, %edx             # imm = 0x400
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_diff
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB5_20
# BB#12:                                # %if.then.40
	movabsq	$.L.str.380, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_string_new
	movabsq	$.L.str.381, %rsi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	g_string_append
	movq	-72(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB5_13:                               # %for.cond.44
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB5_19
# BB#14:                                # %for.body.46
                                        #   in Loop: Header=BB5_13 Depth=1
	movabsq	$.L.str.382, %rsi
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_string_append_printf
# BB#15:                                # %for.inc.50
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB5_17
# BB#16:                                # %cond.true.52
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB5_18
.LBB5_17:                               # %cond.false.54
                                        #   in Loop: Header=BB5_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB5_18
.LBB5_18:                               # %cond.end.55
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB5_13
.LBB5_19:                               # %for.end.57
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx
	movq	(%rcx), %rdx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	prefs_message
	movl	$1, %esi
	movq	-128(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB5_20:                               # %if.end.59
	movq	-72(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB5_29
.LBB5_21:                               # %sw.default
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$256, %edx              # imm = 0x100
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_diff
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
.LBB5_22:                               # %for.cond.71
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -160(%rbp)
	je	.LBB5_28
# BB#23:                                # %for.body.73
                                        #   in Loop: Header=BB5_22 Depth=1
	leaq	-192(%rbp), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	-160(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -168(%rbp)
	movq	%rax, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	memset
	movq	-168(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	leaq	-192(%rbp), %rdx
	movq	-144(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_object_get_property
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_set_property
	leaq	-192(%rbp), %rdi
	callq	g_value_unset
# BB#24:                                # %for.inc.83
                                        #   in Loop: Header=BB5_22 Depth=1
	cmpq	$0, -160(%rbp)
	je	.LBB5_26
# BB#25:                                # %cond.true.85
                                        #   in Loop: Header=BB5_22 Depth=1
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB5_27
.LBB5_26:                               # %cond.false.87
                                        #   in Loop: Header=BB5_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB5_27
.LBB5_27:                               # %cond.end.88
                                        #   in Loop: Header=BB5_22 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	jmp	.LBB5_22
.LBB5_28:                               # %for.end.90
	movq	tool_editor, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_editor_revert_changes
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-152(%rbp), %rdi
	callq	g_list_free
	movq	$0, tool_editor
.LBB5_29:                               # %sw.epilog
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_rc_set_autosave
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB5_30:                               # %return
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	prefs_response, .Lfunc_end5-prefs_response
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_tree_select_callback,@function
prefs_tree_select_callback:             # @prefs_tree_select_callback
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
	subq	$208, %rsp
	leaq	-40(%rbp), %rax
	leaq	-72(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	leaq	-72(%rbp), %rsi
	movl	$3, %edx
	leaq	-80(%rbp), %rcx
	movl	$4, %r8d
	leaq	-88(%rbp), %r9
	movl	$2, %r10d
	leaq	-92(%rbp), %rdi
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$2, (%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	movl	%r11d, -108(%rbp)       # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gtk_tree_model_get
	movq	-24(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_set_from_pixbuf
	cmpq	$0, -88(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then.10
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_4:                                # %if.end.11
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$prefs_notebook_page_callback, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$prefs_notebook_page_callback, %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB6_5:                                # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	prefs_tree_select_callback, .Lfunc_end6-prefs_tree_select_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_notebook_page_callback,@function
prefs_notebook_page_callback:           # @prefs_notebook_page_callback
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_get_tree_view
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_tree_view_get_model
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -84(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	cmpl	$0, -84(%rbp)
	je	.LBB7_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-80(%rbp), %rsi
	movl	$2, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movl	-88(%rbp), %edx
	cmpl	-20(%rbp), %edx
	jne	.LBB7_4
# BB#3:                                 # %if.then
	leaq	-80(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
	jmp	.LBB7_14
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_iter_has_child
	cmpl	$0, %eax
	je	.LBB7_12
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_iter_n_children
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
.LBB7_6:                                # %for.cond.7
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_11
# BB#7:                                 # %for.body.9
                                        #   in Loop: Header=BB7_6 Depth=2
	leaq	-128(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movl	-96(%rbp), %ecx
	callq	gtk_tree_model_iter_nth_child
	leaq	-128(%rbp), %rsi
	movl	$2, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movl	-88(%rbp), %edx
	cmpl	-20(%rbp), %edx
	jne	.LBB7_9
# BB#8:                                 # %if.then.12
	leaq	-128(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -136(%rbp)
	movq	-40(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	gtk_tree_view_expand_to_path
	leaq	-128(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
	jmp	.LBB7_14
.LBB7_9:                                # %if.end.14
                                        #   in Loop: Header=BB7_6 Depth=2
	jmp	.LBB7_10
.LBB7_10:                               # %for.inc
                                        #   in Loop: Header=BB7_6 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB7_6
.LBB7_11:                               # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.15
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_13
.LBB7_13:                               # %for.inc.16
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -84(%rbp)
	jmp	.LBB7_1
.LBB7_14:                               # %for.end.18
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	prefs_notebook_page_callback, .Lfunc_end7-prefs_notebook_page_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_notebook_append_page,@function
prefs_notebook_append_page:             # @prefs_notebook_append_page
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp33:
	.cfi_offset %rbx, -48
.Ltmp34:
	.cfi_offset %r12, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
	movl	40(%rbp), %eax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movl	%eax, -108(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	callq	gtk_event_box_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_event_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_event_box_set_visible_window
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-48(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gtk_notebook_append_page
	movq	-120(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rdx
	callq	gimp_help_set_help_data
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	cmpq	$0, -64(%rbp)
	je	.LBB8_9
# BB#1:                                 # %if.then
	movabsq	$.L.str.384, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.385, %rsi
	movabsq	$.L.str.386, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rdi
	movq	-152(%rbp), %rcx
	movb	$0, %al
	callq	themes_get_theme_file
	movl	$1, %esi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then.11
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-160(%rbp), %rdi
	callq	gdk_pixbuf_new_from_file
	movq	%rax, -136(%rbp)
.LBB8_3:                                # %if.end
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.387, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.385, %rsi
	movabsq	$.L.str.386, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rdi
	movq	-152(%rbp), %rcx
	movb	$0, %al
	callq	themes_get_theme_file
	movl	$1, %esi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.17
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-160(%rbp), %rdi
	callq	gdk_pixbuf_new_from_file
	movq	%rax, -144(%rbp)
	jmp	.LBB8_8
.LBB8_5:                                # %if.else
	cmpq	$0, -136(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.20
	movl	$22, %eax
	movl	$2, %ecx
	movq	-136(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gdk_pixbuf_scale_simple
	movq	%rax, -144(%rbp)
.LBB8_7:                                # %if.end.22
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.23
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
.LBB8_9:                                # %if.end.24
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	gtk_tree_store_append
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-144(%rbp), %rcx
	cmpq	$0, -80(%rbp)
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	je	.LBB8_11
# BB#10:                                # %cond.true
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB8_12:                               # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %ecx
	movl	$3, %esi
	movl	$4, %edi
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	-108(%rbp), %r10d
	movq	-56(%rbp), %r11
	movq	-136(%rbp), %rbx
	movq	-192(%rbp), %r14        # 8-byte Reload
	movl	%edi, -220(%rbp)        # 4-byte Spill
	movq	%r14, %rdi
	movq	-200(%rbp), %r15        # 8-byte Reload
	movl	%esi, -224(%rbp)        # 4-byte Spill
	movq	%r15, %rsi
	movq	-208(%rbp), %r12        # 8-byte Reload
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movq	%r12, %rcx
	movl	%r9d, -232(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$2, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	%r11, 24(%rsp)
	movl	$4, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movl	$-1, 48(%rsp)
	movb	$0, %al
	callq	gtk_tree_store_set
	cmpq	$0, -136(%rbp)
	je	.LBB8_14
# BB#13:                                # %if.then.27
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_14:                               # %if.end.28
	cmpq	$0, -144(%rbp)
	je	.LBB8_16
# BB#15:                                # %if.then.30
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_16:                               # %if.end.31
	movq	-128(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	prefs_notebook_append_page, .Lfunc_end8-prefs_notebook_append_page
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_frame_new,@function
prefs_frame_new:                        # @prefs_frame_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_frame_new
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -32(%rbp)
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_box_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB9_7
.LBB9_2:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_5
# BB#4:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_6:                                # %if.end
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.10
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_box_pack_start
	jmp	.LBB9_10
.LBB9_9:                                # %if.else.15
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_container_add
.LBB9_10:                               # %if.end.16
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	prefs_frame_new, .Lfunc_end9-prefs_frame_new
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_table_new,@function
prefs_table_new:                        # @prefs_table_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$2, %eax
	xorl	%edx, %edx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movl	%eax, %esi
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_box_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_7
.LBB10_2:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_5
# BB#4:                                 # %if.then.8
	movl	$1, -44(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.9
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_6:                               # %if.end
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.11
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_9
# BB#8:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	jmp	.LBB10_10
.LBB10_9:                               # %if.else.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_container_add
.LBB10_10:                              # %if.end.17
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	prefs_table_new, .Lfunc_end10-prefs_table_new
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_spin_button_add,@function
prefs_spin_button_add:                  # @prefs_spin_button_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-36(%rbp), %edx
	callq	gimp_prop_spin_button_new
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$1, %r8d
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movq	-72(%rbp), %r9
	callq	prefs_widget_add_aligned
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB11_2:                               # %if.end
	movq	-80(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	prefs_spin_button_add, .Lfunc_end11-prefs_spin_button_add
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_memsize_entry_add,@function
prefs_memsize_entry_add:                # @prefs_memsize_entry_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_prop_memsize_entry_new
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$1, %r8d
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	prefs_widget_add_aligned
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB12_2:                               # %if.end
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	prefs_memsize_entry_add, .Lfunc_end12-prefs_memsize_entry_add
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_enum_combo_box_add,@function
prefs_enum_combo_box_add:               # @prefs_enum_combo_box_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB13_2
# BB#1:                                 # %if.then
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %r9
	callq	prefs_widget_add_aligned
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB13_2:                               # %if.end
	movq	-64(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	prefs_enum_combo_box_add, .Lfunc_end13-prefs_enum_combo_box_add
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_check_button_add,@function
prefs_check_button_add:                 # @prefs_check_button_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
.LBB14_2:                               # %if.end
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	prefs_check_button_add, .Lfunc_end14-prefs_check_button_add
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_button_add,@function
prefs_button_add:                       # @prefs_button_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_stock_button_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	prefs_button_add, .Lfunc_end15-prefs_button_add
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_keyboard_shortcuts_dialog,@function
prefs_keyboard_shortcuts_dialog:        # @prefs_keyboard_shortcuts_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movabsq	$.L.str.388, %rdx
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_raise
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	prefs_keyboard_shortcuts_dialog, .Lfunc_end16-prefs_keyboard_shortcuts_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_menus_save_callback,@function
prefs_menus_save_callback:              # @prefs_menus_save_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	menus_save
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB17_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	prefs_menus_save_callback, .Lfunc_end17-prefs_menus_save_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_menus_clear_callback,@function
prefs_menus_clear_callback:             # @prefs_menus_clear_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	menus_clear
	cmpl	$0, %eax
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movl	$3, %edi
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	callq	prefs_message
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB18_3
.LBB18_2:                               # %if.else
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.389, %rdi
	callq	gettext
	xorl	%edi, %edi
	movl	$1, %esi
	movq	%rax, %rdx
	callq	prefs_message
.LBB18_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	prefs_menus_clear_callback, .Lfunc_end18-prefs_menus_clear_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_menus_remove_callback,@function
prefs_menus_remove_callback:            # @prefs_menus_remove_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$136, %rsp
.Ltmp70:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.390, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.378, %rsi
	movl	$3, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.11, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.66, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-40(%rbp), %rbx         # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -56(%rbp)        # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.391, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movl	$2, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movq	-32(%rbp), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.392, %rdi
	movq	264(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	menus_remove
.LBB19_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	prefs_menus_remove_callback, .Lfunc_end19-prefs_menus_remove_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_theme_select_callback,@function
prefs_theme_select_callback:            # @prefs_theme_select_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-24(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB20_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	xorl	%eax, %eax
	leaq	-80(%rbp), %rcx
	movl	$24, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rcx, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	memset
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	-100(%rbp), %edx        # 4-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	gtk_tree_model_get_value
	leaq	-80(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movabsq	$.L.str.69, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set
	leaq	-80(%rbp), %rdi
	callq	g_value_unset
.LBB20_2:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	prefs_theme_select_callback, .Lfunc_end20-prefs_theme_select_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_theme_reload_callback,@function
prefs_theme_reload_callback:            # @prefs_theme_reload_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	prefs_theme_reload_callback, .Lfunc_end21-prefs_theme_reload_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_boolean_combo_box_add,@function
prefs_boolean_combo_box_add:            # @prefs_boolean_combo_box_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_prop_boolean_combo_box_new
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB22_2
# BB#1:                                 # %if.then
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %r9
	callq	prefs_widget_add_aligned
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB22_2:                               # %if.end
	movq	-72(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	prefs_boolean_combo_box_add, .Lfunc_end22-prefs_boolean_combo_box_add
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_tool_options_save_callback,@function
prefs_tool_options_save_callback:       # @prefs_tool_options_save_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_tools_save
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB23_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	prefs_tool_options_save_callback, .Lfunc_end23-prefs_tool_options_save_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_tool_options_clear_callback,@function
prefs_tool_options_clear_callback:      # @prefs_tool_options_clear_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_tools_clear
	cmpl	$0, %eax
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movl	$3, %edi
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	callq	prefs_message
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB24_3
.LBB24_2:                               # %if.else
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.393, %rdi
	callq	gettext
	xorl	%edi, %edi
	movl	$1, %esi
	movq	%rax, %rdx
	callq	prefs_message
.LBB24_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	prefs_tool_options_clear_callback, .Lfunc_end24-prefs_tool_options_clear_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_check_button_add_with_icon,@function
prefs_check_button_add_with_icon:       # @prefs_check_button_add_with_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB25_5
.LBB25_2:                               # %if.end
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	xorl	%esi, %esi
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-84(%rbp), %edx         # 4-byte Reload
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %esi
	movq	-40(%rbp), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_misc_set_padding
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	cmpq	$0, -56(%rbp)
	je	.LBB25_4
# BB#3:                                 # %if.then.10
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_size_group_add_widget
.LBB25_4:                               # %if.end.11
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB25_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	prefs_check_button_add_with_icon, .Lfunc_end25-prefs_check_button_add_with_icon
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_template_select_callback,@function
prefs_template_select_callback:         # @prefs_template_select_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$65536, %edx            # imm = 0x10000
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB26_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	prefs_template_select_callback, .Lfunc_end26-prefs_template_select_callback
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI27_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	prefs_widget_add_aligned,@function
prefs_widget_add_aligned:               # @prefs_widget_add_aligned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	movss	.LCPI27_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %r8
	movl	-32(%rbp), %r11d
	movl	%eax, %esi
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
.LBB27_2:                               # %if.end
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	prefs_widget_add_aligned, .Lfunc_end27-prefs_widget_add_aligned
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_display_options_frame_add,@function
prefs_display_options_frame_add:        # @prefs_display_options_frame_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, %edx
	callq	prefs_frame_new
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -40(%rbp)
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.395, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.394, %rsi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.397, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.396, %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.399, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.398, %rsi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.401, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.400, %rsi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movl	$1, %edi
	movl	$2, %esi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.403, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.402, %rsi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.405, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.404, %rsi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.407, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.406, %rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movabsq	$.L.str.409, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.408, %rsi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	prefs_check_button_add
	movq	-40(%rbp), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edi
	movq	%rax, %rsi
	callq	prefs_table_new
	movabsq	$.L.str.411, %rdi
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rcx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.410, %rsi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %edx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	callq	prefs_enum_combo_box_add
	movabsq	$.L.str.413, %rdi
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.414, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rsi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.412, %rsi
	movl	$1, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movq	-432(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movq	$0, (%rsp)
	callq	prefs_color_button_add
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_panel_set_context
	movabsq	$.L.str.415, %rsi
	movabsq	$prefs_canvas_padding_color_changed, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -480(%rbp)        # 8-byte Spill
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end28:
	.size	prefs_display_options_frame_add, .Lfunc_end28-prefs_display_options_frame_add
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_format_string_select_callback,@function
prefs_format_string_select_callback:    # @prefs_format_string_select_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-24(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB29_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$24, %edi
	movl	%edi, %r8d
	movq	%rax, %r9
	movq	%r9, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movq	%r8, %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memset
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	gtk_tree_model_get_value
	leaq	-80(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	leaq	-80(%rbp), %rdi
	callq	g_value_unset
.LBB29_2:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	prefs_format_string_select_callback, .Lfunc_end29-prefs_format_string_select_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_resolution_source_callback,@function
prefs_resolution_source_callback:       # @prefs_resolution_source_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB30_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	callq	gimp_get_screen_resolution
	jmp	.LBB30_15
.LBB30_2:                               # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.221, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
# BB#3:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_size_entry_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB30_5
# BB#4:                                 # %if.then.8
	movl	$0, -68(%rbp)
	jmp	.LBB30_10
.LBB30_5:                               # %if.else.9
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_8
# BB#6:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB30_8
# BB#7:                                 # %if.then.12
	movl	$1, -68(%rbp)
	jmp	.LBB30_9
.LBB30_8:                               # %if.else.13
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB30_9:                               # %if.end
	jmp	.LBB30_10
.LBB30_10:                              # %if.end.15
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB30_12
# BB#11:                                # %if.then.17
	jmp	.LBB30_13
.LBB30_12:                              # %if.else.18
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.prefs_resolution_source_callback, %rsi
	movabsq	$.L.str.416, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_16
.LBB30_13:                              # %if.end.19
	jmp	.LBB30_14
.LBB30_14:                              # %do.end
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	movsd	%xmm0, -24(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, -32(%rbp)
.LBB30_15:                              # %if.end.22
	movabsq	$.L.str.215, %rsi
	movabsq	$.L.str.216, %rdx
	movabsq	$.L.str.417, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-36(%rbp), %r8d
	movb	$2, %al
	callq	g_object_set
.LBB30_16:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	prefs_resolution_source_callback, .Lfunc_end30-prefs_resolution_source_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_resolution_calibrate_callback,@function
prefs_resolution_calibrate_callback:    # @prefs_resolution_calibrate_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_image_get_pixbuf
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	resolution_calibrate_dialog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	prefs_resolution_calibrate_callback, .Lfunc_end31-prefs_resolution_calibrate_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_profile_combo_box_new,@function
prefs_profile_combo_box_new:            # @prefs_profile_combo_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_profile_chooser_dialog_new
	leaq	-64(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_profile_combo_box_new_with_model
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.418, %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_profile_combo_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_profile_combo_box_set_active
	movabsq	$.L.str.13, %rsi
	movabsq	$prefs_profile_combo_dialog_response, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rsi
	movabsq	$prefs_profile_combo_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	prefs_profile_combo_add_tooltip
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	prefs_profile_combo_box_new, .Lfunc_end32-prefs_profile_combo_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_input_devices_dialog,@function
prefs_input_devices_dialog:             # @prefs_input_devices_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movabsq	$.L.str.420, %rdx
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_raise
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	prefs_input_devices_dialog, .Lfunc_end33-prefs_input_devices_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_devices_save_callback,@function
prefs_devices_save_callback:            # @prefs_devices_save_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_devices_save
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB34_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	prefs_devices_save_callback, .Lfunc_end34-prefs_devices_save_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_devices_clear_callback,@function
prefs_devices_clear_callback:           # @prefs_devices_clear_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_devices_clear
	cmpl	$0, %eax
	jne	.LBB35_2
# BB#1:                                 # %if.then
	movl	$3, %edi
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	callq	prefs_message
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB35_3
.LBB35_2:                               # %if.else
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.421, %rdi
	callq	gettext
	xorl	%edi, %edi
	movl	$1, %esi
	movq	%rax, %rdx
	callq	prefs_message
.LBB35_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	prefs_devices_clear_callback, .Lfunc_end35-prefs_devices_clear_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_session_save_callback,@function
prefs_session_save_callback:            # @prefs_session_save_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	session_save
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB36_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB36_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	prefs_session_save_callback, .Lfunc_end36-prefs_session_save_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_session_clear_callback,@function
prefs_session_clear_callback:           # @prefs_session_clear_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	session_clear
	cmpl	$0, %eax
	jne	.LBB37_2
# BB#1:                                 # %if.then
	movl	$3, %edi
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	callq	prefs_message
	leaq	-24(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB37_3
.LBB37_2:                               # %if.else
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.422, %rdi
	callq	gettext
	xorl	%edi, %edi
	movl	$1, %esi
	movq	%rax, %rdx
	callq	prefs_message
.LBB37_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	prefs_session_clear_callback, .Lfunc_end37-prefs_session_clear_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_message,@function
prefs_message:                          # @prefs_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	prefs_dialog, %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movabsq	$.L.str.383, %r8
	xorl	%r9d, %r9d
	movl	$2, %r10d
	cmpl	$0, -8(%rbp)
	cmovnel	%r10d, %r9d
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%r9d, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movb	$0, %al
	callq	gtk_message_dialog_new
	movabsq	$.L.str.13, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%r8, %rcx
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	prefs_message, .Lfunc_end38-prefs_message
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_color_button_add,@function
prefs_color_button_add:                 # @prefs_color_button_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp131:
	.cfi_offset %rbx, -24
	movq	16(%rbp), %rax
	movl	$40, %r10d
	movl	$24, %r11d
	xorl	%ebx, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	callq	gimp_prop_color_button_new
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB39_2
# BB#1:                                 # %if.then
	movl	$1, %r8d
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %r9
	callq	prefs_widget_add_aligned
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB39_2:                               # %if.end
	movq	-72(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end39:
	.size	prefs_color_button_add, .Lfunc_end39-prefs_color_button_add
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_canvas_padding_color_changed,@function
prefs_canvas_padding_color_changed:     # @prefs_canvas_padding_color_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	prefs_canvas_padding_color_changed, .Lfunc_end40-prefs_canvas_padding_color_changed
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_profile_combo_dialog_response,@function
prefs_profile_combo_dialog_response:    # @prefs_profile_combo_dialog_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-3, -12(%rbp)
	jne	.LBB41_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB41_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_profile_chooser_dialog_get_desc
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_color_profile_combo_box_set_active
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB41_3:                               # %if.end
	jmp	.LBB41_4
.LBB41_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_hide
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	prefs_profile_combo_dialog_response, .Lfunc_end41-prefs_profile_combo_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_profile_combo_changed,@function
prefs_profile_combo_changed:            # @prefs_profile_combo_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_color_profile_combo_box_get_active
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.418, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_object_set
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	prefs_profile_combo_changed, .Lfunc_end42-prefs_profile_combo_changed
	.cfi_endproc

	.align	16, 0x90
	.type	prefs_profile_combo_add_tooltip,@function
prefs_profile_combo_add_tooltip:        # @prefs_profile_combo_add_tooltip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	callq	g_object_class_find_property
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_param_spec_get_blurb
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.419, %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	dgettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
.LBB43_2:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	prefs_profile_combo_add_tooltip, .Lfunc_end43-prefs_profile_combo_add_tooltip
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.preferences_dialog_create,@object # @__func__.preferences_dialog_create
.L__func__.preferences_dialog_create:
	.asciz	"preferences_dialog_create"
	.size	.L__func__.preferences_dialog_create, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	prefs_dialog,@object    # @prefs_dialog
	.local	prefs_dialog
	.comm	prefs_dialog,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"notify"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"config-copy"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"config-orig"
	.size	.L.str.5, 12

	.type	.L__func__.prefs_dialog_new,@object # @__func__.prefs_dialog_new
.L__func__.prefs_dialog_new:
	.asciz	"prefs_dialog_new"
	.size	.L__func__.prefs_dialog_new, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_CONFIG (config)"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Preferences"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-preferences"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-prefs-dialog"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-reset"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gtk-cancel"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-ok"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"response"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pixbuf"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"text"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"notebook"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"label"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"image"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"changed"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"switch-page"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Environment"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"environment"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-prefs-environment"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Resource Consumption"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"undo-levels"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Minimal number of _undo levels:"
	.size	.L.str.26, 32

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"undo-size"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Maximum undo _memory:"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"tile-cache-size"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Tile cache _size:"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"max-new-image-size"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Maximum _new image size:"
	.size	.L.str.32, 25

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"num-processors"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Number of _processors to use:"
	.size	.L.str.34, 30

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Image Thumbnails"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"thumbnail-size"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Size of _thumbnails:"
	.size	.L.str.37, 21

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"thumbnail-filesize-limit"
	.size	.L.str.38, 25

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Maximum _filesize for thumbnailing:"
	.size	.L.str.39, 36

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Document History"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"save-document-history"
	.size	.L.str.41, 22

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Keep record of used files in the Recent Documents list"
	.size	.L.str.42, 55

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"User Interface"
	.size	.L.str.43, 15

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"interface"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Interface"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-prefs-interface"
	.size	.L.str.46, 21

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Previews"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"layer-previews"
	.size	.L.str.48, 15

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"_Enable layer & channel previews"
	.size	.L.str.49, 33

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"layer-preview-size"
	.size	.L.str.50, 19

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Default layer & channel preview size:"
	.size	.L.str.51, 39

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"navigation-preview-size"
	.size	.L.str.52, 24

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Na_vigation preview size:"
	.size	.L.str.53, 26

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Keyboard Shortcuts"
	.size	.L.str.54, 19

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"can-change-accels"
	.size	.L.str.55, 18

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"_Use dynamic keyboard shortcuts"
	.size	.L.str.56, 32

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gtk-preferences"
	.size	.L.str.57, 16

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Configure _Keyboard Shortcuts..."
	.size	.L.str.58, 33

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"clicked"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"save-accels"
	.size	.L.str.60, 12

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"_Save keyboard shortcuts on exit"
	.size	.L.str.61, 33

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gtk-save"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Save Keyboard Shortcuts _Now"
	.size	.L.str.63, 29

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"_Reset Keyboard Shortcuts to Default Values"
	.size	.L.str.64, 44

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"clear-button"
	.size	.L.str.65, 13

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gtk-clear"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Remove _All Keyboard Shortcuts"
	.size	.L.str.67, 31

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Theme"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"theme"
	.size	.L.str.69, 6

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gimp-prefs-theme"
	.size	.L.str.70, 17

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Select Theme"
	.size	.L.str.71, 13

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Folder"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gtk-refresh"
	.size	.L.str.73, 12

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Reload C_urrent Theme"
	.size	.L.str.74, 22

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Help System"
	.size	.L.str.75, 12

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"help-system"
	.size	.L.str.76, 12

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimp-prefs-help"
	.size	.L.str.77, 16

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"General"
	.size	.L.str.78, 8

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"show-tooltips"
	.size	.L.str.79, 14

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Show _tooltips"
	.size	.L.str.80, 15

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"show-help-button"
	.size	.L.str.81, 17

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Show help _buttons"
	.size	.L.str.82, 19

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"user-manual-online"
	.size	.L.str.83, 19

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Use the online version"
	.size	.L.str.84, 23

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Use a locally installed copy"
	.size	.L.str.85, 29

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"User manual:"
	.size	.L.str.86, 13

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"gimp-info"
	.size	.L.str.87, 10

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"There's a local installation of the user manual."
	.size	.L.str.88, 49

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gimp-warning"
	.size	.L.str.89, 13

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"The user manual is not installed locally."
	.size	.L.str.90, 42

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"extension-gimp-help-browser"
	.size	.L.str.91, 28

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Help Browser"
	.size	.L.str.92, 13

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"help-browser"
	.size	.L.str.93, 13

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"H_elp browser to use:"
	.size	.L.str.94, 22

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Tool Options"
	.size	.L.str.95, 13

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"tool-options"
	.size	.L.str.96, 13

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-prefs-tool-options"
	.size	.L.str.97, 24

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"save-tool-options"
	.size	.L.str.98, 18

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"_Save tool options on exit"
	.size	.L.str.99, 27

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Save Tool Options _Now"
	.size	.L.str.100, 23

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"_Reset Saved Tool Options to Default Values"
	.size	.L.str.101, 44

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Guide & Grid Snapping"
	.size	.L.str.102, 22

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"snap-distance"
	.size	.L.str.103, 14

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"_Snap distance:"
	.size	.L.str.104, 16

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Scaling"
	.size	.L.str.105, 8

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"interpolation-type"
	.size	.L.str.106, 19

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Default _interpolation:"
	.size	.L.str.107, 24

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Paint Options Shared Between Tools"
	.size	.L.str.108, 35

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"global-brush"
	.size	.L.str.109, 13

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"_Brush"
	.size	.L.str.110, 7

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.111, 21

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"global-dynamics"
	.size	.L.str.112, 16

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"_Dynamics"
	.size	.L.str.113, 10

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"gimp-dynamics"
	.size	.L.str.114, 14

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"global-pattern"
	.size	.L.str.115, 15

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"_Pattern"
	.size	.L.str.116, 9

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.117, 22

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"global-gradient"
	.size	.L.str.118, 16

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"_Gradient"
	.size	.L.str.119, 10

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"gimp-tool-blend"
	.size	.L.str.120, 16

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Move Tool"
	.size	.L.str.121, 10

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"move-tool-changes-active"
	.size	.L.str.122, 25

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Set layer or path as active"
	.size	.L.str.123, 28

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"gimp-tool-move"
	.size	.L.str.124, 15

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Toolbox"
	.size	.L.str.125, 8

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"toolbox"
	.size	.L.str.126, 8

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"gimp-prefs-toolbox"
	.size	.L.str.127, 19

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Appearance"
	.size	.L.str.128, 11

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"toolbox-color-area"
	.size	.L.str.129, 19

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Show _foreground & background color"
	.size	.L.str.130, 36

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"gimp-default-colors"
	.size	.L.str.131, 20

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"toolbox-foo-area"
	.size	.L.str.132, 17

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Show active _brush, pattern & gradient"
	.size	.L.str.133, 39

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"toolbox-image-area"
	.size	.L.str.134, 19

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Show active _image"
	.size	.L.str.135, 19

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"gimp-image"
	.size	.L.str.136, 11

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Tools configuration"
	.size	.L.str.137, 20

	.type	tool_editor,@object     # @tool_editor
	.local	tool_editor
	.comm	tool_editor,8,8
	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Default New Image"
	.size	.L.str.138, 18

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"new-image"
	.size	.L.str.139, 10

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Default Image"
	.size	.L.str.140, 14

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"gimp-prefs-new-image"
	.size	.L.str.141, 21

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"_Template:"
	.size	.L.str.142, 11

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"select-item"
	.size	.L.str.143, 12

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"Quick Mask"
	.size	.L.str.144, 11

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"quick-mask-color"
	.size	.L.str.145, 17

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Set the default Quick Mask color"
	.size	.L.str.146, 33

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Quick Mask color:"
	.size	.L.str.147, 18

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Default Image Grid"
	.size	.L.str.148, 19

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"default-grid"
	.size	.L.str.149, 13

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Default Grid"
	.size	.L.str.150, 13

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"gimp-prefs-default-grid"
	.size	.L.str.151, 24

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Image Windows"
	.size	.L.str.152, 14

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"image-windows"
	.size	.L.str.153, 14

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"gimp-prefs-image-window"
	.size	.L.str.154, 24

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"default-dot-for-dot"
	.size	.L.str.155, 20

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"Use \"_Dot for dot\" by default"
	.size	.L.str.156, 30

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"marching-ants-speed"
	.size	.L.str.157, 20

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"Marching _ants speed:"
	.size	.L.str.158, 22

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Zoom & Resize Behavior"
	.size	.L.str.159, 23

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"resize-windows-on-zoom"
	.size	.L.str.160, 23

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Resize window on _zoom"
	.size	.L.str.161, 23

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"resize-windows-on-resize"
	.size	.L.str.162, 25

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"Resize window on image _size change"
	.size	.L.str.163, 36

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"initial-zoom-to-fit"
	.size	.L.str.164, 20

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"Fit to window"
	.size	.L.str.165, 14

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"1:1"
	.size	.L.str.166, 4

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"Initial zoom _ratio:"
	.size	.L.str.167, 21

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"Space Bar"
	.size	.L.str.168, 10

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"space-bar-action"
	.size	.L.str.169, 17

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"_While space bar is pressed:"
	.size	.L.str.170, 29

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"Mouse Pointers"
	.size	.L.str.171, 15

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"show-brush-outline"
	.size	.L.str.172, 19

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"Show _brush outline"
	.size	.L.str.173, 20

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"show-paint-tool-cursor"
	.size	.L.str.174, 23

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"Show pointer for paint _tools"
	.size	.L.str.175, 30

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"cursor-mode"
	.size	.L.str.176, 12

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Pointer _mode:"
	.size	.L.str.177, 15

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"cursor-format"
	.size	.L.str.178, 14

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"Pointer re_ndering:"
	.size	.L.str.179, 20

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"cursor-handedness"
	.size	.L.str.180, 18

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Pointer _handedness:"
	.size	.L.str.181, 21

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Image Window Appearance"
	.size	.L.str.182, 24

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"gimp-prefs-image-window-appearance"
	.size	.L.str.183, 35

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"Default Appearance in Normal Mode"
	.size	.L.str.184, 34

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"Default Appearance in Fullscreen Mode"
	.size	.L.str.185, 38

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"Image Title & Statusbar Format"
	.size	.L.str.186, 31

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"image-title"
	.size	.L.str.187, 12

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Title & Status"
	.size	.L.str.188, 15

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"gimp-prefs-image-window-title"
	.size	.L.str.189, 30

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"%f-%p.%i (%t) %z%%"
	.size	.L.str.190, 19

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"%f-%p.%i (%t) %d:%s"
	.size	.L.str.191, 20

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"%f-%p.%i (%t) %wx%h"
	.size	.L.str.192, 20

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"Current format"
	.size	.L.str.193, 15

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"Default format"
	.size	.L.str.194, 15

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"Show zoom percentage"
	.size	.L.str.195, 21

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"Show zoom ratio"
	.size	.L.str.196, 16

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"Show image size"
	.size	.L.str.197, 16

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"%D*%f-%p.%i (%t, %L) %wx%h"
	.size	.L.str.198, 27

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"Image Title Format"
	.size	.L.str.199, 19

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"image-title-format"
	.size	.L.str.200, 19

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"%n (%m)"
	.size	.L.str.201, 8

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"Image Statusbar Format"
	.size	.L.str.202, 23

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"image-status-format"
	.size	.L.str.203, 20

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"Display"
	.size	.L.str.204, 8

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"display"
	.size	.L.str.205, 8

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"gimp-prefs-display"
	.size	.L.str.206, 19

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"Transparency"
	.size	.L.str.207, 13

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"transparency-type"
	.size	.L.str.208, 18

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"_Check style:"
	.size	.L.str.209, 14

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"transparency-size"
	.size	.L.str.210, 18

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"Check _size:"
	.size	.L.str.211, 13

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"Monitor Resolution"
	.size	.L.str.212, 19

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"Pixels"
	.size	.L.str.213, 7

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"/%s"
	.size	.L.str.214, 4

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"monitor-xresolution"
	.size	.L.str.215, 20

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"monitor-yresolution"
	.size	.L.str.216, 20

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"Horizontal"
	.size	.L.str.217, 11

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"Vertical"
	.size	.L.str.218, 9

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"ppi"
	.size	.L.str.219, 4

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"_Detect automatically (currently %d \303\227 %d ppi)"
	.size	.L.str.220, 47

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"monitor_resolution_sizeentry"
	.size	.L.str.221, 29

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"toggled"
	.size	.L.str.222, 8

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"_Enter manually"
	.size	.L.str.223, 16

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"C_alibrate..."
	.size	.L.str.224, 14

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"active"
	.size	.L.str.225, 7

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"sensitive"
	.size	.L.str.226, 10

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"Color Management"
	.size	.L.str.227, 17

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"color-management"
	.size	.L.str.228, 17

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"gimp-prefs-color-management"
	.size	.L.str.229, 28

	.type	prefs_dialog_new.profiles,@object # @prefs_dialog_new.profiles
	.section	.rodata,"a",@progbits
	.align	16
prefs_dialog_new.profiles:
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	.L.str.232
	.quad	.L.str.233
	.quad	.L.str.234
	.quad	.L.str.235
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	.L.str.240
	.quad	.L.str.241
	.size	prefs_dialog_new.profiles, 96

	.type	.L.str.230,@object      # @.str.230
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.230:
	.asciz	"_RGB profile:"
	.size	.L.str.230, 14

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"Select RGB Color Profile"
	.size	.L.str.231, 25

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"rgb-profile"
	.size	.L.str.232, 12

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"_CMYK profile:"
	.size	.L.str.233, 15

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"Select CMYK Color Profile"
	.size	.L.str.234, 26

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"cmyk-profile"
	.size	.L.str.235, 13

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"_Monitor profile:"
	.size	.L.str.236, 18

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"Select Monitor Color Profile"
	.size	.L.str.237, 29

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"display-profile"
	.size	.L.str.238, 16

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"_Print simulation profile:"
	.size	.L.str.239, 27

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"Select Printer Color Profile"
	.size	.L.str.240, 29

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"printer-profile"
	.size	.L.str.241, 16

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"mode"
	.size	.L.str.242, 5

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"_Mode of operation:"
	.size	.L.str.243, 20

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"profilerc"
	.size	.L.str.244, 10

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"display-profile-from-gdk"
	.size	.L.str.245, 25

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"_Try to use the system monitor profile"
	.size	.L.str.246, 39

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"display-rendering-intent"
	.size	.L.str.247, 25

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"_Display rendering intent:"
	.size	.L.str.248, 27

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"simulation-rendering-intent"
	.size	.L.str.249, 28

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"_Softproof rendering intent:"
	.size	.L.str.250, 29

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"simulation-gamut-check"
	.size	.L.str.251, 23

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"Mark out of gamut colors"
	.size	.L.str.252, 25

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"out-of-gamut-color"
	.size	.L.str.253, 19

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"Select Warning Color"
	.size	.L.str.254, 21

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"color-profile-policy"
	.size	.L.str.255, 21

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"File Open behaviour:"
	.size	.L.str.256, 21

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"Input Devices"
	.size	.L.str.257, 14

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"input-devices"
	.size	.L.str.258, 14

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"gimp-prefs-input-devices"
	.size	.L.str.259, 25

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"Extended Input Devices"
	.size	.L.str.260, 23

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"Configure E_xtended Input Devices..."
	.size	.L.str.261, 37

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"save-device-status"
	.size	.L.str.262, 19

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"_Save input device settings on exit"
	.size	.L.str.263, 36

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"Save Input Device Settings _Now"
	.size	.L.str.264, 32

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"_Reset Saved Input Device Settings to Default Values"
	.size	.L.str.265, 53

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"Additional Input Controllers"
	.size	.L.str.266, 29

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"controllers"
	.size	.L.str.267, 12

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"Input Controllers"
	.size	.L.str.268, 18

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"gimp-prefs-input-controllers"
	.size	.L.str.269, 29

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"Window Management"
	.size	.L.str.270, 18

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"window-management"
	.size	.L.str.271, 18

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"gimp-prefs-window-management"
	.size	.L.str.272, 29

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"Window Manager Hints"
	.size	.L.str.273, 21

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"dock-window-hint"
	.size	.L.str.274, 17

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"Hint for _docks and toolbox:"
	.size	.L.str.275, 29

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"Focus"
	.size	.L.str.276, 6

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"activate-on-focus"
	.size	.L.str.277, 18

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"Activate the _focused image"
	.size	.L.str.278, 28

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"Window Positions"
	.size	.L.str.279, 17

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"save-session-info"
	.size	.L.str.280, 18

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"_Save window positions on exit"
	.size	.L.str.281, 31

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"Save Window Positions _Now"
	.size	.L.str.282, 27

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"_Reset Saved Window Positions to Default Values"
	.size	.L.str.283, 48

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"Folders"
	.size	.L.str.284, 8

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"folders"
	.size	.L.str.285, 8

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"gimp-prefs-folders"
	.size	.L.str.286, 19

	.type	prefs_dialog_new.dirs,@object # @prefs_dialog_new.dirs
	.section	.rodata,"a",@progbits
	.align	16
prefs_dialog_new.dirs:
	.quad	.L.str.287
	.quad	.L.str.288
	.quad	.L.str.289
	.quad	.L.str.290
	.quad	.L.str.291
	.quad	.L.str.292
	.size	prefs_dialog_new.dirs, 48

	.type	.L.str.287,@object      # @.str.287
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.287:
	.asciz	"temp-path"
	.size	.L.str.287, 10

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"Temporary folder:"
	.size	.L.str.288, 18

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"Select Folder for Temporary Files"
	.size	.L.str.289, 34

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"swap-path"
	.size	.L.str.290, 10

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"Swap folder:"
	.size	.L.str.291, 13

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"Select Swap Folder"
	.size	.L.str.292, 19

	.type	prefs_dialog_new.paths,@object # @prefs_dialog_new.paths
	.section	.rodata,"a",@progbits
	.align	16
prefs_dialog_new.paths:
	.quad	.L.str.293
	.quad	.L.str.294
	.quad	.L.str.295
	.quad	.L.str.296
	.quad	.L.str.297
	.quad	.L.str.298
	.quad	.L.str.299
	.quad	.L.str.300
	.quad	.L.str.301
	.quad	.L.str.302
	.quad	.L.str.303
	.quad	.L.str.304
	.quad	.L.str.305
	.quad	.L.str.306
	.quad	.L.str.307
	.quad	.L.str.308
	.quad	.L.str.309
	.quad	.L.str.310
	.quad	.L.str.311
	.quad	.L.str.312
	.quad	.L.str.313
	.quad	.L.str.314
	.quad	.L.str.315
	.quad	.L.str.316
	.quad	.L.str.317
	.quad	.L.str.318
	.quad	.L.str.319
	.quad	.L.str.320
	.quad	.L.str.321
	.quad	.L.str.322
	.quad	.L.str.323
	.quad	.L.str.324
	.quad	.L.str.325
	.quad	.L.str.326
	.quad	.L.str.327
	.quad	.L.str.328
	.quad	.L.str.329
	.quad	.L.str.330
	.quad	.L.str.331
	.quad	.L.str.332
	.quad	.L.str.333
	.quad	0
	.quad	.L.str.334
	.quad	.L.str.335
	.quad	.L.str.336
	.quad	.L.str.337
	.quad	.L.str.338
	.quad	.L.str.339
	.quad	.L.str.340
	.quad	.L.str.341
	.quad	.L.str.342
	.quad	.L.str.343
	.quad	.L.str.344
	.quad	.L.str.345
	.quad	.L.str.346
	.quad	0
	.quad	.L.str.347
	.quad	.L.str.348
	.quad	.L.str.349
	.quad	.L.str.350
	.quad	.L.str.351
	.quad	.L.str.352
	.quad	0
	.quad	.L.str.353
	.quad	.L.str.354
	.quad	.L.str.355
	.quad	.L.str.356
	.quad	.L.str.357
	.quad	.L.str.358
	.quad	0
	.quad	.L.str.359
	.quad	.L.str.360
	.quad	.L.str.361
	.quad	.L.str.362
	.quad	.L.str.363
	.quad	.L.str.364
	.quad	0
	.quad	.L.str.21
	.quad	.L.str.365
	.quad	.L.str.366
	.quad	.L.str.367
	.quad	.L.str.368
	.quad	.L.str.369
	.quad	0
	.quad	.L.str.370
	.quad	.L.str.371
	.quad	.L.str.372
	.quad	.L.str.373
	.quad	.L.str.374
	.quad	.L.str.375
	.quad	0
	.size	prefs_dialog_new.paths, 728

	.type	.L.str.293,@object      # @.str.293
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.293:
	.asciz	"Brushes"
	.size	.L.str.293, 8

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"Brush Folders"
	.size	.L.str.294, 14

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"folders-brushes"
	.size	.L.str.295, 16

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"gimp-prefs-folders-brushes"
	.size	.L.str.296, 27

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"Select Brush Folders"
	.size	.L.str.297, 21

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"brush-path"
	.size	.L.str.298, 11

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"brush-path-writable"
	.size	.L.str.299, 20

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"Dynamics"
	.size	.L.str.300, 9

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"Dynamics Folders"
	.size	.L.str.301, 17

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"folders-dynamics"
	.size	.L.str.302, 17

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"gimp-prefs-folders-dynamics"
	.size	.L.str.303, 28

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"Select Dynamics Folders"
	.size	.L.str.304, 24

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"dynamics-path"
	.size	.L.str.305, 14

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"dynamics-path-writable"
	.size	.L.str.306, 23

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"Patterns"
	.size	.L.str.307, 9

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"Pattern Folders"
	.size	.L.str.308, 16

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"folders-patterns"
	.size	.L.str.309, 17

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"gimp-prefs-folders-patterns"
	.size	.L.str.310, 28

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"Select Pattern Folders"
	.size	.L.str.311, 23

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"pattern-path"
	.size	.L.str.312, 13

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"pattern-path-writable"
	.size	.L.str.313, 22

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"Palettes"
	.size	.L.str.314, 9

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"Palette Folders"
	.size	.L.str.315, 16

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"folders-palettes"
	.size	.L.str.316, 17

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"gimp-prefs-folders-palettes"
	.size	.L.str.317, 28

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"Select Palette Folders"
	.size	.L.str.318, 23

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"palette-path"
	.size	.L.str.319, 13

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"palette-path-writable"
	.size	.L.str.320, 22

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"Gradients"
	.size	.L.str.321, 10

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"Gradient Folders"
	.size	.L.str.322, 17

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"folders-gradients"
	.size	.L.str.323, 18

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"gimp-prefs-folders-gradients"
	.size	.L.str.324, 29

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"Select Gradient Folders"
	.size	.L.str.325, 24

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"gradient-path"
	.size	.L.str.326, 14

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"gradient-path-writable"
	.size	.L.str.327, 23

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"Fonts"
	.size	.L.str.328, 6

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"Font Folders"
	.size	.L.str.329, 13

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"folders-fonts"
	.size	.L.str.330, 14

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"gimp-prefs-folders-fonts"
	.size	.L.str.331, 25

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"Select Font Folders"
	.size	.L.str.332, 20

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"font-path"
	.size	.L.str.333, 10

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"Tool Presets"
	.size	.L.str.334, 13

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"Tool Preset Folders"
	.size	.L.str.335, 20

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"folders-tool-presets"
	.size	.L.str.336, 21

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"gimp-prefs-folders-tool-presets"
	.size	.L.str.337, 32

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"Select Tool Preset Folders"
	.size	.L.str.338, 27

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"tool-preset-path"
	.size	.L.str.339, 17

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"tool-preset-path-writable"
	.size	.L.str.340, 26

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"Plug-Ins"
	.size	.L.str.341, 9

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"Plug-In Folders"
	.size	.L.str.342, 16

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"folders-plug-ins"
	.size	.L.str.343, 17

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"gimp-prefs-folders-plug-ins"
	.size	.L.str.344, 28

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"Select Plug-In Folders"
	.size	.L.str.345, 23

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"plug-in-path"
	.size	.L.str.346, 13

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"Scripts"
	.size	.L.str.347, 8

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"Script-Fu Folders"
	.size	.L.str.348, 18

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"folders-scripts"
	.size	.L.str.349, 16

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"gimp-prefs-folders-scripts"
	.size	.L.str.350, 27

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"Select Script-Fu Folders"
	.size	.L.str.351, 25

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"script-fu-path"
	.size	.L.str.352, 15

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"Modules"
	.size	.L.str.353, 8

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"Module Folders"
	.size	.L.str.354, 15

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"folders-modules"
	.size	.L.str.355, 16

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"gimp-prefs-folders-modules"
	.size	.L.str.356, 27

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"Select Module Folders"
	.size	.L.str.357, 22

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"module-path"
	.size	.L.str.358, 12

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"Interpreters"
	.size	.L.str.359, 13

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"Interpreter Folders"
	.size	.L.str.360, 20

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"folders-interp"
	.size	.L.str.361, 15

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"gimp-prefs-folders-interpreters"
	.size	.L.str.362, 32

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"Select Interpreter Folders"
	.size	.L.str.363, 27

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"interpreter-path"
	.size	.L.str.364, 17

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"Environment Folders"
	.size	.L.str.365, 20

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"folders-environ"
	.size	.L.str.366, 16

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"gimp-prefs-folders-environment"
	.size	.L.str.367, 31

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"Select Environment Folders"
	.size	.L.str.368, 27

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"environ-path"
	.size	.L.str.369, 13

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"Themes"
	.size	.L.str.370, 7

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"Theme Folders"
	.size	.L.str.371, 14

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"folders-themes"
	.size	.L.str.372, 15

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"gimp-prefs-folders-themes"
	.size	.L.str.373, 26

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"Select Theme Folders"
	.size	.L.str.374, 21

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"theme-path"
	.size	.L.str.375, 11

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"gimp-help-id"
	.size	.L.str.376, 13

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"Reset All Preferences"
	.size	.L.str.377, 22

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	"gimp-question"
	.size	.L.str.378, 14

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"Do you really want to reset all preferences to default values?"
	.size	.L.str.379, 63

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"You will have to restart GIMP for the following changes to take effect:"
	.size	.L.str.380, 72

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"\n\n"
	.size	.L.str.381, 3

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"%s\n"
	.size	.L.str.382, 4

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"%s"
	.size	.L.str.383, 3

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	".png"
	.size	.L.str.384, 5

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"images"
	.size	.L.str.385, 7

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"preferences"
	.size	.L.str.386, 12

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"-22.png"
	.size	.L.str.387, 8

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"gimp-keyboard-shortcuts-dialog"
	.size	.L.str.388, 31

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"Your keyboard shortcuts will be reset to default values the next time you start GIMP."
	.size	.L.str.389, 86

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"Remove all Keyboard Shortcuts"
	.size	.L.str.390, 30

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"unmap"
	.size	.L.str.391, 6

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"Do you really want to remove all keyboard shortcuts from all menus?"
	.size	.L.str.392, 68

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"Your tool options will be reset to default values the next time you start GIMP."
	.size	.L.str.393, 80

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	"show-menubar"
	.size	.L.str.394, 13

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"Show _menubar"
	.size	.L.str.395, 14

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"show-rulers"
	.size	.L.str.396, 12

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"Show _rulers"
	.size	.L.str.397, 13

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"show-scrollbars"
	.size	.L.str.398, 16

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"Show scroll_bars"
	.size	.L.str.399, 17

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"show-statusbar"
	.size	.L.str.400, 15

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	"Show s_tatusbar"
	.size	.L.str.401, 16

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	"show-selection"
	.size	.L.str.402, 15

	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	"Show s_election"
	.size	.L.str.403, 16

	.type	.L.str.404,@object      # @.str.404
.L.str.404:
	.asciz	"show-layer-boundary"
	.size	.L.str.404, 20

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"Show _layer boundary"
	.size	.L.str.405, 21

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"show-guides"
	.size	.L.str.406, 12

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"Show _guides"
	.size	.L.str.407, 13

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"show-grid"
	.size	.L.str.408, 10

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"Show gri_d"
	.size	.L.str.409, 11

	.type	.L.str.410,@object      # @.str.410
.L.str.410:
	.asciz	"padding-mode"
	.size	.L.str.410, 13

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"Canvas _padding mode:"
	.size	.L.str.411, 22

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"padding-color"
	.size	.L.str.412, 14

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"Custom p_adding color:"
	.size	.L.str.413, 23

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"Select Custom Canvas Padding Color"
	.size	.L.str.414, 35

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"color-changed"
	.size	.L.str.415, 14

	.type	.L__func__.prefs_resolution_source_callback,@object # @__func__.prefs_resolution_source_callback
.L__func__.prefs_resolution_source_callback:
	.asciz	"prefs_resolution_source_callback"
	.size	.L__func__.prefs_resolution_source_callback, 33

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"GIMP_IS_SIZE_ENTRY (entry)"
	.size	.L.str.416, 27

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"monitor-resolution-from-windowing-system"
	.size	.L.str.417, 41

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"property-name"
	.size	.L.str.418, 14

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"gimp20-libgimp"
	.size	.L.str.419, 15

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"gimp-input-devices-dialog"
	.size	.L.str.420, 26

	.type	.L.str.421,@object      # @.str.421
.L.str.421:
	.asciz	"Your input device settings will be reset to default values the next time you start GIMP."
	.size	.L.str.421, 89

	.type	.L.str.422,@object      # @.str.422
.L.str.422:
	.asciz	"Your window setup will be reset to default values the next time you start GIMP."
	.size	.L.str.422, 80


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
