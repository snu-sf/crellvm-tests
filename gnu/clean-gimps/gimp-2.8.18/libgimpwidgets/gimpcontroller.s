	.text
	.file	"gimpcontroller.bc"
	.globl	gimp_controller_get_type
	.align	16, 0x90
	.type	gimp_controller_get_type,@function
gimp_controller_get_type:               # @gimp_controller_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_controller_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_controller_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	leaq	.L.str(%rip), %rdi
	callq	g_intern_static_string@PLT
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$224, %edx
	leaq	gimp_controller_class_intern_init(%rip), %rsi
	movl	$40, %r8d
	leaq	gimp_controller_init(%rip), %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	leaq	gimp_controller_get_type.g_implement_interface_info(%rip), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static@PLT
	leaq	gimp_controller_get_type.g_define_type_id__volatile(%rip), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_controller_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_controller_get_type, .Lfunc_end0-gimp_controller_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_class_intern_init,@function
gimp_controller_class_intern_init:      # @gimp_controller_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_controller_parent_class(%rip)
	cmpl	$0, GimpController_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpController_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_controller_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_controller_class_intern_init, .Lfunc_end1-gimp_controller_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_init,@function
gimp_controller_init:                   # @gimp_controller_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_controller_init, .Lfunc_end2-gimp_controller_init
	.cfi_endproc

	.globl	gimp_controller_new
	.align	16, 0x90
	.type	gimp_controller_new,@function
gimp_controller_new:                    # @gimp_controller_new
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_controller_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_controller_new, .Lfunc_end3-gimp_controller_new
	.cfi_endproc

	.globl	gimp_controller_get_n_events
	.align	16, 0x90
	.type	gimp_controller_get_n_events,@function
