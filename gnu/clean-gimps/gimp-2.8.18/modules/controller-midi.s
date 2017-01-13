	.text
	.file	"controller-midi.bc"
	.globl	controller_midi_get_type
	.align	16, 0x90
	.type	controller_midi_get_type,@function
controller_midi_get_type:               # @controller_midi_get_type
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
	movq	controller_midi_type_id(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	controller_midi_get_type, .Lfunc_end0-controller_midi_get_type
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
	leaq	midi_info(%rip), %rax
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
	callq	controller_midi_register_type
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_module_register, .Lfunc_end2-gimp_module_register
	.cfi_endproc

	.align	16, 0x90
	.type	controller_midi_register_type,@function
controller_midi_register_type:          # @controller_midi_register_type
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
	leaq	controller_midi_register_type.g_define_type_info(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_module_register_type@PLT
	movq	%rax, controller_midi_type_id(%rip)
	movq	controller_midi_type_id(%rip), %rax
	movq	%rax, -16(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	controller_midi_register_type, .Lfunc_end3-controller_midi_register_type
	.cfi_endproc

	.align	16, 0x90
	.type	controller_midi_class_intern_init,@function
controller_midi_class_intern_init:      # @controller_midi_class_intern_init
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
	movq	%rax, controller_midi_parent_class(%rip)
	cmpl	$0, ControllerMidi_private_offset(%rip)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	ControllerMidi_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	controller_midi_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	controller_midi_class_intern_init, .Lfunc_end4-controller_midi_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	controller_midi_class_finalize,@function
controller_midi_class_finalize:         # @controller_midi_class_finalize
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
	.size	controller_midi_class_finalize, .Lfunc_end5-controller_midi_class_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	controller_midi_init,@function
controller_midi_init:                   # @controller_midi_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 68(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 76(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 80(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 84(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 88(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 92(%rdi)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	controller_midi_init, .Lfunc_end6-controller_midi_init
	.cfi_endproc

	.align	16, 0x90
	.type	controller_midi_class_init,@function
controller_midi_class_init:             # @controller_midi_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	leaq	midi_set_property(%rip), %rdx
	leaq	midi_get_property(%rip), %r8
	leaq	midi_dispose(%rip), %r9
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%r9, 40(%rax)
	movq	-40(%rbp), %rax
	movq	%r8, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	callq	dgettext@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strconcat@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.8(%rip), %rdi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$263, %r8d              # imm = 0x107
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_param_spec_string@PLT
	movl	$1, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.10(%rip), %rdi
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$15, %r10d
	movl	$263, %r11d             # imm = 0x107
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movl	%r8d, %ecx
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movl	$263, (%rsp)            # imm = 0x107
	movl	%r11d, -88(%rbp)        # 4-byte Spill
	callq	g_param_spec_int@PLT
	movl	$2, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	dgettext@PLT
	leaq	midi_get_event_blurb(%rip), %rdx
	leaq	midi_get_event_name(%rip), %rsi
	leaq	midi_get_n_events(%rip), %rdi
	leaq	.L.str.14(%rip), %rbx
	movq	-32(%rbp), %r14
	movq	%rax, 136(%r14)
	movq	-32(%rbp), %rax
	movq	%rbx, 152(%rax)
	movq	-32(%rbp), %rax
	movq	%rbx, 192(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 160(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 168(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 176(%rax)
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	controller_midi_class_init, .Lfunc_end7-controller_midi_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	midi_dispose,@function
midi_dispose:                           # @midi_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	controller_midi_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	midi_set_device
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	controller_midi_parent_class(%rip), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	midi_dispose, .Lfunc_end8-midi_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	midi_get_property,@function
midi_get_property:                      # @midi_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	controller_midi_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_7
.LBB9_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_3
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB9_6
.LBB9_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	48(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB9_6
.LBB9_3:                                # %sw.default
	jmp	.LBB9_4
.LBB9_4:                                # %do.body
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
	leaq	.L.str.36(%rip), %rdi
	leaq	.L.str.37(%rip), %rsi
	movl	$309, %edx              # imm = 0x135
	leaq	.L.str.38(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	midi_get_property, .Lfunc_end9-midi_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	midi_set_property,@function
midi_set_property:                      # @midi_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	controller_midi_get_type@PLT
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
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	midi_set_device
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB10_6
.LBB10_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 48(%rdi)
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
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.36(%rip), %rdi
	leaq	.L.str.37(%rip), %rsi
	movl	$287, %edx              # imm = 0x11F
	leaq	.L.str.38(%rip), %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	midi_set_property, .Lfunc_end10-midi_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	midi_get_n_events,@function
midi_get_n_events:                      # @midi_get_n_events
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
	movl	$384, %eax              # imm = 0x180
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	midi_get_n_events, .Lfunc_end11-midi_get_n_events
	.cfi_endproc

	.align	16, 0x90
	.type	midi_get_event_name,@function
midi_get_event_name:                    # @midi_get_event_name
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$384, -20(%rbp)         # imm = 0x180
	jge	.LBB12_12
# BB#1:                                 # %if.then
	leaq	midi_events(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB12_11
# BB#2:                                 # %if.then.1
	cmpl	$128, -20(%rbp)
	jge	.LBB12_4
# BB#3:                                 # %if.then.3
	leaq	.L.str.39(%rip), %rdi
	movl	-20(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	midi_events(%rip), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdi
	movq	%rax, (%rdi)
	jmp	.LBB12_10
.LBB12_4:                               # %if.else
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB12_6
# BB#5:                                 # %if.then.8
	leaq	.L.str.40(%rip), %rdi
	movl	-20(%rbp), %eax
	subl	$128, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	midi_events(%rip), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdi
	movq	%rax, (%rdi)
	jmp	.LBB12_9
.LBB12_6:                               # %if.else.13
	cmpl	$384, -20(%rbp)         # imm = 0x180
	jge	.LBB12_8
# BB#7:                                 # %if.then.15
	leaq	.L.str.41(%rip), %rdi
	movl	-20(%rbp), %eax
	subl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	midi_events(%rip), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdi
	movq	%rax, (%rdi)
.LBB12_8:                               # %if.end
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.21
	jmp	.LBB12_10
.LBB12_10:                              # %if.end.22
	jmp	.LBB12_11
.LBB12_11:                              # %if.end.23
	leaq	midi_events(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_13
.LBB12_12:                              # %if.end.27
	movq	$0, -8(%rbp)
.LBB12_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	midi_get_event_name, .Lfunc_end12-midi_get_event_name
	.cfi_endproc

	.align	16, 0x90
	.type	midi_get_event_blurb,@function
midi_get_event_blurb:                   # @midi_get_event_blurb
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$383, -20(%rbp)         # imm = 0x17F
	jg	.LBB13_12
# BB#1:                                 # %if.then
	leaq	midi_events(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	jne	.LBB13_11
# BB#2:                                 # %if.then.1
	cmpl	$127, -20(%rbp)
	jg	.LBB13_4
# BB#3:                                 # %if.then.3
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.42(%rip), %rsi
	callq	dgettext@PLT
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	midi_events(%rip), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB13_10
.LBB13_4:                               # %if.else
	cmpl	$255, -20(%rbp)
	jg	.LBB13_6
# BB#5:                                 # %if.then.9
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.43(%rip), %rsi
	callq	dgettext@PLT
	movl	-20(%rbp), %ecx
	subl	$128, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	midi_events(%rip), %rdi
	movslq	-20(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB13_9
.LBB13_6:                               # %if.else.15
	cmpl	$383, -20(%rbp)         # imm = 0x17F
	jg	.LBB13_8
# BB#7:                                 # %if.then.17
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.44(%rip), %rsi
	callq	dgettext@PLT
	movl	-20(%rbp), %ecx
	subl	$256, %ecx              # imm = 0x100
	movq	%rax, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	midi_events(%rip), %rdi
	movslq	-20(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rdi
	movq	%rax, 8(%rdi)
.LBB13_8:                               # %if.end
	jmp	.LBB13_9
.LBB13_9:                               # %if.end.24
	jmp	.LBB13_10
.LBB13_10:                              # %if.end.25
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.26
	leaq	midi_events(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_13
.LBB13_12:                              # %if.end.30
	movq	$0, -8(%rbp)
.LBB13_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	midi_get_event_blurb, .Lfunc_end13-midi_get_event_blurb
	.cfi_endproc

	.align	16, 0x90
	.type	midi_set_device,@function
midi_set_device:                        # @midi_set_device
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	$1, 68(%rsi)
	movq	-16(%rbp), %rsi
	movl	$0, 72(%rsi)
	movq	-16(%rbp), %rsi
	movl	$0, 76(%rsi)
	movq	-16(%rbp), %rsi
	movl	$-1, 80(%rsi)
	movq	-16(%rbp), %rsi
	movl	$-1, 84(%rsi)
	movq	-16(%rbp), %rsi
	movl	$-1, 88(%rsi)
	movq	-16(%rbp), %rsi
	movl	$-1, 92(%rsi)
	movq	-16(%rbp), %rsi
	cmpq	$0, 56(%rsi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	64(%rax), %edi
	callq	g_source_remove@PLT
	movq	-16(%rbp), %rcx
	movl	$0, 64(%rcx)
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_io_channel_unref@PLT
	movq	-16(%rbp), %rcx
	movq	$0, 56(%rcx)
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
.LBB14_4:                               # %if.end.8
	movq	-24(%rbp), %rdi
	callq	g_strdup@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.15(%rip), %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-16(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	je	.LBB14_10
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	strlen@PLT
	cmpq	$0, %rax
	je	.LBB14_10
# BB#6:                                 # %if.then.17
	movl	$2048, %esi             # imm = 0x800
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movb	$0, %al
	callq	open@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB14_8
# BB#7:                                 # %if.then.20
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	dgettext@PLT
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.18(%rip), %rsi
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
	movl	-28(%rbp), %edi
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
	movl	$57, %esi
	leaq	midi_read_event(%rip), %rdx
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_io_add_watch@PLT
	movq	-16(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB14_12
.LBB14_8:                               # %if.else
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.18(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
# BB#9:                                 # %if.end.37
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.38
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.20(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.18(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB14_11:                              # %if.end.40
	movl	$0, -4(%rbp)
.LBB14_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	midi_set_device, .Lfunc_end14-midi_set_device
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4638637247447433216     # double 127
	.text
	.align	16, 0x90
	.type	midi_read_event,@function
midi_read_event:                        # @midi_read_event
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	controller_midi_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -84(%rbp)
	movq	-16(%rbp), %rdi
	movl	$15, %ecx
	movl	%ecx, %edx
	leaq	-71(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-56(%rbp), %r8
	callq	g_io_channel_read_chars@PLT
	movl	%eax, -44(%rbp)
	movl	%eax, %r9d
	testl	%eax, %eax
	movl	%r9d, -108(%rbp)        # 4-byte Spill
	je	.LBB15_1
	jmp	.LBB15_59
.LBB15_59:                              # %entry
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB15_1
	jmp	.LBB15_60
.LBB15_60:                              # %entry
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB15_5
	jmp	.LBB15_6
.LBB15_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movl	64(%rax), %edi
	callq	g_source_remove@PLT
	movq	-40(%rbp), %rcx
	movl	$0, 64(%rcx)
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	g_io_channel_unref@PLT
	movq	-40(%rbp), %rcx
	movq	$0, 56(%rcx)
	cmpq	$0, -56(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	dgettext@PLT
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.18(%rip), %rsi
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
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.18(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB15_4:                               # %if.end
	movl	$0, -4(%rbp)
	jmp	.LBB15_58
.LBB15_5:                               # %sw.bb.10
	movl	$1, -4(%rbp)
	jmp	.LBB15_58
.LBB15_6:                               # %sw.default
	jmp	.LBB15_7
.LBB15_7:                               # %sw.epilog
	jmp	.LBB15_8
.LBB15_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-84(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jae	.LBB15_57
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB15_8 Depth=1
	movslq	-84(%rbp), %rax
	movzbl	-71(%rbp,%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB15_27
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB15_8 Depth=1
	movslq	-84(%rbp), %rax
	movzbl	-71(%rbp,%rax), %ecx
	cmpl	$248, %ecx
	jl	.LBB15_14
# BB#11:                                # %if.then.20
                                        #   in Loop: Header=BB15_8 Depth=1
	movslq	-84(%rbp), %rax
	movzbl	-71(%rbp,%rax), %ecx
	addl	$-248, %ecx
	subl	$7, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	ja	.LBB15_13
	jmp	.LBB15_12
.LBB15_12:                              # %sw.bb.24
                                        #   in Loop: Header=BB15_8 Depth=1
	jmp	.LBB15_13
.LBB15_13:                              # %sw.epilog.25
                                        #   in Loop: Header=BB15_8 Depth=1
	jmp	.LBB15_26
.LBB15_14:                              # %if.else.26
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	movl	$0, 68(%rax)
	movslq	-84(%rbp), %rax
	movzbl	-71(%rbp,%rax), %ecx
	cmpl	$240, %ecx
	jl	.LBB15_24
# BB#15:                                # %if.then.32
                                        #   in Loop: Header=BB15_8 Depth=1
	movslq	-84(%rbp), %rax
	movzbl	-71(%rbp,%rax), %ecx
	addl	$-240, %ecx
	movl	%ecx, %eax
	subl	$7, %ecx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	ja	.LBB15_23
# BB#62:                                # %if.then.32
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.LJTI15_1(%rip), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB15_16:                              # %sw.bb.36
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.22(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	$1, 68(%rax)
	movb	$0, %al
	callq	g_print@PLT
	jmp	.LBB15_23
.LBB15_17:                              # %sw.bb.38
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.23(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	$1, 68(%rax)
	movb	$0, %al
	callq	g_print@PLT
	jmp	.LBB15_23
.LBB15_18:                              # %sw.bb.40
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.24(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	$1, 68(%rax)
	movb	$0, %al
	callq	g_print@PLT
	jmp	.LBB15_23
.LBB15_19:                              # %sw.bb.42
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.25(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	$1, 68(%rax)
	movb	$0, %al
	callq	g_print@PLT
	jmp	.LBB15_23
.LBB15_20:                              # %sw.bb.44
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.26(%rip), %rdi
	movb	$0, %al
	callq	g_print@PLT
	jmp	.LBB15_23
.LBB15_21:                              # %sw.bb.45
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.27(%rip), %rdi
	movb	$0, %al
	callq	g_print@PLT
	jmp	.LBB15_23
.LBB15_22:                              # %sw.bb.46
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.28(%rip), %rdi
	movb	$0, %al
	callq	g_print@PLT
.LBB15_23:                              # %sw.epilog.47
                                        #   in Loop: Header=BB15_8 Depth=1
	jmp	.LBB15_25
.LBB15_24:                              # %if.else.48
                                        #   in Loop: Header=BB15_8 Depth=1
	movslq	-84(%rbp), %rax
	movzbl	-71(%rbp,%rax), %ecx
	sarl	$4, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 72(%rax)
	movslq	-84(%rbp), %rax
	movzbl	-71(%rbp,%rax), %ecx
	andl	$15, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 76(%rax)
	movq	-40(%rbp), %rax
	movl	$-1, 80(%rax)
	movq	-40(%rbp), %rax
	movl	$-1, 84(%rax)
	movq	-40(%rbp), %rax
	movl	$-1, 88(%rax)
	movq	-40(%rbp), %rax
	movl	$-1, 92(%rax)
.LBB15_25:                              # %if.end.56
                                        #   in Loop: Header=BB15_8 Depth=1
	jmp	.LBB15_26
.LBB15_26:                              # %if.end.57
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB15_8
.LBB15_27:                              # %if.end.58
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB15_29
# BB#28:                                # %if.then.61
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB15_8
.LBB15_29:                              # %if.end.63
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	movl	72(%rax), %ecx
	addl	$-8, %ecx
	movl	%ecx, %eax
	subl	$6, %ecx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	ja	.LBB15_56
# BB#61:                                # %if.end.63
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.LJTI15_0(%rip), %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB15_30:                              # %sw.bb.65
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$-1, 80(%rax)
	jne	.LBB15_32
# BB#31:                                # %if.then.69
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %rdx
	movzbl	-71(%rbp,%rdx), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 80(%rdx)
	jmp	.LBB15_8
.LBB15_32:                              # %if.end.75
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$-1, 84(%rax)
	jne	.LBB15_34
# BB#33:                                # %if.then.79
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %rdx
	movzbl	-71(%rbp,%rdx), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 84(%rdx)
.LBB15_34:                              # %if.end.85
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$9, 72(%rax)
	jne	.LBB15_37
# BB#35:                                # %land.lhs.true
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	.LBB15_37
# BB#36:                                # %if.then.92
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	movl	$8, 72(%rax)
.LBB15_37:                              # %if.end.94
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$9, 72(%rax)
	jne	.LBB15_39
# BB#38:                                # %if.then.98
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.29(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	76(%rax), %esi
	movq	-40(%rbp), %rax
	movl	80(%rax), %edx
	movq	-40(%rbp), %rax
	movl	84(%rax), %ecx
	movb	$0, %al
	callq	g_print@PLT
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %r8
	movl	76(%r8), %esi
	movq	-40(%rbp), %r8
	movl	80(%r8), %edx
	movq	-40(%rbp), %r8
	cvtsi2sdl	84(%r8), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	midi_event
	jmp	.LBB15_43
.LBB15_39:                              # %if.else.106
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$8, 72(%rax)
	jne	.LBB15_41
# BB#40:                                # %if.then.110
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.30(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	76(%rax), %esi
	movq	-40(%rbp), %rax
	movl	80(%rax), %edx
	movq	-40(%rbp), %rax
	movl	84(%rax), %ecx
	movb	$0, %al
	callq	g_print@PLT
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %r8
	movl	76(%r8), %esi
	movq	-40(%rbp), %r8
	movl	80(%r8), %ecx
	addl	$128, %ecx
	movq	-40(%rbp), %r8
	cvtsi2sdl	84(%r8), %xmm1
	divsd	%xmm0, %xmm1
	movl	%ecx, %edx
	movaps	%xmm1, %xmm0
	callq	midi_event
	jmp	.LBB15_42
.LBB15_41:                              # %if.else.119
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.31(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	76(%rax), %esi
	movq	-40(%rbp), %rax
	movl	80(%rax), %edx
	movq	-40(%rbp), %rax
	movl	84(%rax), %ecx
	movb	$0, %al
	callq	g_print@PLT
.LBB15_42:                              # %if.end.123
                                        #   in Loop: Header=BB15_8 Depth=1
	jmp	.LBB15_43
.LBB15_43:                              # %if.end.124
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	movl	$-1, 80(%rax)
	movq	-40(%rbp), %rax
	movl	$-1, 84(%rax)
	jmp	.LBB15_56
.LBB15_44:                              # %sw.bb.127
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$-1, 80(%rax)
	jne	.LBB15_46
# BB#45:                                # %if.then.131
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %rdx
	movzbl	-71(%rbp,%rdx), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 80(%rdx)
	jmp	.LBB15_8
.LBB15_46:                              # %if.end.137
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$-1, 84(%rax)
	jne	.LBB15_48
# BB#47:                                # %if.then.141
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %rdx
	movzbl	-71(%rbp,%rdx), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 84(%rdx)
.LBB15_48:                              # %if.end.147
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.32(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	76(%rax), %esi
	movq	-40(%rbp), %rax
	movl	80(%rax), %edx
	movq	-40(%rbp), %rax
	movl	84(%rax), %ecx
	movb	$0, %al
	callq	g_print@PLT
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %r8
	movl	76(%r8), %esi
	movq	-40(%rbp), %r8
	movl	80(%r8), %ecx
	addl	$128, %ecx
	addl	$128, %ecx
	movq	-40(%rbp), %r8
	cvtsi2sdl	84(%r8), %xmm1
	divsd	%xmm0, %xmm1
	movl	%ecx, %edx
	movaps	%xmm1, %xmm0
	callq	midi_event
	movq	-40(%rbp), %rdi
	movl	$-1, 80(%rdi)
	movq	-40(%rbp), %rdi
	movl	$-1, 84(%rdi)
	jmp	.LBB15_56
.LBB15_49:                              # %sw.bb.160
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.33(%rip), %rdi
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %rdx
	movzbl	-71(%rbp,%rdx), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 80(%rdx)
	movq	-40(%rbp), %rdx
	movl	76(%rdx), %esi
	movq	-40(%rbp), %rdx
	movl	80(%rdx), %edx
	movb	$0, %al
	callq	g_print@PLT
	movq	-40(%rbp), %rdi
	movl	$-1, 80(%rdi)
	jmp	.LBB15_56
.LBB15_50:                              # %sw.bb.169
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.34(%rip), %rdi
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %rdx
	movzbl	-71(%rbp,%rdx), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 84(%rdx)
	movq	-40(%rbp), %rdx
	movl	76(%rdx), %esi
	movq	-40(%rbp), %rdx
	movl	84(%rdx), %edx
	movb	$0, %al
	callq	g_print@PLT
	movq	-40(%rbp), %rdi
	movl	$-1, 84(%rdi)
	jmp	.LBB15_56
.LBB15_51:                              # %sw.bb.178
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB15_53
# BB#52:                                # %if.then.182
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %rdx
	movzbl	-71(%rbp,%rdx), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 92(%rdx)
	jmp	.LBB15_8
.LBB15_53:                              # %if.end.188
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$-1, 88(%rax)
	jne	.LBB15_55
# BB#54:                                # %if.then.192
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %rdx
	movzbl	-71(%rbp,%rdx), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 88(%rdx)
.LBB15_55:                              # %if.end.198
                                        #   in Loop: Header=BB15_8 Depth=1
	leaq	.L.str.35(%rip), %rdi
	movq	-40(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	88(%rax), %edx
	shll	$7, %edx
	orl	%edx, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 84(%rax)
	movq	-40(%rbp), %rax
	movl	76(%rax), %esi
	movq	-40(%rbp), %rax
	movl	84(%rax), %edx
	movb	$0, %al
	callq	g_print@PLT
	movq	-40(%rbp), %rdi
	movl	$-1, 88(%rdi)
	movq	-40(%rbp), %rdi
	movl	$-1, 92(%rdi)
	movq	-40(%rbp), %rdi
	movl	$-1, 84(%rdi)
.LBB15_56:                              # %sw.epilog.207
                                        #   in Loop: Header=BB15_8 Depth=1
	jmp	.LBB15_8
.LBB15_57:                              # %while.end
	movl	$1, -4(%rbp)
.LBB15_58:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	midi_read_event, .Lfunc_end15-midi_read_event
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI15_0:
	.long	.LBB15_30-.LJTI15_0
	.long	.LBB15_30-.LJTI15_0
	.long	.LBB15_30-.LJTI15_0
	.long	.LBB15_44-.LJTI15_0
	.long	.LBB15_49-.LJTI15_0
	.long	.LBB15_50-.LJTI15_0
	.long	.LBB15_51-.LJTI15_0
.LJTI15_1:
	.long	.LBB15_16-.LJTI15_1
	.long	.LBB15_17-.LJTI15_1
	.long	.LBB15_18-.LJTI15_1
	.long	.LBB15_19-.LJTI15_1
	.long	.LBB15_20-.LJTI15_1
	.long	.LBB15_20-.LJTI15_1
	.long	.LBB15_21-.LJTI15_1
	.long	.LBB15_22-.LJTI15_1

	.text
	.align	16, 0x90
	.type	midi_event,@function
midi_event:                             # @midi_event
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.LBB16_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$-1, 48(%rax)
	je	.LBB16_3
# BB#2:                                 # %lor.lhs.false.2
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jne	.LBB16_4
.LBB16_3:                               # %if.then
	xorl	%esi, %esi
	movl	$48, %eax
	movl	%eax, %edx
	leaq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset@PLT
	movl	$1, -72(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$60, %r8d
	movl	%r8d, %esi
	leaq	-72(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movl	-16(%rbp), %r8d
	movl	%r8d, -56(%rbp)
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	g_value_init@PLT
	leaq	-72(%rbp), %rcx
	addq	$24, %rcx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_value_set_double@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_controller_event@PLT
	leaq	-72(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_value_unset@PLT
.LBB16_4:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	midi_event, .Lfunc_end16-midi_event
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB17_2
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
.LBB17_2:                               # %entry
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
.Lfunc_end17:
	.size	g_warning, .Lfunc_end17-g_warning
	.cfi_endproc

	.type	controller_midi_type_id,@object # @controller_midi_type_id
	.local	controller_midi_type_id
	.comm	controller_midi_type_id,8,8
	.type	midi_info,@object       # @midi_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
midi_info:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.size	midi_info, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MIDI event controller"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.1, 34

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

	.type	controller_midi_register_type.g_define_type_info,@object # @controller_midi_register_type.g_define_type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
controller_midi_register_type.g_define_type_info:
	.short	224                     # 0xe0
	.zero	6
	.quad	0
	.quad	0
	.quad	controller_midi_class_intern_init
	.quad	controller_midi_class_finalize
	.quad	0
	.short	96                      # 0x60
	.short	0                       # 0x0
	.zero	4
	.quad	controller_midi_init
	.quad	0
	.size	controller_midi_register_type.g_define_type_info, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ControllerMidi"
	.size	.L.str.5, 15

	.type	controller_midi_parent_class,@object # @controller_midi_parent_class
	.local	controller_midi_parent_class
	.comm	controller_midi_parent_class,8,8
	.type	ControllerMidi_private_offset,@object # @ControllerMidi_private_offset
	.local	ControllerMidi_private_offset
	.comm	ControllerMidi_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp20-libgimp"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The name of the device to read MIDI events from."
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"device"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Device:"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"channel"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Channel:"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"The MIDI channel to read events from. Set to -1 for reading from all MIDI channels."
	.size	.L.str.12, 84

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"MIDI"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-controller-midi"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"name"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"MIDI Events"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Reading from %s"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"state"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Device not available: %s"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"No device configured"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"End of file"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"MIDI: sysex start\n"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"MIDI: time code\n"
	.size	.L.str.23, 17

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"MIDI: song position\n"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"MIDI: song select\n"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"MIDI: undefined system message\n"
	.size	.L.str.26, 32

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"MIDI: tune request\n"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"MIDI: sysex end\n"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"MIDI (ch %02d): note on  (%02x vel %02x)\n"
	.size	.L.str.29, 42

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"MIDI (ch %02d): note off (%02x vel %02x)\n"
	.size	.L.str.30, 42

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"MIDI (ch %02d): polyphonic aftertouch (%02x pressure %02x)\n"
	.size	.L.str.31, 60

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"MIDI (ch %02d): controller %d (value %d)\n"
	.size	.L.str.32, 42

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"MIDI (ch %02d): program change (%d)\n"
	.size	.L.str.33, 37

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"MIDI (ch %02d): channel aftertouch (%d)\n"
	.size	.L.str.34, 41

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"MIDI (ch %02d): pitch (%d)\n"
	.size	.L.str.35, 28

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.36, 54

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"controller-midi.c"
	.size	.L.str.37, 18

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"property"
	.size	.L.str.38, 9

	.type	midi_events,@object     # @midi_events
	.local	midi_events
	.comm	midi_events,6144,16
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"note-on-%02x"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"note-off-%02x"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"controller-%03d"
	.size	.L.str.41, 16

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Note %02x on"
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Note %02x off"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Controller %03d"
	.size	.L.str.44, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
