	.text
	.file	"gimpdialogfactory.bc"
	.globl	gimp_dialog_factory_get_type
	.align	16, 0x90
	.type	gimp_dialog_factory_get_type,@function
gimp_dialog_factory_get_type:           # @gimp_dialog_factory_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_dialog_factory_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dialog_factory_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$176, %edx
	movabsq	$gimp_dialog_factory_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_dialog_factory_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_dialog_factory_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dialog_factory_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dialog_factory_get_type, .Lfunc_end0-gimp_dialog_factory_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_class_intern_init,@function
gimp_dialog_factory_class_intern_init:  # @gimp_dialog_factory_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_dialog_factory_parent_class
	cmpl	$0, GimpDialogFactory_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDialogFactory_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dialog_factory_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dialog_factory_class_intern_init, .Lfunc_end1-gimp_dialog_factory_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_init,@function
gimp_dialog_factory_init:               # @gimp_dialog_factory_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dialog_factory_init, .Lfunc_end2-gimp_dialog_factory_init
	.cfi_endproc

	.globl	gimp_dialog_factory_new
	.align	16, 0x90
	.type	gimp_dialog_factory_new,@function
gimp_dialog_factory_new:                # @gimp_dialog_factory_new
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
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_31
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %if.then.2
	movl	$0, -68(%rbp)
	jmp	.LBB3_13
.LBB3_8:                                # %if.else.3
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_11
# BB#9:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_11
# BB#10:                                # %if.then.7
	movl	$1, -68(%rbp)
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.8
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_12:                               # %if.end.10
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.11
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_31
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB3_27
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_21
# BB#20:                                # %if.then.27
	movl	$0, -92(%rbp)
	jmp	.LBB3_26
.LBB3_21:                               # %if.else.28
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_24
# BB#22:                                # %land.lhs.true.31
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_24
# BB#23:                                # %if.then.35
	movl	$1, -92(%rbp)
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.36
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_25:                               # %if.end.38
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.39
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_28
.LBB3_27:                               # %if.then.42
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_31
.LBB3_29:                               # %if.end.44
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.45
	callq	gimp_dialog_factory_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_dialog_factory_config_notify, %rdi
	movl	$2, %r8d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	32(%r9), %r9
	movq	%rax, (%r9)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	32(%r9), %r9
	movq	%rax, 8(%r9)
	movq	-48(%rbp), %rax
	cmpl	$0, 724(%rax)
	cmovnel	%edx, %ecx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	%ecx, 40(%rax)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB3_31:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dialog_factory_new, .Lfunc_end3-gimp_dialog_factory_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_config_notify,@function
