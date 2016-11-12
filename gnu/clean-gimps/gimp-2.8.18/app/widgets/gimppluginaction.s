	.text
	.file	"gimppluginaction.bc"
	.globl	gimp_plug_in_action_get_type
	.align	16, 0x90
	.type	gimp_plug_in_action_get_type,@function
gimp_plug_in_action_get_type:           # @gimp_plug_in_action_get_type
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
	movq	gimp_plug_in_action_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_plug_in_action_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_action_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$232, %edx
	movabsq	$gimp_plug_in_action_class_intern_init, %rdi
	movl	$72, %r8d
	movabsq	$gimp_plug_in_action_init, %rcx
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
	movabsq	$gimp_plug_in_action_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_plug_in_action_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_action_get_type, .Lfunc_end0-gimp_plug_in_action_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_action_class_intern_init,@function
gimp_plug_in_action_class_intern_init:  # @gimp_plug_in_action_class_intern_init
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
	movq	%rax, gimp_plug_in_action_parent_class
	cmpl	$0, GimpPlugInAction_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPlugInAction_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_plug_in_action_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_action_class_intern_init, .Lfunc_end1-gimp_plug_in_action_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_action_init,@function
gimp_plug_in_action_init:               # @gimp_plug_in_action_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_action_init, .Lfunc_end2-gimp_plug_in_action_init
	.cfi_endproc

	.globl	gimp_plug_in_action_new
	.align	16, 0x90
	.type	gimp_plug_in_action_new,@function
gimp_plug_in_action_new:                # @gimp_plug_in_action_new
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
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	callq	gimp_plug_in_action_get_type
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-40(%rbp), %r11
	movq	-48(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	-64(%rbp), %r15
	movq	-72(%rbp), %r12
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%rbx, %r8
	movq	%r14, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r15, 16(%rsp)
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	g_object_new
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_action_new, .Lfunc_end3-gimp_plug_in_action_new
	.cfi_endproc

	.globl	gimp_plug_in_action_selected
	.align	16, 0x90
	.type	gimp_plug_in_action_selected,@function
gimp_plug_in_action_selected:           # @gimp_plug_in_action_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_action_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.6, %rdi
	movabsq	$.L__func__.gimp_plug_in_action_selected, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	action_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_action_selected, .Lfunc_end4-gimp_plug_in_action_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_action_class_init,@function
gimp_plug_in_action_class_init:         # @gimp_plug_in_action_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp22:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_plug_in_action_connect_proxy, %rsi
	movabsq	$gimp_plug_in_action_activate, %rdi
	movabsq	$gimp_plug_in_action_get_property, %rcx
	movabsq	$gimp_plug_in_action_set_property, %rdx
	movabsq	$gimp_plug_in_action_finalize, %r8
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%r8, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 136(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 176(%rax)
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movabsq	$.L.str.8, %rdi
	movl	$1, %edx
	movl	$224, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r10
	movl	$4, %r8d
	movl	%r8d, %r11d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r11, -72(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, action_signals
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plug_in_action_class_init, .Lfunc_end5-gimp_plug_in_action_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_action_finalize,@function
gimp_plug_in_action_finalize:           # @gimp_plug_in_action_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_action_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_plug_in_action_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_plug_in_action_finalize, .Lfunc_end6-gimp_plug_in_action_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_action_set_property,@function
gimp_plug_in_action_set_property:       # @gimp_plug_in_action_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_action_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_4
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB7_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB7_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 64(%rdi)
	jmp	.LBB7_7
.LBB7_4:                                # %sw.default
	jmp	.LBB7_5
.LBB7_5:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$156, %edx
	movabsq	$.L.str.11, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB7_7
.LBB7_7:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_plug_in_action_set_property, .Lfunc_end7-gimp_plug_in_action_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_action_get_property,@function
gimp_plug_in_action_get_property:       # @gimp_plug_in_action_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_action_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$134, %edx
	movabsq	$.L.str.11, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_plug_in_action_get_property, .Lfunc_end8-gimp_plug_in_action_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_action_activate,@function
gimp_plug_in_action_activate:           # @gimp_plug_in_action_activate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_action_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rsi
	callq	gimp_plug_in_action_selected
.LBB9_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_plug_in_action_activate, .Lfunc_end9-gimp_plug_in_action_activate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_action_connect_proxy,@function
gimp_plug_in_action_connect_proxy:      # @gimp_plug_in_action_connect_proxy
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_action_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_plug_in_action_parent_class, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_action_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_image_menu_item_get_type
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
# BB#4:                                 # %if.then.7
	movl	$1, -44(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_6:                               # %if.end
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.10
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_15
# BB#8:                                 # %land.lhs.true.12
	movq	-24(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB10_15
# BB#9:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_plug_in_procedure_get_pixbuf
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB10_14
# BB#10:                                # %if.then.19
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_settings
	movl	$1, %esi
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_icon_size_lookup_for_settings
	movl	-68(%rbp), %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%esi, -112(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_width
	movl	-112(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jne	.LBB10_12
# BB#11:                                # %lor.lhs.false
	movl	-72(%rbp), %eax
	movq	-56(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_height
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB10_13
.LBB10_12:                              # %if.then.30
	movl	$2, %ecx
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	gdk_pixbuf_scale_simple
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB10_13:                              # %if.end.33
	movq	-56(%rbp), %rdi
	callq	gtk_image_new_from_pixbuf
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_image_menu_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_menu_item_set_image
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB10_14:                              # %if.end.37
	jmp	.LBB10_15
.LBB10_15:                              # %if.end.38
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_plug_in_action_connect_proxy, .Lfunc_end10-gimp_plug_in_action_connect_proxy
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
	movl	$.L.str.6, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.type	gimp_plug_in_action_get_type.g_define_type_id__volatile,@object # @gimp_plug_in_action_get_type.g_define_type_id__volatile
	.local	gimp_plug_in_action_get_type.g_define_type_id__volatile
	.comm	gimp_plug_in_action_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPlugInAction"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"label"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tooltip"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"stock-id"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"procedure"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Gimp-Widgets"
	.size	.L.str.6, 13

	.type	.L__func__.gimp_plug_in_action_selected,@object # @__func__.gimp_plug_in_action_selected
.L__func__.gimp_plug_in_action_selected:
	.asciz	"gimp_plug_in_action_selected"
	.size	.L__func__.gimp_plug_in_action_selected, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_PLUG_IN_ACTION (action)"
	.size	.L.str.7, 32

	.type	action_signals,@object  # @action_signals
	.local	action_signals
	.comm	action_signals,4,4
	.type	gimp_plug_in_action_parent_class,@object # @gimp_plug_in_action_parent_class
	.local	gimp_plug_in_action_parent_class
	.comm	gimp_plug_in_action_parent_class,8,8
	.type	GimpPlugInAction_private_offset,@object # @GimpPlugInAction_private_offset
	.local	GimpPlugInAction_private_offset
	.comm	GimpPlugInAction_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"selected"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimppluginaction.c"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