gimp_controller_get_n_events:           # @gimp_controller_get_n_events
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_controller_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_controller_get_n_events(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB4_15
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 160(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               # %if.end.17
	movl	$0, -4(%rbp)
.LBB4_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_controller_get_n_events, .Lfunc_end4-gimp_controller_get_n_events
	.cfi_endproc

	.globl	gimp_controller_get_event_name
	.align	16, 0x90
	.type	gimp_controller_get_event_name,@function
gimp_controller_get_event_name:         # @gimp_controller_get_event_name
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_controller_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_controller_get_event_name(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_17
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 168(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	*%rax
	movq	%rax, -32(%rbp)
.LBB5_14:                               # %if.end.17
	cmpq	$0, -32(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.19
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -32(%rbp)
.LBB5_16:                               # %if.end.20
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_controller_get_event_name, .Lfunc_end5-gimp_controller_get_event_name
	.cfi_endproc

	.globl	gimp_controller_get_event_blurb
	.align	16, 0x90
	.type	gimp_controller_get_event_blurb,@function
gimp_controller_get_event_blurb:        # @gimp_controller_get_event_blurb
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_controller_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_controller_get_event_blurb(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_17
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 176(%rax)
	je	.LBB6_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	*%rax
	movq	%rax, -32(%rbp)
.LBB6_14:                               # %if.end.17
	cmpq	$0, -32(%rbp)
	jne	.LBB6_16
# BB#15:                                # %if.then.19
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -32(%rbp)
.LBB6_16:                               # %if.end.20
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_controller_get_event_blurb, .Lfunc_end6-gimp_controller_get_event_blurb
	.cfi_endproc

	.globl	gimp_controller_event
	.align	16, 0x90
	.type	gimp_controller_event,@function
gimp_controller_event:                  # @gimp_controller_event
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
	movl	$0, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_controller_get_type@PLT
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
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.9
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_controller_event(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_18
.LBB7_11:                               # %if.end.11
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.14
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_controller_event(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_18
.LBB7_16:                               # %if.end.16
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.17
	xorl	%edx, %edx
	leaq	-28(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	controller_signals(%rip), %esi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	movl	-28(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB7_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_controller_event, .Lfunc_end7-gimp_controller_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_class_init,@function
gimp_controller_class_init:             # @gimp_controller_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.8(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	.L.str.9(%rip), %rcx
	movl	$231, %r8d
	leaq	.L.str.7(%rip), %rdx
	leaq	.L.str.6(%rip), %r9
	leaq	gimp_controller_get_property(%rip), %r10
	leaq	gimp_controller_set_property(%rip), %r11
	leaq	gimp_controller_finalize(%rip), %rbx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 136(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 184(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.10(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	leaq	.L.str.11(%rip), %rcx
	movl	$231, %r8d
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_string@PLT
	movl	$2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.12(%rip), %rdi
	movl	$2, %edx
	movl	$184, %ecx
	movq	g_signal_accumulator_true_handled@GOTPCREL(%rip), %r8
	xorl	%esi, %esi
	movl	%esi, %r9d
	movq	_gimp_widgets_marshal_BOOLEAN__POINTER@GOTPCREL(%rip), %rax
	movl	$20, %esi
	movl	%esi, %r10d
	movl	$1, %esi
	movl	$68, %r14d
	movl	%r14d, %r11d
	movq	-24(%rbp), %rbx
	movq	(%rbx), %rbx
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rbx, %rsi
	movq	%rax, (%rsp)
	movq	$20, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r11, -72(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, controller_signals(%rip)
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_controller_class_init, .Lfunc_end8-gimp_controller_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_finalize,@function
gimp_controller_finalize:               # @gimp_controller_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB9_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_controller_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_controller_finalize, .Lfunc_end9-gimp_controller_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_set_property,@function
gimp_controller_set_property:           # @gimp_controller_set_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_11
.LBB10_11:                              # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB10_4
	jmp	.LBB10_7
.LBB10_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB10_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free@PLT
.LBB10_3:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	.LBB10_10
.LBB10_4:                               # %sw.bb.5
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB10_6
# BB#5:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
.LBB10_6:                               # %if.end.9
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB10_10
.LBB10_7:                               # %sw.default
	jmp	.LBB10_8
.LBB10_8:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$167, %edx
	leaq	.L.str.15(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB10_10
.LBB10_10:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_controller_set_property, .Lfunc_end10-gimp_controller_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_get_property,@function
gimp_controller_get_property:           # @gimp_controller_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB11_1
	jmp	.LBB11_7
.LBB11_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB11_2
	jmp	.LBB11_3
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB11_6
.LBB11_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB11_6
.LBB11_3:                               # %sw.default
	jmp	.LBB11_4
.LBB11_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$189, %edx
	leaq	.L.str.15(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB11_6
.LBB11_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_controller_get_property, .Lfunc_end11-gimp_controller_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.type	gimp_controller_get_type.g_define_type_id__volatile,@object # @gimp_controller_get_type.g_define_type_id__volatile
	.local	gimp_controller_get_type.g_define_type_id__volatile
	.comm	gimp_controller_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpController"
	.size	.L.str, 15

	.type	gimp_controller_get_type.g_implement_interface_info,@object # @gimp_controller_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_controller_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_controller_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_controller_new,@object # @__func__.gimp_controller_new
.L__func__.gimp_controller_new:
	.asciz	"gimp_controller_new"
	.size	.L__func__.gimp_controller_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_type_is_a (controller_type, GIMP_TYPE_CONTROLLER)"
	.size	.L.str.2, 52

	.type	.L__func__.gimp_controller_get_n_events,@object # @__func__.gimp_controller_get_n_events
.L__func__.gimp_controller_get_n_events:
	.asciz	"gimp_controller_get_n_events"
	.size	.L__func__.gimp_controller_get_n_events, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTROLLER (controller)"
	.size	.L.str.3, 32

	.type	.L__func__.gimp_controller_get_event_name,@object # @__func__.gimp_controller_get_event_name
.L__func__.gimp_controller_get_event_name:
	.asciz	"gimp_controller_get_event_name"
	.size	.L__func__.gimp_controller_get_event_name, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"<invalid event id>"
	.size	.L.str.4, 19

	.type	.L__func__.gimp_controller_get_event_blurb,@object # @__func__.gimp_controller_get_event_blurb
.L__func__.gimp_controller_get_event_blurb:
	.asciz	"gimp_controller_get_event_blurb"
	.size	.L__func__.gimp_controller_get_event_blurb, 32

	.type	.L__func__.gimp_controller_event,@object # @__func__.gimp_controller_event
.L__func__.gimp_controller_event:
	.asciz	"gimp_controller_event"
	.size	.L__func__.gimp_controller_event, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"event != NULL"
	.size	.L.str.5, 14

	.type	controller_signals,@object # @controller_signals
	.local	controller_signals
	.comm	controller_signals,4,4
	.type	gimp_controller_parent_class,@object # @gimp_controller_parent_class
	.local	gimp_controller_parent_class
	.comm	gimp_controller_parent_class,8,8
	.type	GimpController_private_offset,@object # @GimpController_private_offset
	.local	GimpController_private_offset
	.comm	GimpController_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Unnamed"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-controller"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"name"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Unnamed Controller"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"state"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Unknown"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"event"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpcontroller.c"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"property"
	.size	.L.str.15, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
