	.text
	.file	"gimpcontrollerinfo.bc"
	.globl	gimp_controller_info_get_type
	.align	16, 0x90
	.type	gimp_controller_info_get_type,@function
gimp_controller_info_get_type:          # @gimp_controller_info_get_type
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
	movq	gimp_controller_info_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_controller_info_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$288, %edx              # imm = 0x120
	movabsq	$gimp_controller_info_class_intern_init, %rdi
	movl	$72, %r8d
	movabsq	$gimp_controller_info_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$gimp_controller_info_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_controller_info_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_controller_info_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_controller_info_get_type, .Lfunc_end0-gimp_controller_info_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_info_class_intern_init,@function
gimp_controller_info_class_intern_init: # @gimp_controller_info_class_intern_init
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
	movq	%rax, gimp_controller_info_parent_class
	cmpl	$0, GimpControllerInfo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpControllerInfo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_controller_info_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_controller_info_class_intern_init, .Lfunc_end1-gimp_controller_info_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_info_init,@function
gimp_controller_info_init:              # @gimp_controller_info_init
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
	movabsq	$g_str_hash, %rax
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_hash_table_new_full
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_controller_info_init, .Lfunc_end2-gimp_controller_info_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_info_config_iface_init,@function
gimp_controller_info_config_iface_init: # @gimp_controller_info_config_iface_init
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
	movabsq	$gimp_controller_info_deserialize_property, %rax
	movabsq	$gimp_controller_info_serialize_property, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, 32(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_controller_info_config_iface_init, .Lfunc_end3-gimp_controller_info_config_iface_init
	.cfi_endproc

	.globl	gimp_controller_info_new
	.align	16, 0x90
	.type	gimp_controller_info_new,@function
gimp_controller_info_new:               # @gimp_controller_info_new
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
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_info_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	g_type_class_ref
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_controller_new
	movq	%rax, -32(%rbp)
	callq	gimp_controller_info_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdx
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_controller_info_new, .Lfunc_end4-gimp_controller_info_new
	.cfi_endproc

	.globl	gimp_controller_info_set_enabled
	.align	16, 0x90
	.type	gimp_controller_info_set_enabled,@function
gimp_controller_info_set_enabled:       # @gimp_controller_info_set_enabled
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_controller_info_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_info_set_enabled, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	je	.LBB5_14
# BB#13:                                # %if.then.13
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB5_14:                               # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_controller_info_set_enabled, .Lfunc_end5-gimp_controller_info_set_enabled
	.cfi_endproc

	.globl	gimp_controller_info_get_enabled
	.align	16, 0x90
	.type	gimp_controller_info_get_enabled,@function
gimp_controller_info_get_enabled:       # @gimp_controller_info_get_enabled
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_controller_info_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_info_get_enabled, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_controller_info_get_enabled, .Lfunc_end6-gimp_controller_info_get_enabled
	.cfi_endproc

	.globl	gimp_controller_info_set_event_snooper
	.align	16, 0x90
	.type	gimp_controller_info_set_event_snooper,@function
gimp_controller_info_set_event_snooper: # @gimp_controller_info_set_event_snooper
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_controller_info_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_info_set_event_snooper, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
.LBB7_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_controller_info_set_event_snooper, .Lfunc_end7-gimp_controller_info_set_event_snooper
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_info_class_init,@function
gimp_controller_info_class_init:        # @gimp_controller_info_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp27:
	.cfi_offset %rbx, -48
.Ltmp28:
	.cfi_offset %r12, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movabsq	$.L.str.7, %rdx
	movabsq	$gimp_controller_info_get_property, %r9
	movabsq	$gimp_controller_info_set_property, %r10
	movabsq	$gimp_controller_info_finalize, %r11
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$483, %r8d              # imm = 0x1E3
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	g_hash_table_get_type
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_boxed
	movl	$4, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	movl	$2, %edx
	movl	$280, %ecx              # imm = 0x118
	movabsq	$g_signal_accumulator_true_handled, %r8
	xorl	%esi, %esi
	movl	%esi, %r9d
	movabsq	$gimp_marshal_BOOLEAN__OBJECT_POINTER_STRING, %rax
	movl	$20, %esi
	movl	%esi, %r10d
	movl	$3, %esi
	movl	$80, %ebx
	movl	%ebx, %r11d
	movl	$68, %ebx
	movl	%ebx, %r14d
	movl	$64, %ebx
	movl	%ebx, %r15d
	movq	-40(%rbp), %r12
	movq	(%r12), %r12
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movq	%r12, %rsi
	movq	%rax, (%rsp)
	movq	$20, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	$80, 24(%rsp)
	movq	$68, 32(%rsp)
	movq	$64, 40(%rsp)
	movb	$0, %al
	movq	%r15, -120(%rbp)        # 8-byte Spill
	movq	%r11, -128(%rbp)        # 8-byte Spill
	movq	%r14, -136(%rbp)        # 8-byte Spill
	movq	%r10, -144(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, info_signals
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_controller_info_class_init, .Lfunc_end8-gimp_controller_info_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_info_finalize,@function
gimp_controller_info_finalize:          # @gimp_controller_info_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_controller_info_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_hash_table_unref
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB9_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_controller_info_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_controller_info_finalize, .Lfunc_end9-gimp_controller_info_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_info_set_property,@function
gimp_controller_info_set_property:      # @gimp_controller_info_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_controller_info_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB10_11
# BB#15:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 32(%rdi)
	jmp	.LBB10_14
.LBB10_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 36(%rdi)
	jmp	.LBB10_14
.LBB10_3:                               # %sw.bb.5
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB10_5
# BB#4:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_controller_info_event, %rdx
	movq	-40(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	-40(%rbp), %r9
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-40(%rbp), %rdi
	movq	40(%rdi), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_object_unref
.LBB10_5:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB10_7
# BB#6:                                 # %if.then.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_controller_info_event, %rcx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rcx
	movq	192(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_viewable_set_stock_id
.LBB10_7:                               # %if.end.20
	jmp	.LBB10_14
.LBB10_8:                               # %sw.bb.21
	movq	-40(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB10_10
# BB#9:                                 # %if.then.23
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_hash_table_unref
.LBB10_10:                              # %if.end.25
	movq	-24(%rbp), %rdi
	callq	g_value_dup_boxed
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	jmp	.LBB10_14
.LBB10_11:                              # %sw.default
	jmp	.LBB10_12
.LBB10_12:                              # %do.body
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
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movq	%r9, -160(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$224, %edx
	movabsq	$.L.str.14, %rcx
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movq	-160(%rbp), %r9         # 8-byte Reload
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#13:                                # %do.end
	jmp	.LBB10_14
.LBB10_14:                              # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_controller_info_set_property, .Lfunc_end10-gimp_controller_info_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_1
	.quad	.LBB10_2
	.quad	.LBB10_3
	.quad	.LBB10_8

	.text
	.align	16, 0x90
	.type	gimp_controller_info_get_property,@function
gimp_controller_info_get_property:      # @gimp_controller_info_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_controller_info_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB11_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_8
.LBB11_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	36(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_8
.LBB11_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB11_8
.LBB11_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB11_8
.LBB11_5:                               # %sw.default
	jmp	.LBB11_6
.LBB11_6:                               # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$253, %edx
	movabsq	$.L.str.14, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB11_8
.LBB11_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_controller_info_get_property, .Lfunc_end11-gimp_controller_info_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_1
	.quad	.LBB11_2
	.quad	.LBB11_3
	.quad	.LBB11_4

	.text
	.align	16, 0x90
	.type	gimp_controller_info_event,@function
gimp_controller_info_event:             # @gimp_controller_info_event
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	16(%rdx), %esi
	callq	gimp_controller_get_event_name
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	callq	gimp_controller_get_event_blurb
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB12_14
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rax), %rsi
	movq	136(%rcx), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movl	$.L.str.15, %edi
                                        # kill: RDI<def> EDI<kill>
	xorl	%r9d, %r9d
	movb	%r9b, %r10b
	movb	%r10b, %al
	callq	g_print
	movq	-24(%rbp), %rcx
	movl	(%rcx), %r9d
	testl	%r9d, %r9d
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	je	.LBB12_2
	jmp	.LBB12_40
.LBB12_40:                              # %if.then
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_13
.LBB12_2:                               # %sw.bb
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	g_print
	jmp	.LBB12_13
.LBB12_3:                               # %sw.bb.6
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -64(%rbp)
	movq	$60, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_5
# BB#4:                                 # %if.then.9
	movl	$0, -76(%rbp)
	jmp	.LBB12_9
.LBB12_5:                               # %if.else
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_7
# BB#6:                                 # %if.then.10
	movl	$1, -76(%rbp)
	jmp	.LBB12_8
.LBB12_7:                               # %if.else.11
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -76(%rbp)
.LBB12_8:                               # %if.end
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.13
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_11
# BB#10:                                # %if.then.15
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movabsq	$.L.str.17, %rdi
	movb	$1, %al
	callq	g_print
	jmp	.LBB12_12
.LBB12_11:                              # %if.else.19
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB12_12:                              # %if.end.24
	jmp	.LBB12_13
.LBB12_13:                              # %sw.epilog
	jmp	.LBB12_14
.LBB12_14:                              # %if.end.25
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB12_20
# BB#15:                                # %if.then.27
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	64(%rcx), %rcx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB12_19
# BB#16:                                # %if.then.31
	movq	-32(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB12_18
# BB#17:                                # %if.then.34
	movabsq	$.L.str.19, %rdi
	movb	$0, %al
	callq	g_print
.LBB12_18:                              # %if.end.35
	movl	$1, -4(%rbp)
	jmp	.LBB12_39
.LBB12_19:                              # %if.end.36
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.37
	movq	-32(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB12_24
# BB#21:                                # %if.then.39
	movq	-32(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB12_23
# BB#22:                                # %if.then.42
	movabsq	$.L.str.20, %rdi
	movb	$0, %al
	callq	g_print
.LBB12_23:                              # %if.end.43
	movl	$0, -4(%rbp)
	jmp	.LBB12_39
.LBB12_24:                              # %if.end.44
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB12_26
# BB#25:                                # %if.then.46
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -56(%rbp)
.LBB12_26:                              # %if.end.49
	cmpq	$0, -56(%rbp)
	je	.LBB12_35
# BB#27:                                # %if.then.51
	movl	$0, -84(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB12_29
# BB#28:                                # %if.then.56
	movabsq	$.L.str.21, %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	g_print
.LBB12_29:                              # %if.end.57
	xorl	%edx, %edx
	leaq	-84(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	info_signals, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	g_signal_emit
	movq	-32(%rbp), %rcx
	cmpl	$0, 36(%rcx)
	je	.LBB12_34
# BB#30:                                # %if.then.60
	cmpl	$0, -84(%rbp)
	je	.LBB12_32
# BB#31:                                # %if.then.62
	movabsq	$.L.str.22, %rdi
	movb	$0, %al
	callq	g_print
	jmp	.LBB12_33
.LBB12_32:                              # %if.else.63
	movabsq	$.L.str.23, %rdi
	movb	$0, %al
	callq	g_print
.LBB12_33:                              # %if.end.64
	jmp	.LBB12_34
.LBB12_34:                              # %if.end.65
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_39
.LBB12_35:                              # %if.else.66
	movq	-32(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB12_37
# BB#36:                                # %if.then.69
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	g_print
.LBB12_37:                              # %if.end.70
	jmp	.LBB12_38
.LBB12_38:                              # %if.end.71
	movl	$0, -4(%rbp)
.LBB12_39:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_controller_info_event, .Lfunc_end12-gimp_controller_info_event
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_info_serialize_property,@function
gimp_controller_info_serialize_property: # @gimp_controller_info_serialize_property
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	cmpl	$4, -20(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB14_5
.LBB14_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB14_4
# BB#3:                                 # %if.then.1
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_config_writer_open
	movabsq	$gimp_controller_info_serialize_mapping, %rsi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_foreach
	movq	-48(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB14_4:                               # %if.end.2
	movl	$1, -4(%rbp)
.LBB14_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_controller_info_serialize_property, .Lfunc_end14-gimp_controller_info_serialize_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_info_deserialize_property,@function
gimp_controller_info_deserialize_property: # @gimp_controller_info_deserialize_property
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	cmpl	$4, -20(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_24
.LBB15_2:                               # %if.end
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rax
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	g_hash_table_new_full
	movq	%rax, -64(%rbp)
	movl	$40, -68(%rbp)
.LBB15_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-68(%rbp), %eax
	jne	.LBB15_16
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -68(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB15_5
	jmp	.LBB15_25
.LBB15_25:                              # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB15_13
	jmp	.LBB15_26
.LBB15_26:                              # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$266, %eax              # imm = 0x10A
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB15_6
	jmp	.LBB15_14
.LBB15_5:                               # %sw.bb
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	$266, -68(%rbp)         # imm = 0x10A
	jmp	.LBB15_15
.LBB15_6:                               # %sw.bb.4
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_12
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB15_3 Depth=1
	leaq	-80(%rbp), %rsi
	movl	$264, -68(%rbp)         # imm = 0x108
	movq	-48(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB15_9
# BB#8:                                 # %if.then.10
	jmp	.LBB15_22
.LBB15_9:                               # %if.end.11
                                        #   in Loop: Header=BB15_3 Depth=1
	leaq	-88(%rbp), %rsi
	movl	$264, -68(%rbp)         # imm = 0x108
	movq	-48(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB15_11
# BB#10:                                # %if.then.14
	jmp	.LBB15_22
.LBB15_11:                              # %if.end.15
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	g_hash_table_insert
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB15_12:                              # %if.end.17
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	$41, -68(%rbp)
	jmp	.LBB15_15
.LBB15_13:                              # %sw.bb.18
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	$40, -68(%rbp)
	jmp	.LBB15_15
.LBB15_14:                              # %sw.default
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_15
.LBB15_15:                              # %sw.epilog
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_3
.LBB15_16:                              # %while.end
	cmpl	$40, -68(%rbp)
	jne	.LBB15_21
# BB#17:                                # %if.then.20
	movl	$41, -68(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-68(%rbp), %eax
	jne	.LBB15_19
# BB#18:                                # %if.then.23
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	jmp	.LBB15_20
.LBB15_19:                              # %if.else
	jmp	.LBB15_22
.LBB15_20:                              # %if.end.24
	jmp	.LBB15_23
.LBB15_21:                              # %if.else.25
	jmp	.LBB15_22
.LBB15_22:                              # %error
	movq	-64(%rbp), %rdi
	callq	g_hash_table_unref
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB15_23:                              # %if.end.26
	movl	$1, -4(%rbp)
.LBB15_24:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_controller_info_deserialize_property, .Lfunc_end15-gimp_controller_info_deserialize_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_info_serialize_mapping,@function
gimp_controller_info_serialize_mapping: # @gimp_controller_info_serialize_mapping
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
	movabsq	$.L.str.25, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_config_writer_open
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_config_writer_string
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_config_writer_string
	movq	-48(%rbp), %rdi
	callq	gimp_config_writer_close
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_controller_info_serialize_mapping, .Lfunc_end16-gimp_controller_info_serialize_mapping
	.cfi_endproc

	.type	gimp_controller_info_get_type.g_define_type_id__volatile,@object # @gimp_controller_info_get_type.g_define_type_id__volatile
	.local	gimp_controller_info_get_type.g_define_type_id__volatile
	.comm	gimp_controller_info_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpControllerInfo"
	.size	.L.str, 19

	.type	gimp_controller_info_get_type.g_implement_interface_info,@object # @gimp_controller_info_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_controller_info_get_type.g_implement_interface_info:
	.quad	gimp_controller_info_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_controller_info_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_controller_info_new,@object # @__func__.gimp_controller_info_new
.L__func__.gimp_controller_info_new:
	.asciz	"gimp_controller_info_new"
	.size	.L__func__.gimp_controller_info_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_type_is_a (type, GIMP_TYPE_CONTROLLER)"
	.size	.L.str.2, 41

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"controller"
	.size	.L.str.4, 11

	.type	.L__func__.gimp_controller_info_set_enabled,@object # @__func__.gimp_controller_info_set_enabled
.L__func__.gimp_controller_info_set_enabled:
	.asciz	"gimp_controller_info_set_enabled"
	.size	.L__func__.gimp_controller_info_set_enabled, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_CONTROLLER_INFO (info)"
	.size	.L.str.5, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"enabled"
	.size	.L.str.6, 8

	.type	.L__func__.gimp_controller_info_get_enabled,@object # @__func__.gimp_controller_info_get_enabled
.L__func__.gimp_controller_info_get_enabled:
	.asciz	"gimp_controller_info_get_enabled"
	.size	.L__func__.gimp_controller_info_get_enabled, 33

	.type	.L__func__.gimp_controller_info_set_event_snooper,@object # @__func__.gimp_controller_info_set_event_snooper
.L__func__.gimp_controller_info_set_event_snooper:
	.asciz	"gimp_controller_info_set_event_snooper"
	.size	.L__func__.gimp_controller_info_set_event_snooper, 39

	.type	gimp_controller_info_parent_class,@object # @gimp_controller_info_parent_class
	.local	gimp_controller_info_parent_class
	.comm	gimp_controller_info_parent_class,8,8
	.type	GimpControllerInfo_private_offset,@object # @GimpControllerInfo_private_offset
	.local	GimpControllerInfo_private_offset
	.comm	GimpControllerInfo_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-controller"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"debug-events"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"mapping"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"event-mapped"
	.size	.L.str.10, 13

	.type	info_signals,@object    # @info_signals
	.local	info_signals
	.comm	info_signals,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"event"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.12, 54

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimpcontrollerinfo.c"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"property"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Received '%s' (class '%s')\n    controller event '%s (%s)'\n"
	.size	.L.str.15, 59

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"    (trigger event)\n"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"    (value event, value = %f)\n"
	.size	.L.str.17, 31

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"    (value event, unhandled type '%s')\n"
	.size	.L.str.18, 40

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"    intercepted by event snooper\n\n"
	.size	.L.str.19, 35

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"    ignoring because controller is disabled\n\n"
	.size	.L.str.20, 46

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"    maps to action '%s'\n"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"    action was found\n\n"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"    action NOT found\n\n"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"    doesn't map to action\n\n"
	.size	.L.str.24, 28

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"map"
	.size	.L.str.25, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
