	.text
	.file	"controller-linux-input.bc"
	.globl	controller_linux_input_get_type
	.align	16, 0x90
	.type	controller_linux_input_get_type,@function
controller_linux_input_get_type:        # @controller_linux_input_get_type
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
	movq	controller_linux_input_type_id(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	controller_linux_input_get_type, .Lfunc_end0-controller_linux_input_get_type
	.cfi_endproc

	.globl	gimp_module_query
	.align	16, 0x90
	.type	gimp_module_query,@function
gimp_module_query:                      # @gimp_module_query
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
	leaq	linux_input_info(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_module_query, .Lfunc_end1-gimp_module_query
	.cfi_endproc

	.globl	gimp_module_register
	.align	16, 0x90
	.type	gimp_module_register,@function
gimp_module_register:                   # @gimp_module_register
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
	callq	gimp_input_device_store_register_types@PLT
	movq	-8(%rbp), %rdi
	callq	controller_linux_input_register_type
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_module_register, .Lfunc_end2-gimp_module_register
	.cfi_endproc

	.align	16, 0x90
	.type	controller_linux_input_register_type,@function
controller_linux_input_register_type:   # @controller_linux_input_register_type
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	leaq	.L.str.5(%rip), %rdx
	leaq	controller_linux_input_register_type.g_define_type_info(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_module_register_type@PLT
	movq	%rax, controller_linux_input_type_id(%rip)
	movq	controller_linux_input_type_id(%rip), %rax
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	controller_linux_input_register_type, .Lfunc_end3-controller_linux_input_register_type
	.cfi_endproc

	.align	16, 0x90
	.type	controller_linux_input_class_intern_init,@function
controller_linux_input_class_intern_init: # @controller_linux_input_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, controller_linux_input_parent_class(%rip)
	cmpl	$0, ControllerLinuxInput_private_offset(%rip)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	ControllerLinuxInput_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	controller_linux_input_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	controller_linux_input_class_intern_init, .Lfunc_end4-controller_linux_input_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	controller_linux_input_class_finalize,@function
controller_linux_input_class_finalize:  # @controller_linux_input_class_finalize
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	controller_linux_input_class_finalize, .Lfunc_end5-controller_linux_input_class_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	controller_linux_input_init,@function
controller_linux_input_init:            # @controller_linux_input_init
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
	movq	%rdi, -8(%rbp)
	callq	gimp_input_device_store_new@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	leaq	.L.str.116(%rip), %rsi
	leaq	linux_input_device_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.117(%rip), %rsi
	leaq	linux_input_device_changed(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB6_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	controller_linux_input_init, .Lfunc_end6-controller_linux_input_init
	.cfi_endproc

	.align	16, 0x90
	.type	controller_linux_input_class_init,@function
controller_linux_input_class_init:      # @controller_linux_input_class_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	leaq	linux_input_set_property(%rip), %rdx
	leaq	linux_input_get_property(%rip), %r8
	leaq	linux_input_finalize(%rip), %r9
	leaq	linux_input_dispose(%rip), %r10
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%r10, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.6(%rip), %rdi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$263, %r8d              # imm = 0x107
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_param_spec_string@PLT
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	dgettext@PLT
	leaq	linux_input_get_event_blurb(%rip), %rcx
	leaq	linux_input_get_event_name(%rip), %rdx
	leaq	linux_input_get_n_events(%rip), %rsi
	leaq	.L.str.11(%rip), %rdi
	movq	-16(%rbp), %r9
	movq	%rax, 136(%r9)
	movq	-16(%rbp), %rax
	movq	%rdi, 152(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 192(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 160(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 168(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 176(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	controller_linux_input_class_init, .Lfunc_end7-controller_linux_input_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_dispose,@function
linux_input_dispose:                    # @linux_input_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	controller_linux_input_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	linux_input_set_device
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	controller_linux_input_parent_class(%rip), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	linux_input_dispose, .Lfunc_end8-linux_input_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_finalize,@function
linux_input_finalize:                   # @linux_input_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	controller_linux_input_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	controller_linux_input_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	linux_input_finalize, .Lfunc_end9-linux_input_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_get_property,@function
linux_input_get_property:               # @linux_input_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	controller_linux_input_get_type@PLT
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
	jmp	.LBB10_7
.LBB10_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_3
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB10_6
.LBB10_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object@PLT
	jmp	.LBB10_6
.LBB10_3:                               # %sw.default
	jmp	.LBB10_4
.LBB10_4:                               # %do.body
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
	leaq	.L.str.113(%rip), %rdi
	leaq	.L.str.114(%rip), %rsi
	movl	$319, %edx              # imm = 0x13F
	leaq	.L.str.115(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	linux_input_get_property, .Lfunc_end10-linux_input_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_set_property,@function
linux_input_set_property:               # @linux_input_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	controller_linux_input_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB11_2
	jmp	.LBB11_1
.LBB11_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	linux_input_set_device
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB11_5
.LBB11_2:                               # %sw.default
	jmp	.LBB11_3
.LBB11_3:                               # %do.body
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
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.113(%rip), %rdi
	leaq	.L.str.114(%rip), %rsi
	movl	$297, %edx              # imm = 0x129
	leaq	.L.str.115(%rip), %rcx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB11_5
.LBB11_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	linux_input_set_property, .Lfunc_end11-linux_input_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_get_n_events,@function
linux_input_get_n_events:               # @linux_input_get_n_events
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
	movl	$40, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	linux_input_get_n_events, .Lfunc_end12-linux_input_get_n_events
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_get_event_name,@function
linux_input_get_event_name:             # @linux_input_get_event_name
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB13_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB13_7
.LBB13_2:                               # %if.else
	movslq	-20(%rbp), %rax
	cmpq	$22, %rax
	jae	.LBB13_4
# BB#3:                                 # %if.then.3
	leaq	key_events(%rip), %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_7
.LBB13_4:                               # %if.else.4
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	linux_input_get_n_events
	movl	-24(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB13_6
# BB#5:                                 # %if.then.7
	leaq	rel_events(%rip), %rax
	movslq	-20(%rbp), %rcx
	subq	$22, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.11
	movq	$0, -8(%rbp)
.LBB13_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	linux_input_get_event_name, .Lfunc_end13-linux_input_get_event_name
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_get_event_blurb,@function
linux_input_get_event_blurb:            # @linux_input_get_event_blurb
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB14_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB14_7
.LBB14_2:                               # %if.else
	movslq	-20(%rbp), %rax
	cmpq	$22, %rax
	jae	.LBB14_4
# BB#3:                                 # %if.then.3
	leaq	.L.str.7(%rip), %rdi
	leaq	key_events(%rip), %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB14_7
.LBB14_4:                               # %if.else.4
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	linux_input_get_n_events
	movl	-24(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB14_6
# BB#5:                                 # %if.then.8
	leaq	.L.str.7(%rip), %rdi
	leaq	rel_events(%rip), %rax
	movslq	-20(%rbp), %rcx
	subq	$22, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.13
	movq	$0, -8(%rbp)
.LBB14_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	linux_input_get_event_blurb, .Lfunc_end14-linux_input_get_event_blurb
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_set_device,@function
linux_input_set_device:                 # @linux_input_set_device
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 56(%rsi)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	64(%rax), %edi
	callq	g_source_remove@PLT
	movq	-16(%rbp), %rcx
	movl	$0, 64(%rcx)
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	g_io_channel_unref@PLT
	movq	-16(%rbp), %rcx
	movq	$0, 56(%rcx)
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free@PLT
.LBB15_4:                               # %if.end.8
	movq	-24(%rbp), %rdi
	callq	g_strdup@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.12(%rip), %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-16(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	je	.LBB15_10
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	strlen@PLT
	cmpq	$0, %rax
	je	.LBB15_10
# BB#6:                                 # %if.then.17
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB15_8
# BB#7:                                 # %if.then.19
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	callq	gimp_input_device_store_get_device_file@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB15_9
.LBB15_8:                               # %if.else
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB15_9:                               # %if.end.25
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.26
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.14(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB15_27
.LBB15_11:                              # %if.end.28
	cmpq	$0, -32(%rbp)
	je	.LBB15_20
# BB#12:                                # %if.then.30
	xorl	%eax, %eax
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jl	.LBB15_18
# BB#13:                                # %if.then.32
	movl	$2164278534, %eax       # imm = 0x81004506
	movl	%eax, %esi
	leaq	-304(%rbp), %rdx
	movb	$0, -304(%rbp)
	movl	-44(%rbp), %edi
	movb	$0, %al
	callq	ioctl@PLT
	cmpl	$0, %eax
	jl	.LBB15_17
# BB#14:                                # %land.lhs.true.35
	leaq	-304(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$0, %rax
	jbe	.LBB15_17
# BB#15:                                # %land.lhs.true.39
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-304(%rbp), %rdi
	callq	g_utf8_validate@PLT
	cmpl	$0, %eax
	je	.LBB15_17
# BB#16:                                # %if.then.43
	leaq	.L.str.12(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-304(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set@PLT
.LBB15_17:                              # %if.end.45
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	linux_input_get_device_info
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	callq	dgettext@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.14(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	movl	-44(%rbp), %edi
	callq	g_io_channel_unix_new@PLT
	movl	$1, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_io_channel_set_close_on_unref@PLT
	xorl	%esi, %esi
	movl	%esi, %eax
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	g_io_channel_set_encoding@PLT
	movl	$1, %esi
	leaq	linux_input_read_event(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	g_io_add_watch@PLT
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB15_27
.LBB15_18:                              # %if.else.56
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.14(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
# BB#19:                                # %if.end.61
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB15_26
.LBB15_20:                              # %if.else.62
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB15_25
# BB#21:                                # %if.then.65
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_input_device_store_get_error@PLT
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	je	.LBB15_23
# BB#22:                                # %if.then.69
	leaq	.L.str.14(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-312(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-312(%rbp), %rdi
	callq	g_error_free@PLT
	jmp	.LBB15_24
.LBB15_23:                              # %if.else.70
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.14(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB15_24:                              # %if.end.72
	jmp	.LBB15_25
.LBB15_25:                              # %if.end.73
	jmp	.LBB15_26
.LBB15_26:                              # %if.end.74
	movl	$0, -4(%rbp)
.LBB15_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end15:
	.size	linux_input_set_device, .Lfunc_end15-linux_input_set_device
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_get_device_info,@function
linux_input_get_device_info:            # @linux_input_get_device_info
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
	subq	$224, %rsp
	movl	$2149532960, %eax       # imm = 0x801F4520
	movl	%eax, %ecx
	leaq	-24(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	-12(%rbp), %edi
	movq	%rcx, %rsi
	movb	$0, %al
	callq	ioctl@PLT
	movq	-24(%rbp), %rcx
	shrq	$1, %rcx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB16_20
# BB#1:                                 # %if.then
	movl	$2197767457, %eax       # imm = 0x82FF4521
	movl	%eax, %esi
	leaq	-128(%rbp), %rdx
	movl	-12(%rbp), %edi
	movb	$0, %al
	callq	ioctl@PLT
	movl	$16, -168(%rbp)
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB16_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$50, -168(%rbp)
	jge	.LBB16_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB16_2 Depth=1
	movslq	-168(%rbp), %rax
	shrq	$6, %rax
	movq	-128(%rbp,%rax,8), %rax
	movslq	-168(%rbp), %rcx
	andq	$63, %rcx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB16_5
# BB#4:                                 # %if.then.8
                                        #   in Loop: Header=BB16_2 Depth=1
	leaq	.L.str.19(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movl	-168(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
.LBB16_5:                               # %if.end
                                        #   in Loop: Header=BB16_2 Depth=1
	jmp	.LBB16_6
.LBB16_6:                               # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB16_2
.LBB16_7:                               # %for.end
	leaq	.L.str.20(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-148(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
	movl	$352, -168(%rbp)        # imm = 0x160
.LBB16_8:                               # %for.cond.10
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$767, -168(%rbp)        # imm = 0x2FF
	jge	.LBB16_13
# BB#9:                                 # %for.body.13
                                        #   in Loop: Header=BB16_8 Depth=1
	movslq	-168(%rbp), %rax
	shrq	$6, %rax
	movq	-128(%rbp,%rax,8), %rax
	movslq	-168(%rbp), %rcx
	andq	$63, %rcx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB16_11
# BB#10:                                # %if.then.22
                                        #   in Loop: Header=BB16_8 Depth=1
	leaq	.L.str.21(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	movl	-168(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
.LBB16_11:                              # %if.end.24
                                        #   in Loop: Header=BB16_8 Depth=1
	jmp	.LBB16_12
.LBB16_12:                              # %for.inc.25
                                        #   in Loop: Header=BB16_8 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB16_8
.LBB16_13:                              # %for.end.27
	leaq	.L.str.22(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-152(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
	movl	$256, -168(%rbp)        # imm = 0x100
.LBB16_14:                              # %for.cond.28
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$352, -168(%rbp)        # imm = 0x160
	jge	.LBB16_19
# BB#15:                                # %for.body.31
                                        #   in Loop: Header=BB16_14 Depth=1
	movslq	-168(%rbp), %rax
	shrq	$6, %rax
	movq	-128(%rbp,%rax,8), %rax
	movslq	-168(%rbp), %rcx
	andq	$63, %rcx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB16_17
# BB#16:                                # %if.then.40
                                        #   in Loop: Header=BB16_14 Depth=1
	leaq	.L.str.23(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	movl	-168(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
.LBB16_17:                              # %if.end.42
                                        #   in Loop: Header=BB16_14 Depth=1
	jmp	.LBB16_18
.LBB16_18:                              # %for.inc.43
                                        #   in Loop: Header=BB16_14 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB16_14
.LBB16_19:                              # %for.end.45
	leaq	.L.str.24(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-156(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
.LBB16_20:                              # %if.end.46
	movq	-24(%rbp), %rax
	shrq	$2, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB16_28
# BB#21:                                # %if.then.51
	movl	$2148484386, %eax       # imm = 0x800F4522
	movl	%eax, %esi
	leaq	-136(%rbp), %rdx
	movl	-12(%rbp), %edi
	movb	$0, %al
	callq	ioctl@PLT
	movl	$0, -172(%rbp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB16_22:                              # %for.cond.55
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$15, -172(%rbp)
	jge	.LBB16_27
# BB#23:                                # %for.body.58
                                        #   in Loop: Header=BB16_22 Depth=1
	movslq	-172(%rbp), %rax
	shrq	$6, %rax
	movq	-136(%rbp,%rax,8), %rax
	movslq	-172(%rbp), %rcx
	andq	$63, %rcx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB16_25
# BB#24:                                # %if.then.67
                                        #   in Loop: Header=BB16_22 Depth=1
	leaq	.L.str.25(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
	movl	-172(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
.LBB16_25:                              # %if.end.69
                                        #   in Loop: Header=BB16_22 Depth=1
	jmp	.LBB16_26
.LBB16_26:                              # %for.inc.70
                                        #   in Loop: Header=BB16_22 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB16_22
.LBB16_27:                              # %for.end.72
	leaq	.L.str.26(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-160(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
.LBB16_28:                              # %if.end.73
	movq	-24(%rbp), %rax
	shrq	$3, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB16_36
# BB#29:                                # %if.then.78
	movl	$2151630115, %eax       # imm = 0x803F4523
	movl	%eax, %esi
	leaq	-144(%rbp), %rdx
	movl	-12(%rbp), %edi
	movb	$0, %al
	callq	ioctl@PLT
	movl	$0, -176(%rbp)
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB16_30:                              # %for.cond.82
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$63, -176(%rbp)
	jge	.LBB16_35
# BB#31:                                # %for.body.85
                                        #   in Loop: Header=BB16_30 Depth=1
	movslq	-176(%rbp), %rax
	shrq	$6, %rax
	movq	-144(%rbp,%rax,8), %rax
	movslq	-176(%rbp), %rcx
	andq	$63, %rcx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB16_33
# BB#32:                                # %if.then.94
                                        #   in Loop: Header=BB16_30 Depth=1
	leaq	-200(%rbp), %rdx
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	movl	-12(%rbp), %edi
	movl	-176(%rbp), %eax
	addl	$64, %eax
	shll	$0, %eax
	orl	$2147501312, %eax       # imm = 0x80004500
	movl	%eax, %eax
	movl	%eax, %ecx
	orq	$1572864, %rcx          # imm = 0x180000
	movq	%rcx, %rsi
	movb	$0, %al
	callq	ioctl@PLT
	leaq	.L.str.27(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-176(%rbp), %edx
	movl	-196(%rbp), %ecx
	movl	-192(%rbp), %r8d
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_print@PLT
.LBB16_33:                              # %if.end.99
                                        #   in Loop: Header=BB16_30 Depth=1
	jmp	.LBB16_34
.LBB16_34:                              # %for.inc.100
                                        #   in Loop: Header=BB16_30 Depth=1
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB16_30
.LBB16_35:                              # %for.end.102
	leaq	.L.str.28(%rip), %rdi
	leaq	.L__func__.linux_input_get_device_info(%rip), %rsi
	movl	-164(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
.LBB16_36:                              # %if.end.103
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	linux_input_get_device_info, .Lfunc_end16-linux_input_get_device_info
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_read_event,@function
linux_input_read_event:                 # @linux_input_read_event
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	controller_linux_input_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rdi
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rcx
	leaq	-56(%rbp), %r8
	callq	g_io_channel_read_chars@PLT
	movl	%eax, -44(%rbp)
	movl	%eax, %r9d
	testl	%eax, %eax
	movl	%r9d, -180(%rbp)        # 4-byte Spill
	je	.LBB17_1
	jmp	.LBB17_31
.LBB17_31:                              # %entry
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB17_1
	jmp	.LBB17_32
.LBB17_32:                              # %entry
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB17_5
	jmp	.LBB17_6
.LBB17_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movl	64(%rax), %edi
	callq	g_source_remove@PLT
	movq	-40(%rbp), %rcx
	movl	$0, 64(%rcx)
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	g_io_channel_unref@PLT
	movq	-40(%rbp), %rcx
	movq	$0, 56(%rcx)
	cmpq	$0, -56(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	dgettext@PLT
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.14(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-96(%rbp), %rdi
	callq	g_free@PLT
	leaq	-56(%rbp), %rdi
	callq	g_clear_error@PLT
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.29(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.14(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB17_4:                               # %if.end
	movl	$0, -4(%rbp)
	jmp	.LBB17_30
.LBB17_5:                               # %sw.bb.10
	movl	$1, -4(%rbp)
	jmp	.LBB17_30
.LBB17_6:                               # %sw.default
	jmp	.LBB17_7
.LBB17_7:                               # %sw.epilog
	cmpq	$24, -88(%rbp)
	jne	.LBB17_29
# BB#8:                                 # %if.then.11
	movq	-32(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -104(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movzwl	-64(%rbp), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	%edx, -216(%rbp)        # 4-byte Spill
	je	.LBB17_9
	jmp	.LBB17_33
.LBB17_33:                              # %if.then.11
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB17_16
	jmp	.LBB17_34
.LBB17_34:                              # %if.then.11
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB17_26
	jmp	.LBB17_27
.LBB17_9:                               # %sw.bb.14
	leaq	.L.str.30(%rip), %rdi
	leaq	.L__func__.linux_input_read_event(%rip), %rsi
	movzwl	-62(%rbp), %edx
	movb	$0, %al
	callq	g_print@PLT
	movl	$0, -164(%rbp)
.LBB17_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-164(%rbp), %rax
	cmpq	$22, %rax
	jae	.LBB17_15
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB17_10 Depth=1
	leaq	key_events(%rip), %rax
	movzwl	-62(%rbp), %ecx
	movslq	-164(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB17_13
# BB#12:                                # %if.then.25
	leaq	-160(%rbp), %rsi
	movl	$0, -160(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-164(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_controller_event@PLT
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB17_15
.LBB17_13:                              # %if.end.30
                                        #   in Loop: Header=BB17_10 Depth=1
	jmp	.LBB17_14
.LBB17_14:                              # %for.inc
                                        #   in Loop: Header=BB17_10 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB17_10
.LBB17_15:                              # %for.end
	jmp	.LBB17_28
.LBB17_16:                              # %sw.bb.31
	leaq	.L.str.31(%rip), %rdi
	leaq	.L__func__.linux_input_read_event(%rip), %rsi
	movzwl	-62(%rbp), %edx
	movl	-60(%rbp), %ecx
	movb	$0, %al
	callq	g_print@PLT
	movl	$0, -164(%rbp)
.LBB17_17:                              # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movslq	-164(%rbp), %rax
	cmpq	$18, %rax
	jae	.LBB17_25
# BB#18:                                # %for.body.38
                                        #   in Loop: Header=BB17_17 Depth=1
	leaq	rel_events(%rip), %rax
	movzwl	-62(%rbp), %ecx
	movslq	-164(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB17_23
# BB#19:                                # %if.then.47
	movl	$60, %eax
	movl	%eax, %esi
	leaq	-160(%rbp), %rcx
	movl	$1, -160(%rbp)
	movq	-104(%rbp), %rdx
	movq	%rdx, -152(%rbp)
	movslq	-164(%rbp), %rdx
	addq	$22, %rdx
	movl	%edx, %eax
	movl	%eax, -144(%rbp)
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	g_value_init@PLT
	cmpl	$0, -60(%rbp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jge	.LBB17_21
# BB#20:                                # %if.then.62
	xorl	%eax, %eax
	leaq	-160(%rbp), %rcx
	addq	$24, %rcx
	subl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	%rcx, %rdi
	callq	g_value_set_double@PLT
	jmp	.LBB17_22
.LBB17_21:                              # %if.else.67
	leaq	-160(%rbp), %rax
	movl	-144(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -144(%rbp)
	addq	$24, %rax
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	%rax, %rdi
	callq	g_value_set_double@PLT
.LBB17_22:                              # %if.end.75
	leaq	-160(%rbp), %rsi
	movq	-104(%rbp), %rdi
	callq	gimp_controller_event@PLT
	leaq	-160(%rbp), %rsi
	addq	$24, %rsi
	movq	%rsi, %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	g_value_unset@PLT
	jmp	.LBB17_25
.LBB17_23:                              # %if.end.79
                                        #   in Loop: Header=BB17_17 Depth=1
	jmp	.LBB17_24
.LBB17_24:                              # %for.inc.80
                                        #   in Loop: Header=BB17_17 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB17_17
.LBB17_25:                              # %for.end.82
	jmp	.LBB17_28
.LBB17_26:                              # %sw.bb.83
	leaq	.L.str.32(%rip), %rdi
	leaq	.L__func__.linux_input_read_event(%rip), %rsi
	movzwl	-62(%rbp), %edx
	movl	-60(%rbp), %ecx
	movb	$0, %al
	callq	g_print@PLT
	jmp	.LBB17_28
.LBB17_27:                              # %sw.default.87
	jmp	.LBB17_28
.LBB17_28:                              # %sw.epilog.88
	jmp	.LBB17_29
.LBB17_29:                              # %if.end.89
	movl	$1, -4(%rbp)
.LBB17_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end17:
	.size	linux_input_read_event, .Lfunc_end17-linux_input_read_event
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	linux_input_device_changed,@function
linux_input_device_changed:             # @linux_input_device_changed
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 48(%rsi)
	je	.LBB19_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	linux_input_set_device
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB19_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	linux_input_device_changed, .Lfunc_end19-linux_input_device_changed
	.cfi_endproc

	.type	controller_linux_input_type_id,@object # @controller_linux_input_type_id
	.local	controller_linux_input_type_id
	.comm	controller_linux_input_type_id,8,8
	.type	linux_input_info,@object # @linux_input_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
linux_input_info:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.size	linux_input_info, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Linux input event controller"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Sven Neumann <sven@gimp.org>, Michael Natterer <mitch@gimp.org>"
	.size	.L.str.1, 64

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"v0.2"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(c) 2004-2007, released under the GPL"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2004-2007"
	.size	.L.str.4, 10

	.type	controller_linux_input_register_type.g_define_type_info,@object # @controller_linux_input_register_type.g_define_type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
controller_linux_input_register_type.g_define_type_info:
	.short	224                     # 0xe0
	.zero	6
	.quad	0
	.quad	0
	.quad	controller_linux_input_class_intern_init
	.quad	controller_linux_input_class_finalize
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	controller_linux_input_init
	.quad	0
	.size	controller_linux_input_register_type.g_define_type_info, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ControllerLinuxInput"
	.size	.L.str.5, 21

	.type	controller_linux_input_parent_class,@object # @controller_linux_input_parent_class
	.local	controller_linux_input_parent_class
	.comm	controller_linux_input_parent_class,8,8
	.type	ControllerLinuxInput_private_offset,@object # @ControllerLinuxInput_private_offset
	.local	ControllerLinuxInput_private_offset
	.comm	ControllerLinuxInput_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"device"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp20-libgimp"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Device:"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The name of the device to read Linux Input events from."
	.size	.L.str.9, 56

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Linux Input"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-controller-linux-input"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"name"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Linux Input Events"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"state"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"No device configured"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Reading from %s"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Device not available: %s"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Device not available"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: key 0x%02x present\n"
	.size	.L.str.19, 24

	.type	.L__func__.linux_input_get_device_info,@object # @__func__.linux_input_get_device_info
.L__func__.linux_input_get_device_info:
	.asciz	"linux_input_get_device_info"
	.size	.L__func__.linux_input_get_device_info, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s: #keys = %d\n"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s: ext key 0x%02x present\n"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s: #ext_keys = %d\n"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s: button 0x%02x present\n"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s: #buttons = %d\n"
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s: rel 0x%02x present\n"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s: #rels = %d\n"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s: abs 0x%02x present [%d..%d]\n"
	.size	.L.str.27, 33

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s: #abs = %d\n"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"End of file"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s: EV_KEY code = 0x%02x\n"
	.size	.L.str.30, 26

	.type	.L__func__.linux_input_read_event,@object # @__func__.linux_input_read_event
.L__func__.linux_input_read_event:
	.asciz	"linux_input_read_event"
	.size	.L__func__.linux_input_read_event, 23

	.type	key_events,@object      # @key_events
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
key_events:
	.short	256                     # 0x100
	.zero	6
	.quad	.L.str.33
	.quad	.L.str.34
	.short	257                     # 0x101
	.zero	6
	.quad	.L.str.35
	.quad	.L.str.36
	.short	258                     # 0x102
	.zero	6
	.quad	.L.str.37
	.quad	.L.str.38
	.short	259                     # 0x103
	.zero	6
	.quad	.L.str.39
	.quad	.L.str.40
	.short	260                     # 0x104
	.zero	6
	.quad	.L.str.41
	.quad	.L.str.42
	.short	261                     # 0x105
	.zero	6
	.quad	.L.str.43
	.quad	.L.str.44
	.short	262                     # 0x106
	.zero	6
	.quad	.L.str.45
	.quad	.L.str.46
	.short	263                     # 0x107
	.zero	6
	.quad	.L.str.47
	.quad	.L.str.48
	.short	264                     # 0x108
	.zero	6
	.quad	.L.str.49
	.quad	.L.str.50
	.short	265                     # 0x109
	.zero	6
	.quad	.L.str.51
	.quad	.L.str.52
	.short	272                     # 0x110
	.zero	6
	.quad	.L.str.53
	.quad	.L.str.54
	.short	272                     # 0x110
	.zero	6
	.quad	.L.str.55
	.quad	.L.str.56
	.short	273                     # 0x111
	.zero	6
	.quad	.L.str.57
	.quad	.L.str.58
	.short	274                     # 0x112
	.zero	6
	.quad	.L.str.59
	.quad	.L.str.60
	.short	275                     # 0x113
	.zero	6
	.quad	.L.str.61
	.quad	.L.str.62
	.short	276                     # 0x114
	.zero	6
	.quad	.L.str.63
	.quad	.L.str.64
	.short	277                     # 0x115
	.zero	6
	.quad	.L.str.65
	.quad	.L.str.66
	.short	278                     # 0x116
	.zero	6
	.quad	.L.str.67
	.quad	.L.str.68
	.short	279                     # 0x117
	.zero	6
	.quad	.L.str.69
	.quad	.L.str.70
	.short	336                     # 0x150
	.zero	6
	.quad	.L.str.71
	.quad	.L.str.72
	.short	336                     # 0x150
	.zero	6
	.quad	.L.str.73
	.quad	.L.str.74
	.short	337                     # 0x151
	.zero	6
	.quad	.L.str.75
	.quad	.L.str.76
	.size	key_events, 528

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"%s: EV_REL code = 0x%02x (value = %d)\n"
	.size	.L.str.31, 39

	.type	rel_events,@object      # @rel_events
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
rel_events:
	.short	0                       # 0x0
	.zero	6
	.quad	.L.str.77
	.quad	.L.str.78
	.short	0                       # 0x0
	.zero	6
	.quad	.L.str.79
	.quad	.L.str.80
	.short	1                       # 0x1
	.zero	6
	.quad	.L.str.81
	.quad	.L.str.82
	.short	1                       # 0x1
	.zero	6
	.quad	.L.str.83
	.quad	.L.str.84
	.short	2                       # 0x2
	.zero	6
	.quad	.L.str.85
	.quad	.L.str.86
	.short	2                       # 0x2
	.zero	6
	.quad	.L.str.87
	.quad	.L.str.88
	.short	3                       # 0x3
	.zero	6
	.quad	.L.str.89
	.quad	.L.str.90
	.short	3                       # 0x3
	.zero	6
	.quad	.L.str.91
	.quad	.L.str.92
	.short	4                       # 0x4
	.zero	6
	.quad	.L.str.93
	.quad	.L.str.94
	.short	4                       # 0x4
	.zero	6
	.quad	.L.str.95
	.quad	.L.str.96
	.short	5                       # 0x5
	.zero	6
	.quad	.L.str.97
	.quad	.L.str.98
	.short	5                       # 0x5
	.zero	6
	.quad	.L.str.99
	.quad	.L.str.100
	.short	6                       # 0x6
	.zero	6
	.quad	.L.str.101
	.quad	.L.str.102
	.short	6                       # 0x6
	.zero	6
	.quad	.L.str.103
	.quad	.L.str.104
	.short	7                       # 0x7
	.zero	6
	.quad	.L.str.105
	.quad	.L.str.106
	.short	7                       # 0x7
	.zero	6
	.quad	.L.str.107
	.quad	.L.str.108
	.short	8                       # 0x8
	.zero	6
	.quad	.L.str.109
	.quad	.L.str.110
	.short	8                       # 0x8
	.zero	6
	.quad	.L.str.111
	.quad	.L.str.112
	.size	rel_events, 432

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"%s: EV_ABS code = 0x%02x (value = %d)\n"
	.size	.L.str.32, 39

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"button-0"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Button 0"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"button-1"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Button 1"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"button-2"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Button 2"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"button-3"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Button 3"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"button-4"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Button 4"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"button-5"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Button 5"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"button-6"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Button 6"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"button-7"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Button 7"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"button-8"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Button 8"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"button-9"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Button 9"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"button-mouse"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Button Mouse"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"button-left"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Button Left"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"button-right"
	.size	.L.str.57, 13

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Button Right"
	.size	.L.str.58, 13

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"button-middle"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Button Middle"
	.size	.L.str.60, 14

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"button-side"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Button Side"
	.size	.L.str.62, 12

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"button-extra"
	.size	.L.str.63, 13

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Button Extra"
	.size	.L.str.64, 13

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"button-forward"
	.size	.L.str.65, 15

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Button Forward"
	.size	.L.str.66, 15

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"button-back"
	.size	.L.str.67, 12

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Button Back"
	.size	.L.str.68, 12

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"button-task"
	.size	.L.str.69, 12

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Button Task"
	.size	.L.str.70, 12

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"button-wheel"
	.size	.L.str.71, 13

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Button Wheel"
	.size	.L.str.72, 13

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"button-gear-down"
	.size	.L.str.73, 17

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Button Gear Down"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"button-gear-up"
	.size	.L.str.75, 15

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Button Gear Up"
	.size	.L.str.76, 15

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"x-move-left"
	.size	.L.str.77, 12

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"X Move Left"
	.size	.L.str.78, 12

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"x-move-right"
	.size	.L.str.79, 13

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"X Move Right"
	.size	.L.str.80, 13

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"y-move-forward"
	.size	.L.str.81, 15

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Y Move Forward"
	.size	.L.str.82, 15

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"y-move-back"
	.size	.L.str.83, 12

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Y Move Back"
	.size	.L.str.84, 12

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"z-move-up"
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Z Move Up"
	.size	.L.str.86, 10

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"z-move-down"
	.size	.L.str.87, 12

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Z Move Down"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"x-axis-tilt-forward"
	.size	.L.str.89, 20

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"X Axis Tilt Forward"
	.size	.L.str.90, 20

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"x-axis-tilt-back"
	.size	.L.str.91, 17

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"X Axis Tilt Back"
	.size	.L.str.92, 17

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"y-axis-tilt-right"
	.size	.L.str.93, 18

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Y Axis Tilt Right"
	.size	.L.str.94, 18

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"y-axis-tilt-left"
	.size	.L.str.95, 17

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Y Axis Tilt Left"
	.size	.L.str.96, 17

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"z-axis-turn-left"
	.size	.L.str.97, 17

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Z Axis Turn Left"
	.size	.L.str.98, 17

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"z-axis-turn-right"
	.size	.L.str.99, 18

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Z Axis Turn Right"
	.size	.L.str.100, 18

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"horizontal-wheel-turn-back"
	.size	.L.str.101, 27

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Horiz. Wheel Turn Back"
	.size	.L.str.102, 23

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"horizontal-wheel-turn-forward"
	.size	.L.str.103, 30

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Horiz. Wheel Turn Forward"
	.size	.L.str.104, 26

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"dial-turn-left"
	.size	.L.str.105, 15

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Dial Turn Left"
	.size	.L.str.106, 15

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"dial-turn-right"
	.size	.L.str.107, 16

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Dial Turn Right"
	.size	.L.str.108, 16

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"wheel-turn-left"
	.size	.L.str.109, 16

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Wheel Turn Left"
	.size	.L.str.110, 16

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"wheel-turn-right"
	.size	.L.str.111, 17

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Wheel Turn Right"
	.size	.L.str.112, 17

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.113, 54

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"controller-linux-input.c"
	.size	.L.str.114, 25

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"property"
	.size	.L.str.115, 9

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"device-added"
	.size	.L.str.116, 13

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"device-removed"
	.size	.L.str.117, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
