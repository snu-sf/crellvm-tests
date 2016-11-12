	.text
	.file	"gimprectangletool.bc"
	.globl	gimp_rectangle_tool_interface_get_type
	.align	16, 0x90
	.type	gimp_rectangle_tool_interface_get_type,@function
gimp_rectangle_tool_interface_get_type: # @gimp_rectangle_tool_interface_get_type
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
	subq	$16, %rsp
	cmpq	$0, gimp_rectangle_tool_interface_get_type.iface_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_rectangle_tool_interface_get_type.iface_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_rectangle_tool_interface_get_type.iface_type
	movq	gimp_rectangle_tool_interface_get_type.iface_type, %rdi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_add_prerequisite
.LBB0_2:                                # %if.end
	movq	gimp_rectangle_tool_interface_get_type.iface_type, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rectangle_tool_interface_get_type, .Lfunc_end0-gimp_rectangle_tool_interface_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_iface_base_init,@function
gimp_rectangle_tool_iface_base_init:    # @gimp_rectangle_tool_iface_base_init
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	cmpl	$0, gimp_rectangle_tool_iface_base_init.initialized
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.30, %rdi
	movl	$1, %edx
	movl	$32, %ecx
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
	movq	-16(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r8, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_signal_new
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %edx
	movl	%eax, gimp_rectangle_tool_signals
	movq	-16(%rbp), %r10
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r11         # 8-byte Reload
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%r11, %rdx
	movl	$227, (%rsp)
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	g_param_spec_int
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.2, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	callq	g_param_spec_int
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	callq	g_param_spec_int
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	callq	g_param_spec_int
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_constraint_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_precision_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movl	$1, gimp_rectangle_tool_iface_base_init.initialized
.LBB1_2:                                # %if.end
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rectangle_tool_iface_base_init, .Lfunc_end1-gimp_rectangle_tool_iface_base_init
	.cfi_endproc

	.globl	gimp_rectangle_tool_init
	.align	16, 0x90
	.type	gimp_rectangle_tool_init,@function
gimp_rectangle_tool_init:               # @gimp_rectangle_tool_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rectangle_tool_init, .Lfunc_end2-gimp_rectangle_tool_init
	.cfi_endproc

	.globl	gimp_rectangle_tool_install_properties
	.align	16, 0x90
	.type	gimp_rectangle_tool_install_properties,@function
gimp_rectangle_tool_install_properties: # @gimp_rectangle_tool_install_properties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %esi
	movabsq	$.L.str.1, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$2, %esi
	movabsq	$.L.str.2, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$3, %esi
	movabsq	$.L.str.3, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$4, %esi
	movabsq	$.L.str.4, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$5, %esi
	movabsq	$.L.str.5, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$6, %esi
	movabsq	$.L.str.6, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	movl	$7, %esi
	movabsq	$.L.str.7, %rdx
	movq	-8(%rbp), %rdi
	callq	g_object_class_override_property
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rectangle_tool_install_properties, .Lfunc_end3-gimp_rectangle_tool_install_properties
	.cfi_endproc

	.globl	gimp_rectangle_tool_set_constraint
	.align	16, 0x90
	.type	gimp_rectangle_tool_set_constraint,@function
gimp_rectangle_tool_set_constraint:     # @gimp_rectangle_tool_set_constraint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_set_constraint, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 100(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	gimp_rectangle_tool_clamp
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_update_handle_sizes
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_rectangle_change_complete
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB4_13:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_rectangle_tool_set_constraint, .Lfunc_end4-gimp_rectangle_tool_set_constraint
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_get_private,@function
gimp_rectangle_tool_get_private:        # @gimp_rectangle_tool_get_private
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, gimp_rectangle_tool_get_private.private_key
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.31, %rdi
	callq	g_quark_from_static_string
	movl	%eax, gimp_rectangle_tool_get_private.private_key
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	gimp_rectangle_tool_get_private.private_key, %esi
	movq	%rax, %rdi
	callq	g_object_get_qdata
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	movl	$208, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_rectangle_tool_private_finalize, %rsi
	movl	gimp_rectangle_tool_get_private.private_key, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_object_set_qdata_full
.LBB5_4:                                # %if.end.6
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rectangle_tool_get_private, .Lfunc_end5-gimp_rectangle_tool_get_private
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_clamp,@function
gimp_rectangle_tool_clamp:              # @gimp_rectangle_tool_clamp
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_rectangle_tool_clamp_width
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_rectangle_tool_clamp_height
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_rectangle_tool_clamp, .Lfunc_end6-gimp_rectangle_tool_clamp
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_update_highlight,@function
gimp_rectangle_tool_update_highlight:   # @gimp_rectangle_tool_update_highlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -16(%rbp)
	movl	$0, -44(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_6
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movabsq	$.L.str.42, %rsi
	leaq	-44(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -44(%rbp)
	je	.LBB7_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB7_5
.LBB7_4:                                # %if.then.14
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_set_highlight
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_get_public_rect
	leaq	-64(%rbp), %rsi
	cvttsd2si	-72(%rbp), %eax
	movl	%eax, -64(%rbp)
	cvttsd2si	-80(%rbp), %eax
	movl	%eax, -60(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_set_highlight
.LBB7_6:                                # %if.end.19
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_rectangle_tool_update_highlight, .Lfunc_end7-gimp_rectangle_tool_update_highlight
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_update_handle_sizes,@function
gimp_rectangle_tool_update_handle_sizes: # @gimp_rectangle_tool_update_handle_sizes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_2
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB8_3
.LBB8_2:                                # %if.then
	jmp	.LBB8_57
.LBB8_3:                                # %if.end
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_get_public_rect
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	mulsd	200(%rax), %xmm0
	cvttsd2si	%xmm0, %r9d
	movl	%r9d, -124(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	mulsd	208(%rax), %xmm0
	cvttsd2si	%xmm0, %r9d
	movl	%r9d, -128(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-96(%rbp), %xmm0
	movq	-72(%rbp), %rax
	mulsd	200(%rax), %xmm0
	cvttsd2si	%xmm0, %r9d
	movl	%r9d, -132(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-104(%rbp), %xmm0
	movq	-72(%rbp), %rax
	mulsd	208(%rax), %xmm0
	cvttsd2si	%xmm0, %r9d
	movl	%r9d, -136(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_display_shell_scroll_get_scaled_viewport
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movl	-132(%rbp), %r9d
	movl	%r9d, -84(%rbp)
	movl	-136(%rbp), %r9d
	movl	%r9d, -88(%rbp)
	movl	-124(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	-140(%rbp), %r8d
	movl	-144(%rbp), %r11d
	movl	-148(%rbp), %ebx
	movl	-152(%rbp), %r14d
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r11d, %r9d
	movl	%ebx, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-184(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%rsp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_intersect
	movb	$1, %r13b
	cmpl	$45, -76(%rbp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movb	%r13b, -197(%rbp)       # 1-byte Spill
	jl	.LBB8_5
# BB#4:                                 # %lor.rhs
	cmpl	$45, -80(%rbp)
	setl	%al
	movb	%al, -197(%rbp)         # 1-byte Spill
.LBB8_5:                                # %lor.end
	movb	-197(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-64(%rbp), %rdx
	movl	%ecx, 144(%rdx)
	movq	-64(%rbp), %rdx
	cmpl	$0, 144(%rdx)
	je	.LBB8_31
# BB#6:                                 # %if.then.23
	movq	-64(%rbp), %rax
	movl	$15, 128(%rax)
	movq	-64(%rbp), %rax
	movl	$15, 132(%rax)
	cmpl	$2147483647, -84(%rbp)  # imm = 0x7FFFFFFF
	jle	.LBB8_8
# BB#7:                                 # %cond.true
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB8_18
.LBB8_8:                                # %cond.false
	movl	-84(%rbp), %eax
	movl	-84(%rbp), %ecx
	subl	$2, %ecx
	cmpl	$15, %ecx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jge	.LBB8_10
# BB#9:                                 # %cond.true.29
	movl	-84(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false.31
	movl	$15, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB8_11
.LBB8_11:                               # %cond.end
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	-208(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB8_16
# BB#12:                                # %cond.true.34
	movl	-84(%rbp), %eax
	subl	$2, %eax
	cmpl	$15, %eax
	jge	.LBB8_14
# BB#13:                                # %cond.true.38
	movl	-84(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB8_15
.LBB8_14:                               # %cond.false.40
	movl	$15, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB8_15
.LBB8_15:                               # %cond.end.41
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB8_17
.LBB8_16:                               # %cond.false.43
	movl	-84(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB8_17:                               # %cond.end.44
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB8_18:                               # %cond.end.46
	movl	-204(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%eax, 136(%rcx)
	cmpl	$2147483647, -88(%rbp)  # imm = 0x7FFFFFFF
	jle	.LBB8_20
# BB#19:                                # %cond.true.50
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB8_30
.LBB8_20:                               # %cond.false.51
	movl	-88(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	$2, %ecx
	cmpl	$15, %ecx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jge	.LBB8_22
# BB#21:                                # %cond.true.55
	movl	-88(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB8_23
.LBB8_22:                               # %cond.false.57
	movl	$15, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB8_23
.LBB8_23:                               # %cond.end.58
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	-228(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB8_28
# BB#24:                                # %cond.true.62
	movl	-88(%rbp), %eax
	subl	$2, %eax
	cmpl	$15, %eax
	jge	.LBB8_26
# BB#25:                                # %cond.true.66
	movl	-88(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB8_27
.LBB8_26:                               # %cond.false.68
	movl	$15, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB8_27
.LBB8_27:                               # %cond.end.69
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB8_29
.LBB8_28:                               # %cond.false.71
	movl	-88(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB8_29:                               # %cond.end.72
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB8_30:                               # %cond.end.74
	movl	-224(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%eax, 140(%rcx)
	jmp	.LBB8_56
.LBB8_31:                               # %if.else
	movl	$4, %eax
	movl	-76(%rbp), %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-244(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movl	%eax, 128(%rsi)
	movl	-80(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-64(%rbp), %rsi
	movl	%eax, 132(%rsi)
	movq	-64(%rbp), %rsi
	cmpl	$50, 128(%rsi)
	jle	.LBB8_33
# BB#32:                                # %cond.true.82
	movl	$50, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB8_37
.LBB8_33:                               # %cond.false.83
	movq	-64(%rbp), %rax
	cmpl	$15, 128(%rax)
	jge	.LBB8_35
# BB#34:                                # %cond.true.87
	movl	$15, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB8_36
.LBB8_35:                               # %cond.false.88
	movq	-64(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
.LBB8_36:                               # %cond.end.90
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB8_37:                               # %cond.end.92
	movl	-248(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%eax, 128(%rcx)
	movq	-64(%rbp), %rcx
	cmpl	$50, 132(%rcx)
	jle	.LBB8_39
# BB#38:                                # %cond.true.98
	movl	$50, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB8_43
.LBB8_39:                               # %cond.false.99
	movq	-64(%rbp), %rax
	cmpl	$15, 132(%rax)
	jge	.LBB8_41
# BB#40:                                # %cond.true.103
	movl	$15, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB8_42
.LBB8_41:                               # %cond.false.104
	movq	-64(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
.LBB8_42:                               # %cond.end.106
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB8_43:                               # %cond.end.108
	movl	-256(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%eax, 132(%rcx)
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	imull	$3, 128(%rcx), %edx
	subl	%edx, %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 136(%rcx)
	movl	-88(%rbp), %eax
	movq	-64(%rbp), %rcx
	imull	$3, 132(%rcx), %edx
	subl	%edx, %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 140(%rcx)
	movq	-64(%rbp), %rcx
	cmpl	$2147483647, 136(%rcx)  # imm = 0x7FFFFFFF
	jle	.LBB8_45
# BB#44:                                # %cond.true.122
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB8_49
.LBB8_45:                               # %cond.false.123
	movq	-64(%rbp), %rax
	cmpl	$15, 136(%rax)
	jge	.LBB8_47
# BB#46:                                # %cond.true.127
	movl	$15, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB8_48
.LBB8_47:                               # %cond.false.128
	movq	-64(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
.LBB8_48:                               # %cond.end.130
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB8_49:                               # %cond.end.132
	movl	-264(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%eax, 136(%rcx)
	movq	-64(%rbp), %rcx
	cmpl	$2147483647, 140(%rcx)  # imm = 0x7FFFFFFF
	jle	.LBB8_51
# BB#50:                                # %cond.true.138
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB8_55
.LBB8_51:                               # %cond.false.139
	movq	-64(%rbp), %rax
	cmpl	$15, 140(%rax)
	jge	.LBB8_53
# BB#52:                                # %cond.true.143
	movl	$15, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB8_54
.LBB8_53:                               # %cond.false.144
	movq	-64(%rbp), %rax
	movl	140(%rax), %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB8_54:                               # %cond.end.146
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB8_55:                               # %cond.end.148
	movl	-272(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%eax, 140(%rcx)
.LBB8_56:                               # %if.end.151
	movq	-72(%rbp), %rax
	movsd	200(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 152(%rax)
	movq	-72(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 160(%rax)
.LBB8_57:                               # %return
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_rectangle_tool_update_handle_sizes, .Lfunc_end8-gimp_rectangle_tool_update_handle_sizes
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_rectangle_change_complete,@function
gimp_rectangle_tool_rectangle_change_complete: # @gimp_rectangle_tool_rectangle_change_complete
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
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	gimp_rectangle_tool_signals, %esi
	movb	$0, %al
	callq	g_signal_emit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_rectangle_tool_rectangle_change_complete, .Lfunc_end9-gimp_rectangle_tool_rectangle_change_complete
	.cfi_endproc

	.globl	gimp_rectangle_tool_get_constraint
	.align	16, 0x90
	.type	gimp_rectangle_tool_get_constraint,@function
gimp_rectangle_tool_get_constraint:     # @gimp_rectangle_tool_get_constraint
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_get_constraint, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	100(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB10_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_rectangle_tool_get_constraint, .Lfunc_end10-gimp_rectangle_tool_get_constraint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_rectangle_tool_pending_size_set
	.align	16, 0x90
	.type	gimp_rectangle_tool_pending_size_set,@function
gimp_rectangle_tool_pending_size_set:   # @gimp_rectangle_tool_pending_size_set
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_pending_size_set, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_29
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_pending_size_set, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_29
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB11_20
# BB#19:                                # %if.then.19
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.20
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_pending_size_set, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_29
.LBB11_21:                              # %if.end.21
	jmp	.LBB11_22
.LBB11_22:                              # %do.end.22
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_get_private
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movsd	64(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	subsd	48(%rdi), %xmm1
	ucomisd	%xmm0, %xmm1
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jbe	.LBB11_24
# BB#23:                                # %cond.true
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB11_25
.LBB11_24:                              # %cond.false
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB11_25
.LBB11_25:                              # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	56(%rax), %xmm2
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	jbe	.LBB11_27
# BB#26:                                # %cond.true.30
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	56(%rax), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB11_28
.LBB11_27:                              # %cond.false.34
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB11_28
.LBB11_28:                              # %cond.end.35
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
.LBB11_29:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_rectangle_tool_pending_size_set, .Lfunc_end11-gimp_rectangle_tool_pending_size_set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_rectangle_tool_constraint_size_set
	.align	16, 0x90
	.type	gimp_rectangle_tool_constraint_size_set,@function
gimp_rectangle_tool_constraint_size_set: # @gimp_rectangle_tool_constraint_size_set
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_constraint_size_set, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_23
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_image
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_14
# BB#13:                                # %if.then.16
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB12_22
.LBB12_14:                              # %if.else.17
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_get_constraint
	movl	%eax, -100(%rbp)
	movl	%eax, %ecx
	subl	$1, %eax
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB12_19
	jmp	.LBB12_24
.LBB12_24:                              # %if.else.17
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jne	.LBB12_20
	jmp	.LBB12_15
.LBB12_15:                              # %sw.bb
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB12_17
# BB#16:                                # %if.then.25
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB12_18
.LBB12_17:                              # %if.else.26
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB12_18:                              # %if.end.30
	jmp	.LBB12_21
.LBB12_19:                              # %sw.bb.31
	jmp	.LBB12_20
.LBB12_20:                              # %sw.default
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB12_21:                              # %sw.epilog
	jmp	.LBB12_22
.LBB12_22:                              # %if.end.36
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movb	$2, %al
	callq	g_object_set
.LBB12_23:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_rectangle_tool_constraint_size_set, .Lfunc_end12-gimp_rectangle_tool_constraint_size_set
	.cfi_endproc

	.globl	gimp_rectangle_tool_rectangle_is_new
	.align	16, 0x90
	.type	gimp_rectangle_tool_rectangle_is_new,@function
gimp_rectangle_tool_rectangle_is_new:   # @gimp_rectangle_tool_rectangle_is_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_rectangle_is_new, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB13_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_rectangle_tool_rectangle_is_new, .Lfunc_end13-gimp_rectangle_tool_rectangle_is_new
	.cfi_endproc

	.globl	gimp_rectangle_tool_point_in_rectangle
	.align	16, 0x90
	.type	gimp_rectangle_tool_point_in_rectangle,@function
gimp_rectangle_tool_point_in_rectangle: # @gimp_rectangle_tool_point_in_rectangle
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_point_in_rectangle, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_19
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 56(%rax)
	je	.LBB14_18
# BB#13:                                # %if.then.14
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movq	-16(%rbp), %rdi
	callq	gimp_rectangle_tool_get_public_rect
	xorl	%eax, %eax
	movb	%al, %r9b
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	movb	%r9b, -105(%rbp)        # 1-byte Spill
	jb	.LBB14_17
# BB#14:                                # %land.lhs.true.20
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jb	.LBB14_17
# BB#15:                                # %land.lhs.true.22
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jb	.LBB14_17
# BB#16:                                # %land.rhs
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	setae	%al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB14_17:                              # %land.end
	movb	-105(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
.LBB14_18:                              # %if.end.25
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_rectangle_tool_point_in_rectangle, .Lfunc_end14-gimp_rectangle_tool_point_in_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_get_public_rect,@function
gimp_rectangle_tool_get_public_rect:    # @gimp_rectangle_tool_get_public_rect
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -48(%rbp)
	movl	104(%rax), %r9d
	testl	%r9d, %r9d
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	je	.LBB15_1
	jmp	.LBB15_5
.LBB15_5:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB15_2
	jmp	.LBB15_3
.LBB15_1:                               # %sw.bb
	movq	-48(%rbp), %rax
	cvtsi2sdl	80(%rax), %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	cvtsi2sdl	84(%rax), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movl	80(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	88(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movl	84(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	92(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB15_4
.LBB15_2:                               # %sw.bb.9
	jmp	.LBB15_3
.LBB15_3:                               # %sw.default
	movq	-48(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB15_4:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_rectangle_tool_get_public_rect, .Lfunc_end15-gimp_rectangle_tool_get_public_rect
	.cfi_endproc

	.globl	gimp_rectangle_tool_frame_item
	.align	16, 0x90
	.type	gimp_rectangle_tool_frame_item,@function
gimp_rectangle_tool_frame_item:         # @gimp_rectangle_tool_frame_item
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp57:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_frame_item, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_47
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB16_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB16_19
.LBB16_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB16_19:                              # %if.end.31
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.35
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.36
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_frame_item, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_47
.LBB16_23:                              # %if.end.37
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.body.39
	movq	-24(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB16_27
# BB#26:                                # %if.then.42
	jmp	.LBB16_28
.LBB16_27:                              # %if.else.43
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_frame_item, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_47
.LBB16_28:                              # %if.end.44
	jmp	.LBB16_29
.LBB16_29:                              # %do.end.45
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#30:                                # %do.body.49
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB16_32
# BB#31:                                # %if.then.58
	movl	$0, -116(%rbp)
	jmp	.LBB16_37
.LBB16_32:                              # %if.else.59
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_35
# BB#33:                                # %land.lhs.true.62
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB16_35
# BB#34:                                # %if.then.66
	movl	$1, -116(%rbp)
	jmp	.LBB16_36
.LBB16_35:                              # %if.else.67
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB16_36:                              # %if.end.69
	jmp	.LBB16_37
.LBB16_37:                              # %if.end.70
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB16_39
# BB#38:                                # %if.then.73
	jmp	.LBB16_40
.LBB16_39:                              # %if.else.74
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_frame_item, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_47
.LBB16_40:                              # %if.end.75
	jmp	.LBB16_41
.LBB16_41:                              # %do.end.76
	jmp	.LBB16_42
.LBB16_42:                              # %do.body.77
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	-24(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_image
	movq	-136(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB16_44
# BB#43:                                # %if.then.81
	jmp	.LBB16_45
.LBB16_44:                              # %if.else.82
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_frame_item, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_47
.LBB16_45:                              # %if.end.83
	jmp	.LBB16_46
.LBB16_46:                              # %do.end.84
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_height
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_rectangle_tool_set_function
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.4, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r10d
	movl	-36(%rbp), %r11d
	addl	-44(%rbp), %r11d
	movl	-40(%rbp), %ebx
	addl	-48(%rbp), %ebx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movl	%r10d, %r8d
	movl	%r11d, (%rsp)
	movq	%rax, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_set
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_rectangle_tool_set_constraint
	movq	-16(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB16_47:                              # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_rectangle_tool_frame_item, .Lfunc_end16-gimp_rectangle_tool_frame_item
	.cfi_endproc

	.globl	gimp_rectangle_tool_set_function
	.align	16, 0x90
	.type	gimp_rectangle_tool_set_function,@function
gimp_rectangle_tool_set_function:       # @gimp_rectangle_tool_set_function
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_set_function, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_14
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	96(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB17_14
# BB#13:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 96(%rax)
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB17_14:                              # %if.end.21
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_rectangle_tool_set_function, .Lfunc_end17-gimp_rectangle_tool_set_function
	.cfi_endproc

	.globl	gimp_rectangle_tool_set_property
	.align	16, 0x90
	.type	gimp_rectangle_tool_set_property,@function
gimp_rectangle_tool_set_property:       # @gimp_rectangle_tool_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$6, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB18_8
# BB#12:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	cvtsi2sdl	%eax, %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 48(%rdi)
	jmp	.LBB18_11
.LBB18_2:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	cvtsi2sdl	%eax, %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 56(%rdi)
	jmp	.LBB18_11
.LBB18_3:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	cvtsi2sdl	%eax, %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 64(%rdi)
	jmp	.LBB18_11
.LBB18_4:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	cvtsi2sdl	%eax, %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 72(%rdi)
	jmp	.LBB18_11
.LBB18_5:                               # %sw.bb.15
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_rectangle_tool_set_constraint
	jmp	.LBB18_11
.LBB18_6:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-48(%rbp), %rdi
	movl	%eax, 104(%rdi)
	jmp	.LBB18_11
.LBB18_7:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movl	%eax, 144(%rdi)
	jmp	.LBB18_11
.LBB18_8:                               # %sw.default
	jmp	.LBB18_9
.LBB18_9:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$789, %edx              # imm = 0x315
	movabsq	$.L.str.19, %rcx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#10:                                # %do.end
	jmp	.LBB18_11
.LBB18_11:                              # %sw.epilog
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_int_rect
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_rectangle_tool_set_property, .Lfunc_end18-gimp_rectangle_tool_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_1
	.quad	.LBB18_2
	.quad	.LBB18_3
	.quad	.LBB18_4
	.quad	.LBB18_5
	.quad	.LBB18_6
	.quad	.LBB18_7

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.8, %r9d
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_update_int_rect,@function
gimp_rectangle_tool_update_int_rect:    # @gimp_rectangle_tool_update_int_rect
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	xorps	%xmm0, %xmm0
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	ucomisd	48(%rax), %xmm0
	jbe	.LBB20_2
# BB#1:                                 # %cond.true
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)        # 8-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	48(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB20_3:                               # %cond.end
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 80(%rcx)
	movq	-16(%rbp), %rcx
	ucomisd	56(%rcx), %xmm1
	jbe	.LBB20_5
# BB#4:                                 # %cond.true.7
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	jmp	.LBB20_6
.LBB20_5:                               # %cond.false.10
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	56(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB20_6:                               # %cond.end.13
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 84(%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_rect_rubber_banding_func
	cmpl	$0, %eax
	je	.LBB20_14
# BB#7:                                 # %if.then
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	ucomisd	64(%rax), %xmm0
	jbe	.LBB20_9
# BB#8:                                 # %cond.true.19
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	jmp	.LBB20_10
.LBB20_9:                               # %cond.false.22
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	64(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB20_10:                              # %cond.end.25
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rcx
	subl	80(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-16(%rbp), %rcx
	ucomisd	72(%rcx), %xmm1
	jbe	.LBB20_12
# BB#11:                                # %cond.true.32
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	jmp	.LBB20_13
.LBB20_12:                              # %cond.false.35
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	72(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB20_13:                              # %cond.end.38
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rcx
	subl	84(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 92(%rcx)
.LBB20_14:                              # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_rectangle_tool_update_int_rect, .Lfunc_end20-gimp_rectangle_tool_update_int_rect
	.cfi_endproc

	.globl	gimp_rectangle_tool_get_property
	.align	16, 0x90
	.type	gimp_rectangle_tool_get_property,@function
gimp_rectangle_tool_get_property:       # @gimp_rectangle_tool_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$6, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB21_8
# BB#12:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI21_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB21_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	80(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB21_11
.LBB21_2:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	84(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB21_11
.LBB21_3:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	80(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	88(%rax), %ecx
	movl	%ecx, %esi
	callq	g_value_set_int
	jmp	.LBB21_11
.LBB21_4:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	84(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	92(%rax), %ecx
	movl	%ecx, %esi
	callq	g_value_set_int
	jmp	.LBB21_11
.LBB21_5:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_constraint
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_enum
	jmp	.LBB21_11
.LBB21_6:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	104(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB21_11
.LBB21_7:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	144(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB21_11
.LBB21_8:                               # %sw.default
	jmp	.LBB21_9
.LBB21_9:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$832, %edx              # imm = 0x340
	movabsq	$.L.str.19, %rcx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#10:                                # %do.end
	jmp	.LBB21_11
.LBB21_11:                              # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_rectangle_tool_get_property, .Lfunc_end21-gimp_rectangle_tool_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_1
	.quad	.LBB21_2
	.quad	.LBB21_3
	.quad	.LBB21_4
	.quad	.LBB21_5
	.quad	.LBB21_6
	.quad	.LBB21_7

	.text
	.globl	gimp_rectangle_tool_constructor
	.align	16, 0x90
	.type	gimp_rectangle_tool_constructor,@function
gimp_rectangle_tool_constructor:        # @gimp_rectangle_tool_constructor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_rectangle_tool_options_notify, %rdi
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_rectangle_tool_constructor, .Lfunc_end22-gimp_rectangle_tool_constructor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4602678819172646912     # double 0.5
.LCPI23_2:
	.quad	4611686018427387904     # double 2
.LCPI23_3:
	.quad	4607182418800017408     # double 1
.LCPI23_4:
	.quad	4547007122018943789     # double 1.0E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI23_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_options_notify,@function
gimp_rectangle_tool_options_notify:     # @gimp_rectangle_tool_options_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	jmp	.LBB23_51
.LBB23_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.35, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_5
# BB#3:                                 # %land.lhs.true
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	16(%rax), %xmm1
	movapd	.LCPI23_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB23_5
# BB#4:                                 # %if.then.18
	movl	$3, %esi
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_synthesize_motion
	jmp	.LBB23_50
.LBB23_5:                               # %if.else.20
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.36, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_8
# BB#6:                                 # %land.lhs.true.24
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	24(%rax), %xmm1
	movapd	.LCPI23_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB23_8
# BB#7:                                 # %if.then.29
	movl	$3, %esi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_synthesize_motion
	jmp	.LBB23_49
.LBB23_8:                               # %if.else.32
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.37, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_14
# BB#9:                                 # %land.lhs.true.36
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	48(%rax), %xmm1
	movq	-48(%rbp), %rax
	subsd	32(%rax), %xmm1
	movapd	.LCPI23_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB23_14
# BB#10:                                # %if.then.42
	movq	-48(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB23_12
# BB#11:                                # %if.then.44
	movsd	.LCPI23_2, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	jmp	.LBB23_13
.LBB23_12:                              # %if.else.46
	movq	-40(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	32(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB23_13:                              # %if.end
	movl	$9, %esi
	movq	-24(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_synthesize_motion
	jmp	.LBB23_48
.LBB23_14:                              # %if.else.50
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.38, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_20
# BB#15:                                # %land.lhs.true.54
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	56(%rax), %xmm1
	movq	-48(%rbp), %rax
	subsd	40(%rax), %xmm1
	movapd	.LCPI23_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB23_20
# BB#16:                                # %if.then.61
	movq	-48(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB23_18
# BB#17:                                # %if.then.65
	movsd	.LCPI23_2, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	40(%rax), %xmm2         # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	jmp	.LBB23_19
.LBB23_18:                              # %if.else.69
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	40(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB23_19:                              # %if.end.73
	movl	$11, %esi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_synthesize_motion
	jmp	.LBB23_47
.LBB23_20:                              # %if.else.75
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.40, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_29
# BB#21:                                # %if.then.79
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	56(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB23_28
# BB#22:                                # %land.lhs.true.89
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB23_28
# BB#23:                                # %land.lhs.true.91
	movq	-32(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	.LBB23_28
# BB#24:                                # %land.lhs.true.93
	movq	-32(%rbp), %rax
	cmpl	$0, 88(%rax)
	jne	.LBB23_28
# BB#25:                                # %land.lhs.true.95
	movsd	.LCPI23_4, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-80(%rbp), %xmm1
	movapd	.LCPI23_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB23_28
# BB#26:                                # %land.lhs.true.99
	movsd	.LCPI23_4, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	88(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	movapd	.LCPI23_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB23_28
# BB#27:                                # %if.then.103
	movl	$7, %esi
	movq	-40(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_synthesize_motion
	movabsq	$.L.str.35, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_set
	movabsq	$.L.str.36, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_object_set
.LBB23_28:                              # %if.end.110
	jmp	.LBB23_46
.LBB23_29:                              # %if.else.111
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.41, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_42
# BB#30:                                # %if.then.115
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	56(%rax), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-48(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	divsd	120(%rax), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB23_33
# BB#31:                                # %land.lhs.true.126
	movsd	.LCPI23_3, %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_33
# BB#32:                                # %if.then.128
	movsd	.LCPI23_3, %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	addsd	-112(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -136(%rbp)
	jmp	.LBB23_34
.LBB23_33:                              # %if.else.133
	movsd	.LCPI23_3, %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	divsd	-112(%rbp), %xmm1
	movsd	%xmm1, -128(%rbp)
	addsd	-104(%rbp), %xmm0
	divsd	-112(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
.LBB23_34:                              # %if.end.138
	movq	-48(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB23_41
# BB#35:                                # %land.lhs.true.141
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB23_41
# BB#36:                                # %land.lhs.true.144
	movq	-32(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	.LBB23_41
# BB#37:                                # %land.lhs.true.147
	movq	-32(%rbp), %rax
	cmpl	$0, 88(%rax)
	jne	.LBB23_41
# BB#38:                                # %land.lhs.true.150
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_41
# BB#39:                                # %land.lhs.true.152
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-120(%rbp), %xmm0
	jbe	.LBB23_41
# BB#40:                                # %if.then.154
	movl	$7, %esi
	movq	-40(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	72(%rax), %xmm0
	movq	-40(%rbp), %rax
	subsd	56(%rax), %xmm0
	movsd	%xmm0, -144(%rbp)
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addsd	64(%rax), %xmm0
	movq	-40(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_synthesize_motion
.LBB23_41:                              # %if.end.165
	jmp	.LBB23_45
.LBB23_42:                              # %if.else.166
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.42, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_44
# BB#43:                                # %if.then.170
	movq	-24(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
.LBB23_44:                              # %if.end.171
	jmp	.LBB23_45
.LBB23_45:                              # %if.end.172
	jmp	.LBB23_46
.LBB23_46:                              # %if.end.173
	jmp	.LBB23_47
.LBB23_47:                              # %if.end.174
	jmp	.LBB23_48
.LBB23_48:                              # %if.end.175
	jmp	.LBB23_49
.LBB23_49:                              # %if.end.176
	jmp	.LBB23_50
.LBB23_50:                              # %if.end.177
	jmp	.LBB23_51
.LBB23_51:                              # %if.end.178
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_rectangle_tool_options_notify, .Lfunc_end23-gimp_rectangle_tool_options_notify
	.cfi_endproc

	.globl	gimp_rectangle_tool_control
	.align	16, 0x90
	.type	gimp_rectangle_tool_control,@function
gimp_rectangle_tool_control:            # @gimp_rectangle_tool_control
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$131072, %eax           # imm = 0x20000
	cmpl	$0, %eax
	je	.LBB24_3
# BB#2:                                 # %if.then
	callq	gimp_tool_action_get_type
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_enum_get_value_name
	movl	$131072, %edi           # imm = 0x20000
	movabsq	$.L__func__.gimp_rectangle_tool_control, %rsi
	movl	$858, %edx              # imm = 0x35A
	movabsq	$.L.str.21, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB24_3:                               # %if.end
	jmp	.LBB24_4
.LBB24_4:                               # %do.end
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB24_5
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB24_6
	jmp	.LBB24_13
.LBB24_13:                              # %do.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB24_9
	jmp	.LBB24_10
.LBB24_5:                               # %sw.bb
	jmp	.LBB24_11
.LBB24_6:                               # %sw.bb.4
	movq	-32(%rbp), %rdi
	callq	gimp_rectangle_tool_scale_has_changed
	cmpl	$0, %eax
	je	.LBB24_8
# BB#7:                                 # %if.then.7
	movq	-32(%rbp), %rdi
	callq	gimp_rectangle_tool_update_handle_sizes
.LBB24_8:                               # %if.end.8
	jmp	.LBB24_11
.LBB24_9:                               # %sw.bb.9
	movq	-32(%rbp), %rdi
	callq	gimp_rectangle_tool_halt
	jmp	.LBB24_11
.LBB24_10:                              # %sw.default
	jmp	.LBB24_11
.LBB24_11:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_rectangle_tool_control, .Lfunc_end24-gimp_rectangle_tool_control
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_scale_has_changed,@function
gimp_rectangle_tool_scale_has_changed:  # @gimp_rectangle_tool_scale_has_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB25_5
.LBB25_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movsd	200(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	152(%rax), %xmm0
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB25_4
	jp	.LBB25_4
# BB#3:                                 # %lor.rhs
	movq	-40(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	160(%rax), %xmm0
	setne	%cl
	setp	%dl
	orb	%dl, %cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB25_4:                               # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB25_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_rectangle_tool_scale_has_changed, .Lfunc_end25-gimp_rectangle_tool_scale_has_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_halt,@function
gimp_rectangle_tool_halt:               # @gimp_rectangle_tool_halt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_tool_get_options
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_set_highlight
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_rectangle_tool_shell_scrolled, %rax
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB26_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB26_4
# BB#3:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_stop
.LBB26_4:                               # %if.end.16
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_set_function
	movq	-24(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB26_6
# BB#5:                                 # %if.then.19
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_rectangle_tool_auto_shrink, %rax
	movq	-24(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB26_6:                               # %if.end.23
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_rectangle_tool_halt, .Lfunc_end26-gimp_rectangle_tool_halt
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_rectangle_tool_button_press
	.align	16, 0x90
	.type	gimp_rectangle_tool_button_press,@function
gimp_rectangle_tool_button_press:       # @gimp_rectangle_tool_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_button_press, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_24
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_pause
# BB#13:                                # %do.body.18
	movl	gimp_log_flags, %eax
	andl	$131072, %eax           # imm = 0x20000
	cmpl	$0, %eax
	je	.LBB27_15
# BB#14:                                # %if.then.20
	movl	$131072, %edi           # imm = 0x20000
	movabsq	$.L__func__.gimp_rectangle_tool_button_press, %rsi
	movl	$906, %edx              # imm = 0x38A
	movabsq	$.L.str.22, %rcx
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movb	$2, %al
	callq	gimp_log
.LBB27_15:                              # %if.end.21
	jmp	.LBB27_16
.LBB27_16:                              # %do.end.22
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB27_20
# BB#17:                                # %if.then.25
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_is_active
	cmpl	$0, %eax
	je	.LBB27_19
# BB#18:                                # %if.then.28
	movq	-48(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_display_get_shell
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_display_shell_set_highlight
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_stop
.LBB27_19:                              # %if.end.32
	movl	$2, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_set_function
	movq	-16(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	%xmm0, 64(%rdi)
	movq	-56(%rbp), %rdi
	movsd	%xmm0, 48(%rdi)
	movq	-16(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	%xmm0, 72(%rdi)
	movq	-56(%rbp), %rdi
	movsd	%xmm0, 56(%rdi)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_rectangle_tool_start
.LBB27_20:                              # %if.end.35
	movq	-56(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 168(%rax)
	movq	-56(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 176(%rax)
	movq	-56(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 184(%rax)
	movq	-56(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 192(%rax)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_setup_snap_offsets
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	gimp_tool_control_get_snap_offsets
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 120(%rax)
	movq	-56(%rbp), %rax
	cmpl	$2, 96(%rax)
	jne	.LBB27_22
# BB#21:                                # %if.then.46
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-56(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	movq	-56(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_handle_sizes
	movq	-56(%rbp), %rax
	movl	$0, 144(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB27_23
.LBB27_22:                              # %if.else.51
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	64(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-56(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	movq	-56(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	72(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-56(%rbp), %rax
	movsd	%xmm1, 32(%rax)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	-56(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_rectangle_tool_get_other_side_coord
.LBB27_23:                              # %if.end.64
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_int_rect
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_rect_adjusting_func
	movq	-56(%rbp), %rdi
	movl	%eax, 40(%rdi)
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_resume
.LBB27_24:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_rectangle_tool_button_press, .Lfunc_end27-gimp_rectangle_tool_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_start,@function
gimp_rectangle_tool_start:              # @gimp_rectangle_tool_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_tool_get_options
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_rectangle_tool_shell_scrolled, %rdi
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-8(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_update_highlight
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_update_handle_sizes
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_get_precision
	movabsq	$.L.str.24, %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gettext
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.25, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movl	-156(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_tool_push_status_coords
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_draw_tool_start
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-32(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-200(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
.LBB28_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB28_4
# BB#3:                                 # %if.then.25
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-224(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
.LBB28_4:                               # %if.end.34
	movq	-32(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB28_6
# BB#5:                                 # %if.then.36
	movq	-32(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-248(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
.LBB28_6:                               # %if.end.45
	movq	-32(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB28_8
# BB#7:                                 # %if.then.47
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-88(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-272(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
.LBB28_8:                               # %if.end.56
	movq	-32(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB28_10
# BB#9:                                 # %if.then.58
	movq	-32(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-296(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
.LBB28_10:                              # %if.end.67
	movq	-32(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB28_12
# BB#11:                                # %if.then.69
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-104(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm1
	movq	-320(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_size
.LBB28_12:                              # %if.end.78
	movq	-32(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB28_14
# BB#13:                                # %if.then.80
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_rectangle_tool_auto_shrink, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdx
	movq	168(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %esi
	movq	-32(%rbp), %rcx
	movq	168(%rcx), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_sensitive
.LBB28_14:                              # %if.end.84
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_rectangle_tool_start, .Lfunc_end28-gimp_rectangle_tool_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_setup_snap_offsets,@function
gimp_rectangle_tool_setup_snap_offsets: # @gimp_rectangle_tool_setup_snap_offsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %r8
	callq	gimp_rectangle_tool_get_public_rect
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	gimp_rectangle_tool_adjust_coord
	movq	-32(%rbp), %rax
	movl	96(%rax), %r9d
	addl	$-3, %r9d
	movl	%r9d, %eax
	subl	$8, %r9d
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%r9d, -108(%rbp)        # 4-byte Spill
	ja	.LBB29_10
# BB#12:                                # %entry
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI29_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB29_1:                               # %sw.bb
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB29_11
.LBB29_2:                               # %sw.bb.7
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB29_11
.LBB29_3:                               # %sw.bb.13
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB29_11
.LBB29_4:                               # %sw.bb.19
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB29_11
.LBB29_5:                               # %sw.bb.25
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB29_11
.LBB29_6:                               # %sw.bb.29
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB29_11
.LBB29_7:                               # %sw.bb.33
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%eax, %esi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB29_11
.LBB29_8:                               # %sw.bb.37
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%eax, %esi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB29_11
.LBB29_9:                               # %sw.bb.41
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %r8d
	callq	gimp_tool_control_set_snap_offsets
	jmp	.LBB29_11
.LBB29_10:                              # %sw.default
	jmp	.LBB29_11
.LBB29_11:                              # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_rectangle_tool_setup_snap_offsets, .Lfunc_end29-gimp_rectangle_tool_setup_snap_offsets
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI29_0:
	.quad	.LBB29_9
	.quad	.LBB29_1
	.quad	.LBB29_2
	.quad	.LBB29_3
	.quad	.LBB29_4
	.quad	.LBB29_5
	.quad	.LBB29_6
	.quad	.LBB29_7
	.quad	.LBB29_8

	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_get_other_side_coord,@function
gimp_rectangle_tool_get_other_side_coord: # @gimp_rectangle_tool_get_other_side_coord
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	leaq	-40(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_rectangle_tool_get_other_side
	cmpq	$0, -32(%rbp)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB30_2:                               # %if.end
	cmpq	$0, -40(%rbp)
	je	.LBB30_4
# BB#3:                                 # %if.then.2
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB30_4:                               # %if.end.3
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_rectangle_tool_get_other_side_coord, .Lfunc_end30-gimp_rectangle_tool_get_other_side_coord
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_rect_adjusting_func,@function
gimp_rectangle_tool_rect_adjusting_func: # @gimp_rectangle_tool_rect_adjusting_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_rect_rubber_banding_func
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB31_2
# BB#1:                                 # %lor.rhs
	movq	-16(%rbp), %rax
	cmpl	$3, 96(%rax)
	sete	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB31_2:                               # %lor.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_rectangle_tool_rect_adjusting_func, .Lfunc_end31-gimp_rectangle_tool_rect_adjusting_func
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_rectangle_tool_button_release
	.align	16, 0x90
	.type	gimp_rectangle_tool_button_release,@function
gimp_rectangle_tool_button_release:     # @gimp_rectangle_tool_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_button_release, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_30
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
# BB#13:                                # %do.body.18
	movl	gimp_log_flags, %eax
	andl	$131072, %eax           # imm = 0x20000
	cmpl	$0, %eax
	je	.LBB32_15
# BB#14:                                # %if.then.20
	movl	$131072, %edi           # imm = 0x20000
	movabsq	$.L__func__.gimp_rectangle_tool_button_release, %rsi
	movl	$1018, %edx             # imm = 0x3FA
	movabsq	$.L.str.22, %rcx
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movb	$2, %al
	callq	gimp_log
.LBB32_15:                              # %if.end.21
	jmp	.LBB32_16
.LBB32_16:                              # %do.end.22
	movq	-56(%rbp), %rax
	cmpl	$13, 96(%rax)
	jne	.LBB32_18
# BB#17:                                # %if.then.24
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_tool_pop_status
.LBB32_18:                              # %if.end.25
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	ja	.LBB32_29
# BB#31:                                # %if.end.25
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI32_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB32_19:                              # %sw.bb
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_rectangle_change_complete
	jmp	.LBB32_29
.LBB32_20:                              # %sw.bb.26
	movq	-56(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-56(%rbp), %rax
	movsd	176(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-56(%rbp), %rax
	movsd	184(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-56(%rbp), %rax
	movsd	192(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_update_int_rect
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_rectangle_is_new
	cmpl	$0, %eax
	je	.LBB32_22
# BB#21:                                # %if.then.29
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_halt
.LBB32_22:                              # %if.end.30
	jmp	.LBB32_29
.LBB32_23:                              # %sw.bb.31
	movq	-56(%rbp), %rax
	cmpl	$1, 96(%rax)
	jne	.LBB32_25
# BB#24:                                # %if.then.34
	jmp	.LBB32_29
.LBB32_25:                              # %if.end.35
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_execute
	cmpl	$0, %eax
	je	.LBB32_27
# BB#26:                                # %if.then.38
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_halt
.LBB32_27:                              # %if.end.39
	jmp	.LBB32_29
.LBB32_28:                              # %sw.bb.40
	jmp	.LBB32_29
.LBB32_29:                              # %sw.epilog
	xorl	%eax, %eax
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-56(%rbp), %rcx
	addsd	64(%rcx), %xmm1
	divsd	%xmm0, %xmm1
	movq	-56(%rbp), %rcx
	movsd	%xmm1, 24(%rcx)
	movq	-56(%rbp), %rcx
	movsd	56(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-56(%rbp), %rcx
	addsd	72(%rcx), %xmm1
	divsd	%xmm0, %xmm1
	movq	-56(%rbp), %rcx
	movsd	%xmm1, 32(%rcx)
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_tool_control_set_snap_offsets
	movq	-56(%rbp), %rdi
	movl	$0, 40(%rdi)
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
	movq	-48(%rbp), %rdi
	callq	gimp_rectangle_tool_update_handle_sizes
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_rectangle_tool_update_options
	movq	-8(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB32_30:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_rectangle_tool_button_release, .Lfunc_end32-gimp_rectangle_tool_button_release
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI32_0:
	.quad	.LBB32_19
	.quad	.LBB32_20
	.quad	.LBB32_23
	.quad	.LBB32_28

	.text
	.globl	gimp_rectangle_tool_execute
	.align	16, 0x90
	.type	gimp_rectangle_tool_execute,@function
gimp_rectangle_tool_execute:            # @gimp_rectangle_tool_execute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB33_2
# BB#1:                                 # %if.then
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_get_public_rect
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	cvttsd2si	-32(%rbp), %esi
	cvttsd2si	-40(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %r8d
	callq	*%rax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB33_2:                               # %if.end
	movl	-20(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_rectangle_tool_execute, .Lfunc_end33-gimp_rectangle_tool_execute
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4547007122018943789     # double 1.0E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI34_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_update_options,@function
gimp_rectangle_tool_update_options:     # @gimp_rectangle_tool_update_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
.Ltmp112:
	.cfi_offset %rbx, -40
.Ltmp113:
	.cfi_offset %r14, -32
.Ltmp114:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_rectangle_tool_get_public_rect
	movl	$24, %esi
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movabsq	$gimp_rectangle_tool_options_notify, %rax
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movq	%rax, %r9
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movabsq	$.L.str.35, %rsi
	leaq	-88(%rbp), %rdx
	movabsq	$.L.str.36, %rcx
	leaq	-96(%rbp), %r8
	movabsq	$.L.str.37, %r9
	leaq	-104(%rbp), %rdi
	movabsq	$.L.str.38, %r11
	leaq	-112(%rbp), %rbx
	xorl	%r10d, %r10d
	movl	%r10d, %r14d
	movq	-48(%rbp), %r15
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-144(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%r14, -160(%rbp)        # 8-byte Spill
	callq	g_object_get
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	movapd	.LCPI34_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB34_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.35, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB34_2:                               # %if.end
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-64(%rbp), %xmm1
	movapd	.LCPI34_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB34_4
# BB#3:                                 # %if.then.11
	movabsq	$.L.str.36, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB34_4:                               # %if.end.12
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-56(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI34_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB34_6
# BB#5:                                 # %if.then.17
	movabsq	$.L.str.37, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB34_6:                               # %if.end.19
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI34_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB34_8
# BB#7:                                 # %if.then.24
	movabsq	$.L.str.38, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB34_8:                               # %if.end.26
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_rectangle_tool_options_notify, %rax
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r9
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -176(%rbp)        # 4-byte Spill
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_rectangle_tool_update_options, .Lfunc_end34-gimp_rectangle_tool_update_options
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_rectangle_tool_motion
	.align	16, 0x90
	.type	gimp_rectangle_tool_motion,@function
gimp_rectangle_tool_motion:             # @gimp_rectangle_tool_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_motion, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_43
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$13, 96(%rax)
	je	.LBB35_14
# BB#13:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$1, 96(%rax)
	jne	.LBB35_15
.LBB35_14:                              # %if.then.24
	jmp	.LBB35_43
.LBB35_15:                              # %if.end.25
	jmp	.LBB35_16
.LBB35_16:                              # %do.body.26
	movl	gimp_log_flags, %eax
	andl	$131072, %eax           # imm = 0x20000
	cmpl	$0, %eax
	je	.LBB35_18
# BB#17:                                # %if.then.28
	movl	$131072, %edi           # imm = 0x20000
	movabsq	$.L__func__.gimp_rectangle_tool_motion, %rsi
	movl	$1103, %edx             # imm = 0x44F
	movabsq	$.L.str.22, %rcx
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movb	$2, %al
	callq	gimp_log
.LBB35_18:                              # %if.end.29
	jmp	.LBB35_19
.LBB35_19:                              # %do.end.30
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	-216(%rbp), %r8         # 8-byte Reload
	callq	gimp_tool_control_get_snap_offsets
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-40(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_update_with_coord
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_rect_adjusting_func
	cmpl	$0, %eax
	je	.LBB35_21
# BB#20:                                # %if.then.39
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
.LBB35_21:                              # %if.end.40
	movq	-48(%rbp), %rax
	cmpl	$3, 96(%rax)
	je	.LBB35_27
# BB#22:                                # %land.lhs.true.44
	movq	-48(%rbp), %rax
	cmpl	$13, 96(%rax)
	je	.LBB35_27
# BB#23:                                # %if.then.48
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_tool_pop_status
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_get_public_rect
	xorps	%xmm0, %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-112(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -140(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-120(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -144(%rbp)
	cvtsi2sdl	-140(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_26
# BB#24:                                # %land.lhs.true.61
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-144(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_26
# BB#25:                                # %if.then.65
	movabsq	$.L.str.23, %rdi
	cvtsi2sdl	-140(%rbp), %xmm0
	cvtsi2sdl	-144(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movb	$1, %al
	callq	g_strdup_printf
	movq	%rax, -152(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_get_precision
	movabsq	$.L.str.24, %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %r8
	cvtsi2sdl	-140(%rbp), %xmm0
	cvtsi2sdl	-144(%rbp), %xmm1
	movq	-152(%rbp), %r9
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movl	-244(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_tool_push_status_coords
	movq	-152(%rbp), %rdi
	callq	g_free
.LBB35_26:                              # %if.end.75
	jmp	.LBB35_27
.LBB35_27:                              # %if.end.76
	movq	-48(%rbp), %rax
	cmpl	$2, 96(%rax)
	jne	.LBB35_42
# BB#28:                                # %if.then.80
	xorps	%xmm0, %xmm0
	movl	$2, -156(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	112(%rax), %xmm1
	movsd	%xmm1, -168(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	120(%rax), %xmm1
	movsd	%xmm1, -176(%rbp)
	ucomisd	-168(%rbp), %xmm0
	jbe	.LBB35_30
# BB#29:                                # %if.then.89
	xorps	%xmm0, %xmm0
	movl	$6, %eax
	movl	$4, %ecx
	ucomisd	-176(%rbp), %xmm0
	cmoval	%ecx, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB35_39
.LBB35_30:                              # %if.else.92
	xorps	%xmm0, %xmm0
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_32
# BB#31:                                # %if.then.95
	xorps	%xmm0, %xmm0
	movl	$7, %eax
	movl	$5, %ecx
	ucomisd	-176(%rbp), %xmm0
	cmoval	%ecx, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB35_38
.LBB35_32:                              # %if.else.99
	xorps	%xmm0, %xmm0
	ucomisd	-176(%rbp), %xmm0
	jbe	.LBB35_34
# BB#33:                                # %if.then.102
	xorps	%xmm0, %xmm0
	movl	$5, %eax
	movl	$4, %ecx
	ucomisd	-168(%rbp), %xmm0
	cmoval	%ecx, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB35_37
.LBB35_34:                              # %if.else.106
	xorps	%xmm0, %xmm0
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB35_36
# BB#35:                                # %if.then.109
	xorps	%xmm0, %xmm0
	movl	$7, %eax
	movl	$6, %ecx
	ucomisd	-168(%rbp), %xmm0
	cmoval	%ecx, %eax
	movl	%eax, -156(%rbp)
.LBB35_36:                              # %if.end.113
	jmp	.LBB35_37
.LBB35_37:                              # %if.end.114
	jmp	.LBB35_38
.LBB35_38:                              # %if.end.115
	jmp	.LBB35_39
.LBB35_39:                              # %if.end.116
	movq	-40(%rbp), %rdi
	movl	-156(%rbp), %esi
	callq	gimp_rectangle_tool_set_function
	movl	$3, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_rectangle_options_fixed_rule_active
	cmpl	$0, %eax
	je	.LBB35_41
# BB#40:                                # %if.then.119
	movq	-40(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_update_with_coord
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	-48(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	48(%rax), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movq	-48(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	56(%rax), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movq	-48(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	48(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-48(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	subsd	56(%rax), %xmm0
	cvttsd2si	%xmm0, %r8d
	callq	gimp_tool_control_set_snap_offsets
	movl	$3, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_set_function
.LBB35_41:                              # %if.end.137
	jmp	.LBB35_42
.LBB35_42:                              # %if.end.138
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_rectangle_tool_update_options
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi
	movsd	%xmm0, 112(%rsi)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi
	movsd	%xmm0, 120(%rsi)
	movq	-8(%rbp), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB35_43:                              # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_rectangle_tool_motion, .Lfunc_end35-gimp_rectangle_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_update_with_coord,@function
gimp_rectangle_tool_update_with_coord:  # @gimp_rectangle_tool_update_with_coord
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_apply_coord
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_check_function
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_handle_general_clamping
	movq	-32(%rbp), %rax
	cmpl	$3, 96(%rax)
	je	.LBB36_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_apply_fixed_rule
.LBB36_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_update_int_rect
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_rectangle_tool_update_with_coord, .Lfunc_end36-gimp_rectangle_tool_update_with_coord
	.cfi_endproc

	.globl	gimp_rectangle_tool_active_modifier_key
	.align	16, 0x90
	.type	gimp_rectangle_tool_active_modifier_key,@function
gimp_rectangle_tool_active_modifier_key: # @gimp_rectangle_tool_active_modifier_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp124:
	.cfi_offset %rbx, -32
.Ltmp125:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_active_modifier_key, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB37_28
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -80(%rbp)
	movl	-36(%rbp), %ecx
	andl	$256, %ecx              # imm = 0x100
	movl	%ecx, -92(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_pause
	cmpl	$1, -28(%rbp)
	jne	.LBB37_18
# BB#13:                                # %if.then.25
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_rectangle_tool_options_notify, %rdx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %r9
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movabsq	$.L.str.26, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %r8
	cmpl	$0, 56(%r8)
	setne	%bl
	xorb	$-1, %bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	movl	%r14d, %r8d
	movabsq	$gimp_rectangle_tool_options_notify, %rcx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %r9
	movl	%edx, -184(%rbp)        # 4-byte Spill
	movl	-184(%rbp), %r14d       # 4-byte Reload
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	%r14d, %ecx
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r9, -200(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	cmpl	$0, -92(%rbp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB37_17
# BB#14:                                # %if.then.30
	movq	-80(%rbp), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB37_16
# BB#15:                                # %if.then.33
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_set_other_side_coord
.LBB37_16:                              # %if.end.34
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	120(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_update_with_coord
	movq	-64(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
.LBB37_17:                              # %if.end.35
	jmp	.LBB37_18
.LBB37_18:                              # %if.end.36
	movl	-28(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-208(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB37_27
# BB#19:                                # %if.then.39
	movabsq	$.L.str.27, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rdi
	cmpl	$0, 156(%rdi)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	movq	-80(%rbp), %rcx
	cmpl	$0, 156(%rcx)
	je	.LBB37_23
# BB#20:                                # %if.then.45
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	120(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_update_with_coord
	movq	-64(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
	cmpl	$0, -92(%rbp)
	jne	.LBB37_22
# BB#21:                                # %if.then.49
	movq	-64(%rbp), %rdi
	callq	gimp_rectangle_tool_rectangle_change_complete
.LBB37_22:                              # %if.end.50
	jmp	.LBB37_26
.LBB37_23:                              # %if.else.51
	cmpl	$0, -92(%rbp)
	je	.LBB37_25
# BB#24:                                # %if.then.53
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_set_other_side_coord
	movq	-64(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
.LBB37_25:                              # %if.end.56
	jmp	.LBB37_26
.LBB37_26:                              # %if.end.57
	jmp	.LBB37_27
.LBB37_27:                              # %if.end.58
	movq	-56(%rbp), %rdi
	callq	gimp_draw_tool_resume
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_rectangle_tool_update_options
.LBB37_28:                              # %return
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_rectangle_tool_active_modifier_key, .Lfunc_end37-gimp_rectangle_tool_active_modifier_key
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_set_other_side_coord,@function
gimp_rectangle_tool_set_other_side_coord: # @gimp_rectangle_tool_set_other_side_coord
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_get_other_side
	cmpq	$0, -32(%rbp)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB38_2:                               # %if.end
	cmpq	$0, -40(%rbp)
	je	.LBB38_4
# BB#3:                                 # %if.then.2
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB38_4:                               # %if.end.3
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_check_function
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_update_int_rect
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_rectangle_tool_set_other_side_coord, .Lfunc_end38-gimp_rectangle_tool_set_other_side_coord
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI39_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_rectangle_tool_key_press
	.align	16, 0x90
	.type	gimp_rectangle_tool_key_press,@function
gimp_rectangle_tool_key_press:          # @gimp_rectangle_tool_key_press
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
	subq	$208, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB39_8
.LBB39_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB39_7:                               # %if.end
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.8
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_key_press, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB39_37
.LBB39_11:                              # %if.end.10
	jmp	.LBB39_12
.LBB39_12:                              # %do.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB39_14
# BB#13:                                # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB39_37
.LBB39_14:                              # %if.end.14
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65076, %edx            # imm = 0xFE34
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%edx, -120(%rbp)        # 4-byte Spill
	je	.LBB39_19
	jmp	.LBB39_38
.LBB39_38:                              # %if.end.14
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB39_19
	jmp	.LBB39_39
.LBB39_39:                              # %if.end.14
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB39_22
	jmp	.LBB39_40
.LBB39_40:                              # %if.end.14
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$65361, %eax            # imm = 0xFF51
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB39_16
	jmp	.LBB39_41
.LBB39_41:                              # %if.end.14
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$65362, %eax            # imm = 0xFF52
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB39_15
	jmp	.LBB39_42
.LBB39_42:                              # %if.end.14
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$65363, %eax            # imm = 0xFF53
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB39_17
	jmp	.LBB39_43
.LBB39_43:                              # %if.end.14
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$65364, %eax            # imm = 0xFF54
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB39_18
	jmp	.LBB39_44
.LBB39_44:                              # %if.end.14
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB39_19
	jmp	.LBB39_23
.LBB39_15:                              # %sw.bb
	movl	$-1, -56(%rbp)
	jmp	.LBB39_24
.LBB39_16:                              # %sw.bb.20
	movl	$-1, -52(%rbp)
	jmp	.LBB39_24
.LBB39_17:                              # %sw.bb.21
	movl	$1, -52(%rbp)
	jmp	.LBB39_24
.LBB39_18:                              # %sw.bb.22
	movl	$1, -56(%rbp)
	jmp	.LBB39_24
.LBB39_19:                              # %sw.bb.23
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_execute
	cmpl	$0, %eax
	je	.LBB39_21
# BB#20:                                # %if.then.26
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_halt
.LBB39_21:                              # %if.end.27
	movl	$1, -4(%rbp)
	jmp	.LBB39_37
.LBB39_22:                              # %sw.bb.28
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_cancel
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_halt
	movl	$1, -4(%rbp)
	jmp	.LBB39_37
.LBB39_23:                              # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB39_37
.LBB39_24:                              # %sw.epilog
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB39_26
# BB#25:                                # %if.then.30
	imull	$25, -52(%rbp), %eax
	movl	%eax, -52(%rbp)
	imull	$25, -56(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB39_26:                              # %if.end.32
	movq	-40(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gimp_tool_control_set_snap_offsets
	movq	-48(%rbp), %rax
	movl	96(%rax), %ecx
	addl	$-3, %ecx
	movl	%ecx, %eax
	subl	$8, %ecx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	ja	.LBB39_35
# BB#45:                                # %if.end.32
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI39_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB39_27:                              # %sw.bb.35
	movq	-48(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-48(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 120(%rax)
	jmp	.LBB39_36
.LBB39_28:                              # %sw.bb.38
	movq	-48(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-48(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 120(%rax)
	jmp	.LBB39_36
.LBB39_29:                              # %sw.bb.46
	movq	-48(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-48(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 120(%rax)
	jmp	.LBB39_36
.LBB39_30:                              # %sw.bb.54
	movq	-48(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-48(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 120(%rax)
	jmp	.LBB39_36
.LBB39_31:                              # %sw.bb.63
	movq	-48(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	jmp	.LBB39_36
.LBB39_32:                              # %sw.bb.68
	movq	-48(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	jmp	.LBB39_36
.LBB39_33:                              # %sw.bb.73
	movq	-48(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 120(%rax)
	jmp	.LBB39_36
.LBB39_34:                              # %sw.bb.78
	movq	-48(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 120(%rax)
	jmp	.LBB39_36
.LBB39_35:                              # %sw.default.83
	movl	$1, -4(%rbp)
	jmp	.LBB39_37
.LBB39_36:                              # %sw.epilog.84
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-40(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_update_with_coord
	movsd	.LCPI39_0, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	64(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	movq	-48(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	72(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	%xmm1, 32(%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_handle_sizes
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_rectangle_tool_update_options
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_rectangle_change_complete
	movq	-48(%rbp), %rax
	movl	$2, 200(%rax)
	movl	$1, -4(%rbp)
.LBB39_37:                              # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_rectangle_tool_key_press, .Lfunc_end39-gimp_rectangle_tool_key_press
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI39_0:
	.quad	.LBB39_27
	.quad	.LBB39_27
	.quad	.LBB39_28
	.quad	.LBB39_29
	.quad	.LBB39_30
	.quad	.LBB39_31
	.quad	.LBB39_32
	.quad	.LBB39_33
	.quad	.LBB39_34

	.text
	.globl	gimp_rectangle_tool_cancel
	.align	16, 0x90
	.type	gimp_rectangle_tool_cancel,@function
gimp_rectangle_tool_cancel:             # @gimp_rectangle_tool_cancel
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB40_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB40_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_rectangle_tool_cancel, .Lfunc_end40-gimp_rectangle_tool_cancel
	.cfi_endproc

	.globl	gimp_rectangle_tool_oper_update
	.align	16, 0x90
	.type	gimp_rectangle_tool_oper_update,@function
gimp_rectangle_tool_oper_update:        # @gimp_rectangle_tool_oper_update
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB41_8
.LBB41_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB41_10
# BB#9:                                 # %if.then.8
	jmp	.LBB41_11
.LBB41_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_oper_update, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB41_50
.LBB41_11:                              # %if.end.10
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB41_14
# BB#13:                                # %if.then.18
	jmp	.LBB41_50
.LBB41_14:                              # %if.end.19
	movq	-40(%rbp), %rax
	cmpl	$0, 200(%rax)
	je	.LBB41_16
# BB#15:                                # %if.then.21
	movq	-40(%rbp), %rax
	movl	200(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 200(%rax)
	jmp	.LBB41_50
.LBB41_16:                              # %if.end.23
	cmpl	$0, -24(%rbp)
	jne	.LBB41_18
# BB#17:                                # %if.then.25
	movl	$1, -52(%rbp)
	jmp	.LBB41_49
.LBB41_18:                              # %if.else.26
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_outside
	cmpl	$0, %eax
	je	.LBB41_20
# BB#19:                                # %if.then.29
	movl	$2, -52(%rbp)
	jmp	.LBB41_48
.LBB41_20:                              # %if.else.30
	movl	$2, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_on_handle
	cmpl	$0, %eax
	je	.LBB41_22
# BB#21:                                # %if.then.33
	movl	$4, -52(%rbp)
	jmp	.LBB41_47
.LBB41_22:                              # %if.else.34
	movl	$6, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_on_handle
	cmpl	$0, %eax
	je	.LBB41_24
# BB#23:                                # %if.then.37
	movl	$7, -52(%rbp)
	jmp	.LBB41_46
.LBB41_24:                              # %if.else.38
	movl	$3, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_on_handle
	cmpl	$0, %eax
	je	.LBB41_26
# BB#25:                                # %if.then.41
	movl	$5, -52(%rbp)
	jmp	.LBB41_45
.LBB41_26:                              # %if.else.42
	movl	$5, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_on_handle
	cmpl	$0, %eax
	je	.LBB41_28
# BB#27:                                # %if.then.45
	movl	$6, -52(%rbp)
	jmp	.LBB41_44
.LBB41_28:                              # %if.else.46
	movl	$7, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_on_handle
	cmpl	$0, %eax
	je	.LBB41_30
# BB#29:                                # %if.then.49
	movl	$8, -52(%rbp)
	jmp	.LBB41_43
.LBB41_30:                              # %if.else.50
	movl	$8, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_on_handle
	cmpl	$0, %eax
	je	.LBB41_32
# BB#31:                                # %if.then.53
	movl	$9, -52(%rbp)
	jmp	.LBB41_42
.LBB41_32:                              # %if.else.54
	movl	$1, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_on_handle
	cmpl	$0, %eax
	je	.LBB41_34
# BB#33:                                # %if.then.57
	movl	$10, -52(%rbp)
	jmp	.LBB41_41
.LBB41_34:                              # %if.else.58
	movl	$4, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_on_handle
	cmpl	$0, %eax
	je	.LBB41_36
# BB#35:                                # %if.then.61
	movl	$11, -52(%rbp)
	jmp	.LBB41_40
.LBB41_36:                              # %if.else.62
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_rectangle_tool_coord_on_handle
	cmpl	$0, %eax
	je	.LBB41_38
# BB#37:                                # %if.then.65
	movl	$3, -52(%rbp)
	jmp	.LBB41_39
.LBB41_38:                              # %if.else.66
	movl	$1, -52(%rbp)
.LBB41_39:                              # %if.end.67
	jmp	.LBB41_40
.LBB41_40:                              # %if.end.68
	jmp	.LBB41_41
.LBB41_41:                              # %if.end.69
	jmp	.LBB41_42
.LBB41_42:                              # %if.end.70
	jmp	.LBB41_43
.LBB41_43:                              # %if.end.71
	jmp	.LBB41_44
.LBB41_44:                              # %if.end.72
	jmp	.LBB41_45
.LBB41_45:                              # %if.end.73
	jmp	.LBB41_46
.LBB41_46:                              # %if.end.74
	jmp	.LBB41_47
.LBB41_47:                              # %if.end.75
	jmp	.LBB41_48
.LBB41_48:                              # %if.end.76
	jmp	.LBB41_49
.LBB41_49:                              # %if.end.77
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_set_function
.LBB41_50:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_rectangle_tool_oper_update, .Lfunc_end41-gimp_rectangle_tool_oper_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_coord_outside,@function
gimp_rectangle_tool_coord_outside:      # @gimp_rectangle_tool_coord_outside
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	144(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_get_public_rect
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpl	$0, -36(%rbp)
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	je	.LBB42_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movq	-32(%rbp), %rax
	divsd	200(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB42_3
.LBB42_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB42_3
.LBB42_3:                               # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpl	$0, -36(%rbp)
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	je	.LBB42_5
# BB#4:                                 # %cond.true.8
	movq	-24(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movq	-32(%rbp), %rax
	divsd	200(%rax), %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB42_6
.LBB42_5:                               # %cond.false.13
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB42_6
.LBB42_6:                               # %cond.end.14
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpl	$0, -36(%rbp)
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	je	.LBB42_8
# BB#7:                                 # %cond.true.17
	movq	-24(%rbp), %rax
	cvtsi2sdl	132(%rax), %xmm0
	movq	-32(%rbp), %rax
	divsd	208(%rax), %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB42_9
.LBB42_8:                               # %cond.false.20
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB42_9
.LBB42_9:                               # %cond.end.21
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpl	$0, -36(%rbp)
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	je	.LBB42_11
# BB#10:                                # %cond.true.25
	movq	-24(%rbp), %rax
	cvtsi2sdl	132(%rax), %xmm0
	movq	-32(%rbp), %rax
	divsd	208(%rax), %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB42_12
.LBB42_11:                              # %cond.false.30
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB42_12
.LBB42_12:                              # %cond.end.31
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%al, -185(%rbp)         # 1-byte Spill
	ja	.LBB42_16
# BB#13:                                # %lor.lhs.false
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	movb	%al, -185(%rbp)         # 1-byte Spill
	ja	.LBB42_16
# BB#14:                                # %lor.lhs.false.38
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%al, -185(%rbp)         # 1-byte Spill
	ja	.LBB42_16
# BB#15:                                # %lor.rhs
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-104(%rbp), %xmm0
	seta	%cl
	movb	%cl, -185(%rbp)         # 1-byte Spill
.LBB42_16:                              # %lor.end
	movb	-185(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_rectangle_tool_coord_outside, .Lfunc_end42-gimp_rectangle_tool_coord_outside
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI43_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_coord_on_handle,@function
gimp_rectangle_tool_coord_on_handle:    # @gimp_rectangle_tool_coord_on_handle
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %r8
	callq	gimp_rectangle_tool_get_public_rect
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-20(%rbp), %r9d
	movl	%r9d, %eax
	movq	%rax, %rcx
	subq	$8, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	ja	.LBB43_13
# BB#16:                                # %entry
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI43_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB43_1:                               # %sw.bb
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	132(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$-1, -140(%rbp)
	movl	$-1, -144(%rbp)
	jmp	.LBB43_13
.LBB43_2:                               # %sw.bb.10
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	132(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$1, -140(%rbp)
	movl	$1, -144(%rbp)
	jmp	.LBB43_13
.LBB43_3:                               # %sw.bb.15
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	132(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$1, -140(%rbp)
	movl	$-1, -144(%rbp)
	jmp	.LBB43_13
.LBB43_4:                               # %sw.bb.20
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	132(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$-1, -140(%rbp)
	movl	$1, -144(%rbp)
	jmp	.LBB43_13
.LBB43_5:                               # %sw.bb.25
	movsd	.LCPI43_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -112(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	140(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$-1, -140(%rbp)
	movl	$0, -144(%rbp)
	jmp	.LBB43_13
.LBB43_6:                               # %sw.bb.29
	movsd	.LCPI43_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -112(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	140(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$1, -140(%rbp)
	movl	$0, -144(%rbp)
	jmp	.LBB43_13
.LBB43_7:                               # %sw.bb.36
	movsd	.LCPI43_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	132(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$-1, -144(%rbp)
	jmp	.LBB43_13
.LBB43_8:                               # %sw.bb.42
	movsd	.LCPI43_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movq	-32(%rbp), %rax
	cvtsi2sdl	132(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$1, -144(%rbp)
	jmp	.LBB43_13
.LBB43_9:                               # %sw.bb.49
	movsd	.LCPI43_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB43_11
# BB#10:                                # %if.then
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	200(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	208(%rax), %xmm0
	movsd	%xmm0, -136(%rbp)
	jmp	.LBB43_12
.LBB43_11:                              # %if.else
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	200(%rax), %xmm0
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	208(%rax), %xmm0
	movq	-32(%rbp), %rax
	movl	132(%rax), %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
.LBB43_12:                              # %if.end
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
.LBB43_13:                              # %sw.epilog
	movq	-32(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB43_15
# BB#14:                                # %if.then.69
	cvtsi2sdl	-140(%rbp), %xmm0
	mulsd	-128(%rbp), %xmm0
	movq	-40(%rbp), %rax
	divsd	200(%rax), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	cvtsi2sdl	-144(%rbp), %xmm0
	mulsd	-136(%rbp), %xmm0
	movq	-40(%rbp), %rax
	divsd	208(%rax), %xmm0
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
.LBB43_15:                              # %if.end.80
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rsi
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-120(%rbp), %xmm3       # xmm3 = mem[0],zero
	cvttsd2si	-128(%rbp), %ecx
	cvttsd2si	-136(%rbp), %r8d
	movl	-20(%rbp), %r9d
	callq	gimp_draw_tool_on_handle
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_rectangle_tool_coord_on_handle, .Lfunc_end43-gimp_rectangle_tool_coord_on_handle
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI43_0:
	.quad	.LBB43_9
	.quad	.LBB43_7
	.quad	.LBB43_1
	.quad	.LBB43_3
	.quad	.LBB43_8
	.quad	.LBB43_4
	.quad	.LBB43_2
	.quad	.LBB43_5
	.quad	.LBB43_6

	.text
	.globl	gimp_rectangle_tool_cursor_update
	.align	16, 0x90
	.type	gimp_rectangle_tool_cursor_update,@function
gimp_rectangle_tool_cursor_update:      # @gimp_rectangle_tool_cursor_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$1027, -44(%rbp)        # imm = 0x403
	movl	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB44_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB44_8
.LBB44_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB44_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB44_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB44_7
.LBB44_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB44_7:                               # %if.end
	jmp	.LBB44_8
.LBB44_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB44_10
# BB#9:                                 # %if.then.8
	jmp	.LBB44_11
.LBB44_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_cursor_update, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB44_27
.LBB44_11:                              # %if.end.10
	jmp	.LBB44_12
.LBB44_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB44_26
# BB#13:                                # %if.then.16
	movq	-40(%rbp), %rax
	movl	96(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	ja	.LBB44_24
# BB#28:                                # %if.then.16
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI44_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB44_14:                              # %sw.bb
	movl	$1027, -44(%rbp)        # imm = 0x403
	jmp	.LBB44_25
.LBB44_15:                              # %sw.bb.17
	movl	$1029, -44(%rbp)        # imm = 0x405
	movl	$5, -48(%rbp)
	jmp	.LBB44_25
.LBB44_16:                              # %sw.bb.18
	movl	$1032, -44(%rbp)        # imm = 0x408
	jmp	.LBB44_25
.LBB44_17:                              # %sw.bb.19
	movl	$1033, -44(%rbp)        # imm = 0x409
	jmp	.LBB44_25
.LBB44_18:                              # %sw.bb.20
	movl	$1034, -44(%rbp)        # imm = 0x40A
	jmp	.LBB44_25
.LBB44_19:                              # %sw.bb.21
	movl	$1035, -44(%rbp)        # imm = 0x40B
	jmp	.LBB44_25
.LBB44_20:                              # %sw.bb.22
	movl	$1037, -44(%rbp)        # imm = 0x40D
	jmp	.LBB44_25
.LBB44_21:                              # %sw.bb.23
	movl	$1038, -44(%rbp)        # imm = 0x40E
	jmp	.LBB44_25
.LBB44_22:                              # %sw.bb.24
	movl	$1036, -44(%rbp)        # imm = 0x40C
	jmp	.LBB44_25
.LBB44_23:                              # %sw.bb.25
	movl	$1039, -44(%rbp)        # imm = 0x40F
	jmp	.LBB44_25
.LBB44_24:                              # %sw.default
	jmp	.LBB44_25
.LBB44_25:                              # %sw.epilog
	jmp	.LBB44_26
.LBB44_26:                              # %if.end.26
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_tool_control_set_cursor
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_tool_control_set_cursor_modifier
.LBB44_27:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_rectangle_tool_cursor_update, .Lfunc_end44-gimp_rectangle_tool_cursor_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI44_0:
	.quad	.LBB44_14
	.quad	.LBB44_15
	.quad	.LBB44_16
	.quad	.LBB44_17
	.quad	.LBB44_18
	.quad	.LBB44_19
	.quad	.LBB44_20
	.quad	.LBB44_21
	.quad	.LBB44_22
	.quad	.LBB44_23

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI45_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_rectangle_tool_draw
	.align	16, 0x90
	.type	gimp_rectangle_tool_draw,@function
gimp_rectangle_tool_draw:               # @gimp_rectangle_tool_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB45_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB45_8
.LBB45_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB45_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB45_7
.LBB45_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB45_7:                               # %if.end
	jmp	.LBB45_8
.LBB45_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB45_10
# BB#9:                                 # %if.then.8
	jmp	.LBB45_11
.LBB45_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_draw, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_50
.LBB45_11:                              # %if.end.10
	jmp	.LBB45_12
.LBB45_12:                              # %do.end
	jmp	.LBB45_13
.LBB45_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB45_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_canvas_group_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB45_16
# BB#15:                                # %if.then.21
	movl	$0, -124(%rbp)
	jmp	.LBB45_21
.LBB45_16:                              # %if.else.22
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_19
# BB#17:                                # %land.lhs.true.25
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB45_19
# BB#18:                                # %if.then.29
	movl	$1, -124(%rbp)
	jmp	.LBB45_20
.LBB45_19:                              # %if.else.30
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB45_20:                              # %if.end.32
	jmp	.LBB45_21
.LBB45_21:                              # %if.end.33
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB45_23
.LBB45_22:                              # %if.then.36
	jmp	.LBB45_24
.LBB45_23:                              # %if.else.37
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_draw, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_50
.LBB45_24:                              # %if.end.38
	jmp	.LBB45_25
.LBB45_25:                              # %do.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_public_rect
	movq	-32(%rbp), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB45_27
# BB#26:                                # %if.then.56
	jmp	.LBB45_50
.LBB45_27:                              # %if.end.57
	cmpq	$0, -16(%rbp)
	jne	.LBB45_29
# BB#28:                                # %if.then.59
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_add_stroke_group
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB45_29:                              # %if.end.63
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	12(%rsi), %esi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	callq	gimp_draw_tool_add_rectangle_guides
	movq	-8(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	xorl	%esi, %esi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_rectangle
	movq	-8(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_pop_group
	movq	-32(%rbp), %rax
	movl	96(%rax), %esi
	decl	%esi
	movl	%esi, %eax
	subl	$11, %esi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movl	%esi, -212(%rbp)        # 4-byte Spill
	ja	.LBB45_45
# BB#51:                                # %if.end.63
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	.LJTI45_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB45_30:                              # %sw.bb
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB45_32
# BB#31:                                # %if.then.72
	movl	$4, %esi
	movl	$7, %eax
	xorl	%r8d, %r8d
	movsd	.LCPI45_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-72(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	addsd	-80(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_draw_tool_add_handle
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB45_50
.LBB45_32:                              # %if.else.76
	jmp	.LBB45_33
.LBB45_33:                              # %if.end.77
	jmp	.LBB45_34
.LBB45_34:                              # %sw.bb.78
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_draw_tool_push_group
	xorl	%esi, %esi
	movl	$2, %r9d
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	144(%rax), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	132(%rax), %r8d
	callq	gimp_draw_tool_add_corner
	xorl	%esi, %esi
	movl	$3, %r9d
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %r10
	movl	144(%r10), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %r10
	movl	128(%r10), %ecx
	movq	-32(%rbp), %r10
	movl	132(%r10), %r8d
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_corner
	xorl	%esi, %esi
	movl	$5, %r9d
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %r10
	movl	144(%r10), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %r10
	movl	128(%r10), %ecx
	movq	-32(%rbp), %r10
	movl	132(%r10), %r8d
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_corner
	xorl	%esi, %esi
	movl	$6, %r9d
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %r10
	movl	144(%r10), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %r10
	movl	128(%r10), %ecx
	movq	-32(%rbp), %r10
	movl	132(%r10), %r8d
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_add_corner
	movq	-8(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_pop_group
	jmp	.LBB45_50
.LBB45_35:                              # %sw.bb.92
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB45_37
# BB#36:                                # %if.then.96
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_draw_tool_push_group
.LBB45_37:                              # %if.end.97
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-32(%rbp), %rdi
	movl	144(%rdi), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	movl	136(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	132(%rdi), %r8d
	movq	-32(%rbp), %rdi
	movl	%esi, -268(%rbp)        # 4-byte Spill
	movl	%edx, -272(%rbp)        # 4-byte Spill
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movsd	%xmm2, -296(%rbp)       # 8-byte Spill
	movsd	%xmm3, -304(%rbp)       # 8-byte Spill
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	%r8d, -312(%rbp)        # 4-byte Spill
	callq	gimp_rectangle_tool_get_anchor
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	-268(%rbp), %esi        # 4-byte Reload
	movl	-272(%rbp), %edx        # 4-byte Reload
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-296(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-304(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	-308(%rbp), %ecx        # 4-byte Reload
	movl	-312(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	callq	gimp_draw_tool_add_corner
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB45_39
# BB#38:                                # %if.then.108
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_pop_group
.LBB45_39:                              # %if.end.109
	jmp	.LBB45_50
.LBB45_40:                              # %sw.bb.110
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB45_42
# BB#41:                                # %if.then.114
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_draw_tool_push_group
.LBB45_42:                              # %if.end.115
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-32(%rbp), %rdi
	movl	144(%rdi), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	movl	128(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	140(%rdi), %r8d
	movq	-32(%rbp), %rdi
	movl	%esi, -332(%rbp)        # 4-byte Spill
	movl	%edx, -336(%rbp)        # 4-byte Spill
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movsd	%xmm1, -352(%rbp)       # 8-byte Spill
	movsd	%xmm2, -360(%rbp)       # 8-byte Spill
	movsd	%xmm3, -368(%rbp)       # 8-byte Spill
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	%r8d, -376(%rbp)        # 4-byte Spill
	callq	gimp_rectangle_tool_get_anchor
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	movl	-336(%rbp), %edx        # 4-byte Reload
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-360(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-368(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	-372(%rbp), %ecx        # 4-byte Reload
	movl	-376(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	callq	gimp_draw_tool_add_corner
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB45_44
# BB#43:                                # %if.then.128
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_pop_group
.LBB45_44:                              # %if.end.129
	jmp	.LBB45_50
.LBB45_45:                              # %sw.default
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB45_47
# BB#46:                                # %if.then.133
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_draw_tool_push_group
.LBB45_47:                              # %if.end.134
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-32(%rbp), %rdi
	movl	144(%rdi), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	movl	128(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	132(%rdi), %r8d
	movq	-32(%rbp), %rdi
	movl	%esi, -396(%rbp)        # 4-byte Spill
	movl	%edx, -400(%rbp)        # 4-byte Spill
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movsd	%xmm1, -416(%rbp)       # 8-byte Spill
	movsd	%xmm2, -424(%rbp)       # 8-byte Spill
	movsd	%xmm3, -432(%rbp)       # 8-byte Spill
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	%r8d, -440(%rbp)        # 4-byte Spill
	callq	gimp_rectangle_tool_get_anchor
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	-396(%rbp), %esi        # 4-byte Reload
	movl	-400(%rbp), %edx        # 4-byte Reload
	movsd	-408(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-424(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-432(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	-436(%rbp), %ecx        # 4-byte Reload
	movl	-440(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	callq	gimp_draw_tool_add_corner
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB45_49
# BB#48:                                # %if.then.148
	movq	-8(%rbp), %rdi
	callq	gimp_draw_tool_pop_group
.LBB45_49:                              # %if.end.149
	jmp	.LBB45_50
.LBB45_50:                              # %sw.epilog
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_rectangle_tool_draw, .Lfunc_end45-gimp_rectangle_tool_draw
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI45_0:
	.quad	.LBB45_34
	.quad	.LBB45_34
	.quad	.LBB45_30
	.quad	.LBB45_45
	.quad	.LBB45_45
	.quad	.LBB45_45
	.quad	.LBB45_45
	.quad	.LBB45_40
	.quad	.LBB45_40
	.quad	.LBB45_35
	.quad	.LBB45_35
	.quad	.LBB45_34

	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_get_anchor,@function
gimp_rectangle_tool_get_anchor:         # @gimp_rectangle_tool_get_anchor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	96(%rdi), %eax
	addl	$-4, %eax
	movl	%eax, %edi
	subl	$7, %eax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB46_9
# BB#11:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI46_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB46_1:                               # %sw.bb
	movl	$2, -4(%rbp)
	jmp	.LBB46_10
.LBB46_2:                               # %sw.bb.1
	movl	$3, -4(%rbp)
	jmp	.LBB46_10
.LBB46_3:                               # %sw.bb.2
	movl	$5, -4(%rbp)
	jmp	.LBB46_10
.LBB46_4:                               # %sw.bb.3
	movl	$6, -4(%rbp)
	jmp	.LBB46_10
.LBB46_5:                               # %sw.bb.4
	movl	$7, -4(%rbp)
	jmp	.LBB46_10
.LBB46_6:                               # %sw.bb.5
	movl	$8, -4(%rbp)
	jmp	.LBB46_10
.LBB46_7:                               # %sw.bb.6
	movl	$1, -4(%rbp)
	jmp	.LBB46_10
.LBB46_8:                               # %sw.bb.7
	movl	$4, -4(%rbp)
	jmp	.LBB46_10
.LBB46_9:                               # %sw.default
	movl	$0, -4(%rbp)
.LBB46_10:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_rectangle_tool_get_anchor, .Lfunc_end46-gimp_rectangle_tool_get_anchor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI46_0:
	.quad	.LBB46_1
	.quad	.LBB46_2
	.quad	.LBB46_3
	.quad	.LBB46_4
	.quad	.LBB46_5
	.quad	.LBB46_6
	.quad	.LBB46_7
	.quad	.LBB46_8

	.text
	.globl	gimp_rectangle_tool_get_function
	.align	16, 0x90
	.type	gimp_rectangle_tool_get_function,@function
gimp_rectangle_tool_get_function:       # @gimp_rectangle_tool_get_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_rectangle_tool_interface_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB47_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB47_8
.LBB47_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB47_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB47_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB47_7
.LBB47_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB47_7:                               # %if.end
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.8
	jmp	.LBB47_11
.LBB47_10:                              # %if.else.9
	movabsq	$.L.str.8, %rdi
	movabsq	$.L__func__.gimp_rectangle_tool_get_function, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB47_13
.LBB47_11:                              # %if.end.10
	jmp	.LBB47_12
.LBB47_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movl	96(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB47_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_rectangle_tool_get_function, .Lfunc_end47-gimp_rectangle_tool_get_function
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_private_finalize,@function
gimp_rectangle_tool_private_finalize:   # @gimp_rectangle_tool_private_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$208, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_rectangle_tool_private_finalize, .Lfunc_end48-gimp_rectangle_tool_private_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_shell_scrolled,@function
gimp_rectangle_tool_shell_scrolled:     # @gimp_rectangle_tool_shell_scrolled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-16(%rbp), %rdi
	callq	gimp_rectangle_tool_update_handle_sizes
	movq	-24(%rbp), %rdi
	callq	gimp_draw_tool_resume
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_rectangle_tool_shell_scrolled, .Lfunc_end49-gimp_rectangle_tool_shell_scrolled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_auto_shrink,@function
gimp_rectangle_tool_auto_shrink:        # @gimp_rectangle_tool_auto_shrink
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$304, %rsp              # imm = 0x130
.Ltmp165:
	.cfi_offset %rbx, -48
.Ltmp166:
	.cfi_offset %r12, -40
.Ltmp167:
	.cfi_offset %r14, -32
.Ltmp168:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB50_2
# BB#1:                                 # %if.then
	jmp	.LBB50_34
.LBB50_2:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_tool_get_options
	movabsq	$.L.str.34, %rsi
	leaq	-116(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -116(%rbp)
	je	.LBB50_16
# BB#3:                                 # %if.then.9
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB50_5
# BB#4:                                 # %cond.true
	movq	-56(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB50_6
.LBB50_5:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB50_6
.LBB50_6:                               # %cond.end
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movq	-56(%rbp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB50_8
# BB#7:                                 # %cond.true.15
	movq	-56(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB50_9
.LBB50_8:                               # %cond.false.17
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB50_9
.LBB50_9:                               # %cond.end.18
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -88(%rbp)
	movq	-56(%rbp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB50_11
# BB#10:                                # %cond.true.26
	movq	-56(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB50_12
.LBB50_11:                              # %cond.false.28
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB50_12:                              # %cond.end.31
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	movq	-56(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB50_14
# BB#13:                                # %cond.true.39
	movq	-56(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB50_15
.LBB50_14:                              # %cond.false.41
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB50_15:                              # %cond.end.44
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB50_31
.LBB50_16:                              # %if.else
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB50_18
# BB#17:                                # %if.then.51
	jmp	.LBB50_34
.LBB50_18:                              # %if.end.52
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-136(%rbp), %rdi
	callq	gimp_item_get_offset
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rdx
	movsd	48(%rdx), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB50_20
# BB#19:                                # %cond.true.57
	movq	-56(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB50_21
.LBB50_20:                              # %cond.false.61
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB50_21
.LBB50_21:                              # %cond.end.62
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movq	-56(%rbp), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB50_23
# BB#22:                                # %cond.true.70
	movq	-56(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB50_24
.LBB50_23:                              # %cond.false.74
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB50_24
.LBB50_24:                              # %cond.end.75
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -88(%rbp)
	movq	-56(%rbp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-136(%rbp), %rdi
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB50_26
# BB#25:                                # %cond.true.85
	movq	-56(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB50_27
.LBB50_26:                              # %cond.false.89
	movq	-136(%rbp), %rdi
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB50_27:                              # %cond.end.92
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	movq	-56(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-136(%rbp), %rdi
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB50_29
# BB#28:                                # %cond.true.102
	movq	-56(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB50_30
.LBB50_29:                              # %cond.false.106
	movq	-136(%rbp), %rdi
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB50_30:                              # %cond.end.109
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -96(%rbp)
.LBB50_31:                              # %if.end.112
	leaq	-100(%rbp), %rax
	leaq	-104(%rbp), %rcx
	leaq	-108(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-84(%rbp), %r8d
	movl	-88(%rbp), %r9d
	movl	-92(%rbp), %r10d
	movl	-96(%rbp), %r11d
	cmpl	$0, -116(%rbp)
	setne	%bl
	xorb	$-1, %bl
	andb	$1, %bl
	movzbl	%bl, %r14d
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movl	%r14d, %r9d
	movq	%rax, (%rsp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-280(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-272(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	callq	gimp_image_crop_auto_shrink
	cmpl	$0, %eax
	je	.LBB50_33
# BB#32:                                # %if.then.116
	movq	-56(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movq	-56(%rbp), %rax
	movl	$12, 96(%rax)
	movl	-76(%rbp), %ecx
	addl	-100(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-56(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movl	-80(%rbp), %ecx
	addl	-104(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-56(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movl	-76(%rbp), %ecx
	addl	-108(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-56(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movl	-80(%rbp), %ecx
	addl	-112(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-56(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_int_rect
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_rectangle_change_complete
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_handle_sizes
	movq	-40(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
	movl	-140(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 96(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB50_33:                              # %if.end.134
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_rectangle_tool_update_options
.LBB50_34:                              # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_rectangle_tool_auto_shrink, .Lfunc_end50-gimp_rectangle_tool_auto_shrink
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI51_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_synthesize_motion,@function
gimp_rectangle_tool_synthesize_motion:  # @gimp_rectangle_tool_synthesize_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB51_2
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB51_3
.LBB51_2:                               # %if.then
	jmp	.LBB51_4
.LBB51_3:                               # %if.end
	movq	-56(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_pause
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_rectangle_tool_set_function
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_rectangle_tool_update_with_coord
	movsd	.LCPI51_0, %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	64(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-56(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	movq	-56(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	addsd	72(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movq	-56(%rbp), %rax
	movsd	%xmm1, 32(%rax)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_rectangle_tool_update_options
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_rectangle_tool_set_function
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_update_highlight
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_update_handle_sizes
	movq	-48(%rbp), %rdi
	callq	gimp_draw_tool_resume
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_rectangle_change_complete
.LBB51_4:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_rectangle_tool_synthesize_motion, .Lfunc_end51-gimp_rectangle_tool_synthesize_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_rect_rubber_banding_func,@function
gimp_rectangle_tool_rect_rubber_banding_func: # @gimp_rectangle_tool_rect_rubber_banding_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -16(%rbp)
	movl	96(%rax), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	%edx, -40(%rbp)         # 4-byte Spill
	jb	.LBB52_2
	jmp	.LBB52_5
.LBB52_5:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB52_1
	jmp	.LBB52_6
.LBB52_6:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB52_2
	jmp	.LBB52_7
.LBB52_7:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	addl	$-4, %eax
	subl	$8, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	ja	.LBB52_3
	jmp	.LBB52_1
.LBB52_1:                               # %sw.bb
	movl	$1, -20(%rbp)
	jmp	.LBB52_4
.LBB52_2:                               # %sw.bb.3
	jmp	.LBB52_3
.LBB52_3:                               # %sw.default
	movl	$0, -20(%rbp)
.LBB52_4:                               # %sw.epilog
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_rectangle_tool_rect_rubber_banding_func, .Lfunc_end52-gimp_rectangle_tool_rect_rubber_banding_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_get_other_side,@function
gimp_rectangle_tool_get_other_side:     # @gimp_rectangle_tool_get_other_side
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movl	96(%rax), %ecx
	movl	%ecx, %r8d
	subl	$4, %r8d
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	je	.LBB53_2
	jmp	.LBB53_11
.LBB53_11:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB53_1
	jmp	.LBB53_12
.LBB53_12:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB53_2
	jmp	.LBB53_13
.LBB53_13:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB53_1
	jmp	.LBB53_14
.LBB53_14:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB53_2
	jmp	.LBB53_15
.LBB53_15:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB53_1
	jmp	.LBB53_16
.LBB53_16:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	$-10, %eax
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jb	.LBB53_3
	jmp	.LBB53_4
.LBB53_1:                               # %sw.bb
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB53_5
.LBB53_2:                               # %sw.bb.3
	movq	-32(%rbp), %rax
	addq	$64, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB53_5
.LBB53_3:                               # %sw.bb.4
	jmp	.LBB53_4
.LBB53_4:                               # %sw.default
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB53_5:                               # %sw.epilog
	movq	-32(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, %edx
	addl	$-4, %edx
	subl	$2, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	jb	.LBB53_7
	jmp	.LBB53_17
.LBB53_17:                              # %sw.epilog
	movl	-76(%rbp), %eax         # 4-byte Reload
	addl	$-6, %eax
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jb	.LBB53_6
	jmp	.LBB53_18
.LBB53_18:                              # %sw.epilog
	movl	-76(%rbp), %eax         # 4-byte Reload
	addl	$-8, %eax
	subl	$2, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jb	.LBB53_8
	jmp	.LBB53_19
.LBB53_19:                              # %sw.epilog
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB53_7
	jmp	.LBB53_20
.LBB53_20:                              # %sw.epilog
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jne	.LBB53_9
	jmp	.LBB53_6
.LBB53_6:                               # %sw.bb.6
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB53_10
.LBB53_7:                               # %sw.bb.7
	movq	-32(%rbp), %rax
	addq	$72, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB53_10
.LBB53_8:                               # %sw.bb.8
	jmp	.LBB53_9
.LBB53_9:                               # %sw.default.9
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB53_10:                              # %sw.epilog.10
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_rectangle_tool_get_other_side, .Lfunc_end53-gimp_rectangle_tool_get_other_side
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_check_function,@function
gimp_rectangle_tool_check_function:     # @gimp_rectangle_tool_check_function
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB54_10
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$48, %rcx
	addq	$64, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	swap_doubles
	movl	-20(%rbp), %edx
	addl	$-4, %edx
	movl	%edx, %eax
	subl	$5, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	ja	.LBB54_8
# BB#21:                                # %if.then
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI54_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB54_2:                               # %sw.bb
	movl	$5, -20(%rbp)
	jmp	.LBB54_9
.LBB54_3:                               # %sw.bb.6
	movl	$4, -20(%rbp)
	jmp	.LBB54_9
.LBB54_4:                               # %sw.bb.7
	movl	$7, -20(%rbp)
	jmp	.LBB54_9
.LBB54_5:                               # %sw.bb.8
	movl	$6, -20(%rbp)
	jmp	.LBB54_9
.LBB54_6:                               # %sw.bb.9
	movl	$9, -20(%rbp)
	jmp	.LBB54_9
.LBB54_7:                               # %sw.bb.10
	movl	$8, -20(%rbp)
	jmp	.LBB54_9
.LBB54_8:                               # %sw.default
	jmp	.LBB54_9
.LBB54_9:                               # %sw.epilog
	jmp	.LBB54_10
.LBB54_10:                              # %if.end
	movq	-16(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB54_20
# BB#11:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$56, %rcx
	addq	$72, %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	swap_doubles
	movl	-20(%rbp), %edx
	addl	$-4, %edx
	movl	%edx, %eax
	subl	$7, %edx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	ja	.LBB54_18
# BB#22:                                # %if.then.12
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI54_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB54_12:                              # %sw.bb.15
	movl	$6, -20(%rbp)
	jmp	.LBB54_19
.LBB54_13:                              # %sw.bb.16
	movl	$7, -20(%rbp)
	jmp	.LBB54_19
.LBB54_14:                              # %sw.bb.17
	movl	$4, -20(%rbp)
	jmp	.LBB54_19
.LBB54_15:                              # %sw.bb.18
	movl	$5, -20(%rbp)
	jmp	.LBB54_19
.LBB54_16:                              # %sw.bb.19
	movl	$11, -20(%rbp)
	jmp	.LBB54_19
.LBB54_17:                              # %sw.bb.20
	movl	$10, -20(%rbp)
	jmp	.LBB54_19
.LBB54_18:                              # %sw.default.21
	jmp	.LBB54_19
.LBB54_19:                              # %sw.epilog.22
	jmp	.LBB54_20
.LBB54_20:                              # %if.end.23
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_rectangle_tool_set_function
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_rectangle_tool_check_function, .Lfunc_end54-gimp_rectangle_tool_check_function
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI54_0:
	.quad	.LBB54_2
	.quad	.LBB54_3
	.quad	.LBB54_4
	.quad	.LBB54_5
	.quad	.LBB54_6
	.quad	.LBB54_7
.LJTI54_1:
	.quad	.LBB54_12
	.quad	.LBB54_13
	.quad	.LBB54_14
	.quad	.LBB54_15
	.quad	.LBB54_18
	.quad	.LBB54_18
	.quad	.LBB54_16
	.quad	.LBB54_17

	.text
	.align	16, 0x90
	.type	swap_doubles,@function
swap_doubles:                           # @swap_doubles
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	popq	%rbp
	retq
.Lfunc_end55:
	.size	swap_doubles, .Lfunc_end55-swap_doubles
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_adjust_coord,@function
gimp_rectangle_tool_adjust_coord:       # @gimp_rectangle_tool_adjust_coord
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -48(%rbp)
	movl	104(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB56_1
	jmp	.LBB56_5
.LBB56_5:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB56_2
	jmp	.LBB56_3
.LBB56_1:                               # %sw.bb
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB56_4
.LBB56_2:                               # %sw.bb.5
	jmp	.LBB56_3
.LBB56_3:                               # %sw.default
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB56_4:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_rectangle_tool_adjust_coord, .Lfunc_end56-gimp_rectangle_tool_adjust_coord
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_clamp_width,@function
gimp_rectangle_tool_clamp_width:        # @gimp_rectangle_tool_clamp_width
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB57_2
# BB#1:                                 # %if.then
	jmp	.LBB57_18
.LBB57_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	leaq	-36(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	-40(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %r9d
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	gimp_rectangle_tool_get_constraints
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB57_10
# BB#3:                                 # %if.then.5
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	-32(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	48(%rax), %xmm0
	movsd	%xmm0, 48(%rax)
	cmpl	$0, -24(%rbp)
	je	.LBB57_5
# BB#4:                                 # %if.then.9
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 64(%rax)
.LBB57_5:                               # %if.end.11
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB57_7
# BB#6:                                 # %if.then.16
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
.LBB57_7:                               # %if.end.19
	cmpq	$0, -16(%rbp)
	je	.LBB57_9
# BB#8:                                 # %if.then.21
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, (%rax)
.LBB57_9:                               # %if.end.22
	jmp	.LBB57_10
.LBB57_10:                              # %if.end.23
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB57_18
# BB#11:                                # %if.then.28
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	-32(%rbp), %rax
	subsd	64(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	64(%rax), %xmm0
	movsd	%xmm0, 64(%rax)
	cmpl	$0, -24(%rbp)
	je	.LBB57_13
# BB#12:                                # %if.then.36
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rax)
.LBB57_13:                              # %if.end.39
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB57_15
# BB#14:                                # %if.then.44
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 48(%rax)
.LBB57_15:                              # %if.end.47
	cmpq	$0, -16(%rbp)
	je	.LBB57_17
# BB#16:                                # %if.then.49
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	orl	$2, %ecx
	movl	%ecx, (%rax)
.LBB57_17:                              # %if.end.51
	jmp	.LBB57_18
.LBB57_18:                              # %if.end.52
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_rectangle_tool_clamp_width, .Lfunc_end57-gimp_rectangle_tool_clamp_width
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_clamp_height,@function
gimp_rectangle_tool_clamp_height:       # @gimp_rectangle_tool_clamp_height
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB58_2
# BB#1:                                 # %if.then
	jmp	.LBB58_18
.LBB58_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-36(%rbp), %rdx
	leaq	-40(%rbp), %r8
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %r9d
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	gimp_rectangle_tool_get_constraints
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB58_10
# BB#3:                                 # %if.then.5
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	-32(%rbp), %rax
	subsd	56(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	56(%rax), %xmm0
	movsd	%xmm0, 56(%rax)
	cmpl	$0, -24(%rbp)
	je	.LBB58_5
# BB#4:                                 # %if.then.9
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 72(%rax)
.LBB58_5:                               # %if.end.11
	movq	-32(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB58_7
# BB#6:                                 # %if.then.16
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
.LBB58_7:                               # %if.end.19
	cmpq	$0, -16(%rbp)
	je	.LBB58_9
# BB#8:                                 # %if.then.21
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	orl	$4, %ecx
	movl	%ecx, (%rax)
.LBB58_9:                               # %if.end.22
	jmp	.LBB58_10
.LBB58_10:                              # %if.end.23
	movq	-32(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB58_18
# BB#11:                                # %if.then.28
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	-32(%rbp), %rax
	subsd	72(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	72(%rax), %xmm0
	movsd	%xmm0, 72(%rax)
	cmpl	$0, -24(%rbp)
	je	.LBB58_13
# BB#12:                                # %if.then.36
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rax)
.LBB58_13:                              # %if.end.39
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB58_15
# BB#14:                                # %if.then.44
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 56(%rax)
.LBB58_15:                              # %if.end.47
	cmpq	$0, -16(%rbp)
	je	.LBB58_17
# BB#16:                                # %if.then.49
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	orl	$8, %ecx
	movl	%ecx, (%rax)
.LBB58_17:                              # %if.end.51
	jmp	.LBB58_18
.LBB58_18:                              # %if.end.52
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_rectangle_tool_clamp_height, .Lfunc_end58-gimp_rectangle_tool_clamp_height
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_get_constraints,@function
gimp_rectangle_tool_get_constraints:    # @gimp_rectangle_tool_get_constraints
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB59_2
# BB#1:                                 # %if.then
	leaq	-68(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB59_2:                               # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB59_4
# BB#3:                                 # %if.then.3
	leaq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB59_4:                               # %if.end.4
	cmpq	$0, -32(%rbp)
	jne	.LBB59_6
# BB#5:                                 # %if.then.6
	leaq	-76(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB59_6:                               # %if.end.7
	cmpq	$0, -40(%rbp)
	jne	.LBB59_8
# BB#7:                                 # %if.then.9
	leaq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB59_8:                               # %if.end.10
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB59_10
# BB#9:                                 # %if.then.12
	jmp	.LBB59_14
.LBB59_10:                              # %if.end.13
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%edx, -104(%rbp)        # 4-byte Spill
	je	.LBB59_11
	jmp	.LBB59_15
.LBB59_15:                              # %if.end.13
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB59_12
	jmp	.LBB59_13
.LBB59_11:                              # %sw.bb
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_height
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB59_14
.LBB59_12:                              # %sw.bb.18
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rdi
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-124(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movq	-88(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-128(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.LBB59_14
.LBB59_13:                              # %sw.default
	movabsq	$.L.str.43, %rdi
	movb	$0, %al
	callq	g_warning
.LBB59_14:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_rectangle_tool_get_constraints, .Lfunc_end59-gimp_rectangle_tool_get_constraints
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI60_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_apply_coord,@function
gimp_rectangle_tool_apply_coord:        # @gimp_rectangle_tool_apply_coord
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB60_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.44, %rdi
	movb	$0, %al
	callq	g_warning
.LBB60_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpl	$3, 96(%rax)
	jne	.LBB60_4
# BB#3:                                 # %if.then.13
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	56(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	jmp	.LBB60_18
.LBB60_4:                               # %if.end.22
	movq	-32(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, %edx
	subl	$4, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%edx, -104(%rbp)        # 4-byte Spill
	je	.LBB60_5
	jmp	.LBB60_19
.LBB60_19:                              # %if.end.22
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB60_8
	jmp	.LBB60_20
.LBB60_20:                              # %if.end.22
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB60_5
	jmp	.LBB60_21
.LBB60_21:                              # %if.end.22
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB60_8
	jmp	.LBB60_22
.LBB60_22:                              # %if.end.22
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB60_5
	jmp	.LBB60_23
.LBB60_23:                              # %if.end.22
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB60_8
	jmp	.LBB60_11
.LBB60_5:                               # %sw.bb
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB60_7
# BB#6:                                 # %if.then.25
	movsd	.LCPI60_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	24(%rax), %xmm0
	movq	-32(%rbp), %rax
	subsd	48(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
.LBB60_7:                               # %if.end.29
	jmp	.LBB60_11
.LBB60_8:                               # %sw.bb.30
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB60_10
# BB#9:                                 # %if.then.34
	movsd	.LCPI60_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	24(%rax), %xmm0
	movq	-32(%rbp), %rax
	subsd	64(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 48(%rax)
.LBB60_10:                              # %if.end.40
	jmp	.LBB60_11
.LBB60_11:                              # %sw.epilog
	movq	-32(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, %edx
	addl	$-4, %edx
	subl	$2, %edx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jb	.LBB60_12
	jmp	.LBB60_24
.LBB60_24:                              # %sw.epilog
	movl	-128(%rbp), %eax        # 4-byte Reload
	addl	$-6, %eax
	subl	$2, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jb	.LBB60_15
	jmp	.LBB60_25
.LBB60_25:                              # %sw.epilog
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB60_12
	jmp	.LBB60_26
.LBB60_26:                              # %sw.epilog
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB60_15
	jmp	.LBB60_18
.LBB60_12:                              # %sw.bb.42
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB60_14
# BB#13:                                # %if.then.46
	movsd	.LCPI60_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	32(%rax), %xmm0
	movq	-32(%rbp), %rax
	subsd	56(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
.LBB60_14:                              # %if.end.51
	jmp	.LBB60_18
.LBB60_15:                              # %sw.bb.52
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB60_17
# BB#16:                                # %if.then.56
	movsd	.LCPI60_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	32(%rax), %xmm0
	movq	-32(%rbp), %rax
	subsd	72(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 56(%rax)
.LBB60_17:                              # %if.end.62
	jmp	.LBB60_18
.LBB60_18:                              # %sw.epilog.63
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_rectangle_tool_apply_coord, .Lfunc_end60-gimp_rectangle_tool_apply_coord
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_handle_general_clamping,@function
gimp_rectangle_tool_handle_general_clamping: # @gimp_rectangle_tool_handle_general_clamping
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_get_constraint
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB61_2
# BB#1:                                 # %if.then
	jmp	.LBB61_5
.LBB61_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$3, 96(%rax)
	je	.LBB61_4
# BB#3:                                 # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	156(%rcx), %ecx
	callq	gimp_rectangle_tool_clamp
	jmp	.LBB61_5
.LBB61_4:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_rectangle_tool_keep_inside
.LBB61_5:                               # %if.end.14
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_rectangle_tool_handle_general_clamping, .Lfunc_end61-gimp_rectangle_tool_handle_general_clamping
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI62_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_apply_fixed_rule,@function
gimp_rectangle_tool_apply_fixed_rule:   # @gimp_rectangle_tool_apply_fixed_rule
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rectangle_tool_get_constraint
	xorl	%esi, %esi
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_rectangle_options_fixed_rule_active
	cmpl	$0, %eax
	je	.LBB62_14
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	divsd	128(%rax), %xmm0
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB62_3
# BB#2:                                 # %cond.true
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB62_7
.LBB62_3:                               # %cond.false
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	divsd	128(%rax), %xmm0
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	movsd	.LCPI62_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB62_5
# BB#4:                                 # %cond.true.28
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_height
	movsd	.LCPI62_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB62_6
.LBB62_5:                               # %cond.false.32
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	divsd	128(%rax), %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB62_6:                               # %cond.end
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB62_7:                               # %cond.end.36
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB62_9
# BB#8:                                 # %if.then.40
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_rectangle_tool_apply_aspect
	jmp	.LBB62_13
.LBB62_9:                               # %if.else
	movq	-24(%rbp), %rax
	cmpl	$3, 96(%rax)
	je	.LBB62_11
# BB#10:                                # %if.then.43
	movl	$0, -68(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %esi
	callq	gimp_rectangle_tool_apply_aspect
	leaq	-68(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	156(%rax), %ecx
	callq	gimp_rectangle_tool_clamp
	movq	-8(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %esi
	callq	gimp_rectangle_tool_apply_aspect
	jmp	.LBB62_12
.LBB62_11:                              # %if.else.44
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_rectangle_tool_apply_aspect
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_rectangle_tool_keep_inside
.LBB62_12:                              # %if.end
	jmp	.LBB62_13
.LBB62_13:                              # %if.end.45
	jmp	.LBB62_23
.LBB62_14:                              # %if.else.46
	movl	$3, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_rectangle_options_fixed_rule_active
	cmpl	$0, %eax
	je	.LBB62_16
# BB#15:                                # %if.then.49
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rectangle_tool_apply_fixed_width
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rectangle_tool_apply_fixed_height
	jmp	.LBB62_22
.LBB62_16:                              # %if.else.50
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_rectangle_options_fixed_rule_active
	cmpl	$0, %eax
	je	.LBB62_18
# BB#17:                                # %if.then.53
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rectangle_tool_apply_fixed_width
	jmp	.LBB62_21
.LBB62_18:                              # %if.else.54
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_rectangle_options_fixed_rule_active
	cmpl	$0, %eax
	je	.LBB62_20
# BB#19:                                # %if.then.57
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rectangle_tool_apply_fixed_height
.LBB62_20:                              # %if.end.58
	jmp	.LBB62_21
.LBB62_21:                              # %if.end.59
	jmp	.LBB62_22
.LBB62_22:                              # %if.end.60
	jmp	.LBB62_23
.LBB62_23:                              # %if.end.61
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_rectangle_tool_apply_fixed_rule, .Lfunc_end62-gimp_rectangle_tool_apply_fixed_rule
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_keep_inside,@function
gimp_rectangle_tool_keep_inside:        # @gimp_rectangle_tool_keep_inside
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_rectangle_tool_keep_inside_horizontally
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_rectangle_tool_keep_inside_vertically
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_rectangle_tool_keep_inside, .Lfunc_end63-gimp_rectangle_tool_keep_inside
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_keep_inside_horizontally,@function
gimp_rectangle_tool_keep_inside_horizontally: # @gimp_rectangle_tool_keep_inside_horizontally
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB64_2
# BB#1:                                 # %if.then
	jmp	.LBB64_9
.LBB64_2:                               # %if.end
	leaq	-28(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %r9d
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	gimp_rectangle_tool_get_constraints
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	64(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rcx
	subsd	48(%rcx), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB64_4
# BB#3:                                 # %if.then.6
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	cvtsi2sdl	-32(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	jmp	.LBB64_9
.LBB64_4:                               # %if.else
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB64_6
# BB#5:                                 # %if.then.15
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	48(%rax), %xmm0
	movsd	%xmm0, 48(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	64(%rax), %xmm0
	movsd	%xmm0, 64(%rax)
.LBB64_6:                               # %if.end.22
	movq	-24(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB64_8
# BB#7:                                 # %if.then.27
	cvtsi2sdl	-32(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subsd	64(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	48(%rax), %xmm0
	movsd	%xmm0, 48(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	64(%rax), %xmm0
	movsd	%xmm0, 64(%rax)
.LBB64_8:                               # %if.end.36
	jmp	.LBB64_9
.LBB64_9:                               # %if.end.37
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_rectangle_tool_keep_inside_horizontally, .Lfunc_end64-gimp_rectangle_tool_keep_inside_horizontally
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rectangle_tool_keep_inside_vertically,@function
gimp_rectangle_tool_keep_inside_vertically: # @gimp_rectangle_tool_keep_inside_vertically
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB65_2
# BB#1:                                 # %if.then
	jmp	.LBB65_9
.LBB65_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %r9d
	movq	%rcx, %rsi
	callq	gimp_rectangle_tool_get_constraints
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	72(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rcx
	subsd	56(%rcx), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB65_4
# BB#3:                                 # %if.then.6
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	cvtsi2sdl	-32(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	jmp	.LBB65_9
.LBB65_4:                               # %if.else
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB65_6
# BB#5:                                 # %if.then.15
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subsd	56(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	56(%rax), %xmm0
	movsd	%xmm0, 56(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	72(%rax), %xmm0
	movsd	%xmm0, 72(%rax)
.LBB65_6:                               # %if.end.22
	movq	-24(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB65_8
# BB#7:                                 # %if.then.27
	cvtsi2sdl	-32(%rbp), %xmm0
	movq	-24(%rbp), %rax
	subsd	72(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	56(%rax), %xmm0
	movsd	%xmm0, 56(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	72(%rax), %xmm0
	movsd	%xmm0, 72(%rax)
.LBB65_8:                               # %if.end.36
	jmp	.LBB65_9
.LBB65_9:                               # %if.end.37
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_rectangle_tool_keep_inside_vertically, .Lfunc_end65-gimp_rectangle_tool_keep_inside_vertically
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI66_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_apply_aspect,@function
gimp_rectangle_tool_apply_aspect:       # @gimp_rectangle_tool_apply_aspect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -76(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_rectangle_options_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_options_get_private
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	48(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	56(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jne	.LBB66_2
	jp	.LBB66_2
# BB#1:                                 # %if.then
	jmp	.LBB66_117
.LBB66_2:                               # %if.end
	movq	-48(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB66_23
# BB#3:                                 # %if.then.12
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB66_13
# BB#4:                                 # %if.then.14
	movq	-32(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, %edx
	addl	$-4, %edx
	subl	$6, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jb	.LBB66_5
	jmp	.LBB66_122
.LBB66_122:                             # %if.then.14
	movl	-132(%rbp), %eax        # 4-byte Reload
	addl	$-10, %eax
	subl	$2, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jb	.LBB66_10
	jmp	.LBB66_11
.LBB66_5:                               # %sw.bb
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB66_8
# BB#6:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB66_8
# BB#7:                                 # %if.then.18
	movl	$6, -76(%rbp)
	jmp	.LBB66_9
.LBB66_8:                               # %if.else
	movl	$5, -76(%rbp)
.LBB66_9:                               # %if.end.19
	jmp	.LBB66_12
.LBB66_10:                              # %sw.bb.20
	jmp	.LBB66_11
.LBB66_11:                              # %sw.default
	movl	$5, -76(%rbp)
.LBB66_12:                              # %sw.epilog
	jmp	.LBB66_22
.LBB66_13:                              # %if.else.21
	movq	-32(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, %edx
	addl	$-4, %edx
	subl	$4, %edx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movl	%edx, -148(%rbp)        # 4-byte Spill
	jb	.LBB66_14
	jmp	.LBB66_120
.LBB66_120:                             # %if.else.21
	movl	-144(%rbp), %eax        # 4-byte Reload
	addl	$-8, %eax
	subl	$2, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jb	.LBB66_19
	jmp	.LBB66_121
.LBB66_121:                             # %if.else.21
	movl	-144(%rbp), %eax        # 4-byte Reload
	addl	$-10, %eax
	subl	$1, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	ja	.LBB66_20
	jmp	.LBB66_14
.LBB66_14:                              # %sw.bb.23
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB66_17
# BB#15:                                # %land.lhs.true.26
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB66_17
# BB#16:                                # %if.then.29
	movl	$5, -76(%rbp)
	jmp	.LBB66_18
.LBB66_17:                              # %if.else.30
	movl	$6, -76(%rbp)
.LBB66_18:                              # %if.end.31
	jmp	.LBB66_21
.LBB66_19:                              # %sw.bb.32
	jmp	.LBB66_20
.LBB66_20:                              # %sw.default.33
	movl	$6, -76(%rbp)
.LBB66_21:                              # %sw.epilog.34
	jmp	.LBB66_22
.LBB66_22:                              # %if.end.35
	jmp	.LBB66_109
.LBB66_23:                              # %if.else.36
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB66_66
# BB#24:                                # %if.then.38
	movq	-32(%rbp), %rax
	movl	96(%rax), %ecx
	addl	$-3, %ecx
	movl	%ecx, %eax
	subl	$8, %ecx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	ja	.LBB66_53
# BB#119:                               # %if.then.38
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI66_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB66_25:                              # %sw.bb.40
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB66_27
# BB#26:                                # %if.then.43
	movl	$3, -76(%rbp)
	jmp	.LBB66_28
.LBB66_27:                              # %if.else.44
	movl	$1, -76(%rbp)
.LBB66_28:                              # %if.end.45
	jmp	.LBB66_65
.LBB66_29:                              # %sw.bb.46
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB66_31
# BB#30:                                # %if.then.49
	movl	$3, -76(%rbp)
	jmp	.LBB66_32
.LBB66_31:                              # %if.else.50
	movl	$2, -76(%rbp)
.LBB66_32:                              # %if.end.51
	jmp	.LBB66_65
.LBB66_33:                              # %sw.bb.52
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB66_35
# BB#34:                                # %if.then.55
	movl	$4, -76(%rbp)
	jmp	.LBB66_36
.LBB66_35:                              # %if.else.56
	movl	$1, -76(%rbp)
.LBB66_36:                              # %if.end.57
	jmp	.LBB66_65
.LBB66_37:                              # %sw.bb.58
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB66_39
# BB#38:                                # %if.then.61
	movl	$4, -76(%rbp)
	jmp	.LBB66_40
.LBB66_39:                              # %if.else.62
	movl	$2, -76(%rbp)
.LBB66_40:                              # %if.end.63
	jmp	.LBB66_65
.LBB66_41:                              # %sw.bb.64
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB66_44
# BB#42:                                # %land.lhs.true.67
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB66_44
# BB#43:                                # %if.then.70
	movl	$6, -76(%rbp)
	jmp	.LBB66_45
.LBB66_44:                              # %if.else.71
	movl	$1, -76(%rbp)
.LBB66_45:                              # %if.end.72
	jmp	.LBB66_65
.LBB66_46:                              # %sw.bb.73
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB66_49
# BB#47:                                # %land.lhs.true.76
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB66_49
# BB#48:                                # %if.then.79
	movl	$6, -76(%rbp)
	jmp	.LBB66_50
.LBB66_49:                              # %if.else.80
	movl	$2, -76(%rbp)
.LBB66_50:                              # %if.end.81
	jmp	.LBB66_65
.LBB66_51:                              # %sw.bb.82
	movl	$5, -76(%rbp)
	jmp	.LBB66_65
.LBB66_52:                              # %sw.bb.83
	jmp	.LBB66_53
.LBB66_53:                              # %sw.default.84
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB66_55
# BB#54:                                # %if.then.87
	movl	$4, -76(%rbp)
	jmp	.LBB66_64
.LBB66_55:                              # %if.else.88
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB66_57
# BB#56:                                # %if.then.91
	movl	$2, -76(%rbp)
	jmp	.LBB66_63
.LBB66_57:                              # %if.else.92
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB66_59
# BB#58:                                # %if.then.95
	movl	$3, -76(%rbp)
	jmp	.LBB66_62
.LBB66_59:                              # %if.else.96
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB66_61
# BB#60:                                # %if.then.99
	movl	$1, -76(%rbp)
.LBB66_61:                              # %if.end.100
	jmp	.LBB66_62
.LBB66_62:                              # %if.end.101
	jmp	.LBB66_63
.LBB66_63:                              # %if.end.102
	jmp	.LBB66_64
.LBB66_64:                              # %if.end.103
	jmp	.LBB66_65
.LBB66_65:                              # %sw.epilog.104
	jmp	.LBB66_108
.LBB66_66:                              # %if.else.105
	movq	-32(%rbp), %rax
	movl	96(%rax), %ecx
	addl	$-3, %ecx
	movl	%ecx, %eax
	subl	$8, %ecx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	ja	.LBB66_95
# BB#118:                               # %if.else.105
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	.LJTI66_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB66_67:                              # %sw.bb.107
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB66_69
# BB#68:                                # %if.then.110
	movl	$1, -76(%rbp)
	jmp	.LBB66_70
.LBB66_69:                              # %if.else.111
	movl	$3, -76(%rbp)
.LBB66_70:                              # %if.end.112
	jmp	.LBB66_107
.LBB66_71:                              # %sw.bb.113
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB66_73
# BB#72:                                # %if.then.116
	movl	$2, -76(%rbp)
	jmp	.LBB66_74
.LBB66_73:                              # %if.else.117
	movl	$3, -76(%rbp)
.LBB66_74:                              # %if.end.118
	jmp	.LBB66_107
.LBB66_75:                              # %sw.bb.119
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB66_77
# BB#76:                                # %if.then.122
	movl	$1, -76(%rbp)
	jmp	.LBB66_78
.LBB66_77:                              # %if.else.123
	movl	$4, -76(%rbp)
.LBB66_78:                              # %if.end.124
	jmp	.LBB66_107
.LBB66_79:                              # %sw.bb.125
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB66_81
# BB#80:                                # %if.then.128
	movl	$2, -76(%rbp)
	jmp	.LBB66_82
.LBB66_81:                              # %if.else.129
	movl	$4, -76(%rbp)
.LBB66_82:                              # %if.end.130
	jmp	.LBB66_107
.LBB66_83:                              # %sw.bb.131
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB66_86
# BB#84:                                # %land.lhs.true.134
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB66_86
# BB#85:                                # %if.then.137
	movl	$5, -76(%rbp)
	jmp	.LBB66_87
.LBB66_86:                              # %if.else.138
	movl	$3, -76(%rbp)
.LBB66_87:                              # %if.end.139
	jmp	.LBB66_107
.LBB66_88:                              # %sw.bb.140
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB66_91
# BB#89:                                # %land.lhs.true.143
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB66_91
# BB#90:                                # %if.then.146
	movl	$5, -76(%rbp)
	jmp	.LBB66_92
.LBB66_91:                              # %if.else.147
	movl	$4, -76(%rbp)
.LBB66_92:                              # %if.end.148
	jmp	.LBB66_107
.LBB66_93:                              # %sw.bb.149
	movl	$6, -76(%rbp)
	jmp	.LBB66_107
.LBB66_94:                              # %sw.bb.150
	jmp	.LBB66_95
.LBB66_95:                              # %sw.default.151
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB66_97
# BB#96:                                # %if.then.154
	movl	$4, -76(%rbp)
	jmp	.LBB66_106
.LBB66_97:                              # %if.else.155
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB66_99
# BB#98:                                # %if.then.158
	movl	$2, -76(%rbp)
	jmp	.LBB66_105
.LBB66_99:                              # %if.else.159
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB66_101
# BB#100:                               # %if.then.162
	movl	$3, -76(%rbp)
	jmp	.LBB66_104
.LBB66_101:                             # %if.else.163
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB66_103
# BB#102:                               # %if.then.166
	movl	$1, -76(%rbp)
.LBB66_103:                             # %if.end.167
	jmp	.LBB66_104
.LBB66_104:                             # %if.end.168
	jmp	.LBB66_105
.LBB66_105:                             # %if.end.169
	jmp	.LBB66_106
.LBB66_106:                             # %if.end.170
	jmp	.LBB66_107
.LBB66_107:                             # %sw.epilog.171
	jmp	.LBB66_108
.LBB66_108:                             # %if.end.172
	jmp	.LBB66_109
.LBB66_109:                             # %if.end.173
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$6, %rdx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	ja	.LBB66_117
# BB#123:                               # %if.end.173
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	.LJTI66_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB66_110:                             # %sw.bb.174
	jmp	.LBB66_117
.LBB66_111:                             # %sw.bb.175
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	jmp	.LBB66_117
.LBB66_112:                             # %sw.bb.179
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	jmp	.LBB66_117
.LBB66_113:                             # %sw.bb.183
	movq	-32(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	jmp	.LBB66_117
.LBB66_114:                             # %sw.bb.188
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	jmp	.LBB66_117
.LBB66_115:                             # %sw.bb.193
	movsd	.LCPI66_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-16(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 56(%rax)
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	jmp	.LBB66_117
.LBB66_116:                             # %sw.bb.201
	movsd	.LCPI66_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 48(%rax)
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-96(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
.LBB66_117:                             # %sw.epilog.209
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_rectangle_tool_apply_aspect, .Lfunc_end66-gimp_rectangle_tool_apply_aspect
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI66_0:
	.quad	.LBB66_94
	.quad	.LBB66_67
	.quad	.LBB66_71
	.quad	.LBB66_75
	.quad	.LBB66_79
	.quad	.LBB66_93
	.quad	.LBB66_93
	.quad	.LBB66_83
	.quad	.LBB66_88
.LJTI66_1:
	.quad	.LBB66_52
	.quad	.LBB66_25
	.quad	.LBB66_29
	.quad	.LBB66_33
	.quad	.LBB66_37
	.quad	.LBB66_41
	.quad	.LBB66_46
	.quad	.LBB66_51
	.quad	.LBB66_51
.LJTI66_2:
	.quad	.LBB66_110
	.quad	.LBB66_111
	.quad	.LBB66_112
	.quad	.LBB66_113
	.quad	.LBB66_114
	.quad	.LBB66_116
	.quad	.LBB66_115

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI67_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_apply_fixed_width,@function
gimp_rectangle_tool_apply_fixed_width:  # @gimp_rectangle_tool_apply_fixed_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movl	96(%rax), %ecx
	movl	%ecx, %edx
	subl	$4, %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	je	.LBB67_1
	jmp	.LBB67_4
.LBB67_4:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB67_2
	jmp	.LBB67_5
.LBB67_5:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB67_1
	jmp	.LBB67_6
.LBB67_6:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB67_2
	jmp	.LBB67_7
.LBB67_7:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB67_1
	jmp	.LBB67_8
.LBB67_8:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB67_2
	jmp	.LBB67_3
.LBB67_1:                               # %sw.bb
	movsd	.LCPI67_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 48(%rax)
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	jmp	.LBB67_3
.LBB67_2:                               # %sw.bb.4
	movsd	.LCPI67_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 48(%rax)
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
.LBB67_3:                               # %sw.epilog
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_rectangle_tool_keep_inside_horizontally
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_rectangle_tool_apply_fixed_width, .Lfunc_end67-gimp_rectangle_tool_apply_fixed_width
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI68_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_rectangle_tool_apply_fixed_height,@function
gimp_rectangle_tool_apply_fixed_height: # @gimp_rectangle_tool_apply_fixed_height
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_tool_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_rectangle_tool_get_private
	movq	%rax, -32(%rbp)
	movl	96(%rax), %ecx
	movl	%ecx, %edx
	addl	$-4, %edx
	subl	$2, %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	jb	.LBB68_1
	jmp	.LBB68_4
.LBB68_4:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	$-6, %eax
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jb	.LBB68_2
	jmp	.LBB68_5
.LBB68_5:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB68_1
	jmp	.LBB68_6
.LBB68_6:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB68_2
	jmp	.LBB68_3
.LBB68_1:                               # %sw.bb
	movsd	.LCPI68_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 56(%rax)
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
	jmp	.LBB68_3
.LBB68_2:                               # %sw.bb.4
	movsd	.LCPI68_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 56(%rax)
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, 72(%rax)
.LBB68_3:                               # %sw.epilog
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_rectangle_tool_keep_inside_vertically
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_rectangle_tool_apply_fixed_height, .Lfunc_end68-gimp_rectangle_tool_apply_fixed_height
	.cfi_endproc

	.type	gimp_rectangle_tool_interface_get_type.iface_type,@object # @gimp_rectangle_tool_interface_get_type.iface_type
	.local	gimp_rectangle_tool_interface_get_type.iface_type
	.comm	gimp_rectangle_tool_interface_get_type.iface_type,8,8
	.type	gimp_rectangle_tool_interface_get_type.iface_info,@object # @gimp_rectangle_tool_interface_get_type.iface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_rectangle_tool_interface_get_type.iface_info:
	.short	40                      # 0x28
	.zero	6
	.quad	gimp_rectangle_tool_iface_base_init
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_rectangle_tool_interface_get_type.iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpRectangleToolInterface"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"x1"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"y1"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"x2"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"y2"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"constraint"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"precision"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"narrow-mode"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp-Tools"
	.size	.L.str.8, 11

	.type	.L__func__.gimp_rectangle_tool_set_constraint,@object # @__func__.gimp_rectangle_tool_set_constraint
.L__func__.gimp_rectangle_tool_set_constraint:
	.asciz	"gimp_rectangle_tool_set_constraint"
	.size	.L__func__.gimp_rectangle_tool_set_constraint, 35

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_RECTANGLE_TOOL (tool)"
	.size	.L.str.9, 30

	.type	.L__func__.gimp_rectangle_tool_get_constraint,@object # @__func__.gimp_rectangle_tool_get_constraint
.L__func__.gimp_rectangle_tool_get_constraint:
	.asciz	"gimp_rectangle_tool_get_constraint"
	.size	.L__func__.gimp_rectangle_tool_get_constraint, 35

	.type	.L__func__.gimp_rectangle_tool_pending_size_set,@object # @__func__.gimp_rectangle_tool_pending_size_set
.L__func__.gimp_rectangle_tool_pending_size_set:
	.asciz	"gimp_rectangle_tool_pending_size_set"
	.size	.L__func__.gimp_rectangle_tool_pending_size_set, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_RECTANGLE_TOOL (rect_tool)"
	.size	.L.str.10, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"width_property != NULL"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"height_property != NULL"
	.size	.L.str.12, 24

	.type	.L__func__.gimp_rectangle_tool_constraint_size_set,@object # @__func__.gimp_rectangle_tool_constraint_size_set
.L__func__.gimp_rectangle_tool_constraint_size_set:
	.asciz	"gimp_rectangle_tool_constraint_size_set"
	.size	.L__func__.gimp_rectangle_tool_constraint_size_set, 40

	.type	.L__func__.gimp_rectangle_tool_rectangle_is_new,@object # @__func__.gimp_rectangle_tool_rectangle_is_new
.L__func__.gimp_rectangle_tool_rectangle_is_new:
	.asciz	"gimp_rectangle_tool_rectangle_is_new"
	.size	.L__func__.gimp_rectangle_tool_rectangle_is_new, 37

	.type	.L__func__.gimp_rectangle_tool_point_in_rectangle,@object # @__func__.gimp_rectangle_tool_point_in_rectangle
.L__func__.gimp_rectangle_tool_point_in_rectangle:
	.asciz	"gimp_rectangle_tool_point_in_rectangle"
	.size	.L__func__.gimp_rectangle_tool_point_in_rectangle, 39

	.type	.L__func__.gimp_rectangle_tool_frame_item,@object # @__func__.gimp_rectangle_tool_frame_item
.L__func__.gimp_rectangle_tool_frame_item:
	.asciz	"gimp_rectangle_tool_frame_item"
	.size	.L__func__.gimp_rectangle_tool_frame_item, 31

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp_item_is_attached (item)"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp_display_get_image (display) == gimp_item_get_image (item)"
	.size	.L.str.16, 63

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.17, 54

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimprectangletool.c"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"property"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"notify"
	.size	.L.str.20, 7

	.type	.L__func__.gimp_rectangle_tool_control,@object # @__func__.gimp_rectangle_tool_control
.L__func__.gimp_rectangle_tool_control:
	.asciz	"gimp_rectangle_tool_control"
	.size	.L__func__.gimp_rectangle_tool_control, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"action = %s"
	.size	.L.str.21, 12

	.type	.L__func__.gimp_rectangle_tool_button_press,@object # @__func__.gimp_rectangle_tool_button_press
.L__func__.gimp_rectangle_tool_button_press:
	.asciz	"gimp_rectangle_tool_button_press"
	.size	.L__func__.gimp_rectangle_tool_button_press, 33

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"coords->x = %f, coords->y = %f"
	.size	.L.str.22, 31

	.type	.L__func__.gimp_rectangle_tool_button_release,@object # @__func__.gimp_rectangle_tool_button_release
.L__func__.gimp_rectangle_tool_button_release:
	.asciz	"gimp_rectangle_tool_button_release"
	.size	.L__func__.gimp_rectangle_tool_button_release, 35

	.type	.L__func__.gimp_rectangle_tool_motion,@object # @__func__.gimp_rectangle_tool_motion
.L__func__.gimp_rectangle_tool_motion:
	.asciz	"gimp_rectangle_tool_motion"
	.size	.L__func__.gimp_rectangle_tool_motion, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"  (%.2f:1)"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Rectangle: "
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	" \303\227 "
	.size	.L.str.25, 5

	.type	.L__func__.gimp_rectangle_tool_active_modifier_key,@object # @__func__.gimp_rectangle_tool_active_modifier_key
.L__func__.gimp_rectangle_tool_active_modifier_key:
	.asciz	"gimp_rectangle_tool_active_modifier_key"
	.size	.L__func__.gimp_rectangle_tool_active_modifier_key, 40

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"fixed-rule-active"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"fixed-center"
	.size	.L.str.27, 13

	.type	.L__func__.gimp_rectangle_tool_key_press,@object # @__func__.gimp_rectangle_tool_key_press
.L__func__.gimp_rectangle_tool_key_press:
	.asciz	"gimp_rectangle_tool_key_press"
	.size	.L__func__.gimp_rectangle_tool_key_press, 30

	.type	.L__func__.gimp_rectangle_tool_oper_update,@object # @__func__.gimp_rectangle_tool_oper_update
.L__func__.gimp_rectangle_tool_oper_update:
	.asciz	"gimp_rectangle_tool_oper_update"
	.size	.L__func__.gimp_rectangle_tool_oper_update, 32

	.type	.L__func__.gimp_rectangle_tool_cursor_update,@object # @__func__.gimp_rectangle_tool_cursor_update
.L__func__.gimp_rectangle_tool_cursor_update:
	.asciz	"gimp_rectangle_tool_cursor_update"
	.size	.L__func__.gimp_rectangle_tool_cursor_update, 34

	.type	.L__func__.gimp_rectangle_tool_draw,@object # @__func__.gimp_rectangle_tool_draw
.L__func__.gimp_rectangle_tool_draw:
	.asciz	"gimp_rectangle_tool_draw"
	.size	.L__func__.gimp_rectangle_tool_draw, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GIMP_IS_RECTANGLE_TOOL (draw_tool)"
	.size	.L.str.28, 35

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"stroke_group == NULL || GIMP_IS_CANVAS_GROUP (stroke_group)"
	.size	.L.str.29, 60

	.type	.L__func__.gimp_rectangle_tool_get_function,@object # @__func__.gimp_rectangle_tool_get_function
.L__func__.gimp_rectangle_tool_get_function:
	.asciz	"gimp_rectangle_tool_get_function"
	.size	.L__func__.gimp_rectangle_tool_get_function, 33

	.type	.L__func__.gimp_rectangle_tool_set_function,@object # @__func__.gimp_rectangle_tool_set_function
.L__func__.gimp_rectangle_tool_set_function:
	.asciz	"gimp_rectangle_tool_set_function"
	.size	.L__func__.gimp_rectangle_tool_set_function, 33

	.type	gimp_rectangle_tool_iface_base_init.initialized,@object # @gimp_rectangle_tool_iface_base_init.initialized
	.local	gimp_rectangle_tool_iface_base_init.initialized
	.comm	gimp_rectangle_tool_iface_base_init.initialized,4,4
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"rectangle-change-complete"
	.size	.L.str.30, 26

	.type	gimp_rectangle_tool_signals,@object # @gimp_rectangle_tool_signals
	.local	gimp_rectangle_tool_signals
	.comm	gimp_rectangle_tool_signals,4,4
	.type	gimp_rectangle_tool_get_private.private_key,@object # @gimp_rectangle_tool_get_private.private_key
	.local	gimp_rectangle_tool_get_private.private_key
	.comm	gimp_rectangle_tool_get_private.private_key,4,4
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-rectangle-tool-private"
	.size	.L.str.31, 28

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"scrolled"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"clicked"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"shrink-merged"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"x"
	.size	.L.str.35, 2

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"y"
	.size	.L.str.36, 2

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"width"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"height"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"guide"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"desired-fixed-size-width"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"aspect-numerator"
	.size	.L.str.41, 17

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"highlight"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Invalid rectangle constraint.\n"
	.size	.L.str.43, 31

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"function is GIMP_RECTANGLE_TOOL_INACTIVE while mouse is moving"
	.size	.L.str.44, 63


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
