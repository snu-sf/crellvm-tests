	.text
	.file	"gimppropwidgets.bc"
	.globl	gimp_prop_check_button_new
	.align	16, 0x90
	.type	gimp_prop_check_button_new,@function
gimp_prop_check_button_new:             # @gimp_prop_check_button_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
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
	leaq	.L__func__.gimp_prop_check_button_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.2
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_check_button_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_9:                                # %if.end.4
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.5
	leaq	.L__func__.gimp_prop_check_button_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_12:                               # %if.end.9
	leaq	-52(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_check_button_new_with_mnemonic@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_prop_check_button_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_check_button_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_prop_check_button_new, .Lfunc_end0-gimp_prop_check_button_new
	.cfi_endproc

	.align	16, 0x90
	.type	check_param_spec_w,@function
check_param_spec_w:                     # @check_param_spec_w
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	check_param_spec
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.55(%rip), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	check_param_spec_w, .Lfunc_end1-check_param_spec_w
	.cfi_endproc

	.align	16, 0x90
	.type	set_param_spec,@function
set_param_spec:                         # @set_param_spec
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_prop_widgets_param_spec_quark
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	g_object_set_qdata@PLT
.LBB2_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB2_6
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rdi
	callq	g_param_spec_get_blurb@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	dgettext@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
.LBB2_5:                                # %if.end.8
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	set_param_spec, .Lfunc_end2-set_param_spec
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_check_button_callback,@function
gimp_prop_check_button_callback:        # @gimp_prop_check_button_callback
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_toggle_button_sensitive_update@PLT
.LBB3_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_prop_check_button_callback, .Lfunc_end3-gimp_prop_check_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	connect_notify,@function
connect_notify:                         # @connect_notify
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
	leaq	.L.str.57(%rip), %rax
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%r9, %rdx
	movb	$0, %al
	callq	g_strconcat@PLT
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_object@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_free@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	connect_notify, .Lfunc_end4-connect_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_check_button_notify,@function
gimp_prop_check_button_notify:          # @gimp_prop_check_button_notify
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
	subq	$112, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	-28(%rbp), %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_check_button_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_toggle_button_sensitive_update@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_check_button_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB5_2:                                # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_prop_check_button_notify, .Lfunc_end5-gimp_prop_check_button_notify
	.cfi_endproc

	.globl	gimp_prop_enum_check_button_new
	.align	16, 0x90
	.type	gimp_prop_enum_check_button_new,@function
gimp_prop_enum_check_button_new:        # @gimp_prop_enum_check_button_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_check_button_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_16
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.2
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_check_button_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_16
.LBB6_9:                                # %if.end.4
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.5
	leaq	.L__func__.gimp_prop_enum_check_button_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	80(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB6_16
.LBB6_12:                               # %if.end.9
	leaq	-60(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_check_button_new_with_mnemonic@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-60(%rbp), %r8d
	cmpl	-40(%rbp), %r8d
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	movl	-60(%rbp), %esi
	cmpl	-36(%rbp), %esi
	je	.LBB6_15
# BB#13:                                # %land.lhs.true
	movl	-60(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.LBB6_15
# BB#14:                                # %if.then.18
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_inconsistent@PLT
.LBB6_15:                               # %if.end.21
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	movslq	-36(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movslq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_prop_enum_check_button_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_enum_check_button_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_prop_enum_check_button_new, .Lfunc_end6-gimp_prop_enum_check_button_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_enum_check_button_callback,@function
gimp_prop_enum_check_button_callback:   # @gimp_prop_enum_check_button_callback
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_6
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %edx
	movl	%edx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %cond.true
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB7_5:                                # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_inconsistent@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_toggle_button_sensitive_update@PLT
.LBB7_6:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_prop_enum_check_button_callback, .Lfunc_end7-gimp_prop_enum_check_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_enum_check_button_notify,@function
gimp_prop_enum_check_button_notify:     # @gimp_prop_enum_check_button_notify
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
	subq	$128, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movl	%eax, %r8d
	movl	%r8d, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %r8d
	movl	%r8d, -36(%rbp)
	movl	-28(%rbp), %r8d
	cmpl	-36(%rbp), %r8d
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, -40(%rbp)
	jmp	.LBB8_5
.LBB8_2:                                # %if.else
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.8
	movl	$1, -44(%rbp)
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %if.end.9
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_inconsistent@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	-40(%rbp), %eax
	je	.LBB8_7
# BB#6:                                 # %if.then.17
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_enum_check_button_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-40(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_toggle_button_sensitive_update@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_enum_check_button_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB8_7:                                # %if.end.24
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_prop_enum_check_button_notify, .Lfunc_end8-gimp_prop_enum_check_button_notify
	.cfi_endproc

	.globl	gimp_prop_int_combo_box_new
	.align	16, 0x90
	.type	gimp_prop_int_combo_box_new,@function
gimp_prop_int_combo_box_new:            # @gimp_prop_int_combo_box_new
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_int_combo_box_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.2
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_int_combo_box_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_9:                                # %if.end.4
	jmp	.LBB9_10
.LBB9_10:                               # %do.end.5
	leaq	.L__func__.gimp_prop_int_combo_box_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_12:                               # %if.end.9
	leaq	-52(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	callq	gimp_int_combo_box_get_type@PLT
	leaq	.L.str.6(%rip), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active@PLT
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_prop_int_combo_box_callback(%rip), %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	gimp_prop_int_combo_box_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_prop_int_combo_box_new, .Lfunc_end9-gimp_prop_int_combo_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_int_combo_box_callback,@function
gimp_prop_int_combo_box_callback:       # @gimp_prop_int_combo_box_callback
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_4
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-28(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active@PLT
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-28(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB10_4:                               # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_prop_int_combo_box_callback, .Lfunc_end10-gimp_prop_int_combo_box_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_int_combo_box_notify,@function
gimp_prop_int_combo_box_notify:         # @gimp_prop_int_combo_box_notify
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
	subq	$96, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	gimp_prop_int_combo_box_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_int_combo_box_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -80(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_prop_int_combo_box_notify, .Lfunc_end11-gimp_prop_int_combo_box_notify
	.cfi_endproc

	.globl	gimp_prop_enum_combo_box_new
	.align	16, 0x90
	.type	gimp_prop_enum_combo_box_new,@function
gimp_prop_enum_combo_box_new:           # @gimp_prop_enum_combo_box_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_combo_box_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_16
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	jmp	.LBB12_6
.LBB12_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB12_8
# BB#7:                                 # %if.then.2
	jmp	.LBB12_9
.LBB12_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_combo_box_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_16
.LBB12_9:                               # %if.end.4
	jmp	.LBB12_10
.LBB12_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_enum_combo_box_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	80(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB12_16
.LBB12_12:                              # %if.end.9
	leaq	-52(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movl	-28(%rbp), %r8d
	cmpl	-32(%rbp), %r8d
	je	.LBB12_14
# BB#13:                                # %if.then.11
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_enum_store_new_with_range@PLT
	movq	%rax, -64(%rbp)
	callq	gimp_enum_combo_box_get_type@PLT
	leaq	.L.str.6(%rip), %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	jmp	.LBB12_15
.LBB12_14:                              # %if.else.15
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_enum_combo_box_new@PLT
	movq	%rax, -48(%rbp)
.LBB12_15:                              # %if.end.18
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active@PLT
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_prop_int_combo_box_callback(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	gimp_prop_int_combo_box_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_prop_enum_combo_box_new, .Lfunc_end12-gimp_prop_enum_combo_box_new
	.cfi_endproc

	.globl	gimp_prop_boolean_combo_box_new
	.align	16, 0x90
	.type	gimp_prop_boolean_combo_box_new,@function
gimp_prop_boolean_combo_box_new:        # @gimp_prop_boolean_combo_box_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_boolean_combo_box_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB13_13
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	jmp	.LBB13_6
.LBB13_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB13_8
# BB#7:                                 # %if.then.2
	jmp	.LBB13_9
.LBB13_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_boolean_combo_box_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB13_13
.LBB13_9:                               # %if.end.4
	jmp	.LBB13_10
.LBB13_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_boolean_combo_box_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB13_13
.LBB13_12:                              # %if.end.9
	leaq	-60(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	callq	gtk_combo_box_text_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_text_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_text_append_text@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_text_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_text_append_text@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r8d
	xorl	%r9d, %r9d
	cmpl	$0, -60(%rbp)
	cmovnel	%r9d, %r8d
	movq	%rax, %rdi
	movl	%r8d, %esi
	callq	gtk_combo_box_set_active@PLT
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_prop_boolean_combo_box_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	gimp_prop_boolean_combo_box_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_prop_boolean_combo_box_new, .Lfunc_end13-gimp_prop_boolean_combo_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_boolean_combo_box_callback,@function
gimp_prop_boolean_combo_box_callback:   # @gimp_prop_boolean_combo_box_callback
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	cmpl	$0, -28(%rbp)
	cmovnel	%r8d, %edx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set@PLT
.LBB14_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_prop_boolean_combo_box_callback, .Lfunc_end14-gimp_prop_boolean_combo_box_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_boolean_combo_box_notify,@function
gimp_prop_boolean_combo_box_notify:     # @gimp_prop_boolean_combo_box_notify
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
	subq	$96, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	gimp_prop_boolean_combo_box_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	cmpl	$0, -28(%rbp)
	cmovnel	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_combo_box_set_active@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_boolean_combo_box_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_prop_boolean_combo_box_notify, .Lfunc_end15-gimp_prop_boolean_combo_box_notify
	.cfi_endproc

	.globl	gimp_prop_enum_radio_frame_new
	.align	16, 0x90
	.type	gimp_prop_enum_radio_frame_new,@function
gimp_prop_enum_radio_frame_new:         # @gimp_prop_enum_radio_frame_new
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_radio_frame_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB16_16
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	jmp	.LBB16_6
.LBB16_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB16_8
# BB#7:                                 # %if.then.2
	jmp	.LBB16_9
.LBB16_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_radio_frame_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB16_16
.LBB16_9:                               # %if.end.4
	jmp	.LBB16_10
.LBB16_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_enum_radio_frame_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	80(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB16_16
.LBB16_12:                              # %if.end.9
	leaq	-68(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movl	-36(%rbp), %r8d
	cmpl	-40(%rbp), %r8d
	je	.LBB16_14
# BB#13:                                # %if.then.11
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%esi, -96(%rbp)         # 4-byte Spill
	callq	gtk_label_new@PLT
	leaq	gimp_prop_radio_button_callback(%rip), %rdi
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	-96(%rbp), %esi         # 4-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_enum_radio_frame_new_with_range@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB16_15
.LBB16_14:                              # %if.else.14
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	leaq	gimp_prop_radio_button_callback(%rip), %rdi
	leaq	-64(%rbp), %r8
	movq	-16(%rbp), %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	gimp_enum_radio_frame_new@PLT
	movq	%rax, -56(%rbp)
.LBB16_15:                              # %if.end.18
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_radio_spec
	leaq	gimp_prop_radio_button_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_prop_enum_radio_frame_new, .Lfunc_end16-gimp_prop_enum_radio_frame_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_radio_button_callback,@function
gimp_prop_radio_button_callback:        # @gimp_prop_radio_button_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB17_4
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then.6
	jmp	.LBB17_4
.LBB17_3:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.44(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
.LBB17_4:                               # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_prop_radio_button_callback, .Lfunc_end17-gimp_prop_radio_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	set_radio_spec,@function
set_radio_spec:                         # @set_radio_spec
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -24(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB18_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	callq	set_param_spec
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB18_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB18_6
.LBB18_5:                               # %cond.false
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB18_6
.LBB18_6:                               # %cond.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB18_1
.LBB18_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	set_radio_spec, .Lfunc_end18-set_radio_spec
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_radio_button_notify,@function
gimp_prop_radio_button_notify:          # @gimp_prop_radio_button_notify
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
	subq	$48, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_prop_radio_button_notify, .Lfunc_end19-gimp_prop_radio_button_notify
	.cfi_endproc

	.globl	gimp_prop_enum_radio_box_new
	.align	16, 0x90
	.type	gimp_prop_enum_radio_box_new,@function
gimp_prop_enum_radio_box_new:           # @gimp_prop_enum_radio_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB20_3
# BB#2:                                 # %if.then
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_radio_box_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB20_16
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %do.end
	jmp	.LBB20_6
.LBB20_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB20_8
# BB#7:                                 # %if.then.2
	jmp	.LBB20_9
.LBB20_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_radio_box_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB20_16
.LBB20_9:                               # %if.end.4
	jmp	.LBB20_10
.LBB20_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_enum_radio_box_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	80(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB20_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB20_16
.LBB20_12:                              # %if.end.9
	leaq	-60(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movl	-28(%rbp), %r8d
	cmpl	-32(%rbp), %r8d
	je	.LBB20_14
# BB#13:                                # %if.then.11
	leaq	gimp_prop_radio_button_callback(%rip), %rax
	leaq	-56(%rbp), %r9
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	gimp_enum_radio_box_new_with_range@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB20_15
.LBB20_14:                              # %if.else.13
	leaq	gimp_prop_radio_button_callback(%rip), %rax
	leaq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_enum_radio_box_new@PLT
	movq	%rax, -48(%rbp)
.LBB20_15:                              # %if.end.16
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_radio_spec
	leaq	gimp_prop_radio_button_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_prop_enum_radio_box_new, .Lfunc_end20-gimp_prop_enum_radio_box_new
	.cfi_endproc

	.globl	gimp_prop_enum_label_new
	.align	16, 0x90
	.type	gimp_prop_enum_label_new,@function
gimp_prop_enum_label_new:               # @gimp_prop_enum_label_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
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
	je	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_label_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB21_13
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	jmp	.LBB21_6
.LBB21_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB21_8
# BB#7:                                 # %if.then.2
	jmp	.LBB21_9
.LBB21_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_label_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB21_13
.LBB21_9:                               # %if.end.4
	jmp	.LBB21_10
.LBB21_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_enum_label_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	80(%rax), %rdx
	callq	check_param_spec
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB21_13
.LBB21_12:                              # %if.end.9
	leaq	-44(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_enum_label_new@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	gimp_prop_enum_label_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB21_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_prop_enum_label_new, .Lfunc_end21-gimp_prop_enum_label_new
	.cfi_endproc

	.align	16, 0x90
	.type	check_param_spec,@function
check_param_spec:                       # @check_param_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	find_param_spec
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB22_3
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.54(%rip), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_4
.LBB22_3:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB22_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	check_param_spec, .Lfunc_end22-check_param_spec
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_enum_label_notify,@function
gimp_prop_enum_label_notify:            # @gimp_prop_enum_label_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_enum_label_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_enum_label_set_value@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_prop_enum_label_notify, .Lfunc_end23-gimp_prop_enum_label_notify
	.cfi_endproc

	.globl	gimp_prop_boolean_radio_frame_new
	.align	16, 0x90
	.type	gimp_prop_boolean_radio_frame_new,@function
gimp_prop_boolean_radio_frame_new:      # @gimp_prop_boolean_radio_frame_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp75:
	.cfi_offset %rbx, -32
.Ltmp76:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB24_3
# BB#2:                                 # %if.then
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_boolean_radio_frame_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -24(%rbp)
	jmp	.LBB24_13
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %do.end
	jmp	.LBB24_6
.LBB24_6:                               # %do.body.1
	cmpq	$0, -40(%rbp)
	je	.LBB24_8
# BB#7:                                 # %if.then.2
	jmp	.LBB24_9
.LBB24_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_boolean_radio_frame_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -24(%rbp)
	jmp	.LBB24_13
.LBB24_9:                               # %if.end.4
	jmp	.LBB24_10
.LBB24_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_boolean_radio_frame_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB24_12
# BB#11:                                # %if.then.8
	movq	$0, -24(%rbp)
	jmp	.LBB24_13
.LBB24_12:                              # %if.end.9
	leaq	-92(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$1, %edi
	leaq	gimp_prop_radio_button_callback(%rip), %rcx
	xorl	%r8d, %r8d
	leaq	-88(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %r10
	movq	-32(%rbp), %r11
	movl	-92(%rbp), %r9d
	movq	-64(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%r11, %rcx
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	%rbx, %r9
	movl	$0, (%rsp)
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%r14, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new@PLT
	movl	$80, %edi
	movl	%edi, %esi
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_radio_spec
	leaq	gimp_prop_radio_button_notify(%rip), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB24_13:                              # %return
	movq	-24(%rbp), %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_prop_boolean_radio_frame_new, .Lfunc_end24-gimp_prop_boolean_radio_frame_new
	.cfi_endproc

	.globl	gimp_prop_enum_stock_box_new
	.align	16, 0x90
	.type	gimp_prop_enum_stock_box_new,@function
gimp_prop_enum_stock_box_new:           # @gimp_prop_enum_stock_box_new
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
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB25_3
# BB#2:                                 # %if.then
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_stock_box_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB25_16
.LBB25_4:                               # %if.end
	jmp	.LBB25_5
.LBB25_5:                               # %do.end
	jmp	.LBB25_6
.LBB25_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB25_8
# BB#7:                                 # %if.then.2
	jmp	.LBB25_9
.LBB25_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_enum_stock_box_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB25_16
.LBB25_9:                               # %if.end.4
	jmp	.LBB25_10
.LBB25_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_enum_stock_box_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	80(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB25_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB25_16
.LBB25_12:                              # %if.end.9
	leaq	-68(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movl	-36(%rbp), %r8d
	cmpl	-40(%rbp), %r8d
	je	.LBB25_14
# BB#13:                                # %if.then.11
	movl	$1, %r8d
	leaq	gimp_prop_radio_button_callback(%rip), %rax
	leaq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rcx
	movq	%rax, %r9
	movq	%r10, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_enum_stock_box_new_with_range@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB25_15
.LBB25_14:                              # %if.else.13
	movl	$1, %edx
	leaq	gimp_prop_radio_button_callback(%rip), %rax
	leaq	-64(%rbp), %r9
	movq	-48(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	gimp_enum_stock_box_new@PLT
	movq	%rax, -56(%rbp)
.LBB25_15:                              # %if.end.16
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_radio_spec
	leaq	gimp_prop_radio_button_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB25_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_prop_enum_stock_box_new, .Lfunc_end25-gimp_prop_enum_stock_box_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_prop_spin_button_new
	.align	16, 0x90
	.type	gimp_prop_spin_button_new,@function
gimp_prop_spin_button_new:              # @gimp_prop_spin_button_new
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
	subq	$144, %rsp
	leaq	.L__func__.gimp_prop_spin_button_new(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, %rdx
	callq	find_param_spec
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB26_14
.LBB26_2:                               # %if.end
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-96(%rbp), %r8
	leaq	.L__func__.gimp_prop_spin_button_new(%rip), %r9
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	get_numeric_values
	cmpl	$0, %eax
	jne	.LBB26_4
# BB#3:                                 # %if.then.3
	movq	$0, -8(%rbp)
	jmp	.LBB26_14
.LBB26_4:                               # %if.end.4
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB26_6
# BB#5:                                 # %if.then.6
	movl	$0, -116(%rbp)
	jmp	.LBB26_11
.LBB26_6:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_9
# BB#7:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB26_9
# BB#8:                                 # %if.then.9
	movl	$1, -116(%rbp)
	jmp	.LBB26_10
.LBB26_9:                               # %if.else.10
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -116(%rbp)
.LBB26_10:                              # %if.end.12
	jmp	.LBB26_11
.LBB26_11:                              # %if.end.13
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	jne	.LBB26_13
# BB#12:                                # %if.then.15
	movl	$0, -44(%rbp)
.LBB26_13:                              # %if.end.16
	leaq	-72(%rbp), %rdi
	xorps	%xmm5, %xmm5
	movsd	.LCPI26_0(%rip), %xmm6  # xmm6 = mem[0],zero
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	movl	-44(%rbp), %esi
	callq	gimp_spin_button_new@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_prop_adjustment_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_adjustment_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB26_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_prop_spin_button_new, .Lfunc_end26-gimp_prop_spin_button_new
	.cfi_endproc

	.align	16, 0x90
	.type	find_param_spec,@function
find_param_spec:                        # @find_param_spec
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	callq	g_object_class_find_property@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.53(%rip), %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
.LBB27_2:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	find_param_spec, .Lfunc_end27-find_param_spec
	.cfi_endproc

	.align	16, 0x90
	.type	get_numeric_values,@function
get_numeric_values:                     # @get_numeric_values
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
	subq	$192, %rsp
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB28_7
.LBB28_2:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_5
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB28_5
# BB#4:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB28_6
.LBB28_5:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB28_6:                               # %if.end
	jmp	.LBB28_7
.LBB28_7:                               # %if.end.5
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB28_9
# BB#8:                                 # %if.then.7
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	(%rax), %rax
	movq	24(%rax), %rsi
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	-92(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get@PLT
	cvtsi2sdl	-92(%rbp), %xmm0
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-88(%rbp), %rcx
	cvtsi2sdl	72(%rcx), %xmm0
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-88(%rbp), %rcx
	cvtsi2sdl	76(%rcx), %xmm0
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	jmp	.LBB28_30
.LBB28_9:                               # %if.else.14
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB28_11
# BB#10:                                # %if.then.23
	movl	$0, -116(%rbp)
	jmp	.LBB28_16
.LBB28_11:                              # %if.else.24
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_14
# BB#12:                                # %land.lhs.true.27
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB28_14
# BB#13:                                # %if.then.32
	movl	$1, -116(%rbp)
	jmp	.LBB28_15
.LBB28_14:                              # %if.else.33
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -116(%rbp)
.LBB28_15:                              # %if.end.35
	jmp	.LBB28_16
.LBB28_16:                              # %if.end.36
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB28_18
# BB#17:                                # %if.then.39
	movq	-24(%rbp), %rdi
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%cl, %dl
	leaq	-132(%rbp), %r8
	movb	%dl, -169(%rbp)         # 1-byte Spill
	movq	%r8, %rdx
	movq	%rax, %rcx
	movb	-169(%rbp), %al         # 1-byte Reload
	callq	g_object_get@PLT
	movl	-132(%rbp), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-128(%rbp), %rcx
	movl	72(%rcx), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-128(%rbp), %rcx
	movl	76(%rcx), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	jmp	.LBB28_29
.LBB28_18:                              # %if.else.50
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB28_20
# BB#19:                                # %if.then.59
	movl	$0, -156(%rbp)
	jmp	.LBB28_25
.LBB28_20:                              # %if.else.60
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_23
# BB#21:                                # %land.lhs.true.63
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB28_23
# BB#22:                                # %if.then.68
	movl	$1, -156(%rbp)
	jmp	.LBB28_24
.LBB28_23:                              # %if.else.69
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -156(%rbp)
.LBB28_24:                              # %if.end.71
	jmp	.LBB28_25
.LBB28_25:                              # %if.end.72
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB28_27
# BB#26:                                # %if.then.75
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	(%rax), %rax
	movq	104(%rax), %rsi
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-168(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-168(%rbp), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	jmp	.LBB28_28
.LBB28_27:                              # %if.else.82
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.56(%rip), %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB28_31
.LBB28_28:                              # %if.end.87
	jmp	.LBB28_29
.LBB28_29:                              # %if.end.88
	jmp	.LBB28_30
.LBB28_30:                              # %if.end.89
	movl	$1, -4(%rbp)
.LBB28_31:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	get_numeric_values, .Lfunc_end28-get_numeric_values
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4636737291354636288     # double 100
.LCPI29_1:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.align	16, 0x90
	.type	gimp_prop_adjustment_callback,@function
gimp_prop_adjustment_callback:          # @gimp_prop_adjustment_callback
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
	subq	$224, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_73
.LBB29_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movq	g_param_spec_types@GOTPCREL(%rip), %rdi
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB29_4
# BB#3:                                 # %if.then.4
	movl	$0, -52(%rbp)
	jmp	.LBB29_9
.LBB29_4:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB29_7
# BB#6:                                 # %if.then.7
	movl	$1, -52(%rbp)
	jmp	.LBB29_8
.LBB29_7:                               # %if.else.8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB29_8:                               # %if.end.10
	jmp	.LBB29_9
.LBB29_9:                               # %if.end.11
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB29_11
# BB#10:                                # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	cvttsd2si	-32(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
	jmp	.LBB29_73
.LBB29_11:                              # %if.else.14
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB29_13
# BB#12:                                # %if.then.23
	movl	$0, -76(%rbp)
	jmp	.LBB29_18
.LBB29_13:                              # %if.else.24
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_16
# BB#14:                                # %land.lhs.true.27
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB29_16
# BB#15:                                # %if.then.32
	movl	$1, -76(%rbp)
	jmp	.LBB29_17
.LBB29_16:                              # %if.else.33
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB29_17:                              # %if.end.35
	jmp	.LBB29_18
.LBB29_18:                              # %if.end.36
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB29_20
# BB#19:                                # %if.then.39
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rsi
	cvttsd2si	-32(%rbp), %rdx
	movl	%edx, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
	jmp	.LBB29_72
.LBB29_20:                              # %if.else.42
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB29_22
# BB#21:                                # %if.then.51
	movl	$0, -100(%rbp)
	jmp	.LBB29_27
.LBB29_22:                              # %if.else.52
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_25
# BB#23:                                # %land.lhs.true.55
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB29_25
# BB#24:                                # %if.then.60
	movl	$1, -100(%rbp)
	jmp	.LBB29_26
.LBB29_25:                              # %if.else.61
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB29_26:                              # %if.end.63
	jmp	.LBB29_27
.LBB29_27:                              # %if.end.64
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB29_29
# BB#28:                                # %if.then.67
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	cvttsd2si	-32(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set@PLT
	jmp	.LBB29_71
.LBB29_29:                              # %if.else.70
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB29_31
# BB#30:                                # %if.then.79
	movl	$0, -124(%rbp)
	jmp	.LBB29_36
.LBB29_31:                              # %if.else.80
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_34
# BB#32:                                # %land.lhs.true.83
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB29_34
# BB#33:                                # %if.then.88
	movl	$1, -124(%rbp)
	jmp	.LBB29_35
.LBB29_34:                              # %if.else.89
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -124(%rbp)
.LBB29_35:                              # %if.end.91
	jmp	.LBB29_36
.LBB29_36:                              # %if.end.92
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB29_38
# BB#37:                                # %if.then.95
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI29_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rdx
	movabsq	$-9223372036854775808, %r8 # imm = 0x8000000000000000
	xorq	%r8, %rdx
	cvttsd2si	%xmm0, %r8
	ucomisd	%xmm0, %xmm1
	cmovaq	%r8, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
	jmp	.LBB29_70
.LBB29_38:                              # %if.else.98
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB29_40
# BB#39:                                # %if.then.107
	movl	$0, -148(%rbp)
	jmp	.LBB29_45
.LBB29_40:                              # %if.else.108
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_43
# BB#41:                                # %land.lhs.true.111
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB29_43
# BB#42:                                # %if.then.116
	movl	$1, -148(%rbp)
	jmp	.LBB29_44
.LBB29_43:                              # %if.else.117
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -148(%rbp)
.LBB29_44:                              # %if.end.119
	jmp	.LBB29_45
.LBB29_45:                              # %if.end.120
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB29_47
# BB#46:                                # %if.then.123
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	cvttsd2si	-32(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set@PLT
	jmp	.LBB29_69
.LBB29_47:                              # %if.else.126
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB29_49
# BB#48:                                # %if.then.135
	movl	$0, -172(%rbp)
	jmp	.LBB29_54
.LBB29_49:                              # %if.else.136
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_52
# BB#50:                                # %land.lhs.true.139
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB29_52
# BB#51:                                # %if.then.144
	movl	$1, -172(%rbp)
	jmp	.LBB29_53
.LBB29_52:                              # %if.else.145
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -172(%rbp)
.LBB29_53:                              # %if.end.147
	jmp	.LBB29_54
.LBB29_54:                              # %if.end.148
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB29_56
# BB#55:                                # %if.then.151
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI29_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rdx
	movabsq	$-9223372036854775808, %r8 # imm = 0x8000000000000000
	xorq	%r8, %rdx
	cvttsd2si	%xmm0, %r8
	ucomisd	%xmm0, %xmm1
	cmovaq	%r8, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
	jmp	.LBB29_68
.LBB29_56:                              # %if.else.154
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB29_58
# BB#57:                                # %if.then.163
	movl	$0, -196(%rbp)
	jmp	.LBB29_63
.LBB29_58:                              # %if.else.164
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_61
# BB#59:                                # %land.lhs.true.167
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB29_61
# BB#60:                                # %if.then.172
	movl	$1, -196(%rbp)
	jmp	.LBB29_62
.LBB29_61:                              # %if.else.173
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -196(%rbp)
.LBB29_62:                              # %if.end.175
	jmp	.LBB29_63
.LBB29_63:                              # %if.end.176
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB29_67
# BB#64:                                # %if.then.179
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB29_66
# BB#65:                                # %if.then.184
	movsd	.LCPI29_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
.LBB29_66:                              # %if.end.185
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set@PLT
.LBB29_67:                              # %if.end.187
	jmp	.LBB29_68
.LBB29_68:                              # %if.end.188
	jmp	.LBB29_69
.LBB29_69:                              # %if.end.189
	jmp	.LBB29_70
.LBB29_70:                              # %if.end.190
	jmp	.LBB29_71
.LBB29_71:                              # %if.end.191
	jmp	.LBB29_72
.LBB29_72:                              # %if.end.192
	jmp	.LBB29_73
.LBB29_73:                              # %if.end.193
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_prop_adjustment_callback, .Lfunc_end29-gimp_prop_adjustment_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI30_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI30_2:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	gimp_prop_adjustment_notify,@function
gimp_prop_adjustment_notify:            # @gimp_prop_adjustment_notify
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
	subq	$352, %rsp              # imm = 0x160
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB30_7
.LBB30_2:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB30_5
# BB#4:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB30_6
.LBB30_5:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB30_6:                               # %if.end
	jmp	.LBB30_7
.LBB30_7:                               # %if.end.5
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB30_9
# BB#8:                                 # %if.then.7
	leaq	-60(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	cvtsi2sdl	-60(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB30_72
.LBB30_9:                               # %if.else.9
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB30_11
# BB#10:                                # %if.then.18
	movl	$0, -84(%rbp)
	jmp	.LBB30_16
.LBB30_11:                              # %if.else.19
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_14
# BB#12:                                # %land.lhs.true.22
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB30_14
# BB#13:                                # %if.then.27
	movl	$1, -84(%rbp)
	jmp	.LBB30_15
.LBB30_14:                              # %if.else.28
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB30_15:                              # %if.end.30
	jmp	.LBB30_16
.LBB30_16:                              # %if.end.31
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB30_18
# BB#17:                                # %if.then.34
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%cl, %dl
	leaq	-92(%rbp), %r8
	movb	%dl, -257(%rbp)         # 1-byte Spill
	movq	%r8, %rdx
	movq	%rax, %rcx
	movb	-257(%rbp), %al         # 1-byte Reload
	callq	g_object_get@PLT
	movl	-92(%rbp), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB30_71
.LBB30_18:                              # %if.else.38
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB30_20
# BB#19:                                # %if.then.47
	movl	$0, -116(%rbp)
	jmp	.LBB30_25
.LBB30_20:                              # %if.else.48
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_23
# BB#21:                                # %land.lhs.true.51
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB30_23
# BB#22:                                # %if.then.56
	movl	$1, -116(%rbp)
	jmp	.LBB30_24
.LBB30_23:                              # %if.else.57
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -116(%rbp)
.LBB30_24:                              # %if.end.59
	jmp	.LBB30_25
.LBB30_25:                              # %if.end.60
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB30_27
# BB#26:                                # %if.then.63
	leaq	-128(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	cvtsi2sdq	-128(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB30_70
.LBB30_27:                              # %if.else.67
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB30_29
# BB#28:                                # %if.then.76
	movl	$0, -148(%rbp)
	jmp	.LBB30_34
.LBB30_29:                              # %if.else.77
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_32
# BB#30:                                # %land.lhs.true.80
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB30_32
# BB#31:                                # %if.then.85
	movl	$1, -148(%rbp)
	jmp	.LBB30_33
.LBB30_32:                              # %if.else.86
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -148(%rbp)
.LBB30_33:                              # %if.end.88
	jmp	.LBB30_34
.LBB30_34:                              # %if.end.89
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB30_36
# BB#35:                                # %if.then.92
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%cl, %dl
	leaq	-160(%rbp), %r8
	movb	%dl, -273(%rbp)         # 1-byte Spill
	movq	%r8, %rdx
	movq	%rax, %rcx
	movb	-273(%rbp), %al         # 1-byte Reload
	callq	g_object_get@PLT
	movaps	.LCPI30_1(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI30_2(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB30_69
.LBB30_36:                              # %if.else.96
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB30_38
# BB#37:                                # %if.then.105
	movl	$0, -180(%rbp)
	jmp	.LBB30_43
.LBB30_38:                              # %if.else.106
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_41
# BB#39:                                # %land.lhs.true.109
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB30_41
# BB#40:                                # %if.then.114
	movl	$1, -180(%rbp)
	jmp	.LBB30_42
.LBB30_41:                              # %if.else.115
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -180(%rbp)
.LBB30_42:                              # %if.end.117
	jmp	.LBB30_43
.LBB30_43:                              # %if.end.118
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB30_45
# BB#44:                                # %if.then.121
	leaq	-192(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	cvtsi2sdq	-192(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB30_68
.LBB30_45:                              # %if.else.125
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB30_47
# BB#46:                                # %if.then.134
	movl	$0, -212(%rbp)
	jmp	.LBB30_52
.LBB30_47:                              # %if.else.135
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_50
# BB#48:                                # %land.lhs.true.138
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB30_50
# BB#49:                                # %if.then.143
	movl	$1, -212(%rbp)
	jmp	.LBB30_51
.LBB30_50:                              # %if.else.144
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -212(%rbp)
.LBB30_51:                              # %if.end.146
	jmp	.LBB30_52
.LBB30_52:                              # %if.end.147
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB30_54
# BB#53:                                # %if.then.150
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%cl, %dl
	leaq	-224(%rbp), %r8
	movb	%dl, -289(%rbp)         # 1-byte Spill
	movq	%r8, %rdx
	movq	%rax, %rcx
	movb	-289(%rbp), %al         # 1-byte Reload
	callq	g_object_get@PLT
	movaps	.LCPI30_1(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI30_2(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB30_67
.LBB30_54:                              # %if.else.154
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.LBB30_56
# BB#55:                                # %if.then.163
	movl	$0, -244(%rbp)
	jmp	.LBB30_61
.LBB30_56:                              # %if.else.164
	movq	-232(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_59
# BB#57:                                # %land.lhs.true.167
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-240(%rbp), %rax
	jne	.LBB30_59
# BB#58:                                # %if.then.172
	movl	$1, -244(%rbp)
	jmp	.LBB30_60
.LBB30_59:                              # %if.else.173
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -244(%rbp)
.LBB30_60:                              # %if.end.175
	jmp	.LBB30_61
.LBB30_61:                              # %if.end.176
	movl	-244(%rbp), %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB30_65
# BB#62:                                # %if.then.179
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %r8d
	cmpl	$0, %r8d
	je	.LBB30_64
# BB#63:                                # %if.then.185
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB30_64:                              # %if.end.186
	jmp	.LBB30_66
.LBB30_65:                              # %if.else.187
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name@PLT
	leaq	.L.str.45(%rip), %rdi
	leaq	.L__func__.gimp_prop_adjustment_notify(%rip), %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB30_74
.LBB30_66:                              # %if.end.191
	jmp	.LBB30_67
.LBB30_67:                              # %if.end.192
	jmp	.LBB30_68
.LBB30_68:                              # %if.end.193
	jmp	.LBB30_69
.LBB30_69:                              # %if.end.194
	jmp	.LBB30_70
.LBB30_70:                              # %if.end.195
	jmp	.LBB30_71
.LBB30_71:                              # %if.end.196
	jmp	.LBB30_72
.LBB30_72:                              # %if.end.197
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB30_73
	jp	.LBB30_73
	jmp	.LBB30_74
.LBB30_73:                              # %if.then.201
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_adjustment_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-312(%rbp), %r10        # 8-byte Reload
	movq	%r9, -320(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-320(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gtk_adjustment_set_value@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_adjustment_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-336(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB30_74:                              # %if.end.204
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_prop_adjustment_notify, .Lfunc_end30-gimp_prop_adjustment_notify
	.cfi_endproc

	.globl	gimp_prop_hscale_new
	.align	16, 0x90
	.type	gimp_prop_hscale_new,@function
gimp_prop_hscale_new:                   # @gimp_prop_hscale_new
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
	subq	$144, %rsp
	leaq	.L__func__.gimp_prop_hscale_new(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, %rdx
	callq	find_param_spec
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB31_14
.LBB31_2:                               # %if.end
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-96(%rbp), %r8
	leaq	.L__func__.gimp_prop_hscale_new(%rip), %r9
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	get_numeric_values
	cmpl	$0, %eax
	jne	.LBB31_4
# BB#3:                                 # %if.then.3
	movq	$0, -8(%rbp)
	jmp	.LBB31_14
.LBB31_4:                               # %if.end.4
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB31_6
# BB#5:                                 # %if.then.6
	movl	$0, -116(%rbp)
	jmp	.LBB31_11
.LBB31_6:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_9
# BB#7:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB31_9
# BB#8:                                 # %if.then.9
	movl	$1, -116(%rbp)
	jmp	.LBB31_10
.LBB31_9:                               # %if.else.10
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -116(%rbp)
.LBB31_10:                              # %if.end.12
	jmp	.LBB31_11
.LBB31_11:                              # %if.end.13
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	jne	.LBB31_13
# BB#12:                                # %if.then.15
	movl	$0, -44(%rbp)
.LBB31_13:                              # %if.end.16
	xorps	%xmm5, %xmm5
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new@PLT
	movq	%rax, -72(%rbp)
	callq	gtk_hscale_get_type@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	.L.str.11(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-72(%rbp), %rdx
	movl	-44(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_prop_adjustment_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_adjustment_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB31_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_prop_hscale_new, .Lfunc_end31-gimp_prop_hscale_new
	.cfi_endproc

	.globl	gimp_prop_scale_entry_new
	.align	16, 0x90
	.type	gimp_prop_scale_entry_new,@function
gimp_prop_scale_entry_new:              # @gimp_prop_scale_entry_new
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
	subq	$240, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	leaq	.L__func__.gimp_prop_scale_entry_new(%rip), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%r9, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	%r10d, -68(%rbp)
	movl	%eax, -72(%rbp)
	movsd	%xmm2, -80(%rbp)
	movsd	%xmm3, -88(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%r11, %rdx
	callq	find_param_spec
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB32_8
.LBB32_2:                               # %if.end
	leaq	-120(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-136(%rbp), %r8
	leaq	.L__func__.gimp_prop_scale_entry_new(%rip), %r9
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	get_numeric_values
	cmpl	$0, %eax
	jne	.LBB32_4
# BB#3:                                 # %if.then.3
	movq	$0, -8(%rbp)
	jmp	.LBB32_8
.LBB32_4:                               # %if.end.4
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-96(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	dgettext@PLT
	movq	%rax, -112(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.LBB32_6
# BB#5:                                 # %if.then.9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %r8d
	movq	-48(%rbp), %r9
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-136(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-56(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movl	-68(%rbp), %r10d
	movq	-112(%rbp), %r11
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movl	%r8d, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movl	%r10d, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-168(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-168(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new@PLT
	movq	%rax, -104(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %r8d
	movq	-48(%rbp), %r9
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-64(%rbp), %xmm4        # xmm4 = mem[0],zero
	movl	-68(%rbp), %r10d
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movq	-112(%rbp), %r11
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movl	%r8d, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new@PLT
	movq	%rax, -104(%rbp)
.LBB32_7:                               # %if.end.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_prop_adjustment_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_adjustment_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB32_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_prop_scale_entry_new, .Lfunc_end32-gimp_prop_scale_entry_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4607182418800017408     # double 1
.LCPI33_1:
	.quad	4621819117588971520     # double 10
.LCPI33_2:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gimp_prop_opacity_entry_new
	.align	16, 0x90
	.type	gimp_prop_opacity_entry_new,@function
gimp_prop_opacity_entry_new:            # @gimp_prop_opacity_entry_new
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB33_3
# BB#2:                                 # %if.then
	jmp	.LBB33_4
.LBB33_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_opacity_entry_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB33_13
.LBB33_4:                               # %if.end
	jmp	.LBB33_5
.LBB33_5:                               # %do.end
	jmp	.LBB33_6
.LBB33_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB33_8
# BB#7:                                 # %if.then.2
	jmp	.LBB33_9
.LBB33_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_opacity_entry_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB33_13
.LBB33_9:                               # %if.end.4
	jmp	.LBB33_10
.LBB33_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_opacity_entry_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	104(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB33_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB33_13
.LBB33_12:                              # %if.end.9
	leaq	-80(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-56(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_blurb@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	dgettext@PLT
	movq	g_param_spec_types@GOTPCREL(%rip), %rcx
	movsd	.LCPI33_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rax, -72(%rbp)
	mulsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rcx), %rcx
	movq	104(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	g_param_spec_types@GOTPCREL(%rip), %rcx
	movsd	.LCPI33_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	72(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rcx), %rcx
	movq	104(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movsd	.LCPI33_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI33_1(%rip), %xmm4  # xmm4 = mem[0],zero
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movsd	.LCPI33_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	80(%rax), %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	-48(%rbp), %rax
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	-72(%rbp), %r11
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -128(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm5, %xmm2
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-136(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	movl	$1, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_prop_adjustment_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_adjustment_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB33_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_prop_opacity_entry_new, .Lfunc_end33-gimp_prop_opacity_entry_new
	.cfi_endproc

	.globl	gimp_prop_memsize_entry_new
	.align	16, 0x90
	.type	gimp_prop_memsize_entry_new,@function
gimp_prop_memsize_entry_new:            # @gimp_prop_memsize_entry_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB34_3
# BB#2:                                 # %if.then
	jmp	.LBB34_4
.LBB34_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_memsize_entry_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB34_23
.LBB34_4:                               # %if.end
	jmp	.LBB34_5
.LBB34_5:                               # %do.end
	jmp	.LBB34_6
.LBB34_6:                               # %do.body.2
	cmpq	$0, -24(%rbp)
	je	.LBB34_8
# BB#7:                                 # %if.then.3
	jmp	.LBB34_9
.LBB34_8:                               # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_memsize_entry_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB34_23
.LBB34_9:                               # %if.end.5
	jmp	.LBB34_10
.LBB34_10:                              # %do.end.6
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_param_memsize_get_type@PLT
	leaq	.L__func__.gimp_prop_memsize_entry_new(%rip), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB34_12
# BB#11:                                # %if.then.10
	movq	$0, -8(%rbp)
	jmp	.LBB34_23
.LBB34_12:                              # %if.end.11
	leaq	-56(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movq	g_param_spec_types@GOTPCREL(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rcx), %rcx
	movq	64(%rcx), %rsi
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
# BB#13:                                # %do.body.13
	movabsq	$4398046511104, %rax    # imm = 0x40000000000
	movq	-40(%rbp), %rcx
	cmpq	%rax, 72(%rcx)
	ja	.LBB34_15
# BB#14:                                # %if.then.15
	jmp	.LBB34_16
.LBB34_15:                              # %if.else.16
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_memsize_entry_new(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB34_23
.LBB34_16:                              # %if.end.17
	jmp	.LBB34_17
.LBB34_17:                              # %do.end.18
	jmp	.LBB34_18
.LBB34_18:                              # %do.body.19
	movabsq	$4398046511104, %rax    # imm = 0x40000000000
	movq	-40(%rbp), %rcx
	cmpq	%rax, 80(%rcx)
	ja	.LBB34_20
# BB#19:                                # %if.then.21
	jmp	.LBB34_21
.LBB34_20:                              # %if.else.22
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_memsize_entry_new(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB34_23
.LBB34_21:                              # %if.end.23
	jmp	.LBB34_22
.LBB34_22:                              # %do.end.24
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdx
	callq	gimp_memsize_entry_new@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gimp_memsize_entry_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	168(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	set_param_spec
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_prop_memsize_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_memsize_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB34_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_prop_memsize_entry_new, .Lfunc_end34-gimp_prop_memsize_entry_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_memsize_callback,@function
gimp_prop_memsize_callback:             # @gimp_prop_memsize_callback
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_15
.LBB35_2:                               # %if.end
	jmp	.LBB35_3
.LBB35_3:                               # %do.body
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB35_5
# BB#4:                                 # %if.then.4
	movl	$0, -44(%rbp)
	jmp	.LBB35_10
.LBB35_5:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB35_8
# BB#7:                                 # %if.then.7
	movl	$1, -44(%rbp)
	jmp	.LBB35_9
.LBB35_8:                               # %if.else.8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB35_9:                               # %if.end.10
	jmp	.LBB35_10
.LBB35_10:                              # %if.end.11
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB35_12
# BB#11:                                # %if.then.13
	jmp	.LBB35_13
.LBB35_12:                              # %if.else.14
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_memsize_callback(%rip), %rsi
	leaq	.L.str.46(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB35_15
.LBB35_13:                              # %if.end.15
	jmp	.LBB35_14
.LBB35_14:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_memsize_entry_get_value@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB35_15:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_prop_memsize_callback, .Lfunc_end35-gimp_prop_memsize_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_memsize_notify,@function
gimp_prop_memsize_notify:               # @gimp_prop_memsize_notify
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_memsize_notify(%rip), %rsi
	leaq	.L.str.46(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB36_14
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	cmpq	-32(%rbp), %rcx
	je	.LBB36_14
# BB#13:                                # %if.then.13
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_memsize_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_memsize_entry_set_value@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_memsize_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB36_14:                              # %if.end.16
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_prop_memsize_notify, .Lfunc_end36-gimp_prop_memsize_notify
	.cfi_endproc

	.globl	gimp_prop_label_new
	.align	16, 0x90
	.type	gimp_prop_label_new,@function
gimp_prop_label_new:                    # @gimp_prop_label_new
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
	je	.LBB37_3
# BB#2:                                 # %if.then
	jmp	.LBB37_4
.LBB37_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_label_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB37_15
.LBB37_4:                               # %if.end
	jmp	.LBB37_5
.LBB37_5:                               # %do.end
	jmp	.LBB37_6
.LBB37_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB37_8
# BB#7:                                 # %if.then.2
	jmp	.LBB37_9
.LBB37_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_label_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB37_15
.LBB37_9:                               # %if.end.4
	jmp	.LBB37_10
.LBB37_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_label_new(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	find_param_spec
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB37_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB37_15
.LBB37_12:                              # %if.end.9
	movl	$64, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	g_value_type_transformable@PLT
	cmpl	$0, %eax
	jne	.LBB37_14
# BB#13:                                # %if.then.12
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.15(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB37_15
.LBB37_14:                              # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gtk_label_new@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	gimp_prop_label_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	connect_notify
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_prop_label_notify
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB37_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_prop_label_new, .Lfunc_end37-gimp_prop_label_new
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB38_2
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
.LBB38_2:                               # %entry
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
.Lfunc_end38:
	.size	g_warning, .Lfunc_end38-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_label_notify,@function
gimp_prop_label_notify:                 # @gimp_prop_label_notify
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
	subq	$208, %rsp
	leaq	-48(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$24, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	memset@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init@PLT
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_object_get_property@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$64, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB39_6
.LBB39_2:                               # %if.else
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB39_4
# BB#3:                                 # %if.then.1
	movl	$1, -68(%rbp)
	jmp	.LBB39_5
.LBB39_4:                               # %if.else.2
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -68(%rbp)
.LBB39_5:                               # %if.end
	jmp	.LBB39_6
.LBB39_6:                               # %if.end.4
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB39_11
# BB#7:                                 # %if.then.6
	leaq	-48(%rbp), %rdi
	callq	g_value_get_string@PLT
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpq	$0, -80(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	je	.LBB39_9
# BB#8:                                 # %cond.true
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB39_10
.LBB39_9:                               # %cond.false
	leaq	.L.str.17(%rip), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB39_10
.LBB39_10:                              # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text@PLT
	jmp	.LBB39_15
.LBB39_11:                              # %if.else.12
	leaq	-104(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$24, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	memset@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	callq	g_value_init@PLT
	leaq	-48(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_value_transform@PLT
	leaq	-104(%rbp), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	g_value_get_string@PLT
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpq	$0, -112(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	je	.LBB39_13
# BB#12:                                # %cond.true.22
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB39_14
.LBB39_13:                              # %cond.false.23
	leaq	.L.str.17(%rip), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB39_14
.LBB39_14:                              # %cond.end.24
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text@PLT
	leaq	-104(%rbp), %rdi
	callq	g_value_unset@PLT
.LBB39_15:                              # %if.end.26
	leaq	-48(%rbp), %rdi
	callq	g_value_unset@PLT
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_prop_label_notify, .Lfunc_end39-gimp_prop_label_notify
	.cfi_endproc

	.globl	gimp_prop_entry_new
	.align	16, 0x90
	.type	gimp_prop_entry_new,@function
gimp_prop_entry_new:                    # @gimp_prop_entry_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB40_3
# BB#2:                                 # %if.then
	jmp	.LBB40_4
.LBB40_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_entry_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB40_18
.LBB40_4:                               # %if.end
	jmp	.LBB40_5
.LBB40_5:                               # %do.end
	jmp	.LBB40_6
.LBB40_6:                               # %do.body.2
	cmpq	$0, -24(%rbp)
	je	.LBB40_8
# BB#7:                                 # %if.then.3
	jmp	.LBB40_9
.LBB40_8:                               # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_entry_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB40_18
.LBB40_9:                               # %if.end.5
	jmp	.LBB40_10
.LBB40_10:                              # %do.end.6
	leaq	.L__func__.gimp_prop_entry_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	112(%rax), %rdx
	callq	check_param_spec
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB40_12
# BB#11:                                # %if.then.9
	movq	$0, -8(%rbp)
	jmp	.LBB40_18
.LBB40_12:                              # %if.end.10
	leaq	-56(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	callq	gtk_entry_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpq	$0, -56(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB40_14
# BB#13:                                # %cond.true
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB40_15
.LBB40_14:                              # %cond.false
	leaq	.L.str.17(%rip), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB40_15
.LBB40_15:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text@PLT
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	cmpl	$0, -28(%rbp)
	jle	.LBB40_17
# BB#16:                                # %if.then.16
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_max_length@PLT
.LBB40_17:                              # %if.end.19
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movl	16(%rsi), %ecx
	andl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_editable_set_editable@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_prop_entry_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_entry_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB40_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_prop_entry_new, .Lfunc_end40-gimp_prop_entry_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_entry_callback,@function
gimp_prop_entry_callback:               # @gimp_prop_entry_callback
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp128:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB41_2
# BB#1:                                 # %if.then
	jmp	.LBB41_3
.LBB41_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_entry_get_text@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_entry_notify(%rip), %rdi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r9
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	8(%r8), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	leaq	gimp_prop_entry_notify(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r11d, %edx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB41_3:                               # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_prop_entry_callback, .Lfunc_end41-gimp_prop_entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_entry_notify,@function
gimp_prop_entry_notify:                 # @gimp_prop_entry_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	gimp_prop_entry_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpq	$0, -32(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB42_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB42_3
.LBB42_2:                               # %cond.false
	leaq	.L.str.17(%rip), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB42_3
.LBB42_3:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_entry_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-32(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_free@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_prop_entry_notify, .Lfunc_end42-gimp_prop_entry_notify
	.cfi_endproc

	.globl	gimp_prop_text_buffer_new
	.align	16, 0x90
	.type	gimp_prop_text_buffer_new,@function
gimp_prop_text_buffer_new:              # @gimp_prop_text_buffer_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB43_3
# BB#2:                                 # %if.then
	jmp	.LBB43_4
.LBB43_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_text_buffer_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB43_18
.LBB43_4:                               # %if.end
	jmp	.LBB43_5
.LBB43_5:                               # %do.end
	jmp	.LBB43_6
.LBB43_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB43_8
# BB#7:                                 # %if.then.2
	jmp	.LBB43_9
.LBB43_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_text_buffer_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB43_18
.LBB43_9:                               # %if.end.4
	jmp	.LBB43_10
.LBB43_10:                              # %do.end.5
	leaq	.L__func__.gimp_prop_text_buffer_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	112(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB43_12
# BB#11:                                # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB43_18
.LBB43_12:                              # %if.end.9
	leaq	-56(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	callq	gtk_text_buffer_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	je	.LBB43_14
# BB#13:                                # %cond.true
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB43_15
.LBB43_14:                              # %cond.false
	leaq	.L.str.17(%rip), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB43_15
.LBB43_15:                              # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_text_buffer_set_text@PLT
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	cmpl	$0, -28(%rbp)
	jle	.LBB43_17
# BB#16:                                # %if.then.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.18(%rip), %rsi
	movslq	-28(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB43_17:                              # %if.end.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_prop_text_buffer_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_text_buffer_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB43_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_prop_text_buffer_new, .Lfunc_end43-gimp_prop_text_buffer_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_text_buffer_callback,@function
gimp_prop_text_buffer_callback:         # @gimp_prop_text_buffer_callback
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
	pushq	%r14
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp138:
	.cfi_offset %rbx, -32
.Ltmp139:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB44_2
# BB#1:                                 # %if.then
	jmp	.LBB44_7
.LBB44_2:                               # %if.end
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_bounds@PLT
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_text@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -208(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.47(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %ecx
	movl	%ecx, -212(%rbp)
	cmpl	$0, -212(%rbp)
	jle	.LBB44_5
# BB#3:                                 # %land.lhs.true
	movq	$-1, %rsi
	movq	-208(%rbp), %rdi
	callq	g_utf8_strlen@PLT
	movslq	-212(%rbp), %rsi
	cmpq	%rsi, %rax
	jle	.LBB44_5
# BB#4:                                 # %if.then.10
	leaq	.L.str.48(%rip), %rdi
	leaq	.L.str.49(%rip), %rsi
	leaq	.L.str.50(%rip), %rdx
	movslq	-212(%rbp), %rcx
	callq	dngettext@PLT
	movl	-212(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	leaq	-120(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	-212(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, %edx
	callq	gtk_text_buffer_get_iter_at_offset@PLT
	leaq	-200(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_end_iter@PLT
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_delete@PLT
	jmp	.LBB44_6
.LBB44_5:                               # %if.else
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_text_buffer_notify(%rip), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-224(%rbp), %r10        # 8-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	8(%r8), %rsi
	movq	-208(%rbp), %rdx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %r8d
	leaq	gimp_prop_text_buffer_notify(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ebx, %edx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	movq	-256(%rbp), %r9         # 8-byte Reload
	movq	-248(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB44_6:                               # %if.end.15
	movq	-208(%rbp), %rdi
	callq	g_free@PLT
.LBB44_7:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_prop_text_buffer_callback, .Lfunc_end44-gimp_prop_text_buffer_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_text_buffer_notify,@function
gimp_prop_text_buffer_notify:           # @gimp_prop_text_buffer_notify
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
	subq	$112, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	gimp_prop_text_buffer_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	je	.LBB45_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB45_3
.LBB45_2:                               # %cond.false
	leaq	.L.str.17(%rip), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB45_3
.LBB45_3:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_text_buffer_set_text@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_text_buffer_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-32(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_free@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_prop_text_buffer_notify, .Lfunc_end45-gimp_prop_text_buffer_notify
	.cfi_endproc

	.globl	gimp_prop_string_combo_box_new
	.align	16, 0x90
	.type	gimp_prop_string_combo_box_new,@function
gimp_prop_string_combo_box_new:         # @gimp_prop_string_combo_box_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB46_3
# BB#2:                                 # %if.then
	jmp	.LBB46_4
.LBB46_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_string_combo_box_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB46_25
.LBB46_4:                               # %if.end
	jmp	.LBB46_5
.LBB46_5:                               # %do.end
	jmp	.LBB46_6
.LBB46_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB46_8
# BB#7:                                 # %if.then.2
	jmp	.LBB46_9
.LBB46_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_string_combo_box_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB46_25
.LBB46_9:                               # %if.end.4
	jmp	.LBB46_10
.LBB46_10:                              # %do.end.5
	jmp	.LBB46_11
.LBB46_11:                              # %do.body.6
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_tree_model_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB46_13
# BB#12:                                # %if.then.9
	movl	$0, -84(%rbp)
	jmp	.LBB46_18
.LBB46_13:                              # %if.else.10
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_16
# BB#14:                                # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB46_16
# BB#15:                                # %if.then.14
	movl	$1, -84(%rbp)
	jmp	.LBB46_17
.LBB46_16:                              # %if.else.15
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB46_17:                              # %if.end.17
	jmp	.LBB46_18
.LBB46_18:                              # %if.end.18
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB46_20
# BB#19:                                # %if.then.20
	jmp	.LBB46_21
.LBB46_20:                              # %if.else.21
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_string_combo_box_new(%rip), %rsi
	leaq	.L.str.19(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB46_25
.LBB46_21:                              # %if.end.22
	jmp	.LBB46_22
.LBB46_22:                              # %do.end.23
	leaq	.L__func__.gimp_prop_string_combo_box_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	112(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB46_24
# BB#23:                                # %if.then.26
	movq	$0, -8(%rbp)
	jmp	.LBB46_25
.LBB46_24:                              # %if.end.27
	leaq	-64(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_string_combo_box_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_string_combo_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_string_combo_box_set_active@PLT
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_prop_string_combo_box_callback(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	gimp_prop_string_combo_box_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB46_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_prop_string_combo_box_new, .Lfunc_end46-gimp_prop_string_combo_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_string_combo_box_callback,@function
gimp_prop_string_combo_box_callback:    # @gimp_prop_string_combo_box_callback
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB47_2
# BB#1:                                 # %if.then
	jmp	.LBB47_3
.LBB47_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_string_combo_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_string_combo_box_get_active@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB47_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_prop_string_combo_box_callback, .Lfunc_end47-gimp_prop_string_combo_box_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_string_combo_box_notify,@function
gimp_prop_string_combo_box_notify:      # @gimp_prop_string_combo_box_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	gimp_prop_string_combo_box_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_string_combo_box_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_string_combo_box_set_active@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_string_combo_box_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-32(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_free@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_prop_string_combo_box_notify, .Lfunc_end48-gimp_prop_string_combo_box_notify
	.cfi_endproc

	.globl	gimp_prop_file_chooser_button_new
	.align	16, 0x90
	.type	gimp_prop_file_chooser_button_new,@function
gimp_prop_file_chooser_button_new:      # @gimp_prop_file_chooser_button_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB49_3
# BB#2:                                 # %if.then
	jmp	.LBB49_4
.LBB49_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_file_chooser_button_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB49_13
.LBB49_4:                               # %if.end
	jmp	.LBB49_5
.LBB49_5:                               # %do.end
	jmp	.LBB49_6
.LBB49_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB49_8
# BB#7:                                 # %if.then.2
	jmp	.LBB49_9
.LBB49_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_file_chooser_button_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB49_13
.LBB49_9:                               # %if.end.4
	jmp	.LBB49_10
.LBB49_10:                              # %do.end.5
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_param_config_path_get_type@PLT
	leaq	.L__func__.gimp_prop_file_chooser_button_new(%rip), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB49_12
# BB#11:                                # %if.then.9
	movq	$0, -8(%rbp)
	jmp	.LBB49_13
.LBB49_12:                              # %if.end.10
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_file_chooser_button_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_prop_file_chooser_button_setup
	movq	%rax, -8(%rbp)
.LBB49_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_prop_file_chooser_button_new, .Lfunc_end49-gimp_prop_file_chooser_button_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_file_chooser_button_setup,@function
gimp_prop_file_chooser_button_setup:    # @gimp_prop_file_chooser_button_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	cmpq	$0, -32(%rbp)
	je	.LBB50_2
# BB#1:                                 # %cond.true
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_config_path_expand@PLT
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB50_3
.LBB50_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB50_3
.LBB50_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	cmpq	$0, -40(%rbp)
	je	.LBB50_8
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	g_path_get_basename@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB50_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB50_7
# BB#6:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_show_hidden@PLT
.LBB50_7:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_free@PLT
.LBB50_8:                               # %if.end.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.51(%rip), %rsi
	leaq	gimp_prop_file_chooser_button_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_file_chooser_button_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_prop_file_chooser_button_setup, .Lfunc_end50-gimp_prop_file_chooser_button_setup
	.cfi_endproc

	.globl	gimp_prop_file_chooser_button_new_with_dialog
	.align	16, 0x90
	.type	gimp_prop_file_chooser_button_new_with_dialog,@function
gimp_prop_file_chooser_button_new_with_dialog: # @gimp_prop_file_chooser_button_new_with_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB51_3
# BB#2:                                 # %if.then
	jmp	.LBB51_4
.LBB51_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_file_chooser_button_new_with_dialog(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB51_25
.LBB51_4:                               # %if.end
	jmp	.LBB51_5
.LBB51_5:                               # %do.end
	jmp	.LBB51_6
.LBB51_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB51_8
# BB#7:                                 # %if.then.2
	jmp	.LBB51_9
.LBB51_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_file_chooser_button_new_with_dialog(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB51_25
.LBB51_9:                               # %if.end.4
	jmp	.LBB51_10
.LBB51_10:                              # %do.end.5
	jmp	.LBB51_11
.LBB51_11:                              # %do.body.6
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_file_chooser_dialog_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB51_13
# BB#12:                                # %if.then.9
	movl	$0, -68(%rbp)
	jmp	.LBB51_18
.LBB51_13:                              # %if.else.10
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB51_16
# BB#14:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB51_16
# BB#15:                                # %if.then.14
	movl	$1, -68(%rbp)
	jmp	.LBB51_17
.LBB51_16:                              # %if.else.15
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB51_17:                              # %if.end.17
	jmp	.LBB51_18
.LBB51_18:                              # %if.end.18
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB51_20
# BB#19:                                # %if.then.20
	jmp	.LBB51_21
.LBB51_20:                              # %if.else.21
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_file_chooser_button_new_with_dialog(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB51_25
.LBB51_21:                              # %if.end.22
	jmp	.LBB51_22
.LBB51_22:                              # %do.end.23
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_param_config_path_get_type@PLT
	leaq	.L__func__.gimp_prop_file_chooser_button_new_with_dialog(%rip), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB51_24
# BB#23:                                # %if.then.27
	movq	$0, -8(%rbp)
	jmp	.LBB51_25
.LBB51_24:                              # %if.end.28
	movq	-32(%rbp), %rdi
	callq	gtk_file_chooser_button_new_with_dialog@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_prop_file_chooser_button_setup
	movq	%rax, -8(%rbp)
.LBB51_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_prop_file_chooser_button_new_with_dialog, .Lfunc_end51-gimp_prop_file_chooser_button_new_with_dialog
	.cfi_endproc

	.globl	gimp_prop_path_editor_new
	.align	16, 0x90
	.type	gimp_prop_path_editor_new,@function
gimp_prop_path_editor_new:              # @gimp_prop_path_editor_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB52_3
# BB#2:                                 # %if.then
	jmp	.LBB52_4
.LBB52_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_path_editor_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB52_27
.LBB52_4:                               # %if.end
	jmp	.LBB52_5
.LBB52_5:                               # %do.end
	jmp	.LBB52_6
.LBB52_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB52_8
# BB#7:                                 # %if.then.2
	jmp	.LBB52_9
.LBB52_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_path_editor_new(%rip), %rsi
	leaq	.L.str.21(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB52_27
.LBB52_9:                               # %if.end.4
	jmp	.LBB52_10
.LBB52_10:                              # %do.end.5
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_param_config_path_get_type@PLT
	leaq	.L__func__.gimp_prop_path_editor_new(%rip), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB52_12
# BB#11:                                # %if.then.9
	movq	$0, -8(%rbp)
	jmp	.LBB52_27
.LBB52_12:                              # %if.end.10
	cmpq	$0, -32(%rbp)
	je	.LBB52_16
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_config_path_get_type@PLT
	leaq	.L__func__.gimp_prop_path_editor_new(%rip), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB52_15
# BB#14:                                # %if.then.16
	movq	$0, -8(%rbp)
	jmp	.LBB52_27
.LBB52_15:                              # %if.end.17
	jmp	.LBB52_16
.LBB52_16:                              # %if.end.18
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	cmpq	$0, -72(%rbp)
	je	.LBB52_18
# BB#17:                                # %cond.true
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rdi
	callq	gimp_config_path_expand@PLT
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB52_19
.LBB52_18:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB52_19
.LBB52_19:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_path_editor_new@PLT
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
	cmpq	$0, -32(%rbp)
	je	.LBB52_24
# BB#20:                                # %if.then.23
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	cmpq	$0, -72(%rbp)
	je	.LBB52_22
# BB#21:                                # %cond.true.25
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rdi
	callq	gimp_config_path_expand@PLT
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB52_23
.LBB52_22:                              # %cond.false.27
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB52_23
.LBB52_23:                              # %cond.end.28
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_path_editor_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_path_editor_set_writable_path@PLT
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
.LBB52_24:                              # %if.end.32
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	leaq	.L.str.23(%rip), %rsi
	leaq	gimp_prop_path_editor_path_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_path_editor_path_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	connect_notify
	cmpq	$0, -32(%rbp)
	je	.LBB52_26
# BB#25:                                # %if.then.36
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.24(%rip), %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	leaq	.L.str.25(%rip), %rsi
	leaq	gimp_prop_path_editor_writable_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_path_editor_writable_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	connect_notify
.LBB52_26:                              # %if.end.39
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB52_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_prop_path_editor_new, .Lfunc_end52-gimp_prop_path_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_path_editor_path_callback,@function
gimp_prop_path_editor_path_callback:    # @gimp_prop_path_editor_path_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp167:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.24(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB53_2
# BB#1:                                 # %if.then
	jmp	.LBB53_4
.LBB53_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_path_editor_get_path@PLT
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_filename_to_utf8@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movl	$24, %esi
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	leaq	gimp_prop_path_editor_path_notify(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	8(%r8), %rsi
	movq	-56(%rbp), %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	leaq	gimp_prop_path_editor_path_notify(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r10d, %edx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-56(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_free@PLT
	cmpq	$0, -40(%rbp)
	je	.LBB53_4
# BB#3:                                 # %if.then.9
	movq	-16(%rbp), %rdi
	callq	gimp_path_editor_get_writable_path@PLT
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	g_filename_to_utf8@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movl	$24, %esi
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	leaq	gimp_prop_path_editor_writable_notify(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movq	%rax, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	8(%r8), %rsi
	movq	-56(%rbp), %rdx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	leaq	gimp_prop_path_editor_writable_notify(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r10d, %edx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-56(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_free@PLT
.LBB53_4:                               # %if.end.15
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_prop_path_editor_path_callback, .Lfunc_end53-gimp_prop_path_editor_path_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_path_editor_path_notify,@function
gimp_prop_path_editor_path_notify:      # @gimp_prop_path_editor_path_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	cmpq	$0, -32(%rbp)
	je	.LBB54_2
# BB#1:                                 # %cond.true
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_config_path_expand@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB54_3
.LBB54_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB54_3
.LBB54_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_path_editor_path_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_path_editor_set_path@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_path_editor_path_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_free@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_prop_path_editor_path_notify, .Lfunc_end54-gimp_prop_path_editor_path_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_path_editor_writable_callback,@function
gimp_prop_path_editor_writable_callback: # @gimp_prop_path_editor_writable_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp174:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.24(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB55_2
# BB#1:                                 # %if.then
	jmp	.LBB55_3
.LBB55_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_path_editor_get_writable_path@PLT
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	g_filename_to_utf8@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movl	$24, %esi
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	leaq	gimp_prop_path_editor_writable_notify(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movq	%rax, %r9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	8(%r8), %rsi
	movq	-48(%rbp), %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	leaq	gimp_prop_path_editor_writable_notify(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r10d, %edx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-48(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_free@PLT
.LBB55_3:                               # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_prop_path_editor_writable_callback, .Lfunc_end55-gimp_prop_path_editor_writable_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_path_editor_writable_notify,@function
gimp_prop_path_editor_writable_notify:  # @gimp_prop_path_editor_writable_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	cmpq	$0, -32(%rbp)
	je	.LBB56_2
# BB#1:                                 # %cond.true
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_config_path_expand@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB56_3
.LBB56_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB56_3
.LBB56_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_path_editor_writable_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_path_editor_set_writable_path@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_path_editor_writable_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_free@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_prop_path_editor_writable_notify, .Lfunc_end56-gimp_prop_path_editor_writable_notify
	.cfi_endproc

	.globl	gimp_prop_size_entry_new
	.align	16, 0x90
	.type	gimp_prop_size_entry_new,@function
gimp_prop_size_entry_new:               # @gimp_prop_size_entry_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	leaq	.L__func__.gimp_prop_size_entry_new(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, %rdx
	callq	find_param_spec
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB57_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB57_19
.LBB57_2:                               # %if.end
	leaq	-104(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %r8
	leaq	.L__func__.gimp_prop_size_entry_new(%rip), %r9
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	get_numeric_values
	cmpl	$0, %eax
	jne	.LBB57_4
# BB#3:                                 # %if.then.4
	movq	$0, -8(%rbp)
	jmp	.LBB57_19
.LBB57_4:                               # %if.end.5
	cmpq	$0, -40(%rbp)
	je	.LBB57_8
# BB#5:                                 # %if.then.7
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-152(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset@PLT
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_param_unit_get_type@PLT
	leaq	.L__func__.gimp_prop_size_entry_new(%rip), %rcx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB57_7
# BB#6:                                 # %if.then.12
	movq	$0, -8(%rbp)
	jmp	.LBB57_19
.LBB57_7:                               # %if.end.13
	leaq	-152(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_value_set_int@PLT
	leaq	-152(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	g_param_value_validate@PLT
	leaq	-152(%rbp), %rdi
	movl	$65536, %esi            # imm = 0x10000
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -92(%rbp)
	callq	g_value_set_int@PLT
	leaq	-152(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	g_param_value_validate@PLT
	leaq	-152(%rbp), %rdi
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -96(%rbp)
	callq	g_value_unset@PLT
	leaq	-124(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	jmp	.LBB57_9
.LBB57_8:                               # %if.else
	movq	$0, -88(%rbp)
	movl	$1, -124(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
.LBB57_9:                               # %if.end.19
	movl	-124(%rbp), %esi
	movq	-48(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	%r8d, -208(%rbp)        # 4-byte Spill
	callq	gimp_prop_size_entry_num_chars
	movl	$1, %edi
	xorl	%r9d, %r9d
	movl	-52(%rbp), %ecx
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movl	-204(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-208(%rbp), %r8d        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_size_entry_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_help_widget@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	callq	set_param_spec
	cmpq	$0, -88(%rbp)
	je	.LBB57_11
# BB#10:                                # %if.then.28
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	168(%rax), %rsi
	movq	-88(%rbp), %rdx
	callq	set_param_spec
.LBB57_11:                              # %if.end.31
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-124(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_unit@PLT
	cmpl	$1, -52(%rbp)
	jne	.LBB57_13
# BB#12:                                # %if.then.36
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution@PLT
.LBB57_13:                              # %if.end.39
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_value_boundaries@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.26(%rip), %rsi
	xorl	%ecx, %ecx
	movl	$1, %edx
	cmpl	$0, -28(%rbp)
	cmovnel	%edx, %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	cmpl	$0, -28(%rbp)
	je	.LBB57_15
# BB#14:                                # %if.then.46
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	jmp	.LBB57_16
.LBB57_15:                              # %if.else.49
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_value@PLT
.LBB57_16:                              # %if.end.52
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.27(%rip), %rsi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	leaq	.L.str.28(%rip), %rsi
	leaq	gimp_prop_size_entry_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_prop_size_entry_callback(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_size_entry_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	connect_notify
	cmpq	$0, -40(%rbp)
	je	.LBB57_18
# BB#17:                                # %if.then.57
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.29(%rip), %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	leaq	.L.str.30(%rip), %rsi
	leaq	gimp_prop_size_entry_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_size_entry_notify_unit(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	connect_notify
.LBB57_18:                              # %if.end.60
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB57_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_prop_size_entry_new, .Lfunc_end57-gimp_prop_size_entry_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI58_0:
	.quad	4621819117588971520     # double 10
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI58_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_prop_size_entry_num_chars,@function
gimp_prop_size_entry_num_chars:         # @gimp_prop_size_entry_num_chars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI58_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	callq	log@PLT
	movsd	.LCPI58_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log@PLT
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -20(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI58_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	callq	log@PLT
	movsd	.LCPI58_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log@PLT
	xorps	%xmm1, %xmm1
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -24(%rbp)
	ucomisd	-8(%rbp), %xmm1
	jbe	.LBB58_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB58_2:                               # %if.end
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB58_4
# BB#3:                                 # %if.then.11
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB58_4:                               # %if.end.13
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB58_6
# BB#5:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB58_7
.LBB58_6:                               # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB58_7:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_prop_size_entry_num_chars, .Lfunc_end58-gimp_prop_size_entry_num_chars
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI59_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_prop_size_entry_callback,@function
gimp_prop_size_entry_callback:          # @gimp_prop_size_entry_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.27(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB59_2
# BB#1:                                 # %if.then
	jmp	.LBB59_34
.LBB59_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.29(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.26(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB59_4
# BB#3:                                 # %if.then.8
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_refval@PLT
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB59_5
.LBB59_4:                               # %if.else
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_value@PLT
	movsd	%xmm0, -40(%rbp)
.LBB59_5:                               # %if.end.11
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_unit@PLT
	movl	%eax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB59_9
# BB#6:                                 # %if.then.14
	leaq	-52(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movl	-48(%rbp), %r8d
	cmpl	-52(%rbp), %r8d
	jne	.LBB59_8
# BB#7:                                 # %if.then.16
	movq	$0, -32(%rbp)
.LBB59_8:                               # %if.end.17
	jmp	.LBB59_9
.LBB59_9:                               # %if.end.18
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB59_11
# BB#10:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB59_16
.LBB59_11:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB59_14
# BB#12:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB59_14
# BB#13:                                # %if.then.26
	movl	$1, -76(%rbp)
	jmp	.LBB59_15
.LBB59_14:                              # %if.else.27
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB59_15:                              # %if.end.29
	jmp	.LBB59_16
.LBB59_16:                              # %if.end.30
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB59_21
# BB#17:                                # %if.then.32
	movsd	.LCPI59_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	addsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	cmpq	$0, -32(%rbp)
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%edx, -132(%rbp)        # 4-byte Spill
	je	.LBB59_19
# BB#18:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB59_20
.LBB59_19:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB59_20
.LBB59_20:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movl	-48(%rbp), %r8d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	-132(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_object_set@PLT
	jmp	.LBB59_34
.LBB59_21:                              # %if.else.37
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB59_23
# BB#22:                                # %if.then.46
	movl	$0, -100(%rbp)
	jmp	.LBB59_28
.LBB59_23:                              # %if.else.47
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB59_26
# BB#24:                                # %land.lhs.true.50
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB59_26
# BB#25:                                # %if.then.55
	movl	$1, -100(%rbp)
	jmp	.LBB59_27
.LBB59_26:                              # %if.else.56
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB59_27:                              # %if.end.58
	jmp	.LBB59_28
.LBB59_28:                              # %if.end.59
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB59_33
# BB#29:                                # %if.then.62
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpq	$0, -32(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	je	.LBB59_31
# BB#30:                                # %cond.true.65
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB59_32
.LBB59_31:                              # %cond.false.67
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB59_32
.LBB59_32:                              # %cond.end.68
	movq	-176(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	-48(%rbp), %ecx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rdx
	movb	$1, %al
	callq	g_object_set@PLT
.LBB59_33:                              # %if.end.70
	jmp	.LBB59_34
.LBB59_34:                              # %if.end.71
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_prop_size_entry_callback, .Lfunc_end59-gimp_prop_size_entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_size_entry_notify,@function
gimp_prop_size_entry_notify:            # @gimp_prop_size_entry_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB60_2
# BB#1:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB60_7
.LBB60_2:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB60_5
# BB#3:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB60_5
# BB#4:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB60_6
.LBB60_5:                               # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB60_6:                               # %if.end
	jmp	.LBB60_7
.LBB60_7:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB60_9
# BB#8:                                 # %if.then.8
	leaq	-76(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	cvtsi2sdl	-76(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB60_10
.LBB60_9:                               # %if.else.10
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
.LBB60_10:                              # %if.end.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.26(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB60_12
# BB#11:                                # %if.then.17
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_size_entry_get_refval@PLT
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB60_13
.LBB60_12:                              # %if.else.19
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_size_entry_get_value@PLT
	movsd	%xmm0, -40(%rbp)
.LBB60_13:                              # %if.end.21
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jne	.LBB60_14
	jp	.LBB60_14
	jmp	.LBB60_18
.LBB60_14:                              # %if.then.24
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_size_entry_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	cmpl	$0, -44(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB60_16
# BB#15:                                # %if.then.27
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval@PLT
	jmp	.LBB60_17
.LBB60_16:                              # %if.else.28
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_value@PLT
.LBB60_17:                              # %if.end.29
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_size_entry_callback(%rip), %rdx
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
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB60_18:                              # %if.end.31
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_prop_size_entry_notify, .Lfunc_end60-gimp_prop_size_entry_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_size_entry_notify_unit,@function
gimp_prop_size_entry_notify_unit:       # @gimp_prop_size_entry_notify_unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	-28(%rbp), %r8d
	movq	-24(%rbp), %rdi
	movl	%r8d, -32(%rbp)         # 4-byte Spill
	callq	gimp_size_entry_get_unit@PLT
	movl	-32(%rbp), %r8d         # 4-byte Reload
	cmpl	%eax, %r8d
	je	.LBB61_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_size_entry_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_size_entry_set_unit@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_size_entry_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB61_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_prop_size_entry_notify_unit, .Lfunc_end61-gimp_prop_size_entry_notify_unit
	.cfi_endproc

	.globl	gimp_prop_coordinates_new
	.align	16, 0x90
	.type	gimp_prop_coordinates_new,@function
gimp_prop_coordinates_new:              # @gimp_prop_coordinates_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp196:
	.cfi_offset %rbx, -32
.Ltmp197:
	.cfi_offset %r14, -24
	movl	16(%rbp), %eax
	movl	$2, %r10d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	$10, %r14d
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
	movl	%eax, -92(%rbp)
	movq	$0, -112(%rbp)
	movq	-64(%rbp), %rdx
	movl	-68(%rbp), %eax
	movl	%r10d, %edi
	movl	%r11d, %esi
	movl	%ebx, %ecx
	movl	%ebx, %r8d
	movl	%r11d, %r9d
	movl	$10, (%rsp)
	movl	%eax, 8(%rsp)
	movl	%r14d, -116(%rbp)       # 4-byte Spill
	callq	gimp_size_entry_new@PLT
	movq	%rax, -104(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB62_2
# BB#1:                                 # %if.then
	movl	$2, %edi
	callq	gimp_chain_button_new@PLT
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movl	$3, %ecx
	movl	$4, %r9d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults@PLT
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB62_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-104(%rbp), %r8
	movq	-112(%rbp), %r9
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_prop_coordinates_connect@PLT
	cmpl	$0, %eax
	jne	.LBB62_4
# BB#3:                                 # %if.then.7
	movq	-104(%rbp), %rdi
	callq	gtk_widget_destroy@PLT
	movq	$0, -24(%rbp)
	jmp	.LBB62_5
.LBB62_4:                               # %if.end.8
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB62_5:                               # %return
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_prop_coordinates_new, .Lfunc_end62-gimp_prop_coordinates_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI63_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI63_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_prop_coordinates_connect
	.align	16, 0x90
	.type	gimp_prop_coordinates_connect,@function
gimp_prop_coordinates_connect:          # @gimp_prop_coordinates_connect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB63_3
# BB#2:                                 # %if.then
	movl	$0, -204(%rbp)
	jmp	.LBB63_8
.LBB63_3:                               # %if.else
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB63_6
# BB#4:                                 # %land.lhs.true
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB63_6
# BB#5:                                 # %if.then.4
	movl	$1, -204(%rbp)
	jmp	.LBB63_7
.LBB63_6:                               # %if.else.5
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -204(%rbp)
.LBB63_7:                               # %if.end
	jmp	.LBB63_8
.LBB63_8:                               # %if.end.7
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB63_10
# BB#9:                                 # %if.then.9
	jmp	.LBB63_11
.LBB63_10:                              # %if.else.10
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_coordinates_connect(%rip), %rsi
	leaq	.L.str.31(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB63_61
.LBB63_11:                              # %if.end.11
	jmp	.LBB63_12
.LBB63_12:                              # %do.end
	jmp	.LBB63_13
.LBB63_13:                              # %do.body.12
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpl	$2, 160(%rax)
	jne	.LBB63_15
# BB#14:                                # %if.then.16
	jmp	.LBB63_16
.LBB63_15:                              # %if.else.17
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_coordinates_connect(%rip), %rsi
	leaq	.L.str.32(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB63_61
.LBB63_16:                              # %if.end.18
	jmp	.LBB63_17
.LBB63_17:                              # %do.end.19
	jmp	.LBB63_18
.LBB63_18:                              # %do.body.20
	cmpq	$0, -56(%rbp)
	je	.LBB63_27
# BB#19:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_chain_button_get_type@PLT
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB63_21
# BB#20:                                # %if.then.30
	movl	$0, -228(%rbp)
	jmp	.LBB63_26
.LBB63_21:                              # %if.else.31
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB63_24
# BB#22:                                # %land.lhs.true.34
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB63_24
# BB#23:                                # %if.then.38
	movl	$1, -228(%rbp)
	jmp	.LBB63_25
.LBB63_24:                              # %if.else.39
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -228(%rbp)
.LBB63_25:                              # %if.end.41
	jmp	.LBB63_26
.LBB63_26:                              # %if.end.42
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB63_28
.LBB63_27:                              # %if.then.45
	jmp	.LBB63_29
.LBB63_28:                              # %if.else.46
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_prop_coordinates_connect(%rip), %rsi
	leaq	.L.str.33(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB63_61
.LBB63_29:                              # %if.end.47
	jmp	.LBB63_30
.LBB63_30:                              # %do.end.48
	leaq	.L__func__.gimp_prop_coordinates_connect(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	find_param_spec
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB63_32
# BB#31:                                # %if.then.51
	movl	$0, -4(%rbp)
	jmp	.LBB63_61
.LBB63_32:                              # %if.end.52
	leaq	.L__func__.gimp_prop_coordinates_connect(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	find_param_spec
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB63_34
# BB#33:                                # %if.then.55
	movl	$0, -4(%rbp)
	jmp	.LBB63_61
.LBB63_34:                              # %if.end.56
	leaq	-104(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %r8
	leaq	.L__func__.gimp_prop_coordinates_connect(%rip), %r9
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	get_numeric_values
	cmpl	$0, %eax
	je	.LBB63_36
# BB#35:                                # %lor.lhs.false.59
	leaq	-128(%rbp), %rdx
	leaq	-136(%rbp), %rcx
	leaq	-144(%rbp), %r8
	leaq	.L__func__.gimp_prop_coordinates_connect(%rip), %r9
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	get_numeric_values
	cmpl	$0, %eax
	jne	.LBB63_37
.LBB63_36:                              # %if.then.62
	movl	$0, -4(%rbp)
	jmp	.LBB63_61
.LBB63_37:                              # %if.end.63
	cmpq	$0, -40(%rbp)
	je	.LBB63_41
# BB#38:                                # %if.then.65
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_param_unit_get_type@PLT
	leaq	.L__func__.gimp_prop_coordinates_connect(%rip), %rcx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB63_40
# BB#39:                                # %if.then.69
	movl	$0, -4(%rbp)
	jmp	.LBB63_61
.LBB63_40:                              # %if.end.70
	leaq	-148(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	jmp	.LBB63_42
.LBB63_41:                              # %if.else.71
	movq	$0, -96(%rbp)
	movl	$1, -148(%rbp)
.LBB63_42:                              # %if.end.72
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_help_widget@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	callq	set_param_spec
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_help_widget@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	-88(%rbp), %rdx
	movq	%rax, %rsi
	callq	set_param_spec
	cmpq	$0, -96(%rbp)
	je	.LBB63_44
# BB#43:                                # %if.then.80
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	168(%rax), %rsi
	movq	-96(%rbp), %rdx
	callq	set_param_spec
.LBB63_44:                              # %if.end.83
	movq	-48(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-148(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_unit@PLT
	movq	-48(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	192(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	%edx, -312(%rbp)        # 4-byte Spill
	je	.LBB63_45
	jmp	.LBB63_62
.LBB63_62:                              # %if.end.83
	movl	-308(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	je	.LBB63_49
	jmp	.LBB63_53
.LBB63_45:                              # %sw.bb
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	xorl	%edx, %edx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution@PLT
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-128(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB63_47
# BB#46:                                # %cond.true
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	jmp	.LBB63_48
.LBB63_47:                              # %cond.false
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
.LBB63_48:                              # %cond.end
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI63_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -180(%rbp)
	jmp	.LBB63_54
.LBB63_49:                              # %sw.bb.97
	xorps	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-128(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB63_51
# BB#50:                                # %cond.true.101
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	jmp	.LBB63_52
.LBB63_51:                              # %cond.false.104
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-128(%rbp), %xmm0
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
.LBB63_52:                              # %cond.end.106
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI63_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -180(%rbp)
	jmp	.LBB63_54
.LBB63_53:                              # %sw.default
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-128(%rbp), %xmm0
	sete	%al
	setnp	%cl
	andb	%cl, %al
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -180(%rbp)
.LBB63_54:                              # %sw.epilog
	movq	-48(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.34(%rip), %rsi
	movq	-80(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-392(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.35(%rip), %rsi
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$8, %ecx
	movl	%ecx, %esi
	callq	g_malloc0_n@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -160(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-160(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.36(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-160(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full@PLT
	movl	$1, %r8d
	movl	%r8d, %edi
	movl	$8, %r8d
	movl	%r8d, %esi
	callq	g_malloc0_n@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -168(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-168(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.37(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-168(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full@PLT
	cmpq	$0, -56(%rbp)
	je	.LBB63_58
# BB#55:                                # %if.then.127
	cmpl	$0, -180(%rbp)
	je	.LBB63_57
# BB#56:                                # %if.then.129
	movq	-56(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type@PLT
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active@PLT
.LBB63_57:                              # %if.end.132
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.38(%rip), %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
.LBB63_58:                              # %if.end.134
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_prop_coordinates_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.28(%rip), %rsi
	leaq	gimp_prop_coordinates_callback(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_coordinates_notify_x(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	connect_notify
	leaq	gimp_prop_coordinates_notify_y(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	cmpq	$0, -40(%rbp)
	je	.LBB63_60
# BB#59:                                # %if.then.138
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.29(%rip), %rsi
	movq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	movl	$1, %r8d
	movl	%r8d, %edi
	movl	$4, %r8d
	movl	%r8d, %esi
	callq	g_malloc0_n@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -176(%rbp)
	movl	-148(%rbp), %r8d
	movq	-176(%rbp), %rax
	movl	%r8d, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.39(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-176(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data_full@PLT
	leaq	.L.str.30(%rip), %rsi
	leaq	gimp_prop_coordinates_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_coordinates_notify_unit(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	connect_notify
.LBB63_60:                              # %if.end.143
	movl	$1, -4(%rbp)
.LBB63_61:                              # %return
	movl	-4(%rbp), %eax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_prop_coordinates_connect, .Lfunc_end63-gimp_prop_coordinates_connect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI64_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_prop_coordinates_callback,@function
gimp_prop_coordinates_callback:         # @gimp_prop_coordinates_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.34(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.35(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB64_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jne	.LBB64_3
.LBB64_2:                               # %if.then
	jmp	.LBB64_69
.LBB64_3:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.29(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_refval@PLT
	movl	$1, %esi
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_refval@PLT
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_unit@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.36(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.37(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.39(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB64_7
# BB#4:                                 # %lor.lhs.false.18
	cmpq	$0, -80(%rbp)
	je	.LBB64_7
# BB#5:                                 # %lor.lhs.false.20
	cmpq	$0, -40(%rbp)
	je	.LBB64_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -88(%rbp)
	jne	.LBB64_8
.LBB64_7:                               # %if.then.23
	jmp	.LBB64_69
.LBB64_8:                               # %if.end.24
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jne	.LBB64_9
	jp	.LBB64_9
	jmp	.LBB64_19
.LBB64_9:                               # %if.then.25
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.38(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB64_18
# BB#10:                                # %land.lhs.true.29
	movq	-104(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB64_18
# BB#11:                                # %land.lhs.true.34
	movl	$80, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.52(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	cmpq	$0, %rax
	jne	.LBB64_18
# BB#12:                                # %if.then.38
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jne	.LBB64_13
	jp	.LBB64_13
	jmp	.LBB64_14
.LBB64_13:                              # %if.then.40
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB64_17
.LBB64_14:                              # %if.else
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jne	.LBB64_15
	jp	.LBB64_15
	jmp	.LBB64_16
.LBB64_15:                              # %if.then.42
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB64_16:                              # %if.end.43
	jmp	.LBB64_17
.LBB64_17:                              # %if.end.44
	jmp	.LBB64_18
.LBB64_18:                              # %if.end.45
	jmp	.LBB64_19
.LBB64_19:                              # %if.end.46
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	sete	%cl
	setnp	%dl
	andb	%dl, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%esi, -92(%rbp)
	movq	-72(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jne	.LBB64_24
	jp	.LBB64_24
# BB#20:                                # %land.lhs.true.50
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jne	.LBB64_24
	jp	.LBB64_24
# BB#21:                                # %land.lhs.true.53
	cmpq	$0, -88(%rbp)
	je	.LBB64_23
# BB#22:                                # %lor.lhs.false.56
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jne	.LBB64_24
.LBB64_23:                              # %if.then.59
	jmp	.LBB64_69
.LBB64_24:                              # %if.end.60
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	cmpq	$0, -88(%rbp)
	je	.LBB64_26
# BB#25:                                # %if.then.62
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB64_26:                              # %if.end.63
	cmpq	$0, -40(%rbp)
	je	.LBB64_28
# BB#27:                                # %if.then.65
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	-60(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB64_28:                              # %if.end.66
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB64_30
# BB#29:                                # %if.then.68
	movl	$0, -124(%rbp)
	jmp	.LBB64_35
.LBB64_30:                              # %if.else.69
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_33
# BB#31:                                # %land.lhs.true.71
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB64_33
# BB#32:                                # %if.then.75
	movl	$1, -124(%rbp)
	jmp	.LBB64_34
.LBB64_33:                              # %if.else.76
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -124(%rbp)
.LBB64_34:                              # %if.end.78
	jmp	.LBB64_35
.LBB64_35:                              # %if.end.79
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB64_48
# BB#36:                                # %land.lhs.true.81
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB64_38
# BB#37:                                # %if.then.90
	movl	$0, -148(%rbp)
	jmp	.LBB64_43
.LBB64_38:                              # %if.else.91
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_41
# BB#39:                                # %land.lhs.true.94
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB64_41
# BB#40:                                # %if.then.99
	movl	$1, -148(%rbp)
	jmp	.LBB64_42
.LBB64_41:                              # %if.else.100
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -148(%rbp)
.LBB64_42:                              # %if.end.102
	jmp	.LBB64_43
.LBB64_43:                              # %if.end.103
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB64_48
# BB#44:                                # %if.then.106
	cmpl	$0, -92(%rbp)
	je	.LBB64_46
# BB#45:                                # %if.then.108
	xorl	%eax, %eax
	movl	%eax, %r9d
	movsd	.LCPI64_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rsi
	movaps	%xmm0, %xmm1
	addsd	-56(%rbp), %xmm1
	cvttsd2si	%xmm1, %edx
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	addsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %r8d
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set@PLT
	jmp	.LBB64_47
.LBB64_46:                              # %if.else.114
	xorl	%eax, %eax
	movl	%eax, %r9d
	movsd	.LCPI64_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rsi
	movaps	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	cvttsd2si	%xmm1, %edx
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %r8d
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set@PLT
.LBB64_47:                              # %if.end.121
	jmp	.LBB64_69
.LBB64_48:                              # %if.else.122
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB64_50
# BB#49:                                # %if.then.131
	movl	$0, -172(%rbp)
	jmp	.LBB64_55
.LBB64_50:                              # %if.else.132
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_53
# BB#51:                                # %land.lhs.true.135
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB64_53
# BB#52:                                # %if.then.140
	movl	$1, -172(%rbp)
	jmp	.LBB64_54
.LBB64_53:                              # %if.else.141
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -172(%rbp)
.LBB64_54:                              # %if.end.143
	jmp	.LBB64_55
.LBB64_55:                              # %if.end.144
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB64_68
# BB#56:                                # %land.lhs.true.147
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB64_58
# BB#57:                                # %if.then.156
	movl	$0, -196(%rbp)
	jmp	.LBB64_63
.LBB64_58:                              # %if.else.157
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_61
# BB#59:                                # %land.lhs.true.160
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB64_61
# BB#60:                                # %if.then.165
	movl	$1, -196(%rbp)
	jmp	.LBB64_62
.LBB64_61:                              # %if.else.166
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -196(%rbp)
.LBB64_62:                              # %if.end.168
	jmp	.LBB64_63
.LBB64_63:                              # %if.end.169
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB64_68
# BB#64:                                # %if.then.172
	cmpl	$0, -92(%rbp)
	je	.LBB64_66
# BB#65:                                # %if.then.174
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movb	$2, %al
	callq	g_object_set@PLT
	jmp	.LBB64_67
.LBB64_66:                              # %if.else.177
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movb	$2, %al
	callq	g_object_set@PLT
.LBB64_67:                              # %if.end.180
	jmp	.LBB64_68
.LBB64_68:                              # %if.end.181
	jmp	.LBB64_69
.LBB64_69:                              # %if.end.182
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_prop_coordinates_callback, .Lfunc_end64-gimp_prop_coordinates_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_coordinates_notify_x,@function
gimp_prop_coordinates_notify_x:         # @gimp_prop_coordinates_notify_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB65_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB65_7
.LBB65_2:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB65_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB65_5
# BB#4:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB65_6
.LBB65_5:                               # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB65_6:                               # %if.end
	jmp	.LBB65_7
.LBB65_7:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB65_9
# BB#8:                                 # %if.then.8
	leaq	-60(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	cvtsi2sdl	-60(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB65_10
.LBB65_9:                               # %if.else.10
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
.LBB65_10:                              # %if.end.12
	xorl	%esi, %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_refval@PLT
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB65_11
	jp	.LBB65_11
	jmp	.LBB65_14
.LBB65_11:                              # %if.then.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.36(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	gimp_prop_coordinates_callback(%rip), %rcx
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_size_entry_set_refval@PLT
	cmpq	$0, -72(%rbp)
	je	.LBB65_13
# BB#12:                                # %if.then.22
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB65_13:                              # %if.end.23
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_value@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movb	$1, %al
	callq	g_signal_emit_by_name@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_coordinates_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB65_14:                              # %if.end.26
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_prop_coordinates_notify_x, .Lfunc_end65-gimp_prop_coordinates_notify_x
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_coordinates_notify_y,@function
gimp_prop_coordinates_notify_y:         # @gimp_prop_coordinates_notify_y
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB66_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB66_7
.LBB66_2:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB66_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB66_5
# BB#4:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB66_6
.LBB66_5:                               # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB66_6:                               # %if.end
	jmp	.LBB66_7
.LBB66_7:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB66_9
# BB#8:                                 # %if.then.8
	leaq	-60(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	cvtsi2sdl	-60(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB66_10
.LBB66_9:                               # %if.else.10
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
.LBB66_10:                              # %if.end.12
	movl	$1, %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_refval@PLT
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB66_11
	jp	.LBB66_11
	jmp	.LBB66_14
.LBB66_11:                              # %if.then.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.37(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	gimp_prop_coordinates_callback(%rip), %rcx
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_size_entry_set_refval@PLT
	cmpq	$0, -72(%rbp)
	je	.LBB66_13
# BB#12:                                # %if.then.22
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB66_13:                              # %if.end.23
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_value@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movb	$1, %al
	callq	g_signal_emit_by_name@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_coordinates_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB66_14:                              # %if.end.26
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_prop_coordinates_notify_y, .Lfunc_end66-gimp_prop_coordinates_notify_y
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_coordinates_notify_unit,@function
gimp_prop_coordinates_notify_unit:      # @gimp_prop_coordinates_notify_unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	-28(%rbp), %r8d
	movq	-24(%rbp), %rdi
	movl	%r8d, -32(%rbp)         # 4-byte Spill
	callq	gimp_size_entry_get_unit@PLT
	movl	-32(%rbp), %r8d         # 4-byte Reload
	cmpl	%eax, %r8d
	je	.LBB67_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_coordinates_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_size_entry_set_unit@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_coordinates_callback(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB67_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_prop_coordinates_notify_unit, .Lfunc_end67-gimp_prop_coordinates_notify_unit
	.cfi_endproc

	.globl	gimp_prop_color_area_new
	.align	16, 0x90
	.type	gimp_prop_color_area_new,@function
gimp_prop_color_area_new:               # @gimp_prop_color_area_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_param_rgb_get_type@PLT
	leaq	.L__func__.gimp_prop_color_area_new(%rip), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB68_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB68_3
.LBB68_2:                               # %if.end
	leaq	-64(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$768, %edx              # imm = 0x300
	movq	-64(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_color_area_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gtk_widget_set_size_request@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.40(%rip), %rsi
	leaq	gimp_prop_color_area_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_color_area_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB68_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_prop_color_area_new, .Lfunc_end68-gimp_prop_color_area_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_color_area_callback,@function
gimp_prop_color_area_callback:          # @gimp_prop_color_area_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp219:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB69_2
# BB#1:                                 # %if.then
	jmp	.LBB69_3
.LBB69_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_get_color@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_color_area_notify(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	8(%r8), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	leaq	gimp_prop_color_area_notify(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r10d, %edx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB69_3:                               # %return
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end69:
	.size	gimp_prop_color_area_callback, .Lfunc_end69-gimp_prop_color_area_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_color_area_notify,@function
gimp_prop_color_area_notify:            # @gimp_prop_color_area_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	gimp_prop_color_area_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_color_area_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	gimp_prop_color_area_notify, .Lfunc_end70-gimp_prop_color_area_notify
	.cfi_endproc

	.globl	gimp_prop_unit_combo_box_new
	.align	16, 0x90
	.type	gimp_prop_unit_combo_box_new,@function
gimp_prop_unit_combo_box_new:           # @gimp_prop_unit_combo_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-80(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_param_unit_get_type@PLT
	leaq	.L__func__.gimp_prop_unit_combo_box_new(%rip), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB71_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB71_3
.LBB71_2:                               # %if.end
	leaq	-80(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	leaq	-80(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_value_set_int@PLT
	leaq	-80(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	g_param_value_validate@PLT
	leaq	-80(%rbp), %rdi
	movl	$65536, %esi            # imm = 0x10000
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -84(%rbp)
	callq	g_value_set_int@PLT
	leaq	-80(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	g_param_value_validate@PLT
	leaq	-80(%rbp), %rdi
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -88(%rbp)
	callq	g_value_unset@PLT
	leaq	-52(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	callq	gimp_unit_combo_box_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_unit_store_set_has_pixels@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_unit_store_set_has_percent@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_unit_combo_box_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_unit_combo_box_set_active@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_prop_unit_combo_box_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_unit_combo_box_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB71_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	gimp_prop_unit_combo_box_new, .Lfunc_end71-gimp_prop_unit_combo_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_unit_combo_box_callback,@function
gimp_prop_unit_combo_box_callback:      # @gimp_prop_unit_combo_box_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp229:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB72_2
# BB#1:                                 # %if.then
	jmp	.LBB72_3
.LBB72_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_unit_combo_box_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_unit_combo_box_get_active@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_unit_combo_box_notify(%rip), %rdi
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	8(%r8), %rsi
	movl	-36(%rbp), %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	leaq	gimp_prop_unit_combo_box_notify(%rip), %rcx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	-64(%rbp), %r11d        # 4-byte Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB72_3:                               # %return
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end72:
	.size	gimp_prop_unit_combo_box_callback, .Lfunc_end72-gimp_prop_unit_combo_box_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_unit_combo_box_notify,@function
gimp_prop_unit_combo_box_notify:        # @gimp_prop_unit_combo_box_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	gimp_prop_unit_combo_box_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_unit_combo_box_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_unit_combo_box_set_active@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_unit_combo_box_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gimp_prop_unit_combo_box_notify, .Lfunc_end73-gimp_prop_unit_combo_box_notify
	.cfi_endproc

	.globl	gimp_prop_unit_menu_new
	.align	16, 0x90
	.type	gimp_prop_unit_menu_new,@function
gimp_prop_unit_menu_new:                # @gimp_prop_unit_menu_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %r8d
	leaq	-80(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_param_unit_get_type@PLT
	leaq	.L__func__.gimp_prop_unit_menu_new(%rip), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB74_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB74_3
.LBB74_2:                               # %if.end
	leaq	-80(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	leaq	-80(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_value_set_int@PLT
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	g_param_value_validate@PLT
	leaq	-80(%rbp), %rdi
	movl	$65536, %esi            # imm = 0x10000
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -84(%rbp)
	callq	g_value_set_int@PLT
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	g_param_value_validate@PLT
	leaq	-80(%rbp), %rdi
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -88(%rbp)
	callq	g_value_unset@PLT
	leaq	-52(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$1, %r8d
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	callq	gimp_unit_menu_new@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.30(%rip), %rsi
	leaq	gimp_prop_unit_menu_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_unit_menu_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB74_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	gimp_prop_unit_menu_new, .Lfunc_end74-gimp_prop_unit_menu_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_unit_menu_callback,@function
gimp_prop_unit_menu_callback:           # @gimp_prop_unit_menu_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp239:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB75_2
# BB#1:                                 # %if.then
	jmp	.LBB75_3
.LBB75_2:                               # %if.end
	leaq	-36(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_unit_menu_update@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_unit_menu_notify(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	8(%r8), %rsi
	movl	-36(%rbp), %edx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	leaq	gimp_prop_unit_menu_notify(%rip), %rcx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	-56(%rbp), %r10d        # 4-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r11, %r9
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB75_3:                               # %return
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end75:
	.size	gimp_prop_unit_menu_callback, .Lfunc_end75-gimp_prop_unit_menu_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_unit_menu_notify,@function
gimp_prop_unit_menu_notify:             # @gimp_prop_unit_menu_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	gimp_prop_unit_menu_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_unit_menu_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_unit_menu_set_unit@PLT
	leaq	-28(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_unit_menu_update@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_unit_menu_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	gimp_prop_unit_menu_notify, .Lfunc_end76-gimp_prop_unit_menu_notify
	.cfi_endproc

	.globl	gimp_prop_stock_image_new
	.align	16, 0x90
	.type	gimp_prop_stock_image_new,@function
gimp_prop_stock_image_new:              # @gimp_prop_stock_image_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L__func__.gimp_prop_stock_image_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	112(%rax), %rdx
	callq	check_param_spec
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB77_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB77_5
.LBB77_2:                               # %if.end
	leaq	-56(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-56(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB77_4
# BB#3:                                 # %if.then.3
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB77_4:                               # %if.end.4
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	gimp_prop_stock_image_notify(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdx
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB77_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	gimp_prop_stock_image_new, .Lfunc_end77-gimp_prop_stock_image_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_stock_image_notify,@function
gimp_prop_stock_image_notify:           # @gimp_prop_stock_image_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-24(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	leaq	-36(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_image_get_stock@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_image_set_from_stock@PLT
	cmpq	$0, -32(%rbp)
	je	.LBB78_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB78_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	gimp_prop_stock_image_notify, .Lfunc_end78-gimp_prop_stock_image_notify
	.cfi_endproc

	.globl	gimp_prop_expander_new
	.align	16, 0x90
	.type	gimp_prop_expander_new,@function
gimp_prop_expander_new:                 # @gimp_prop_expander_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	.L__func__.gimp_prop_expander_new(%rip), %rcx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	callq	check_param_spec_w
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB79_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB79_3
.LBB79_2:                               # %if.end
	leaq	-52(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	callq	gtk_expander_get_type@PLT
	leaq	.L.str.41(%rip), %rsi
	leaq	.L.str.42(%rip), %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_param_spec
	leaq	.L.str.43(%rip), %rsi
	leaq	gimp_prop_expanded_notify(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	gimp_prop_expander_notify(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	connect_notify
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB79_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	gimp_prop_expander_new, .Lfunc_end79-gimp_prop_expander_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_expanded_notify,@function
gimp_prop_expanded_notify:              # @gimp_prop_expanded_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB80_2
# BB#1:                                 # %if.then
	jmp	.LBB80_3
.LBB80_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_expander_get_expanded@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB80_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	gimp_prop_expanded_notify, .Lfunc_end80-gimp_prop_expanded_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_expander_notify,@function
gimp_prop_expander_notify:              # @gimp_prop_expander_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_expander_get_expanded@PLT
	cmpl	-28(%rbp), %eax
	je	.LBB81_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_expanded_notify(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gtk_expander_set_expanded@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_expanded_notify(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB81_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	gimp_prop_expander_notify, .Lfunc_end81-gimp_prop_expander_notify
	.cfi_endproc

	.align	16, 0x90
	.type	get_param_spec,@function
get_param_spec:                         # @get_param_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_prop_widgets_param_spec_quark
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	get_param_spec, .Lfunc_end82-get_param_spec
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_widgets_param_spec_quark,@function
gimp_prop_widgets_param_spec_quark:     # @gimp_prop_widgets_param_spec_quark
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	cmpl	$0, gimp_prop_widgets_param_spec_quark.param_spec_quark(%rip)
	jne	.LBB83_2
# BB#1:                                 # %if.then
	leaq	.L.str.27(%rip), %rdi
	callq	g_quark_from_static_string@PLT
	movl	%eax, gimp_prop_widgets_param_spec_quark.param_spec_quark(%rip)
.LBB83_2:                               # %if.end
	movl	gimp_prop_widgets_param_spec_quark.param_spec_quark(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end83:
	.size	gimp_prop_widgets_param_spec_quark, .Lfunc_end83-gimp_prop_widgets_param_spec_quark
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
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
	je	.LBB84_2
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
.LBB84_2:                               # %entry
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
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end84:
	.size	g_message, .Lfunc_end84-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_file_chooser_button_callback,@function
gimp_prop_file_chooser_button_callback: # @gimp_prop_file_chooser_button_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp270:
	.cfi_offset %rbx, -32
.Ltmp271:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	get_param_spec
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB85_2
# BB#1:                                 # %if.then
	jmp	.LBB85_10
.LBB85_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_file_chooser_get_filename@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB85_4
# BB#3:                                 # %cond.true
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_filename_to_utf8@PLT
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB85_5
.LBB85_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB85_5
.LBB85_5:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get@PLT
	cmpq	$0, -48(%rbp)
	je	.LBB85_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB85_8
# BB#7:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB85_9
.LBB85_8:                               # %if.then.9
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_file_chooser_button_notify(%rip), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	8(%r8), %rsi
	movq	-56(%rbp), %rdx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %r8d
	leaq	gimp_prop_file_chooser_button_notify(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ebx, %edx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB85_9:                               # %if.end.13
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB85_10:                              # %return
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end85:
	.size	gimp_prop_file_chooser_button_callback, .Lfunc_end85-gimp_prop_file_chooser_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_prop_file_chooser_button_notify,@function
gimp_prop_file_chooser_button_notify:   # @gimp_prop_file_chooser_button_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp272:
	.cfi_def_cfa_offset 16
.Ltmp273:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp274:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get@PLT
	cmpq	$0, -32(%rbp)
	je	.LBB86_2
# BB#1:                                 # %cond.true
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_config_path_expand@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB86_3
.LBB86_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB86_3
.LBB86_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_prop_file_chooser_button_callback(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	cmpq	$0, -40(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB86_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_file_chooser_set_filename@PLT
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB86_6
.LBB86_5:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	gtk_file_chooser_unselect_all@PLT
.LBB86_6:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_prop_file_chooser_button_callback(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_free@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	gimp_prop_file_chooser_button_notify, .Lfunc_end86-gimp_prop_file_chooser_button_notify
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpWidgets"
	.size	.L.str, 15

	.type	.L__func__.gimp_prop_check_button_new,@object # @__func__.gimp_prop_check_button_new
.L__func__.gimp_prop_check_button_new:
	.asciz	"gimp_prop_check_button_new"
	.size	.L__func__.gimp_prop_check_button_new, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"G_IS_OBJECT (config)"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"property_name != NULL"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"toggled"
	.size	.L.str.3, 8

	.type	.L__func__.gimp_prop_enum_check_button_new,@object # @__func__.gimp_prop_enum_check_button_new
.L__func__.gimp_prop_enum_check_button_new:
	.asciz	"gimp_prop_enum_check_button_new"
	.size	.L__func__.gimp_prop_enum_check_button_new, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"false-value"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"true-value"
	.size	.L.str.5, 11

	.type	.L__func__.gimp_prop_int_combo_box_new,@object # @__func__.gimp_prop_int_combo_box_new
.L__func__.gimp_prop_int_combo_box_new:
	.asciz	"gimp_prop_int_combo_box_new"
	.size	.L__func__.gimp_prop_int_combo_box_new, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"model"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"changed"
	.size	.L.str.7, 8

	.type	.L__func__.gimp_prop_enum_combo_box_new,@object # @__func__.gimp_prop_enum_combo_box_new
.L__func__.gimp_prop_enum_combo_box_new:
	.asciz	"gimp_prop_enum_combo_box_new"
	.size	.L__func__.gimp_prop_enum_combo_box_new, 29

	.type	.L__func__.gimp_prop_boolean_combo_box_new,@object # @__func__.gimp_prop_boolean_combo_box_new
.L__func__.gimp_prop_boolean_combo_box_new:
	.asciz	"gimp_prop_boolean_combo_box_new"
	.size	.L__func__.gimp_prop_boolean_combo_box_new, 32

	.type	.L__func__.gimp_prop_enum_radio_frame_new,@object # @__func__.gimp_prop_enum_radio_frame_new
.L__func__.gimp_prop_enum_radio_frame_new:
	.asciz	"gimp_prop_enum_radio_frame_new"
	.size	.L__func__.gimp_prop_enum_radio_frame_new, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"radio-button"
	.size	.L.str.8, 13

	.type	.L__func__.gimp_prop_enum_radio_box_new,@object # @__func__.gimp_prop_enum_radio_box_new
.L__func__.gimp_prop_enum_radio_box_new:
	.asciz	"gimp_prop_enum_radio_box_new"
	.size	.L__func__.gimp_prop_enum_radio_box_new, 29

	.type	.L__func__.gimp_prop_enum_label_new,@object # @__func__.gimp_prop_enum_label_new
.L__func__.gimp_prop_enum_label_new:
	.asciz	"gimp_prop_enum_label_new"
	.size	.L__func__.gimp_prop_enum_label_new, 25

	.type	.L__func__.gimp_prop_boolean_radio_frame_new,@object # @__func__.gimp_prop_boolean_radio_frame_new
.L__func__.gimp_prop_boolean_radio_frame_new:
	.asciz	"gimp_prop_boolean_radio_frame_new"
	.size	.L__func__.gimp_prop_boolean_radio_frame_new, 34

	.type	.L__func__.gimp_prop_enum_stock_box_new,@object # @__func__.gimp_prop_enum_stock_box_new
.L__func__.gimp_prop_enum_stock_box_new:
	.asciz	"gimp_prop_enum_stock_box_new"
	.size	.L__func__.gimp_prop_enum_stock_box_new, 29

	.type	.L__func__.gimp_prop_spin_button_new,@object # @__func__.gimp_prop_spin_button_new
.L__func__.gimp_prop_spin_button_new:
	.asciz	"gimp_prop_spin_button_new"
	.size	.L__func__.gimp_prop_spin_button_new, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"value-changed"
	.size	.L.str.9, 14

	.type	.L__func__.gimp_prop_hscale_new,@object # @__func__.gimp_prop_hscale_new
.L__func__.gimp_prop_hscale_new:
	.asciz	"gimp_prop_hscale_new"
	.size	.L__func__.gimp_prop_hscale_new, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"adjustment"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"digits"
	.size	.L.str.11, 7

	.type	.L__func__.gimp_prop_scale_entry_new,@object # @__func__.gimp_prop_scale_entry_new
.L__func__.gimp_prop_scale_entry_new:
	.asciz	"gimp_prop_scale_entry_new"
	.size	.L__func__.gimp_prop_scale_entry_new, 26

	.type	.L__func__.gimp_prop_opacity_entry_new,@object # @__func__.gimp_prop_opacity_entry_new
.L__func__.gimp_prop_opacity_entry_new:
	.asciz	"gimp_prop_opacity_entry_new"
	.size	.L__func__.gimp_prop_opacity_entry_new, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"opacity-scale"
	.size	.L.str.12, 14

	.type	.L__func__.gimp_prop_memsize_entry_new,@object # @__func__.gimp_prop_memsize_entry_new
.L__func__.gimp_prop_memsize_entry_new:
	.asciz	"gimp_prop_memsize_entry_new"
	.size	.L__func__.gimp_prop_memsize_entry_new, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"uint64_spec->minimum <= GIMP_MAX_MEMSIZE"
	.size	.L.str.13, 41

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"uint64_spec->maximum <= GIMP_MAX_MEMSIZE"
	.size	.L.str.14, 41

	.type	.L__func__.gimp_prop_label_new,@object # @__func__.gimp_prop_label_new
.L__func__.gimp_prop_label_new:
	.asciz	"gimp_prop_label_new"
	.size	.L__func__.gimp_prop_label_new, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s: property '%s' of %s is not transformable to string"
	.size	.L.str.15, 55

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimppropwidgets.c:1609"
	.size	.L.str.16, 23

	.type	.L__func__.gimp_prop_entry_new,@object # @__func__.gimp_prop_entry_new
.L__func__.gimp_prop_entry_new:
	.asciz	"gimp_prop_entry_new"
	.size	.L__func__.gimp_prop_entry_new, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.zero	1
	.size	.L.str.17, 1

	.type	.L__func__.gimp_prop_text_buffer_new,@object # @__func__.gimp_prop_text_buffer_new
.L__func__.gimp_prop_text_buffer_new:
	.asciz	"gimp_prop_text_buffer_new"
	.size	.L__func__.gimp_prop_text_buffer_new, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"max-len"
	.size	.L.str.18, 8

	.type	.L__func__.gimp_prop_string_combo_box_new,@object # @__func__.gimp_prop_string_combo_box_new
.L__func__.gimp_prop_string_combo_box_new:
	.asciz	"gimp_prop_string_combo_box_new"
	.size	.L__func__.gimp_prop_string_combo_box_new, 31

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GTK_IS_TREE_MODEL (model)"
	.size	.L.str.19, 26

	.type	.L__func__.gimp_prop_file_chooser_button_new,@object # @__func__.gimp_prop_file_chooser_button_new
.L__func__.gimp_prop_file_chooser_button_new:
	.asciz	"gimp_prop_file_chooser_button_new"
	.size	.L__func__.gimp_prop_file_chooser_button_new, 34

	.type	.L__func__.gimp_prop_file_chooser_button_new_with_dialog,@object # @__func__.gimp_prop_file_chooser_button_new_with_dialog
.L__func__.gimp_prop_file_chooser_button_new_with_dialog:
	.asciz	"gimp_prop_file_chooser_button_new_with_dialog"
	.size	.L__func__.gimp_prop_file_chooser_button_new_with_dialog, 46

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GTK_IS_FILE_CHOOSER_DIALOG (dialog)"
	.size	.L.str.20, 36

	.type	.L__func__.gimp_prop_path_editor_new,@object # @__func__.gimp_prop_path_editor_new
.L__func__.gimp_prop_path_editor_new:
	.asciz	"gimp_prop_path_editor_new"
	.size	.L__func__.gimp_prop_path_editor_new, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"path_property_name != NULL"
	.size	.L.str.21, 27

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-config-param-spec-path"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"path-changed"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-config-param-spec-writable"
	.size	.L.str.24, 32

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"writable-changed"
	.size	.L.str.25, 17

	.type	.L__func__.gimp_prop_size_entry_new,@object # @__func__.gimp_prop_size_entry_new
.L__func__.gimp_prop_size_entry_new:
	.asciz	"gimp_prop_size_entry_new"
	.size	.L__func__.gimp_prop_size_entry_new, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"value-is-pixel"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-config-param-spec"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"refval-changed"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-config-param-spec-unit"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"unit-changed"
	.size	.L.str.30, 13

	.type	.L__func__.gimp_prop_coordinates_connect,@object # @__func__.gimp_prop_coordinates_connect
.L__func__.gimp_prop_coordinates_connect:
	.asciz	"gimp_prop_coordinates_connect"
	.size	.L__func__.gimp_prop_coordinates_connect, 30

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"GIMP_IS_SIZE_ENTRY (entry)"
	.size	.L.str.31, 27

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_SIZE_ENTRY (entry)->number_of_fields == 2"
	.size	.L.str.32, 47

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"chainbutton == NULL || GIMP_IS_CHAIN_BUTTON (chainbutton)"
	.size	.L.str.33, 58

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-config-param-spec-x"
	.size	.L.str.34, 25

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-config-param-spec-y"
	.size	.L.str.35, 25

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"old-x-value"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"old-y-value"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"chainbutton"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"old-unit-value"
	.size	.L.str.39, 15

	.type	.L__func__.gimp_prop_color_area_new,@object # @__func__.gimp_prop_color_area_new
.L__func__.gimp_prop_color_area_new:
	.asciz	"gimp_prop_color_area_new"
	.size	.L__func__.gimp_prop_color_area_new, 25

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"color-changed"
	.size	.L.str.40, 14

	.type	.L__func__.gimp_prop_unit_combo_box_new,@object # @__func__.gimp_prop_unit_combo_box_new
.L__func__.gimp_prop_unit_combo_box_new:
	.asciz	"gimp_prop_unit_combo_box_new"
	.size	.L__func__.gimp_prop_unit_combo_box_new, 29

	.type	.L__func__.gimp_prop_unit_menu_new,@object # @__func__.gimp_prop_unit_menu_new
.L__func__.gimp_prop_unit_menu_new:
	.asciz	"gimp_prop_unit_menu_new"
	.size	.L__func__.gimp_prop_unit_menu_new, 24

	.type	.L__func__.gimp_prop_stock_image_new,@object # @__func__.gimp_prop_stock_image_new
.L__func__.gimp_prop_stock_image_new:
	.asciz	"gimp_prop_stock_image_new"
	.size	.L__func__.gimp_prop_stock_image_new, 26

	.type	.L__func__.gimp_prop_expander_new,@object # @__func__.gimp_prop_expander_new
.L__func__.gimp_prop_expander_new:
	.asciz	"gimp_prop_expander_new"
	.size	.L__func__.gimp_prop_expander_new, 23

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"label"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"expanded"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"notify::expanded"
	.size	.L.str.43, 17

	.type	gimp_prop_widgets_param_spec_quark.param_spec_quark,@object # @gimp_prop_widgets_param_spec_quark.param_spec_quark
	.local	gimp_prop_widgets_param_spec_quark.param_spec_quark
	.comm	gimp_prop_widgets_param_spec_quark.param_spec_quark,4,4
	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-item-data"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%s: unhandled param spec of type %s"
	.size	.L.str.45, 36

	.type	.L__func__.gimp_prop_adjustment_notify,@object # @__func__.gimp_prop_adjustment_notify
.L__func__.gimp_prop_adjustment_notify:
	.asciz	"gimp_prop_adjustment_notify"
	.size	.L__func__.gimp_prop_adjustment_notify, 28

	.type	.L__func__.gimp_prop_memsize_callback,@object # @__func__.gimp_prop_memsize_callback
.L__func__.gimp_prop_memsize_callback:
	.asciz	"gimp_prop_memsize_callback"
	.size	.L__func__.gimp_prop_memsize_callback, 27

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"G_IS_PARAM_SPEC_UINT64 (param_spec)"
	.size	.L.str.46, 36

	.type	.L__func__.gimp_prop_memsize_notify,@object # @__func__.gimp_prop_memsize_notify
.L__func__.gimp_prop_memsize_notify:
	.asciz	"gimp_prop_memsize_notify"
	.size	.L__func__.gimp_prop_memsize_notify, 25

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"max-length"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp20-libgimp"
	.size	.L.str.48, 15

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"This text input field is limited to %d character."
	.size	.L.str.49, 50

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"This text input field is limited to %d characters."
	.size	.L.str.50, 51

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"file-set"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"constrains-ratio"
	.size	.L.str.52, 17

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%s: %s has no property named '%s'"
	.size	.L.str.53, 34

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%s: property '%s' of %s is not a %s"
	.size	.L.str.54, 36

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%s: property '%s' of %s is writable"
	.size	.L.str.55, 36

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"%s: property '%s' of %s is not numeric"
	.size	.L.str.56, 39

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"notify::"
	.size	.L.str.57, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