gimp_dialog_factory_config_notify:      # @gimp_dialog_factory_config_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_get_state
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, 724(%rdx)
	je	.LBB4_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -28(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$1, -32(%rbp)
	jmp	.LBB4_6
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpl	$0, 724(%rax)
	jne	.LBB4_5
# BB#4:                                 # %if.then.3
	movl	$0, -32(%rbp)
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.4
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB4_8
# BB#7:                                 # %if.then.6
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	gimp_dialog_factory_set_state
.LBB4_8:                                # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dialog_factory_config_notify, .Lfunc_end4-gimp_dialog_factory_config_notify
	.cfi_endproc

	.globl	gimp_dialog_factory_register_entry
	.align	16, 0x90
	.type	gimp_dialog_factory_register_entry,@function
gimp_dialog_factory_register_entry:     # @gimp_dialog_factory_register_entry
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movl	88(%rbp), %eax
	movl	80(%rbp), %r10d
	movl	72(%rbp), %r11d
	movl	64(%rbp), %ebx
	movl	56(%rbp), %r14d
	movl	48(%rbp), %r15d
	movl	40(%rbp), %r12d
	movl	32(%rbp), %r13d
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	24(%rbp), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	16(%rbp), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -96(%rbp)
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -104(%rbp)
	movl	%r13d, -108(%rbp)
	movl	%r12d, -112(%rbp)
	movl	%r15d, -116(%rbp)
	movl	%r14d, -120(%rbp)
	movl	%ebx, -124(%rbp)
	movl	%r11d, -128(%rbp)
	movl	%r10d, -132(%rbp)
	movl	%eax, -136(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -164(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.4
	movl	$1, -164(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.5
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.7
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.9
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_register_entry, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.11
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.12
	cmpq	$0, -56(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.14
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_register_entry, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.16
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.17
	movl	$88, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-144(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movq	-144(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	-144(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-80(%rbp), %rdi
	callq	g_strdup
	movq	-144(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-88(%rbp), %rdi
	callq	g_strdup
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-144(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-96(%rbp), %rax
	movq	-144(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-104(%rbp), %rax
	movq	-144(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movl	-108(%rbp), %esi
	movq	-144(%rbp), %rax
	movl	%esi, 56(%rax)
	cmpl	$0, -112(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-144(%rbp), %rax
	movl	%esi, 60(%rax)
	cmpl	$0, -116(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-144(%rbp), %rax
	movl	%esi, 64(%rax)
	cmpl	$0, -120(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-144(%rbp), %rax
	movl	%esi, 68(%rax)
	cmpl	$0, -124(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-144(%rbp), %rax
	movl	%esi, 72(%rax)
	cmpl	$0, -128(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-144(%rbp), %rax
	movl	%esi, 76(%rax)
	cmpl	$0, -132(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-144(%rbp), %rax
	movl	%esi, 80(%rax)
	cmpl	$0, -136(%rbp)
	cmovnel	%edx, %ecx
	movq	-144(%rbp), %rax
	movl	%ecx, 84(%rax)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-48(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 32(%rsi)
.LBB5_18:                               # %return
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dialog_factory_register_entry, .Lfunc_end5-gimp_dialog_factory_register_entry
	.cfi_endproc

	.globl	gimp_dialog_factory_find_entry
	.align	16, 0x90
	.type	gimp_dialog_factory_find_entry,@function
gimp_dialog_factory_find_entry:         # @gimp_dialog_factory_find_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_find_entry, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_27
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_find_entry, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_27
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB6_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_26
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_21
# BB#20:                                # %if.then.23
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_27
.LBB6_21:                               # %if.end.24
                                        #   in Loop: Header=BB6_18 Depth=1
	jmp	.LBB6_22
.LBB6_22:                               # %for.inc
                                        #   in Loop: Header=BB6_18 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB6_25
.LBB6_24:                               # %cond.false
                                        #   in Loop: Header=BB6_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB6_25
.LBB6_25:                               # %cond.end
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB6_18
.LBB6_26:                               # %for.end
	movq	$0, -8(%rbp)
.LBB6_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dialog_factory_find_entry, .Lfunc_end6-gimp_dialog_factory_find_entry
	.cfi_endproc

	.globl	gimp_dialog_factory_find_session_info
	.align	16, 0x90
	.type	gimp_dialog_factory_find_session_info,@function
gimp_dialog_factory_find_session_info:  # @gimp_dialog_factory_find_session_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_find_session_info, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_28
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_find_session_info, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_28
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB7_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_27
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_session_info_get_factory_entry
	cmpq	$0, %rax
	je	.LBB7_22
# BB#20:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_session_info_get_factory_entry
	movq	(%rax), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	g_str_equal
	cmpl	$0, %eax
	je	.LBB7_22
# BB#21:                                # %if.then.26
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_28
.LBB7_22:                               # %if.end.27
                                        #   in Loop: Header=BB7_18 Depth=1
	jmp	.LBB7_23
.LBB7_23:                               # %for.inc
                                        #   in Loop: Header=BB7_18 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB7_26
.LBB7_25:                               # %cond.false
                                        #   in Loop: Header=BB7_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB7_26
.LBB7_26:                               # %cond.end
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB7_18
.LBB7_27:                               # %for.end
	movq	$0, -8(%rbp)
.LBB7_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dialog_factory_find_session_info, .Lfunc_end7-gimp_dialog_factory_find_session_info
	.cfi_endproc

	.globl	gimp_dialog_factory_find_widget
	.align	16, 0x90
	.type	gimp_dialog_factory_find_widget,@function
gimp_dialog_factory_find_widget:        # @gimp_dialog_factory_find_widget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_find_widget, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_26
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_find_widget, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_26
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movabsq	$.L.str.9, %rsi
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	callq	g_strsplit
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB8_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB8_25
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_dialog_factory_find_session_info
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB8_23
# BB#20:                                # %if.then.24
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-80(%rbp), %rdi
	callq	gimp_session_info_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.27
	jmp	.LBB8_25
.LBB8_22:                               # %if.end.28
                                        #   in Loop: Header=BB8_18 Depth=1
	jmp	.LBB8_23
.LBB8_23:                               # %if.end.29
                                        #   in Loop: Header=BB8_18 Depth=1
	jmp	.LBB8_24
.LBB8_24:                               # %for.inc
                                        #   in Loop: Header=BB8_18 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_18
.LBB8_25:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	g_strfreev
	movq	-32(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB8_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dialog_factory_find_widget, .Lfunc_end8-gimp_dialog_factory_find_widget
	.cfi_endproc

	.globl	gimp_dialog_factory_dialog_new
	.align	16, 0x90
	.type	gimp_dialog_factory_dialog_new,@function
gimp_dialog_factory_dialog_new:         # @gimp_dialog_factory_dialog_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_30
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gdk_screen_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_30
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.39
	cmpq	$0, -40(%rbp)
	je	.LBB9_27
# BB#26:                                # %if.then.41
	jmp	.LBB9_28
.LBB9_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_30
.LBB9_28:                               # %if.end.43
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.44
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r10d
	movl	$0, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_dialog_factory_dialog_new_internal
	movq	%rax, -8(%rbp)
.LBB9_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dialog_factory_dialog_new, .Lfunc_end9-gimp_dialog_factory_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_dialog_new_internal,@function
gimp_dialog_factory_dialog_new_internal: # @gimp_dialog_factory_dialog_new_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              # imm = 0x1B0
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%r11d, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movl	%eax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.4
	movl	$1, -108(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.5
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.7
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.9
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new_internal, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_113
.LBB10_11:                              # %if.end.11
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.12
	cmpq	$0, -48(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.14
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new_internal, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_113
.LBB10_16:                              # %if.end.16
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.17
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_dialog_factory_find_entry
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB10_19
# BB#18:                                # %if.then.20
	movabsq	$.L.str.27, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new_internal, %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_113
.LBB10_19:                              # %if.end.21
	movq	-72(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB10_21
# BB#20:                                # %if.then.23
	movabsq	$.L.str.45, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new_internal, %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_113
.LBB10_21:                              # %if.end.24
	cmpl	$0, -56(%rbp)
	jne	.LBB10_23
# BB#22:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	cmpl	$0, 60(%rax)
	je	.LBB10_24
.LBB10_23:                              # %if.then.27
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_dialog_factory_find_widget
	movq	%rax, -80(%rbp)
.LBB10_24:                              # %if.end.29
	cmpq	$0, -80(%rbp)
	jne	.LBB10_73
# BB#25:                                # %if.then.31
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_32
# BB#26:                                # %if.then.35
	movq	-72(%rbp), %rax
	cmpl	$0, 84(%rax)
	je	.LBB10_28
# BB#27:                                # %if.then.37
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_dock_with_window_new
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	gimp_dockbook_new
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_add_book
	jmp	.LBB10_31
.LBB10_28:                              # %if.else.45
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	movl	$.L.str.46, %ecx
	movl	%ecx, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_30
# BB#29:                                # %if.then.49
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$.L.str.47, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	gimp_dock_container_get_ui_manager
	movq	%rax, -40(%rbp)
.LBB10_30:                              # %if.end.55
	jmp	.LBB10_31
.LBB10_31:                              # %if.end.56
	jmp	.LBB10_32
.LBB10_32:                              # %if.end.57
	cmpl	$12, -52(%rbp)
	jge	.LBB10_34
# BB#33:                                # %if.then.59
	movq	-72(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB10_34:                              # %if.end.61
	cmpq	$0, -32(%rbp)
	je	.LBB10_36
# BB#35:                                # %if.then.63
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-52(%rbp), %r8d
	callq	gimp_dialog_factory_constructor
	movq	%rax, -80(%rbp)
	jmp	.LBB10_40
.LBB10_36:                              # %if.else.65
	cmpq	$0, -120(%rbp)
	je	.LBB10_38
# BB#37:                                # %if.then.67
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_get_context
	movq	-120(%rbp), %rsi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_get_ui_manager
	movl	-52(%rbp), %r8d
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_dialog_factory_constructor
	movq	%rax, -80(%rbp)
	jmp	.LBB10_39
.LBB10_38:                              # %if.else.75
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rcx
	movl	-52(%rbp), %r8d
	callq	gimp_dialog_factory_constructor
	movq	%rax, -80(%rbp)
.LBB10_39:                              # %if.end.79
	jmp	.LBB10_40
.LBB10_40:                              # %if.end.80
	cmpq	$0, -80(%rbp)
	je	.LBB10_67
# BB#41:                                # %if.then.82
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_dialog_factory_set_widget_data
	cmpq	$0, -120(%rbp)
	je	.LBB10_53
# BB#42:                                # %if.then.84
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB10_44
# BB#43:                                # %if.then.93
	movl	$0, -164(%rbp)
	jmp	.LBB10_49
.LBB10_44:                              # %if.else.94
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_47
# BB#45:                                # %land.lhs.true.97
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB10_47
# BB#46:                                # %if.then.101
	movl	$1, -164(%rbp)
	jmp	.LBB10_48
.LBB10_47:                              # %if.else.102
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB10_48:                              # %if.end.104
	jmp	.LBB10_49
.LBB10_49:                              # %if.end.105
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB10_51
# BB#50:                                # %if.then.108
	movq	-120(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_dock_add
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	jmp	.LBB10_52
.LBB10_51:                              # %if.else.113
	movabsq	$.L.str.48, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new_internal, %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-80(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-120(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	$0, -80(%rbp)
	movq	$0, -120(%rbp)
.LBB10_52:                              # %if.end.114
	jmp	.LBB10_66
.LBB10_53:                              # %if.else.115
	cmpq	$0, -128(%rbp)
	je	.LBB10_65
# BB#54:                                # %if.then.117
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB10_56
# BB#55:                                # %if.then.126
	movl	$0, -188(%rbp)
	jmp	.LBB10_61
.LBB10_56:                              # %if.else.127
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_59
# BB#57:                                # %land.lhs.true.130
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB10_59
# BB#58:                                # %if.then.134
	movl	$1, -188(%rbp)
	jmp	.LBB10_60
.LBB10_59:                              # %if.else.135
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB10_60:                              # %if.end.137
	jmp	.LBB10_61
.LBB10_61:                              # %if.end.138
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB10_63
# BB#62:                                # %if.then.141
	movq	-128(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_window_add_dock
	movq	-80(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gtk_widget_set_visible
	movq	-128(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gtk_widget_set_visible
	jmp	.LBB10_64
.LBB10_63:                              # %if.else.146
	movabsq	$.L.str.49, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new_internal, %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-80(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-128(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	$0, -80(%rbp)
	movq	$0, -128(%rbp)
.LBB10_64:                              # %if.end.147
	jmp	.LBB10_65
.LBB10_65:                              # %if.end.148
	jmp	.LBB10_66
.LBB10_66:                              # %if.end.149
	jmp	.LBB10_70
.LBB10_67:                              # %if.else.150
	cmpq	$0, -120(%rbp)
	je	.LBB10_69
# BB#68:                                # %if.then.152
	movabsq	$.L.str.50, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_new_internal, %rsi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-120(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	$0, -120(%rbp)
.LBB10_69:                              # %if.end.153
	jmp	.LBB10_70
.LBB10_70:                              # %if.end.154
	cmpq	$0, -80(%rbp)
	je	.LBB10_72
# BB#71:                                # %if.then.156
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_dialog_factory_add_dialog
.LBB10_72:                              # %if.end.157
	jmp	.LBB10_73
.LBB10_73:                              # %if.end.158
	cmpq	$0, -80(%rbp)
	jne	.LBB10_75
# BB#74:                                # %if.then.160
	movq	$0, -8(%rbp)
	jmp	.LBB10_113
.LBB10_75:                              # %if.end.161
	movq	-80(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	je	.LBB10_77
# BB#76:                                # %if.then.164
	movq	-80(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_screen
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB10_102
.LBB10_77:                              # %if.else.167
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB10_79
# BB#78:                                # %if.then.176
	movl	$0, -212(%rbp)
	jmp	.LBB10_84
.LBB10_79:                              # %if.else.177
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_82
# BB#80:                                # %land.lhs.true.180
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB10_82
# BB#81:                                # %if.then.184
	movl	$1, -212(%rbp)
	jmp	.LBB10_83
.LBB10_82:                              # %if.else.185
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB10_83:                              # %if.end.187
	jmp	.LBB10_84
.LBB10_84:                              # %if.end.188
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB10_86
# BB#85:                                # %if.then.191
	movq	-80(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -88(%rbp)
	jmp	.LBB10_101
.LBB10_86:                              # %if.else.193
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB10_88
# BB#87:                                # %if.then.202
	movl	$0, -236(%rbp)
	jmp	.LBB10_93
.LBB10_88:                              # %if.else.203
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_91
# BB#89:                                # %land.lhs.true.206
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB10_91
# BB#90:                                # %if.then.210
	movl	$1, -236(%rbp)
	jmp	.LBB10_92
.LBB10_91:                              # %if.else.211
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB10_92:                              # %if.end.213
	jmp	.LBB10_93
.LBB10_93:                              # %if.end.214
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB10_100
# BB#94:                                # %if.then.217
	movq	-80(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	cmpq	$0, %rax
	je	.LBB10_99
# BB#95:                                # %land.lhs.true.224
	movq	-248(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, %rdi
	callq	gimp_dockbook_get_dock
	cmpq	$0, %rax
	je	.LBB10_99
# BB#96:                                # %if.then.228
	movq	-248(%rbp), %rdi
	callq	gimp_dockable_get_dockbook
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_notebook_page_num
	movl	%eax, -260(%rbp)
	cmpl	$-1, -260(%rbp)
	je	.LBB10_98
# BB#97:                                # %if.then.236
	movq	-256(%rbp), %rdi
	movl	-260(%rbp), %esi
	callq	gtk_notebook_set_current_page
	movq	-248(%rbp), %rdi
	callq	gimp_dockable_blink
.LBB10_98:                              # %if.end.237
	jmp	.LBB10_99
.LBB10_99:                              # %if.end.238
	movq	-80(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -88(%rbp)
.LBB10_100:                             # %if.end.240
	jmp	.LBB10_101
.LBB10_101:                             # %if.end.241
	jmp	.LBB10_102
.LBB10_102:                             # %if.end.242
	cmpl	$0, -60(%rbp)
	je	.LBB10_112
# BB#103:                               # %land.lhs.true.244
	movq	-88(%rbp), %rax
	movq	%rax, -272(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -280(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.LBB10_105
# BB#104:                               # %if.then.253
	movl	$0, -284(%rbp)
	jmp	.LBB10_110
.LBB10_105:                             # %if.else.254
	movq	-272(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_108
# BB#106:                               # %land.lhs.true.257
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-280(%rbp), %rax
	jne	.LBB10_108
# BB#107:                               # %if.then.261
	movl	$1, -284(%rbp)
	jmp	.LBB10_109
.LBB10_108:                             # %if.else.262
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -284(%rbp)
.LBB10_109:                             # %if.end.264
	jmp	.LBB10_110
.LBB10_110:                             # %if.end.265
	movl	-284(%rbp), %eax
	movl	%eax, -288(%rbp)
	cmpl	$0, -288(%rbp)
	je	.LBB10_112
# BB#111:                               # %if.then.268
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show_now
	movq	-88(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_window_raise
.LBB10_112:                             # %if.end.270
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_113:                             # %return
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dialog_factory_dialog_new_internal, .Lfunc_end10-gimp_dialog_factory_dialog_new_internal
	.cfi_endproc

	.globl	gimp_dialog_factory_get_context
	.align	16, 0x90
	.type	gimp_dialog_factory_get_context,@function
gimp_dialog_factory_get_context:        # @gimp_dialog_factory_get_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_get_context, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dialog_factory_get_context, .Lfunc_end11-gimp_dialog_factory_get_context
	.cfi_endproc

	.globl	gimp_dialog_factory_get_menu_factory
	.align	16, 0x90
	.type	gimp_dialog_factory_get_menu_factory,@function
gimp_dialog_factory_get_menu_factory:   # @gimp_dialog_factory_get_menu_factory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_get_menu_factory, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dialog_factory_get_menu_factory, .Lfunc_end12-gimp_dialog_factory_get_menu_factory
	.cfi_endproc

	.globl	gimp_dialog_factory_get_open_dialogs
	.align	16, 0x90
	.type	gimp_dialog_factory_get_open_dialogs,@function
gimp_dialog_factory_get_open_dialogs:   # @gimp_dialog_factory_get_open_dialogs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_get_open_dialogs, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB13_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_dialog_factory_get_open_dialogs, .Lfunc_end13-gimp_dialog_factory_get_open_dialogs
	.cfi_endproc

	.globl	gimp_dialog_factory_get_session_infos
	.align	16, 0x90
	.type	gimp_dialog_factory_get_session_infos,@function
gimp_dialog_factory_get_session_infos:  # @gimp_dialog_factory_get_session_infos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_get_session_infos, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB14_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dialog_factory_get_session_infos, .Lfunc_end14-gimp_dialog_factory_get_session_infos
	.cfi_endproc

	.globl	gimp_dialog_factory_add_session_info
	.align	16, 0x90
	.type	gimp_dialog_factory_add_session_info,@function
gimp_dialog_factory_add_session_info:   # @gimp_dialog_factory_add_session_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_session_info, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_25
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB15_20
.LBB15_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB15_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB15_19:                              # %if.end.31
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB15_22
# BB#21:                                # %if.then.35
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_session_info, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_25
.LBB15_23:                              # %if.end.37
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 24(%rsi)
.LBB15_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dialog_factory_add_session_info, .Lfunc_end15-gimp_dialog_factory_add_session_info
	.cfi_endproc

	.globl	gimp_dialog_factory_dialog_raise
	.align	16, 0x90
	.type	gimp_dialog_factory_dialog_raise,@function
gimp_dialog_factory_dialog_raise:       # @gimp_dialog_factory_dialog_raise
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_raise, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_39
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gdk_screen_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB16_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB16_19
.LBB16_18:                              # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB16_19:                              # %if.end.31
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.35
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_raise, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_39
.LBB16_23:                              # %if.end.37
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB16_27
# BB#26:                                # %if.then.41
	jmp	.LBB16_28
.LBB16_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_raise, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_39
.LBB16_28:                              # %if.end.43
	jmp	.LBB16_29
.LBB16_29:                              # %do.end.44
	movabsq	$.L.str.9, %rsi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	g_strsplit
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB16_30:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB16_35
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB16_30 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_dialog_factory_find_widget
	cmpq	$0, %rax
	je	.LBB16_33
# BB#32:                                # %if.then.51
	jmp	.LBB16_35
.LBB16_33:                              # %if.end.52
                                        #   in Loop: Header=BB16_30 Depth=1
	jmp	.LBB16_34
.LBB16_34:                              # %for.inc
                                        #   in Loop: Header=BB16_30 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB16_30
.LBB16_35:                              # %for.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	je	.LBB16_37
# BB#36:                                # %cond.true
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB16_38
.LBB16_37:                              # %cond.false
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB16_38:                              # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %ecx
	movl	-36(%rbp), %r9d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %r8         # 8-byte Reload
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	gimp_dialog_factory_dialog_new_internal
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_strfreev
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_39:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_dialog_factory_dialog_raise, .Lfunc_end16-gimp_dialog_factory_dialog_raise
	.cfi_endproc

	.globl	gimp_dialog_factory_dockable_new
	.align	16, 0x90
	.type	gimp_dialog_factory_dockable_new,@function
gimp_dialog_factory_dockable_new:       # @gimp_dialog_factory_dockable_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dockable_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_30
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB17_19:                              # %if.end.31
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.35
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dockable_new, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_30
.LBB17_23:                              # %if.end.37
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.38
	jmp	.LBB17_25
.LBB17_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB17_27
# BB#26:                                # %if.then.41
	jmp	.LBB17_28
.LBB17_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dockable_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_30
.LBB17_28:                              # %if.end.43
	jmp	.LBB17_29
.LBB17_29:                              # %do.end.44
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	-24(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_context
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_ui_manager
	xorl	%ecx, %ecx
	movq	-32(%rbp), %r8
	movl	-36(%rbp), %r9d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_dialog_factory_dialog_new_internal
	movq	%rax, -8(%rbp)
.LBB17_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_dialog_factory_dockable_new, .Lfunc_end17-gimp_dialog_factory_dockable_new
	.cfi_endproc

	.globl	gimp_dialog_factory_add_dialog
	.align	16, 0x90
	.type	gimp_dialog_factory_add_dialog,@function
gimp_dialog_factory_add_dialog:         # @gimp_dialog_factory_add_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.4
	movl	$1, -76(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.5
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.7
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.9
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_dialog, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_82
.LBB18_11:                              # %if.end.11
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.12
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB18_15
# BB#14:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB18_20
.LBB18_15:                              # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_18
# BB#16:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB18_18
# BB#17:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB18_19
.LBB18_18:                              # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB18_19:                              # %if.end.32
	jmp	.LBB18_20
.LBB18_20:                              # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB18_22
# BB#21:                                # %if.then.36
	jmp	.LBB18_23
.LBB18_22:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_dialog, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_82
.LBB18_23:                              # %if.end.38
	jmp	.LBB18_24
.LBB18_24:                              # %do.end.39
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB18_26
# BB#25:                                # %if.then.42
	movabsq	$.L.str.14, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_dialog, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB18_82
.LBB18_26:                              # %if.end.43
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_dialog_factory_from_widget
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_dialog_factory_dialog_sane
	cmpl	$0, %eax
	jne	.LBB18_28
# BB#27:                                # %if.then.47
	jmp	.LBB18_82
.LBB18_28:                              # %if.end.48
	movq	-16(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	movl	%eax, -52(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB18_71
# BB#29:                                # %if.then.51
	jmp	.LBB18_30
.LBB18_30:                              # %do.body.52
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB18_32
# BB#31:                                # %if.then.54
	movl	$16, %edi
	movabsq	$.L__func__.gimp_dialog_factory_add_dialog, %rsi
	movl	$888, %edx              # imm = 0x378
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.16, %r8
	cmpl	$0, -52(%rbp)
	cmovneq	%r8, %rax
	movq	-32(%rbp), %r8
	movq	(%r8), %r9
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB18_32:                              # %if.end.56
	jmp	.LBB18_33
.LBB18_33:                              # %do.end.57
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB18_34:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB18_58
# BB#35:                                # %for.body
                                        #   in Loop: Header=BB18_34 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_session_info_get_factory_entry
	cmpq	-32(%rbp), %rax
	jne	.LBB18_53
# BB#36:                                # %if.then.63
                                        #   in Loop: Header=BB18_34 Depth=1
	movq	-112(%rbp), %rdi
	callq	gimp_session_info_get_widget
	cmpq	$0, %rax
	je	.LBB18_44
# BB#37:                                # %if.then.66
                                        #   in Loop: Header=BB18_34 Depth=1
	movq	-112(%rbp), %rdi
	callq	gimp_session_info_is_singleton
	cmpl	$0, %eax
	je	.LBB18_43
# BB#38:                                # %if.then.69
	movabsq	$.L.str.18, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_dialog, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	g_warning
# BB#39:                                # %do.body.71
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB18_41
# BB#40:                                # %if.then.74
	movq	-112(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	%r8, -144(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_widget
	movl	$16, %edi
	movabsq	$.L__func__.gimp_dialog_factory_add_dialog, %rsi
	movl	$906, %edx              # imm = 0x38A
	movabsq	$.L.str.19, %rcx
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_log
.LBB18_41:                              # %if.end.76
	jmp	.LBB18_42
.LBB18_42:                              # %do.end.77
	jmp	.LBB18_82
.LBB18_43:                              # %if.end.78
                                        #   in Loop: Header=BB18_34 Depth=1
	jmp	.LBB18_54
.LBB18_44:                              # %if.end.79
	movq	-112(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_session_info_set_widget
# BB#45:                                # %do.body.80
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB18_47
# BB#46:                                # %if.then.83
	movq	-112(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	%r8, -152(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_widget
	movl	$16, %edi
	movabsq	$.L__func__.gimp_dialog_factory_add_dialog, %rsi
	movl	$921, %edx              # imm = 0x399
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.16, %r9
	cmpl	$0, -52(%rbp)
	cmovneq	%r9, %r8
	movq	-32(%rbp), %r9
	movq	(%r9), %r9
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB18_47:                              # %if.end.88
	jmp	.LBB18_48
.LBB18_48:                              # %do.end.89
	cmpl	$0, -52(%rbp)
	je	.LBB18_52
# BB#49:                                # %land.lhs.true.91
	movq	-112(%rbp), %rdi
	callq	gimp_session_info_is_session_managed
	cmpl	$0, %eax
	je	.LBB18_52
# BB#50:                                # %land.lhs.true.94
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	jne	.LBB18_52
# BB#51:                                # %if.then.97
	movq	-112(%rbp), %rdi
	callq	gimp_session_info_apply_geometry
.LBB18_52:                              # %if.end.98
	movq	-112(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB18_58
.LBB18_53:                              # %if.end.99
                                        #   in Loop: Header=BB18_34 Depth=1
	jmp	.LBB18_54
.LBB18_54:                              # %for.inc
                                        #   in Loop: Header=BB18_34 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB18_56
# BB#55:                                # %cond.true
                                        #   in Loop: Header=BB18_34 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB18_57
.LBB18_56:                              # %cond.false
                                        #   in Loop: Header=BB18_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB18_57
.LBB18_57:                              # %cond.end
                                        #   in Loop: Header=BB18_34 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB18_34
.LBB18_58:                              # %for.end
	cmpq	$0, -40(%rbp)
	jne	.LBB18_70
# BB#59:                                # %if.then.103
	callq	gimp_session_info_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_session_info_set_widget
# BB#60:                                # %do.body.105
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB18_62
# BB#61:                                # %if.then.108
	movq	-40(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	%r8, -184(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_widget
	movl	$16, %edi
	movabsq	$.L__func__.gimp_dialog_factory_add_dialog, %rsi
	movl	$946, %edx              # imm = 0x3B2
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.16, %r9
	cmpl	$0, -52(%rbp)
	cmovneq	%r9, %r8
	movq	-32(%rbp), %r9
	movq	(%r9), %r9
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -200(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB18_62:                              # %if.end.113
	jmp	.LBB18_63
.LBB18_63:                              # %do.end.114
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_session_info_set_factory_entry
	movq	-40(%rbp), %rdi
	callq	gimp_session_info_is_session_managed
	cmpl	$0, %eax
	je	.LBB18_69
# BB#64:                                # %if.then.117
	jmp	.LBB18_65
.LBB18_65:                              # %do.body.118
	movl	gimp_log_flags, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB18_67
# BB#66:                                # %if.then.121
	movl	$1024, %edi             # imm = 0x400
	movabsq	$.L__func__.gimp_dialog_factory_add_dialog, %rsi
	movl	$959, %edx              # imm = 0x3BF
	movabsq	$.L.str.22, %rcx
	movq	-16(%rbp), %r8
	movq	-32(%rbp), %rax
	movq	(%rax), %r9
	movb	$0, %al
	callq	gimp_log
.LBB18_67:                              # %if.end.123
	jmp	.LBB18_68
.LBB18_68:                              # %do.end.124
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_dialog_factory_set_user_pos, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB18_69:                              # %if.end.128
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_dialog_factory_add_session_info
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
.LBB18_70:                              # %if.end.129
	jmp	.LBB18_71
.LBB18_71:                              # %if.end.130
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB18_73
# BB#72:                                # %if.then.139
	movl	$0, -132(%rbp)
	jmp	.LBB18_78
.LBB18_73:                              # %if.else.140
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_76
# BB#74:                                # %land.lhs.true.143
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB18_76
# BB#75:                                # %if.then.147
	movl	$1, -132(%rbp)
	jmp	.LBB18_77
.LBB18_76:                              # %if.else.148
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB18_77:                              # %if.end.150
	jmp	.LBB18_78
.LBB18_78:                              # %if.end.151
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB18_80
# BB#79:                                # %if.then.154
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	factory_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB18_80:                              # %if.end.155
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_dialog_factory_remove_dialog, %rdi
	movl	$2, %r8d
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-40(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_session_info_is_session_managed
	cmpl	$0, %eax
	je	.LBB18_82
# BB#81:                                # %if.then.164
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_dialog_factory_dialog_configure, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB18_82:                              # %if.end.166
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_dialog_factory_add_dialog, .Lfunc_end18-gimp_dialog_factory_add_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	g_warning, .Lfunc_end19-g_warning
	.cfi_endproc

	.globl	gimp_dialog_factory_from_widget
	.align	16, 0x90
	.type	gimp_dialog_factory_from_widget,@function
gimp_dialog_factory_from_widget:        # @gimp_dialog_factory_from_widget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.9
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_from_widget, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_17
.LBB20_11:                              # %if.end.11
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	cmpl	$0, gimp_dialog_factory_key
	jne	.LBB20_14
# BB#13:                                # %if.then.13
	movabsq	$.L.str.34, %rdi
	callq	g_quark_from_static_string
	movabsq	$.L.str.35, %rdi
	movl	%eax, gimp_dialog_factory_key
	callq	g_quark_from_static_string
	movl	%eax, gimp_dialog_factory_entry_key
.LBB20_14:                              # %if.end.16
	cmpq	$0, -24(%rbp)
	je	.LBB20_16
# BB#15:                                # %if.then.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	gimp_dialog_factory_entry_key, %esi
	movq	%rax, %rdi
	callq	g_object_get_qdata
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB20_16:                              # %if.end.21
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	gimp_dialog_factory_key, %esi
	movq	%rax, %rdi
	callq	g_object_get_qdata
	movq	%rax, -8(%rbp)
.LBB20_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_dialog_factory_from_widget, .Lfunc_end20-gimp_dialog_factory_from_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_dialog_sane,@function
gimp_dialog_factory_dialog_sane:        # @gimp_dialog_factory_dialog_sane
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB21_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jne	.LBB21_3
.LBB21_2:                               # %if.then
	movabsq	$.L.str.32, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_sane, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_6
.LBB21_3:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB21_5
# BB#4:                                 # %if.then.2
	movabsq	$.L.str.52, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_sane, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_6
.LBB21_5:                               # %if.end.3
	movl	$1, -4(%rbp)
.LBB21_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_dialog_factory_dialog_sane, .Lfunc_end21-gimp_dialog_factory_dialog_sane
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_set_user_pos,@function
gimp_dialog_factory_set_user_pos:       # @gimp_dialog_factory_set_user_pos
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_dialog_factory_set_user_pos, %rax
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB22_3
# BB#2:                                 # %if.then
	movl	$1024, %edi             # imm = 0x400
	movabsq	$.L__func__.gimp_dialog_factory_set_user_pos, %rsi
	movl	$1329, %edx             # imm = 0x531
	movabsq	$.L.str.53, %rcx
	movq	-8(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB22_3:                               # %if.end
	jmp	.LBB22_4
.LBB22_4:                               # %do.end
	movl	$128, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_factory_get_has_min_size
	cmpl	$0, %eax
	je	.LBB22_6
# BB#5:                                 # %if.then.7
	movl	-28(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -28(%rbp)
.LBB22_6:                               # %if.end.8
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	gtk_window_set_geometry_hints
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_dialog_factory_set_user_pos, .Lfunc_end22-gimp_dialog_factory_set_user_pos
	.cfi_endproc

	.globl	gimp_dialog_factory_remove_dialog
	.align	16, 0x90
	.type	gimp_dialog_factory_remove_dialog,@function
gimp_dialog_factory_remove_dialog:      # @gimp_dialog_factory_remove_dialog
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.9
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_remove_dialog, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_56
.LBB23_11:                              # %if.end.11
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.12
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB23_15
# BB#14:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB23_20
.LBB23_15:                              # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_18
# BB#16:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB23_18
# BB#17:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB23_19
.LBB23_18:                              # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB23_19:                              # %if.end.32
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB23_22
# BB#21:                                # %if.then.36
	jmp	.LBB23_23
.LBB23_22:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_remove_dialog, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_56
.LBB23_23:                              # %if.end.38
	jmp	.LBB23_24
.LBB23_24:                              # %do.end.39
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB23_26
# BB#25:                                # %if.then.42
	movabsq	$.L.str.29, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_remove_dialog, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB23_56
.LBB23_26:                              # %if.end.43
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	callq	gimp_dialog_factory_from_widget
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_dialog_factory_dialog_sane
	cmpl	$0, %eax
	jne	.LBB23_28
# BB#27:                                # %if.then.52
	jmp	.LBB23_56
.LBB23_28:                              # %if.end.53
	jmp	.LBB23_29
.LBB23_29:                              # %do.body.54
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB23_31
# BB#30:                                # %if.then.56
	movl	$16, %edi
	movabsq	$.L__func__.gimp_dialog_factory_remove_dialog, %rsi
	movl	$1064, %edx             # imm = 0x428
	movabsq	$.L.str.30, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %r8
	movq	-16(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB23_31:                              # %if.end.57
	jmp	.LBB23_32
.LBB23_32:                              # %do.end.58
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB23_33:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB23_56
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB23_33 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_session_info_get_widget
	cmpq	-16(%rbp), %rax
	jne	.LBB23_51
# BB#35:                                # %if.then.64
	jmp	.LBB23_36
.LBB23_36:                              # %do.body.65
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB23_38
# BB#37:                                # %if.then.68
	movq	-96(%rbp), %r8
	movq	-96(%rbp), %rdi
	movq	%r8, -128(%rbp)         # 8-byte Spill
	callq	gimp_session_info_get_widget
	movl	$16, %edi
	movabsq	$.L__func__.gimp_dialog_factory_remove_dialog, %rsi
	movl	$1075, %edx             # imm = 0x433
	movabsq	$.L.str.31, %rcx
	movq	-32(%rbp), %r8
	movq	(%r8), %r8
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%r9, %r8
	movq	%rax, %r9
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB23_38:                              # %if.end.71
	jmp	.LBB23_39
.LBB23_39:                              # %do.end.72
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	callq	gimp_session_info_set_widget
	movq	-16(%rbp), %rdi
	callq	gimp_dialog_factory_unset_widget_data
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_dialog_factory_set_user_pos, %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_dialog_factory_remove_dialog, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-96(%rbp), %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gimp_session_info_is_session_managed
	cmpl	$0, %eax
	je	.LBB23_41
# BB#40:                                # %if.then.77
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_dialog_factory_dialog_configure, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB23_41:                              # %if.end.79
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB23_43
# BB#42:                                # %if.then.88
	movl	$0, -116(%rbp)
	jmp	.LBB23_48
.LBB23_43:                              # %if.else.89
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_46
# BB#44:                                # %land.lhs.true.92
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB23_46
# BB#45:                                # %if.then.96
	movl	$1, -116(%rbp)
	jmp	.LBB23_47
.LBB23_46:                              # %if.else.97
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB23_47:                              # %if.end.99
	jmp	.LBB23_48
.LBB23_48:                              # %if.end.100
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB23_50
# BB#49:                                # %if.then.103
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 24(%rsi)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	factory_signals+4, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB23_50:                              # %if.end.109
	jmp	.LBB23_56
.LBB23_51:                              # %if.end.110
                                        #   in Loop: Header=BB23_33 Depth=1
	jmp	.LBB23_52
.LBB23_52:                              # %for.inc
                                        #   in Loop: Header=BB23_33 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB23_54
# BB#53:                                # %cond.true
                                        #   in Loop: Header=BB23_33 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB23_55
.LBB23_54:                              # %cond.false
                                        #   in Loop: Header=BB23_33 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB23_55
.LBB23_55:                              # %cond.end
                                        #   in Loop: Header=BB23_33 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB23_33
.LBB23_56:                              # %for.end
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_dialog_factory_remove_dialog, .Lfunc_end23-gimp_dialog_factory_remove_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_dialog_configure,@function
gimp_dialog_factory_dialog_configure:   # @gimp_dialog_factory_dialog_configure
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.29, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_configure, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_18
.LBB24_2:                               # %if.end
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_dialog_factory_from_widget
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_dialog_factory_dialog_sane
	cmpl	$0, %eax
	jne	.LBB24_4
# BB#3:                                 # %if.then.5
	movl	$0, -4(%rbp)
	jmp	.LBB24_18
.LBB24_4:                               # %if.end.6
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB24_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB24_17
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB24_5 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_session_info_get_widget
	cmpq	-16(%rbp), %rax
	jne	.LBB24_12
# BB#7:                                 # %if.then.10
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_session_info_read_geometry
# BB#8:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB24_10
# BB#9:                                 # %if.then.12
	movq	-48(%rbp), %rax
	movq	(%rax), %r8
	movq	-64(%rbp), %rdi
	movq	%r8, -72(%rbp)          # 8-byte Spill
	callq	gimp_session_info_get_x
	movq	-64(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_session_info_get_y
	movq	-64(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_session_info_get_width
	movq	-64(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_session_info_get_height
	movl	$16, %edi
	movabsq	$.L__func__.gimp_dialog_factory_dialog_configure, %rsi
	movl	$1379, %edx             # imm = 0x563
	movabsq	$.L.str.54, %rcx
	movq	-72(%rbp), %r8          # 8-byte Reload
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movl	-80(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB24_10:                              # %if.end.17
	jmp	.LBB24_11
.LBB24_11:                              # %do.end
	jmp	.LBB24_17
.LBB24_12:                              # %if.end.18
                                        #   in Loop: Header=BB24_5 Depth=1
	jmp	.LBB24_13
.LBB24_13:                              # %for.inc
                                        #   in Loop: Header=BB24_5 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB24_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB24_5 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB24_16
.LBB24_15:                              # %cond.false
                                        #   in Loop: Header=BB24_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB24_16
.LBB24_16:                              # %cond.end
                                        #   in Loop: Header=BB24_5 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB24_5
.LBB24_17:                              # %for.end
	movl	$0, -4(%rbp)
.LBB24_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_dialog_factory_dialog_configure, .Lfunc_end24-gimp_dialog_factory_dialog_configure
	.cfi_endproc

	.globl	gimp_dialog_factory_add_foreign
	.align	16, 0x90
	.type	gimp_dialog_factory_add_foreign,@function
gimp_dialog_factory_add_foreign:        # @gimp_dialog_factory_add_foreign
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.9
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_foreign, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_42
.LBB25_11:                              # %if.end.11
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.12
	cmpq	$0, -16(%rbp)
	je	.LBB25_15
# BB#14:                                # %if.then.14
	jmp	.LBB25_16
.LBB25_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_foreign, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_42
.LBB25_16:                              # %if.end.16
	jmp	.LBB25_17
.LBB25_17:                              # %do.end.17
	jmp	.LBB25_18
.LBB25_18:                              # %do.body.18
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB25_20
# BB#19:                                # %if.then.27
	movl	$0, -84(%rbp)
	jmp	.LBB25_25
.LBB25_20:                              # %if.else.28
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_23
# BB#21:                                # %land.lhs.true.31
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB25_23
# BB#22:                                # %if.then.35
	movl	$1, -84(%rbp)
	jmp	.LBB25_24
.LBB25_23:                              # %if.else.36
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB25_24:                              # %if.end.38
	jmp	.LBB25_25
.LBB25_25:                              # %if.end.39
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB25_27
# BB#26:                                # %if.then.42
	jmp	.LBB25_28
.LBB25_27:                              # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_foreign, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_42
.LBB25_28:                              # %if.end.44
	jmp	.LBB25_29
.LBB25_29:                              # %do.end.45
	jmp	.LBB25_30
.LBB25_30:                              # %do.body.46
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	je	.LBB25_32
# BB#31:                                # %if.then.49
	jmp	.LBB25_33
.LBB25_32:                              # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_foreign, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_42
.LBB25_33:                              # %if.end.51
	jmp	.LBB25_34
.LBB25_34:                              # %do.end.52
	leaq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_dialog_factory_from_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_36
# BB#35:                                # %lor.lhs.false
	cmpq	$0, -40(%rbp)
	je	.LBB25_37
.LBB25_36:                              # %if.then.56
	movabsq	$.L.str.26, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_foreign, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB25_42
.LBB25_37:                              # %if.end.57
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_dialog_factory_find_entry
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB25_39
# BB#38:                                # %if.then.60
	movabsq	$.L.str.27, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_foreign, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB25_42
.LBB25_39:                              # %if.end.61
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB25_41
# BB#40:                                # %if.then.63
	movabsq	$.L.str.28, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_add_foreign, %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB25_42
.LBB25_41:                              # %if.end.64
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_dialog_factory_set_widget_data
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_dialog_factory_add_dialog
.LBB25_42:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_dialog_factory_add_foreign, .Lfunc_end25-gimp_dialog_factory_add_foreign
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_set_widget_data,@function
gimp_dialog_factory_set_widget_data:    # @gimp_dialog_factory_set_widget_data
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.9
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_set_widget_data, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_28
.LBB26_11:                              # %if.end.11
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.12
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB26_15
# BB#14:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB26_20
.LBB26_15:                              # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_18
# BB#16:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB26_18
# BB#17:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB26_19
.LBB26_18:                              # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB26_19:                              # %if.end.32
	jmp	.LBB26_20
.LBB26_20:                              # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB26_22
# BB#21:                                # %if.then.36
	jmp	.LBB26_23
.LBB26_22:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_set_widget_data, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_28
.LBB26_23:                              # %if.end.38
	jmp	.LBB26_24
.LBB26_24:                              # %do.end.39
	cmpl	$0, gimp_dialog_factory_key
	jne	.LBB26_26
# BB#25:                                # %if.then.41
	movabsq	$.L.str.34, %rdi
	callq	g_quark_from_static_string
	movabsq	$.L.str.35, %rdi
	movl	%eax, gimp_dialog_factory_key
	callq	g_quark_from_static_string
	movl	%eax, gimp_dialog_factory_entry_key
.LBB26_26:                              # %if.end.44
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	gimp_dialog_factory_key, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_qdata
	cmpq	$0, -24(%rbp)
	je	.LBB26_28
# BB#27:                                # %if.then.47
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	gimp_dialog_factory_entry_key, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_qdata
.LBB26_28:                              # %if.end.49
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_dialog_factory_set_widget_data, .Lfunc_end26-gimp_dialog_factory_set_widget_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_unset_widget_data,@function
gimp_dialog_factory_unset_widget_data:  # @gimp_dialog_factory_unset_widget_data
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_unset_widget_data, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_15
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	cmpl	$0, gimp_dialog_factory_key
	jne	.LBB27_14
# BB#13:                                # %if.then.12
	jmp	.LBB27_15
.LBB27_14:                              # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	gimp_dialog_factory_key, %esi
	movq	%rax, %rdi
	callq	g_object_set_qdata
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movl	gimp_dialog_factory_entry_key, %esi
	movq	%rax, %rdi
	callq	g_object_set_qdata
.LBB27_15:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_dialog_factory_unset_widget_data, .Lfunc_end27-gimp_dialog_factory_unset_widget_data
	.cfi_endproc

	.globl	gimp_dialog_factory_hide_dialog
	.align	16, 0x90
	.type	gimp_dialog_factory_hide_dialog,@function
gimp_dialog_factory_hide_dialog:        # @gimp_dialog_factory_hide_dialog
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_hide_dialog, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_21
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	je	.LBB28_15
# BB#14:                                # %if.then.14
	jmp	.LBB28_16
.LBB28_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_hide_dialog, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_21
.LBB28_16:                              # %if.end.16
	jmp	.LBB28_17
.LBB28_17:                              # %do.end.17
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_from_widget
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB28_19
# BB#18:                                # %if.then.20
	movabsq	$.L.str.32, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_hide_dialog, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB28_21
.LBB28_19:                              # %if.end.21
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpl	$0, 40(%rdi)
	je	.LBB28_21
# BB#20:                                # %if.then.23
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB28_21:                              # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_dialog_factory_hide_dialog, .Lfunc_end28-gimp_dialog_factory_hide_dialog
	.cfi_endproc

	.globl	gimp_dialog_factory_set_state
	.align	16, 0x90
	.type	gimp_dialog_factory_set_state,@function
gimp_dialog_factory_set_state:          # @gimp_dialog_factory_set_state
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_set_state, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_15
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 40(%rcx)
	cmpl	$0, -12(%rbp)
	jne	.LBB29_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_show
	jmp	.LBB29_15
.LBB29_14:                              # %if.else.13
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_hide
.LBB29_15:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_dialog_factory_set_state, .Lfunc_end29-gimp_dialog_factory_set_state
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_show,@function
gimp_dialog_factory_show:               # @gimp_dialog_factory_show
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB30_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB30_26
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB30_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$0, -44(%rbp)
	jmp	.LBB30_9
.LBB30_4:                               # %if.else
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB30_7
# BB#6:                                 # %if.then.4
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$1, -44(%rbp)
	jmp	.LBB30_8
.LBB30_7:                               # %if.else.5
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB30_8:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_9
.LBB30_9:                               # %if.end.7
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB30_21
# BB#10:                                # %land.lhs.true.9
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	je	.LBB30_21
# BB#11:                                # %if.then.12
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	jne	.LBB30_20
# BB#12:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$3, -52(%rbp)
	jne	.LBB30_20
# BB#13:                                # %if.then.21
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_14
.LBB30_14:                              # %do.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	gimp_log_flags, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB30_16
# BB#15:                                # %if.then.23
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_title
	movl	$1024, %edi             # imm = 0x400
	movabsq	$.L__func__.gimp_dialog_factory_show, %rsi
	movl	$1507, %edx             # imm = 0x5E3
	movabsq	$.L.str.56, %rcx
	movq	-24(%rbp), %r9
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB30_16:                              # %if.end.27
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_17
.LBB30_17:                              # %do.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB30_19
# BB#18:                                # %if.then.31
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_window_raise
.LBB30_19:                              # %if.end.33
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_20
.LBB30_20:                              # %if.end.34
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_21
.LBB30_21:                              # %if.end.35
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_22
.LBB30_22:                              # %for.inc
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB30_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB30_25
.LBB30_24:                              # %cond.false
                                        #   in Loop: Header=BB30_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB30_25
.LBB30_25:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB30_1
.LBB30_26:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_dialog_factory_show, .Lfunc_end30-gimp_dialog_factory_show
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_hide,@function
gimp_dialog_factory_hide:               # @gimp_dialog_factory_hide
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB31_26
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB31_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$0, -44(%rbp)
	jmp	.LBB31_9
.LBB31_4:                               # %if.else
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB31_7
# BB#6:                                 # %if.then.4
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$1, -44(%rbp)
	jmp	.LBB31_8
.LBB31_7:                               # %if.else.5
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB31_8:                               # %if.end
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_9
.LBB31_9:                               # %if.end.7
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB31_21
# BB#10:                                # %land.lhs.true.9
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	je	.LBB31_21
# BB#11:                                # %if.then.12
                                        #   in Loop: Header=BB31_1 Depth=1
	leaq	-56(%rbp), %rsi
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_dialog_factory_from_widget
	movq	-56(%rbp), %rsi
	cmpl	$0, 76(%rsi)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB31_13
# BB#12:                                # %if.then.18
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_22
.LBB31_13:                              # %if.end.19
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB31_19
# BB#14:                                # %if.then.22
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_hide
	movl	$3, -60(%rbp)
# BB#15:                                # %do.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	gimp_log_flags, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB31_17
# BB#16:                                # %if.then.24
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_title
	movl	$1024, %edi             # imm = 0x400
	movabsq	$.L__func__.gimp_dialog_factory_hide, %rsi
	movl	$1471, %edx             # imm = 0x5BF
	movabsq	$.L.str.55, %rcx
	movq	-24(%rbp), %r9
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB31_17:                              # %if.end.28
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_18
.LBB31_18:                              # %do.end
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_20
.LBB31_19:                              # %if.else.29
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$1, -60(%rbp)
.LBB31_20:                              # %if.end.30
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movl	-60(%rbp), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB31_21:                              # %if.end.32
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_22
.LBB31_22:                              # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB31_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB31_25
.LBB31_24:                              # %cond.false
                                        #   in Loop: Header=BB31_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB31_25
.LBB31_25:                              # %cond.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB31_1
.LBB31_26:                              # %for.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_dialog_factory_hide, .Lfunc_end31-gimp_dialog_factory_hide
	.cfi_endproc

	.globl	gimp_dialog_factory_get_state
	.align	16, 0x90
	.type	gimp_dialog_factory_get_state,@function
gimp_dialog_factory_get_state:          # @gimp_dialog_factory_get_state
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_get_state, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB32_13
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB32_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_dialog_factory_get_state, .Lfunc_end32-gimp_dialog_factory_get_state
	.cfi_endproc

	.globl	gimp_dialog_factory_show_with_display
	.align	16, 0x90
	.type	gimp_dialog_factory_show_with_display,@function
gimp_dialog_factory_show_with_display:  # @gimp_dialog_factory_show_with_display
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_show_with_display, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB33_14
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$2, 40(%rax)
	jne	.LBB33_14
# BB#13:                                # %if.then.12
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_set_state
.LBB33_14:                              # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_dialog_factory_show_with_display, .Lfunc_end33-gimp_dialog_factory_show_with_display
	.cfi_endproc

	.globl	gimp_dialog_factory_hide_with_display
	.align	16, 0x90
	.type	gimp_dialog_factory_hide_with_display,@function
gimp_dialog_factory_hide_with_display:  # @gimp_dialog_factory_hide_with_display
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_hide_with_display, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB34_14
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB34_14
# BB#13:                                # %if.then.12
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_dialog_factory_set_state
.LBB34_14:                              # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_dialog_factory_hide_with_display, .Lfunc_end34-gimp_dialog_factory_hide_with_display
	.cfi_endproc

	.globl	gimp_dialog_factory_set_has_min_size
	.align	16, 0x90
	.type	gimp_dialog_factory_set_has_min_size,@function
gimp_dialog_factory_set_has_min_size:   # @gimp_dialog_factory_set_has_min_size
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_set_has_min_size, %rsi
	movabsq	$.L.str.36, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_13
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	cmpl	$0, -12(%rbp)
	cmovnel	%r8d, %edx
	movslq	%edx, %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB35_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_dialog_factory_set_has_min_size, .Lfunc_end35-gimp_dialog_factory_set_has_min_size
	.cfi_endproc

	.globl	gimp_dialog_factory_get_has_min_size
	.align	16, 0x90
	.type	gimp_dialog_factory_get_has_min_size,@function
gimp_dialog_factory_get_has_min_size:   # @gimp_dialog_factory_get_has_min_size
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_get_has_min_size, %rsi
	movabsq	$.L.str.36, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_13
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
.LBB36_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_dialog_factory_get_has_min_size, .Lfunc_end36-gimp_dialog_factory_get_has_min_size
	.cfi_endproc

	.globl	gimp_dialog_factory_save
	.align	16, 0x90
	.type	gimp_dialog_factory_save,@function
gimp_dialog_factory_save:               # @gimp_dialog_factory_save
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB37_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_is_session_managed
	cmpl	$0, %eax
	je	.LBB37_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_get_factory_entry
	cmpq	$0, %rax
	jne	.LBB37_5
.LBB37_4:                               # %if.then
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_10
.LBB37_5:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_get_widget
	cmpq	$0, %rax
	je	.LBB37_7
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_get_info
.LBB37_7:                               # %if.end.6
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$.L.str.38, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	16(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-16(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_config_writer_close
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_get_widget
	cmpq	$0, %rax
	je	.LBB37_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	gimp_session_info_clear_info
.LBB37_9:                               # %if.end.16
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_10
.LBB37_10:                              # %for.inc
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB37_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB37_13
.LBB37_12:                              # %cond.false
                                        #   in Loop: Header=BB37_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB37_13
.LBB37_13:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB37_1
.LBB37_14:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_dialog_factory_save, .Lfunc_end37-gimp_dialog_factory_save
	.cfi_endproc

	.globl	gimp_dialog_factory_restore
	.align	16, 0x90
	.type	gimp_dialog_factory_restore,@function
gimp_dialog_factory_restore:            # @gimp_dialog_factory_restore
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB38_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB38_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_session_info_get_open
	cmpl	$0, %eax
	je	.LBB38_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_session_info_restore
	jmp	.LBB38_9
.LBB38_4:                               # %if.else
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_5
.LBB38_5:                               # %do.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB38_7
# BB#6:                                 # %if.then.3
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	$16, %edi
	movabsq	$.L__func__.gimp_dialog_factory_restore, %rsi
	movl	$1441, %edx             # imm = 0x5A1
	movabsq	$.L.str.39, %rcx
	movq	-24(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB38_7:                               # %if.end
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_8
.LBB38_8:                               # %do.end
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_9
.LBB38_9:                               # %if.end.4
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_10
.LBB38_10:                              # %for.inc
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB38_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB38_13
.LBB38_12:                              # %cond.false
                                        #   in Loop: Header=BB38_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB38_13
.LBB38_13:                              # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB38_1
.LBB38_14:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_dialog_factory_restore, .Lfunc_end38-gimp_dialog_factory_restore
	.cfi_endproc

	.globl	gimp_dialog_factory_set_busy
	.align	16, 0x90
	.type	gimp_dialog_factory_set_busy,@function
gimp_dialog_factory_set_busy:           # @gimp_dialog_factory_set_busy
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB39_2
# BB#1:                                 # %if.then
	jmp	.LBB39_28
.LBB39_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB39_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB39_26
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB39_3 Depth=1
	movl	$0, -60(%rbp)
	jmp	.LBB39_11
.LBB39_6:                               # %if.else
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB39_9
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB39_3 Depth=1
	movl	$1, -60(%rbp)
	jmp	.LBB39_10
.LBB39_9:                               # %if.else.7
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB39_10:                              # %if.end.9
                                        #   in Loop: Header=BB39_3 Depth=1
	jmp	.LBB39_11
.LBB39_11:                              # %if.end.10
                                        #   in Loop: Header=BB39_3 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB39_21
# BB#12:                                # %land.lhs.true.12
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	je	.LBB39_21
# BB#13:                                # %if.then.15
                                        #   in Loop: Header=BB39_3 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB39_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_display
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB39_18
.LBB39_15:                              # %if.then.19
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB39_17
# BB#16:                                # %if.then.22
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_unref
.LBB39_17:                              # %if.end.23
                                        #   in Loop: Header=BB39_3 Depth=1
	xorl	%eax, %eax
	movl	$1, %edx
	movl	$150, %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %r8d
	movl	%eax, %r9d
	callq	gimp_cursor_new
	movq	%rax, -24(%rbp)
.LBB39_18:                              # %if.end.25
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB39_20
# BB#19:                                # %if.then.28
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
.LBB39_20:                              # %if.end.30
                                        #   in Loop: Header=BB39_3 Depth=1
	jmp	.LBB39_21
.LBB39_21:                              # %if.end.31
                                        #   in Loop: Header=BB39_3 Depth=1
	jmp	.LBB39_22
.LBB39_22:                              # %for.inc
                                        #   in Loop: Header=BB39_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB39_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB39_25
.LBB39_24:                              # %cond.false
                                        #   in Loop: Header=BB39_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB39_25
.LBB39_25:                              # %cond.end
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB39_3
.LBB39_26:                              # %for.end
	cmpq	$0, -24(%rbp)
	je	.LBB39_28
# BB#27:                                # %if.then.34
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_unref
.LBB39_28:                              # %if.end.35
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_dialog_factory_set_busy, .Lfunc_end39-gimp_dialog_factory_set_busy
	.cfi_endproc

	.globl	gimp_dialog_factory_unset_busy
	.align	16, 0x90
	.type	gimp_dialog_factory_unset_busy,@function
gimp_dialog_factory_unset_busy:         # @gimp_dialog_factory_unset_busy
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB40_2
# BB#1:                                 # %if.then
	jmp	.LBB40_21
.LBB40_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB40_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB40_21
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$0, -44(%rbp)
	jmp	.LBB40_11
.LBB40_6:                               # %if.else
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB40_9
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$1, -44(%rbp)
	jmp	.LBB40_10
.LBB40_9:                               # %if.else.7
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB40_10:                              # %if.end.9
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_11
.LBB40_11:                              # %if.end.10
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB40_16
# BB#12:                                # %land.lhs.true.12
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	je	.LBB40_16
# BB#13:                                # %if.then.15
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB40_15
# BB#14:                                # %if.then.18
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
.LBB40_15:                              # %if.end.20
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_16
.LBB40_16:                              # %if.end.21
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_17
.LBB40_17:                              # %for.inc
                                        #   in Loop: Header=BB40_3 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB40_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB40_20
.LBB40_19:                              # %cond.false
                                        #   in Loop: Header=BB40_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB40_20
.LBB40_20:                              # %cond.end
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB40_3
.LBB40_21:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_dialog_factory_unset_busy, .Lfunc_end40-gimp_dialog_factory_unset_busy
	.cfi_endproc

	.globl	gimp_dialog_factory_get_singleton
	.align	16, 0x90
	.type	gimp_dialog_factory_get_singleton,@function
gimp_dialog_factory_get_singleton:      # @gimp_dialog_factory_get_singleton
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
	subq	$16, %rsp
# BB#1:                                 # %do.body
	cmpq	$0, gimp_toplevel_factory
	je	.LBB41_3
# BB#2:                                 # %if.then
	jmp	.LBB41_4
.LBB41_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_get_singleton, %rsi
	movabsq	$.L.str.40, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB41_6
.LBB41_4:                               # %if.end
	jmp	.LBB41_5
.LBB41_5:                               # %do.end
	movq	gimp_toplevel_factory, %rax
	movq	%rax, -8(%rbp)
.LBB41_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_dialog_factory_get_singleton, .Lfunc_end41-gimp_dialog_factory_get_singleton
	.cfi_endproc

	.globl	gimp_dialog_factory_set_singleton
	.align	16, 0x90
	.type	gimp_dialog_factory_set_singleton,@function
gimp_dialog_factory_set_singleton:      # @gimp_dialog_factory_set_singleton
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, gimp_toplevel_factory
	je	.LBB42_3
# BB#2:                                 # %lor.lhs.false
	cmpq	$0, -8(%rbp)
	jne	.LBB42_4
.LBB42_3:                               # %if.then
	jmp	.LBB42_5
.LBB42_4:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_set_singleton, %rsi
	movabsq	$.L.str.41, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB42_7
.LBB42_5:                               # %if.end
	jmp	.LBB42_6
.LBB42_6:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, gimp_toplevel_factory
.LBB42_7:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_dialog_factory_set_singleton, .Lfunc_end42-gimp_dialog_factory_set_singleton
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_class_init,@function
gimp_dialog_factory_class_init:         # @gimp_dialog_factory_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
.Ltmp137:
	.cfi_offset %rbx, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_dialog_factory_finalize, %rsi
	movabsq	$gimp_dialog_factory_dispose, %rdi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, 48(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movabsq	$.L.str.42, %rdi
	movl	$2, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movq	%rbx, %r8
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, factory_signals
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_dock_window_get_type
	movabsq	$.L.str.43, %rdi
	movl	$2, %edx
	movl	$168, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movl	$1, %r15d
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movl	%r15d, -116(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movl	$48, %ecx
	movl	%ecx, %esi
	movl	%eax, factory_signals+4
	movq	-32(%rbp), %rdi
	callq	g_type_class_add_private
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_dialog_factory_class_init, .Lfunc_end43-gimp_dialog_factory_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_dispose,@function
gimp_dialog_factory_dispose:            # @gimp_dialog_factory_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB44_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_3 Depth 2
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB44_14
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB44_3:                               # %for.cond
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB44_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB44_3 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	je	.LBB44_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	jmp	.LBB44_11
.LBB44_6:                               # %if.end
                                        #   in Loop: Header=BB44_3 Depth=2
	jmp	.LBB44_7
.LBB44_7:                               # %for.inc
                                        #   in Loop: Header=BB44_3 Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB44_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB44_3 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB44_10
.LBB44_9:                               # %cond.false
                                        #   in Loop: Header=BB44_3 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB44_10
.LBB44_10:                              # %cond.end
                                        #   in Loop: Header=BB44_3 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB44_3
.LBB44_11:                              # %for.end
                                        #   in Loop: Header=BB44_1 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB44_13
# BB#12:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	callq	g_list_length
	movabsq	$.L.str.44, %rdi
	movabsq	$.L__func__.gimp_dialog_factory_dispose, %rsi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB44_14
.LBB44_13:                              # %if.end.16
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_1
.LBB44_14:                              # %while.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB44_16
# BB#15:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 16(%rax)
.LBB44_16:                              # %if.end.25
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB44_18
# BB#17:                                # %if.then.28
	movabsq	$g_object_unref, %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 24(%rax)
.LBB44_18:                              # %if.end.33
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dialog_factory_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_dialog_factory_dispose, .Lfunc_end44-gimp_dialog_factory_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_finalize,@function
gimp_dialog_factory_finalize:           # @gimp_dialog_factory_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB45_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB45_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$88, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_5
.LBB45_5:                               # %for.inc
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB45_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB45_8
.LBB45_7:                               # %cond.false
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB45_8
.LBB45_8:                               # %cond.end
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB45_1
.LBB45_9:                               # %for.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB45_11
# BB#10:                                # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 32(%rax)
.LBB45_11:                              # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_dialog_factory_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_dialog_factory_finalize, .Lfunc_end45-gimp_dialog_factory_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dialog_factory_constructor,@function
gimp_dialog_factory_constructor:        # @gimp_dialog_factory_constructor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %r8d
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB46_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 84(%rax)
	je	.LBB46_3
# BB#2:                                 # %if.then
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	callq	gimp_dockable_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rsi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB46_3:                               # %if.end
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_dialog_factory_constructor, .Lfunc_end46-gimp_dialog_factory_constructor
	.cfi_endproc

	.type	gimp_dialog_factory_get_type.g_define_type_id__volatile,@object # @gimp_dialog_factory_get_type.g_define_type_id__volatile
	.local	gimp_dialog_factory_get_type.g_define_type_id__volatile
	.comm	gimp_dialog_factory_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDialogFactory"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_dialog_factory_new,@object # @__func__.gimp_dialog_factory_new
.L__func__.gimp_dialog_factory_new:
	.asciz	"gimp_dialog_factory_new"
	.size	.L__func__.gimp_dialog_factory_new, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"! menu_factory || GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.4, 54

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"notify::hide-docks"
	.size	.L.str.5, 19

	.type	.L__func__.gimp_dialog_factory_register_entry,@object # @__func__.gimp_dialog_factory_register_entry
.L__func__.gimp_dialog_factory_register_entry:
	.asciz	"gimp_dialog_factory_register_entry"
	.size	.L__func__.gimp_dialog_factory_register_entry, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_DIALOG_FACTORY (factory)"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"identifier != NULL"
	.size	.L.str.7, 19

	.type	.L__func__.gimp_dialog_factory_find_entry,@object # @__func__.gimp_dialog_factory_find_entry
.L__func__.gimp_dialog_factory_find_entry:
	.asciz	"gimp_dialog_factory_find_entry"
	.size	.L__func__.gimp_dialog_factory_find_entry, 31

	.type	.L__func__.gimp_dialog_factory_find_session_info,@object # @__func__.gimp_dialog_factory_find_session_info
.L__func__.gimp_dialog_factory_find_session_info:
	.asciz	"gimp_dialog_factory_find_session_info"
	.size	.L__func__.gimp_dialog_factory_find_session_info, 38

	.type	.L__func__.gimp_dialog_factory_find_widget,@object # @__func__.gimp_dialog_factory_find_widget
.L__func__.gimp_dialog_factory_find_widget:
	.asciz	"gimp_dialog_factory_find_widget"
	.size	.L__func__.gimp_dialog_factory_find_widget, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"identifiers != NULL"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"|"
	.size	.L.str.9, 2

	.type	.L__func__.gimp_dialog_factory_dialog_new,@object # @__func__.gimp_dialog_factory_dialog_new
.L__func__.gimp_dialog_factory_dialog_new:
	.asciz	"gimp_dialog_factory_dialog_new"
	.size	.L__func__.gimp_dialog_factory_dialog_new, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GDK_IS_SCREEN (screen)"
	.size	.L.str.10, 23

	.type	.L__func__.gimp_dialog_factory_get_context,@object # @__func__.gimp_dialog_factory_get_context
.L__func__.gimp_dialog_factory_get_context:
	.asciz	"gimp_dialog_factory_get_context"
	.size	.L__func__.gimp_dialog_factory_get_context, 32

	.type	.L__func__.gimp_dialog_factory_get_menu_factory,@object # @__func__.gimp_dialog_factory_get_menu_factory
.L__func__.gimp_dialog_factory_get_menu_factory:
	.asciz	"gimp_dialog_factory_get_menu_factory"
	.size	.L__func__.gimp_dialog_factory_get_menu_factory, 37

	.type	.L__func__.gimp_dialog_factory_get_open_dialogs,@object # @__func__.gimp_dialog_factory_get_open_dialogs
.L__func__.gimp_dialog_factory_get_open_dialogs:
	.asciz	"gimp_dialog_factory_get_open_dialogs"
	.size	.L__func__.gimp_dialog_factory_get_open_dialogs, 37

	.type	.L__func__.gimp_dialog_factory_get_session_infos,@object # @__func__.gimp_dialog_factory_get_session_infos
.L__func__.gimp_dialog_factory_get_session_infos:
	.asciz	"gimp_dialog_factory_get_session_infos"
	.size	.L__func__.gimp_dialog_factory_get_session_infos, 38

	.type	.L__func__.gimp_dialog_factory_add_session_info,@object # @__func__.gimp_dialog_factory_add_session_info
.L__func__.gimp_dialog_factory_add_session_info:
	.asciz	"gimp_dialog_factory_add_session_info"
	.size	.L__func__.gimp_dialog_factory_add_session_info, 37

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_SESSION_INFO (info)"
	.size	.L.str.11, 28

	.type	.L__func__.gimp_dialog_factory_dialog_raise,@object # @__func__.gimp_dialog_factory_dialog_raise
.L__func__.gimp_dialog_factory_dialog_raise:
	.asciz	"gimp_dialog_factory_dialog_raise"
	.size	.L__func__.gimp_dialog_factory_dialog_raise, 33

	.type	.L__func__.gimp_dialog_factory_dockable_new,@object # @__func__.gimp_dialog_factory_dockable_new
.L__func__.gimp_dialog_factory_dockable_new:
	.asciz	"gimp_dialog_factory_dockable_new"
	.size	.L__func__.gimp_dialog_factory_dockable_new, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_DOCK (dock)"
	.size	.L.str.12, 20

	.type	.L__func__.gimp_dialog_factory_add_dialog,@object # @__func__.gimp_dialog_factory_add_dialog
.L__func__.gimp_dialog_factory_add_dialog:
	.asciz	"gimp_dialog_factory_add_dialog"
	.size	.L__func__.gimp_dialog_factory_add_dialog, 31

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GTK_IS_WIDGET (dialog)"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s: dialog already registered"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"adding %s \"%s\""
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"toplevel"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dockable"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s: singleton dialog \"%s\" created twice"
	.size	.L.str.18, 40

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"corrupt session info: %p (widget %p)"
	.size	.L.str.19, 37

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"updating session info %p (widget %p) for %s \"%s\""
	.size	.L.str.20, 49

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"creating session info %p (widget %p) for %s \"%s\""
	.size	.L.str.21, 49

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"setting GTK_WIN_POS_MOUSE for %p (\"%s\")\n"
	.size	.L.str.22, 41

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"configure-event"
	.size	.L.str.23, 16

	.type	factory_signals,@object # @factory_signals
	.local	factory_signals
	.comm	factory_signals,8,4
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"destroy"
	.size	.L.str.24, 8

	.type	.L__func__.gimp_dialog_factory_add_foreign,@object # @__func__.gimp_dialog_factory_add_foreign
.L__func__.gimp_dialog_factory_add_foreign:
	.asciz	"gimp_dialog_factory_add_foreign"
	.size	.L__func__.gimp_dialog_factory_add_foreign, 32

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk_widget_is_toplevel (dialog)"
	.size	.L.str.25, 32

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s: dialog was created by a GimpDialogFactory"
	.size	.L.str.26, 46

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s: no entry registered for \"%s\""
	.size	.L.str.27, 33

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s: entry for \"%s\" has a constructor (is not foreign)"
	.size	.L.str.28, 54

	.type	.L__func__.gimp_dialog_factory_remove_dialog,@object # @__func__.gimp_dialog_factory_remove_dialog
.L__func__.gimp_dialog_factory_remove_dialog:
	.asciz	"gimp_dialog_factory_remove_dialog"
	.size	.L__func__.gimp_dialog_factory_remove_dialog, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s: dialog not registered"
	.size	.L.str.29, 26

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"removing \"%s\" (dialog = %p)"
	.size	.L.str.30, 28

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"clearing session info %p (widget %p) for \"%s\""
	.size	.L.str.31, 46

	.type	.L__func__.gimp_dialog_factory_hide_dialog,@object # @__func__.gimp_dialog_factory_hide_dialog
.L__func__.gimp_dialog_factory_hide_dialog:
	.asciz	"gimp_dialog_factory_hide_dialog"
	.size	.L__func__.gimp_dialog_factory_hide_dialog, 32

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s: dialog was not created by a GimpDialogFactory"
	.size	.L.str.32, 50

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-dialog-visibility"
	.size	.L.str.33, 23

	.type	.L__func__.gimp_dialog_factory_set_state,@object # @__func__.gimp_dialog_factory_set_state
.L__func__.gimp_dialog_factory_set_state:
	.asciz	"gimp_dialog_factory_set_state"
	.size	.L__func__.gimp_dialog_factory_set_state, 30

	.type	.L__func__.gimp_dialog_factory_get_state,@object # @__func__.gimp_dialog_factory_get_state
.L__func__.gimp_dialog_factory_get_state:
	.asciz	"gimp_dialog_factory_get_state"
	.size	.L__func__.gimp_dialog_factory_get_state, 30

	.type	.L__func__.gimp_dialog_factory_show_with_display,@object # @__func__.gimp_dialog_factory_show_with_display
.L__func__.gimp_dialog_factory_show_with_display:
	.asciz	"gimp_dialog_factory_show_with_display"
	.size	.L__func__.gimp_dialog_factory_show_with_display, 38

	.type	.L__func__.gimp_dialog_factory_hide_with_display,@object # @__func__.gimp_dialog_factory_hide_with_display
.L__func__.gimp_dialog_factory_hide_with_display:
	.asciz	"gimp_dialog_factory_hide_with_display"
	.size	.L__func__.gimp_dialog_factory_hide_with_display, 38

	.type	.L__func__.gimp_dialog_factory_from_widget,@object # @__func__.gimp_dialog_factory_from_widget
.L__func__.gimp_dialog_factory_from_widget:
	.asciz	"gimp_dialog_factory_from_widget"
	.size	.L__func__.gimp_dialog_factory_from_widget, 32

	.type	gimp_dialog_factory_key,@object # @gimp_dialog_factory_key
	.local	gimp_dialog_factory_key
	.comm	gimp_dialog_factory_key,4,4
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-dialog-factory"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-dialog-factory-entry"
	.size	.L.str.35, 26

	.type	gimp_dialog_factory_entry_key,@object # @gimp_dialog_factory_entry_key
	.local	gimp_dialog_factory_entry_key
	.comm	gimp_dialog_factory_entry_key,4,4
	.type	.L__func__.gimp_dialog_factory_set_has_min_size,@object # @__func__.gimp_dialog_factory_set_has_min_size
.L__func__.gimp_dialog_factory_set_has_min_size:
	.asciz	"gimp_dialog_factory_set_has_min_size"
	.size	.L__func__.gimp_dialog_factory_set_has_min_size, 37

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GTK_IS_WINDOW (window)"
	.size	.L.str.36, 23

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-dialog-factory-min-size"
	.size	.L.str.37, 29

	.type	.L__func__.gimp_dialog_factory_get_has_min_size,@object # @__func__.gimp_dialog_factory_get_has_min_size
.L__func__.gimp_dialog_factory_get_has_min_size:
	.asciz	"gimp_dialog_factory_get_has_min_size"
	.size	.L__func__.gimp_dialog_factory_get_has_min_size, 37

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"session-info"
	.size	.L.str.38, 13

	.type	.L__func__.gimp_dialog_factory_restore,@object # @__func__.gimp_dialog_factory_restore
.L__func__.gimp_dialog_factory_restore:
	.asciz	"gimp_dialog_factory_restore"
	.size	.L__func__.gimp_dialog_factory_restore, 28

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"skipping to restore session info %p, not open"
	.size	.L.str.39, 46

	.type	gimp_toplevel_factory,@object # @gimp_toplevel_factory
	.local	gimp_toplevel_factory
	.comm	gimp_toplevel_factory,8,8
	.type	.L__func__.gimp_dialog_factory_get_singleton,@object # @__func__.gimp_dialog_factory_get_singleton
.L__func__.gimp_dialog_factory_get_singleton:
	.asciz	"gimp_dialog_factory_get_singleton"
	.size	.L__func__.gimp_dialog_factory_get_singleton, 34

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp_toplevel_factory != NULL"
	.size	.L.str.40, 30

	.type	.L__func__.gimp_dialog_factory_set_singleton,@object # @__func__.gimp_dialog_factory_set_singleton
.L__func__.gimp_dialog_factory_set_singleton:
	.asciz	"gimp_dialog_factory_set_singleton"
	.size	.L__func__.gimp_dialog_factory_set_singleton, 34

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp_toplevel_factory == NULL || factory == NULL"
	.size	.L.str.41, 49

	.type	gimp_dialog_factory_parent_class,@object # @gimp_dialog_factory_parent_class
	.local	gimp_dialog_factory_parent_class
	.comm	gimp_dialog_factory_parent_class,8,8
	.type	GimpDialogFactory_private_offset,@object # @GimpDialogFactory_private_offset
	.local	GimpDialogFactory_private_offset
	.comm	GimpDialogFactory_private_offset,4,4
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"dock-window-added"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"dock-window-removed"
	.size	.L.str.43, 20

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%s: %d stale non-toplevel entries in factory->p->open_dialogs"
	.size	.L.str.44, 62

	.type	.L__func__.gimp_dialog_factory_dispose,@object # @__func__.gimp_dialog_factory_dispose
.L__func__.gimp_dialog_factory_dispose:
	.asciz	"gimp_dialog_factory_dispose"
	.size	.L__func__.gimp_dialog_factory_dispose, 28

	.type	.L__func__.gimp_dialog_factory_dialog_new_internal,@object # @__func__.gimp_dialog_factory_dialog_new_internal
.L__func__.gimp_dialog_factory_dialog_new_internal:
	.asciz	"gimp_dialog_factory_dialog_new_internal"
	.size	.L__func__.gimp_dialog_factory_dialog_new_internal, 40

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%s: entry for \"%s\" has no constructor"
	.size	.L.str.45, 38

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-toolbox"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-toolbox-window"
	.size	.L.str.47, 20

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%s: GimpDialogFactory is a dockable factory but constructor for \"%s\" did not return a GimpDockable"
	.size	.L.str.48, 99

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s: GimpDialogFactory is a dock factory entry but constructor for \"%s\" did not return a GimpDock"
	.size	.L.str.49, 97

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%s: constructor for \"%s\" returned NULL"
	.size	.L.str.50, 39

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-dialog-identifier"
	.size	.L.str.51, 23

	.type	.L__func__.gimp_dialog_factory_dialog_sane,@object # @__func__.gimp_dialog_factory_dialog_sane
.L__func__.gimp_dialog_factory_dialog_sane:
	.asciz	"gimp_dialog_factory_dialog_sane"
	.size	.L__func__.gimp_dialog_factory_dialog_sane, 32

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%s: dialog was created by a different GimpDialogFactory"
	.size	.L.str.52, 56

	.type	.L__func__.gimp_dialog_factory_set_widget_data,@object # @__func__.gimp_dialog_factory_set_widget_data
.L__func__.gimp_dialog_factory_set_widget_data:
	.asciz	"gimp_dialog_factory_set_widget_data"
	.size	.L__func__.gimp_dialog_factory_set_widget_data, 36

	.type	.L__func__.gimp_dialog_factory_unset_widget_data,@object # @__func__.gimp_dialog_factory_unset_widget_data
.L__func__.gimp_dialog_factory_unset_widget_data:
	.asciz	"gimp_dialog_factory_unset_widget_data"
	.size	.L__func__.gimp_dialog_factory_unset_widget_data, 38

	.type	.L__func__.gimp_dialog_factory_set_user_pos,@object # @__func__.gimp_dialog_factory_set_user_pos
.L__func__.gimp_dialog_factory_set_user_pos:
	.asciz	"gimp_dialog_factory_set_user_pos"
	.size	.L__func__.gimp_dialog_factory_set_user_pos, 33

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"setting GDK_HINT_USER_POS for %p\n"
	.size	.L.str.53, 34

	.type	.L__func__.gimp_dialog_factory_dialog_configure,@object # @__func__.gimp_dialog_factory_dialog_configure
.L__func__.gimp_dialog_factory_dialog_configure:
	.asciz	"gimp_dialog_factory_dialog_configure"
	.size	.L__func__.gimp_dialog_factory_dialog_configure, 37

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"updated session info for \"%s\" from window geometry (x=%d y=%d  %dx%d)"
	.size	.L.str.54, 70

	.type	.L__func__.gimp_dialog_factory_hide,@object # @__func__.gimp_dialog_factory_hide
.L__func__.gimp_dialog_factory_hide:
	.asciz	"gimp_dialog_factory_hide"
	.size	.L__func__.gimp_dialog_factory_hide, 25

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Hiding '%s' [%p]"
	.size	.L.str.55, 17

	.type	.L__func__.gimp_dialog_factory_show,@object # @__func__.gimp_dialog_factory_show
.L__func__.gimp_dialog_factory_show:
	.asciz	"gimp_dialog_factory_show"
	.size	.L__func__.gimp_dialog_factory_show, 25

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Showing '%s' [%p]"
	.size	.L.str.56, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
