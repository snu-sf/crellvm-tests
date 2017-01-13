	.text
	.file	"gimpcontainerview.bc"
	.globl	gimp_container_view_interface_get_type
	.align	16, 0x90
	.type	gimp_container_view_interface_get_type,@function
gimp_container_view_interface_get_type: # @gimp_container_view_interface_get_type
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
	cmpq	$0, gimp_container_view_interface_get_type.iface_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_container_view_interface_get_type.iface_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_container_view_interface_get_type.iface_type
	movq	gimp_container_view_interface_get_type.iface_type, %rdi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_add_prerequisite
.LBB0_2:                                # %if.end
	movq	gimp_container_view_interface_get_type.iface_type, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_view_interface_get_type, .Lfunc_end0-gimp_container_view_interface_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_iface_base_init,@function
gimp_container_view_iface_base_init:    # @gimp_container_view_iface_base_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.22, %rdi
	movl	$2, %edx
	movl	$16, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_BOOLEAN__OBJECT_POINTER, %r9
	movl	$20, %r8d
	movl	%r8d, %r10d
	movl	$68, %r8d
	movl	%r8d, %r11d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r14, %r9
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$20, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$68, 32(%rsp)
	movb	$0, %al
	movq	%r11, -80(%rbp)         # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, view_signals
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.23, %rdi
	movl	$1, %edx
	movl	$24, %ecx
	xorl	%r12d, %r12d
	movl	%r12d, %esi
	movabsq	$gimp_marshal_VOID__OBJECT_POINTER, %r8
	movl	$4, %r12d
	movl	%r12d, %r9d
	movl	$2, %r12d
	movl	$68, %r13d
	movl	%r13d, %r10d
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$68, 32(%rsp)
	movb	$0, %al
	movq	%r10, -128(%rbp)        # 8-byte Spill
	movl	%r12d, -132(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movl	%eax, view_signals+4
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.24, %rdi
	movl	$1, %edx
	movl	$32, %ecx
	xorl	%r12d, %r12d
	movl	%r12d, %esi
	movabsq	$gimp_marshal_VOID__OBJECT_POINTER, %r8
	movl	$4, %r12d
	movl	%r12d, %r9d
	movl	$2, %r12d
	movl	$68, %r13d
	movl	%r13d, %r10d
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$68, 32(%rsp)
	movb	$0, %al
	movq	%r10, -176(%rbp)        # 8-byte Spill
	movl	%r12d, -180(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_container_view_real_get_selected, %rsi
	movabsq	$gimp_container_view_real_clear_items, %rdi
	movabsq	$gimp_container_view_real_set_selection_mode, %r8
	movabsq	$gimp_container_view_real_set_context, %r9
	movabsq	$gimp_container_view_real_set_container, %r10
	movl	%eax, view_signals+8
	movq	-48(%rbp), %r11
	movq	$0, 16(%r11)
	movq	-48(%rbp), %r11
	movq	$0, 24(%r11)
	movq	-48(%rbp), %r11
	movq	$0, 32(%r11)
	movq	-48(%rbp), %r11
	movq	%r10, 40(%r11)
	movq	-48(%rbp), %r10
	movq	%r9, 48(%r10)
	movq	-48(%rbp), %r9
	movq	%r8, 56(%r9)
	movq	-48(%rbp), %r8
	movq	$0, 64(%r8)
	movq	-48(%rbp), %r8
	movq	$0, 72(%r8)
	movq	-48(%rbp), %r8
	movq	$0, 80(%r8)
	movq	-48(%rbp), %r8
	movq	$0, 88(%r8)
	movq	-48(%rbp), %r8
	movq	$0, 96(%r8)
	movq	-48(%rbp), %r8
	movq	%rdi, 104(%r8)
	movq	-48(%rbp), %rdi
	movq	$0, 112(%rdi)
	movq	-48(%rbp), %rdi
	movq	%rsi, 120(%rdi)
	movq	-48(%rbp), %rsi
	movq	$0, 128(%rsi)
	movq	-48(%rbp), %rsi
	movl	$0, 136(%rsi)
	movq	-48(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$227, %r8d
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.2, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_selection_mode_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$2048, %r8d             # imm = 0x800
	movl	$32, %r9d
	movl	$231, %r12d
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	movl	%r12d, -236(%rbp)       # 4-byte Spill
	callq	g_param_spec_int
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$16, %r8d
	movl	$1, %r9d
	movl	$231, %r12d
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	movl	%r12d, -252(%rbp)       # 4-byte Spill
	callq	g_param_spec_int
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_interface_install_property
.LBB1_3:                                # %return
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_view_iface_base_init, .Lfunc_end1-gimp_container_view_iface_base_init
	.cfi_endproc

	.globl	gimp_container_view_install_properties
	.align	16, 0x90
	.type	gimp_container_view_install_properties,@function
gimp_container_view_install_properties: # @gimp_container_view_install_properties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
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
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_container_view_install_properties, .Lfunc_end2-gimp_container_view_install_properties
	.cfi_endproc

	.globl	gimp_container_view_get_container
	.align	16, 0x90
	.type	gimp_container_view_get_container,@function
gimp_container_view_get_container:      # @gimp_container_view_get_container
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_get_container, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_view_get_container, .Lfunc_end3-gimp_container_view_get_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_get_private,@function
gimp_container_view_get_private:        # @gimp_container_view_get_private
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
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
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_get_private, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_17
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpl	$0, gimp_container_view_get_private.private_key
	jne	.LBB4_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.31, %rdi
	callq	g_quark_from_static_string
	movl	%eax, gimp_container_view_get_private.private_key
.LBB4_14:                               # %if.end.14
	movq	-16(%rbp), %rax
	movl	gimp_container_view_get_private.private_key, %esi
	movq	%rax, %rdi
	callq	g_object_get_qdata
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movl	$56, %ecx
	movl	%ecx, %edi
	movq	%rax, -56(%rbp)
	callq	g_slice_alloc0
	movabsq	$g_direct_hash, %rdi
	movabsq	$g_direct_equal, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-56(%rbp), %rax
	movq	128(%rax), %rcx
	callq	g_hash_table_new_full
	movabsq	$gimp_container_view_private_finalize, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movl	gimp_container_view_get_private.private_key, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_qdata_full
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_container_view_private_dispose, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB4_16:                               # %if.end.25
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_view_get_private, .Lfunc_end4-gimp_container_view_get_private
	.cfi_endproc

	.globl	gimp_container_view_set_container
	.align	16, 0x90
	.type	gimp_container_view_set_container,@function
gimp_container_view_set_container:      # @gimp_container_view_set_container
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_container, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_34
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_20:                               # %if.end.32
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_container, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_34
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	cmpq	$0, -16(%rbp)
	je	.LBB5_32
# BB#26:                                # %if.then.41
	jmp	.LBB5_27
.LBB5_27:                               # %do.body.42
	movq	-16(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB5_29
# BB#28:                                # %if.then.47
	jmp	.LBB5_30
.LBB5_29:                               # %if.else.48
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_container, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_34
.LBB5_30:                               # %if.end.49
	jmp	.LBB5_31
.LBB5_31:                               # %do.end.50
	jmp	.LBB5_32
.LBB5_32:                               # %if.end.51
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	cmpq	(%rdi), %rax
	je	.LBB5_34
# BB#33:                                # %if.then.55
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB5_34:                               # %if.end.60
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_view_set_container, .Lfunc_end5-gimp_container_view_set_container
	.cfi_endproc

	.globl	gimp_container_view_get_context
	.align	16, 0x90
	.type	gimp_container_view_get_context,@function
gimp_container_view_get_context:        # @gimp_container_view_get_context
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_get_context, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_view_get_context, .Lfunc_end6-gimp_container_view_get_context
	.cfi_endproc

	.globl	gimp_container_view_set_context
	.align	16, 0x90
	.type	gimp_container_view_set_context,@function
gimp_container_view_set_context:        # @gimp_container_view_set_context
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
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
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_context, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_27
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB7_21
.LBB7_16:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_20:                               # %if.end.32
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_23
.LBB7_22:                               # %if.then.36
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.37
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_context, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_27
.LBB7_24:                               # %if.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.end.39
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	cmpq	8(%rdi), %rax
	je	.LBB7_27
# BB#26:                                # %if.then.43
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB7_27:                               # %if.end.48
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_view_set_context, .Lfunc_end7-gimp_container_view_set_context
	.cfi_endproc

	.globl	gimp_container_view_get_selection_mode
	.align	16, 0x90
	.type	gimp_container_view_get_selection_mode,@function
gimp_container_view_get_selection_mode: # @gimp_container_view_get_selection_mode
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_view_get_selection_mode, .Lfunc_end8-gimp_container_view_get_selection_mode
	.cfi_endproc

	.globl	gimp_container_view_set_selection_mode
	.align	16, 0x90
	.type	gimp_container_view_set_selection_mode,@function
gimp_container_view_set_selection_mode: # @gimp_container_view_set_selection_mode
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_selection_mode, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_19
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpl	$1, -12(%rbp)
	je	.LBB9_15
# BB#14:                                # %lor.lhs.false
	cmpl	$3, -12(%rbp)
	jne	.LBB9_16
.LBB9_15:                               # %if.then.14
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.15
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_selection_mode, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_19
.LBB9_17:                               # %if.end.16
	jmp	.LBB9_18
.LBB9_18:                               # %do.end.17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB9_19:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_container_view_set_selection_mode, .Lfunc_end9-gimp_container_view_set_selection_mode
	.cfi_endproc

	.globl	gimp_container_view_get_view_size
	.align	16, 0x90
	.type	gimp_container_view_get_view_size,@function
gimp_container_view_get_view_size:      # @gimp_container_view_get_view_size
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_get_view_size, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB10_14
# BB#13:                                # %if.then.13
	movq	-32(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB10_14:                              # %if.end.15
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB10_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_container_view_get_view_size, .Lfunc_end10-gimp_container_view_get_view_size
	.cfi_endproc

	.globl	gimp_container_view_set_view_size
	.align	16, 0x90
	.type	gimp_container_view_set_view_size,@function
gimp_container_view_set_view_size:      # @gimp_container_view_set_view_size
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_view_size, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_27
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jle	.LBB11_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$2048, -12(%rbp)        # imm = 0x800
	jg	.LBB11_16
# BB#15:                                # %if.then.15
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.16
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_view_size, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_27
.LBB11_17:                              # %if.end.17
	jmp	.LBB11_18
.LBB11_18:                              # %do.end.18
	jmp	.LBB11_19
.LBB11_19:                              # %do.body.19
	cmpl	$0, -16(%rbp)
	jl	.LBB11_22
# BB#20:                                # %land.lhs.true.21
	cmpl	$16, -16(%rbp)
	jg	.LBB11_22
# BB#21:                                # %if.then.23
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.24
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_view_size, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_27
.LBB11_23:                              # %if.end.25
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.26
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB11_26
# BB#25:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB11_27
.LBB11_26:                              # %if.then.32
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB11_27:                              # %if.end.42
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_container_view_set_view_size, .Lfunc_end11-gimp_container_view_set_view_size
	.cfi_endproc

	.globl	gimp_container_view_get_reorderable
	.align	16, 0x90
	.type	gimp_container_view_get_reorderable,@function
gimp_container_view_get_reorderable:    # @gimp_container_view_get_reorderable
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
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_get_reorderable, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB12_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_container_view_get_reorderable, .Lfunc_end12-gimp_container_view_get_reorderable
	.cfi_endproc

	.globl	gimp_container_view_set_reorderable
	.align	16, 0x90
	.type	gimp_container_view_set_reorderable,@function
gimp_container_view_set_reorderable:    # @gimp_container_view_set_reorderable
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_reorderable, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	cmovnel	%edx, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB13_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_container_view_set_reorderable, .Lfunc_end13-gimp_container_view_set_reorderable
	.cfi_endproc

	.globl	gimp_container_view_get_dnd_widget
	.align	16, 0x90
	.type	gimp_container_view_get_dnd_widget,@function
gimp_container_view_get_dnd_widget:     # @gimp_container_view_get_dnd_widget
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
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_get_dnd_widget, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB14_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_container_view_get_dnd_widget, .Lfunc_end14-gimp_container_view_get_dnd_widget
	.cfi_endproc

	.globl	gimp_container_view_set_dnd_widget
	.align	16, 0x90
	.type	gimp_container_view_set_dnd_widget,@function
gimp_container_view_set_dnd_widget:     # @gimp_container_view_set_dnd_widget
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
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_dnd_widget, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_26
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB15_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB15_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB15_21
.LBB15_16:                              # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB15_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB15_20
.LBB15_19:                              # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB15_20:                              # %if.end.32
	jmp	.LBB15_21
.LBB15_21:                              # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB15_23
.LBB15_22:                              # %if.then.36
	jmp	.LBB15_24
.LBB15_23:                              # %if.else.37
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_set_dnd_widget, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_26
.LBB15_24:                              # %if.end.38
	jmp	.LBB15_25
.LBB15_25:                              # %do.end.39
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 40(%rdi)
.LBB15_26:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_container_view_set_dnd_widget, .Lfunc_end15-gimp_container_view_set_dnd_widget
	.cfi_endproc

	.globl	gimp_container_view_enable_dnd
	.align	16, 0x90
	.type	gimp_container_view_enable_dnd,@function
gimp_container_view_enable_dnd:         # @gimp_container_view_enable_dnd
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_enable_dnd, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_25
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_button_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB16_20
.LBB16_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB16_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB16_19
.LBB16_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB16_19:                              # %if.end.31
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.35
	jmp	.LBB16_23
.LBB16_22:                              # %if.else.36
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_enable_dnd, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_25
.LBB16_23:                              # %if.end.37
	jmp	.LBB16_24
.LBB16_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_container_view_button_viewable_dropped, %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	gimp_dnd_viewable_dest_add
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB16_25:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_container_view_enable_dnd, .Lfunc_end16-gimp_container_view_enable_dnd
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_button_viewable_dropped,@function
gimp_container_view_button_viewable_dropped: # @gimp_container_view_button_viewable_dropped
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_view_lookup
	cmpq	$0, %rax
	je	.LBB17_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_view_item_selected
	movq	-8(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB17_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_container_view_button_viewable_dropped, .Lfunc_end17-gimp_container_view_button_viewable_dropped
	.cfi_endproc

	.globl	gimp_container_view_select_item
	.align	16, 0x90
	.type	gimp_container_view_select_item,@function
gimp_container_view_select_item:        # @gimp_container_view_select_item
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_select_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_26
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB18_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB18_16
# BB#15:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB18_21
.LBB18_16:                              # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_19
# BB#17:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB18_19
# BB#18:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB18_20
.LBB18_19:                              # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB18_20:                              # %if.end.32
	jmp	.LBB18_21
.LBB18_21:                              # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB18_23
.LBB18_22:                              # %if.then.36
	jmp	.LBB18_24
.LBB18_23:                              # %if.else.37
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_select_item, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_26
.LBB18_24:                              # %if.end.38
	jmp	.LBB18_25
.LBB18_25:                              # %do.end.39
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	xorl	%edx, %edx
	leaq	-36(%rbp), %r9
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	view_signals, %esi
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	-36(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB18_26:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_container_view_select_item, .Lfunc_end18-gimp_container_view_select_item
	.cfi_endproc

	.globl	gimp_container_view_activate_item
	.align	16, 0x90
	.type	gimp_container_view_activate_item,@function
gimp_container_view_activate_item:      # @gimp_container_view_activate_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_activate_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_25
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB19_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB19_20
.LBB19_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB19_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB19_19
.LBB19_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB19_19:                              # %if.end.31
	jmp	.LBB19_20
.LBB19_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB19_22
# BB#21:                                # %if.then.35
	jmp	.LBB19_23
.LBB19_22:                              # %if.else.36
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_activate_item, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_25
.LBB19_23:                              # %if.end.37
	jmp	.LBB19_24
.LBB19_24:                              # %do.end.38
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	view_signals+4, %esi
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB19_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_container_view_activate_item, .Lfunc_end19-gimp_container_view_activate_item
	.cfi_endproc

	.globl	gimp_container_view_context_item
	.align	16, 0x90
	.type	gimp_container_view_context_item,@function
gimp_container_view_context_item:       # @gimp_container_view_context_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_context_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_25
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB20_20
.LBB20_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB20_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB20_19
.LBB20_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB20_19:                              # %if.end.31
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB20_22
# BB#21:                                # %if.then.35
	jmp	.LBB20_23
.LBB20_22:                              # %if.else.36
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_context_item, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_25
.LBB20_23:                              # %if.end.37
	jmp	.LBB20_24
.LBB20_24:                              # %do.end.38
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	view_signals+8, %esi
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB20_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_container_view_context_item, .Lfunc_end20-gimp_container_view_context_item
	.cfi_endproc

	.globl	gimp_container_view_lookup
	.align	16, 0x90
	.type	gimp_container_view_lookup,@function
gimp_container_view_lookup:             # @gimp_container_view_lookup
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_lookup, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_28
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB21_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB21_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB21_21
.LBB21_16:                              # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB21_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB21_20
.LBB21_19:                              # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB21_20:                              # %if.end.32
	jmp	.LBB21_21
.LBB21_21:                              # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB21_23
.LBB21_22:                              # %if.then.36
	jmp	.LBB21_24
.LBB21_23:                              # %if.else.37
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_lookup, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_28
.LBB21_24:                              # %if.end.38
	jmp	.LBB21_25
.LBB21_25:                              # %do.end.39
	cmpq	$0, -24(%rbp)
	jne	.LBB21_27
# BB#26:                                # %if.then.41
	movq	$0, -8(%rbp)
	jmp	.LBB21_28
.LBB21_27:                              # %if.end.42
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	movq	%rax, -8(%rbp)
.LBB21_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_container_view_lookup, .Lfunc_end21-gimp_container_view_lookup
	.cfi_endproc

	.globl	gimp_container_view_item_selected
	.align	16, 0x90
	.type	gimp_container_view_item_selected,@function
gimp_container_view_item_selected:      # @gimp_container_view_item_selected
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_item_selected, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_30
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB22_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB22_20
.LBB22_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB22_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB22_19
.LBB22_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB22_19:                              # %if.end.31
	jmp	.LBB22_20
.LBB22_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB22_22
# BB#21:                                # %if.then.35
	jmp	.LBB22_23
.LBB22_22:                              # %if.else.36
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_item_selected, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_30
.LBB22_23:                              # %if.end.37
	jmp	.LBB22_24
.LBB22_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_29
# BB#25:                                # %land.lhs.true.41
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB22_29
# BB#26:                                # %if.then.43
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_context_type_to_signal_name
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB22_28
# BB#27:                                # %if.then.50
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-96(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_context_set_by_type
	movl	$1, -4(%rbp)
	jmp	.LBB22_30
.LBB22_28:                              # %if.end.54
	jmp	.LBB22_29
.LBB22_29:                              # %if.end.55
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB22_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_container_view_item_selected, .Lfunc_end22-gimp_container_view_item_selected
	.cfi_endproc

	.globl	gimp_container_view_multi_selected
	.align	16, 0x90
	.type	gimp_container_view_multi_selected,@function
gimp_container_view_multi_selected:     # @gimp_container_view_multi_selected
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_multi_selected, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB23_19
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-24(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB23_14
# BB#13:                                # %if.then.13
	jmp	.LBB23_18
.LBB23_14:                              # %if.else.14
	cmpl	$1, -28(%rbp)
	jne	.LBB23_16
# BB#15:                                # %if.then.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_container_view_item_selected
	movl	%eax, -32(%rbp)
	jmp	.LBB23_17
.LBB23_16:                              # %if.else.18
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-32(%rbp), %r9
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	movl	view_signals, %eax
	movq	-24(%rbp), %r8
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_signal_emit
.LBB23_17:                              # %if.end.19
	jmp	.LBB23_18
.LBB23_18:                              # %if.end.20
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB23_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_container_view_multi_selected, .Lfunc_end23-gimp_container_view_multi_selected
	.cfi_endproc

	.globl	gimp_container_view_get_selected
	.align	16, 0x90
	.type	gimp_container_view_get_selected,@function
gimp_container_view_get_selected:       # @gimp_container_view_get_selected
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_get_selected, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_13
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	120(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB24_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_container_view_get_selected, .Lfunc_end24-gimp_container_view_get_selected
	.cfi_endproc

	.globl	gimp_container_view_item_activated
	.align	16, 0x90
	.type	gimp_container_view_item_activated,@function
gimp_container_view_item_activated:     # @gimp_container_view_item_activated
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_item_activated, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_25
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB25_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB25_20
.LBB25_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB25_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB25_19
.LBB25_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB25_19:                              # %if.end.31
	jmp	.LBB25_20
.LBB25_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB25_22
# BB#21:                                # %if.then.35
	jmp	.LBB25_23
.LBB25_22:                              # %if.else.36
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_item_activated, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_25
.LBB25_23:                              # %if.end.37
	jmp	.LBB25_24
.LBB25_24:                              # %do.end.38
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_activate_item
.LBB25_25:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_container_view_item_activated, .Lfunc_end25-gimp_container_view_item_activated
	.cfi_endproc

	.globl	gimp_container_view_item_context
	.align	16, 0x90
	.type	gimp_container_view_item_context,@function
gimp_container_view_item_context:       # @gimp_container_view_item_context
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_view_interface_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_item_context, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_25
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB26_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB26_20
.LBB26_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB26_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB26_19
.LBB26_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB26_19:                              # %if.end.31
	jmp	.LBB26_20
.LBB26_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB26_22
# BB#21:                                # %if.then.35
	jmp	.LBB26_23
.LBB26_22:                              # %if.else.36
	movabsq	$.L.str.7, %rdi
	movabsq	$.L__func__.gimp_container_view_item_context, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_25
.LBB26_23:                              # %if.end.37
	jmp	.LBB26_24
.LBB26_24:                              # %do.end.38
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_context_item
.LBB26_25:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_container_view_item_context, .Lfunc_end26-gimp_container_view_item_context
	.cfi_endproc

	.globl	gimp_container_view_set_property
	.align	16, 0x90
	.type	gimp_container_view_set_property,@function
gimp_container_view_set_property:       # @gimp_container_view_set_property
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB27_9
# BB#13:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI27_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB27_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_set_container
	jmp	.LBB27_12
.LBB27_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_set_context
	jmp	.LBB27_12
.LBB27_3:                               # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_container_view_set_selection_mode
	jmp	.LBB27_12
.LBB27_4:                               # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_container_view_set_reorderable
	jmp	.LBB27_12
.LBB27_5:                               # %sw.bb.9
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -44(%rbp)
	cmpl	$5, -12(%rbp)
	jne	.LBB27_7
# BB#6:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movl	%eax, -44(%rbp)
	jmp	.LBB27_8
.LBB27_7:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movl	%eax, -48(%rbp)
.LBB27_8:                               # %if.end
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	gimp_container_view_set_view_size
	jmp	.LBB27_12
.LBB27_9:                               # %sw.default
	jmp	.LBB27_10
.LBB27_10:                              # %do.body
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
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movl	$898, %edx              # imm = 0x382
	movabsq	$.L.str.21, %rcx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB27_12
.LBB27_12:                              # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_container_view_set_property, .Lfunc_end27-gimp_container_view_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI27_0:
	.quad	.LBB27_1
	.quad	.LBB27_2
	.quad	.LBB27_3
	.quad	.LBB27_4
	.quad	.LBB27_5
	.quad	.LBB27_5

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB28_2
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
.LBB28_2:                               # %entry
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
	movl	$.L.str.7, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end28:
	.size	g_warning, .Lfunc_end28-g_warning
	.cfi_endproc

	.globl	gimp_container_view_get_property
	.align	16, 0x90
	.type	gimp_container_view_get_property,@function
gimp_container_view_get_property:       # @gimp_container_view_get_property
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB29_9
# BB#13:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI29_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB29_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_view_get_container
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB29_12
.LBB29_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_view_get_context
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB29_12
.LBB29_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_view_get_selection_mode
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_enum
	jmp	.LBB29_12
.LBB29_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_view_get_reorderable
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_boolean
	jmp	.LBB29_12
.LBB29_5:                               # %sw.bb.9
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -44(%rbp)
	cmpl	$5, -12(%rbp)
	jne	.LBB29_7
# BB#6:                                 # %if.then
	movq	-24(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	g_value_set_int
	jmp	.LBB29_8
.LBB29_7:                               # %if.else
	movq	-24(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	g_value_set_int
.LBB29_8:                               # %if.end
	jmp	.LBB29_12
.LBB29_9:                               # %sw.default
	jmp	.LBB29_10
.LBB29_10:                              # %do.body
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
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movl	$939, %edx              # imm = 0x3AB
	movabsq	$.L.str.21, %rcx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB29_12
.LBB29_12:                              # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_container_view_get_property, .Lfunc_end29-gimp_container_view_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI29_0:
	.quad	.LBB29_1
	.quad	.LBB29_2
	.quad	.LBB29_3
	.quad	.LBB29_4
	.quad	.LBB29_5
	.quad	.LBB29_5

	.text
	.align	16, 0x90
	.type	gimp_container_view_real_set_container,@function
gimp_container_view_real_set_container: # @gimp_container_view_real_set_container
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB30_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_disconnect_context
.LBB30_3:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_select_item
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_container_view_freeze, %rdi
	movq	-24(%rbp), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_container_view_thaw, %rdi
	movq	-24(%rbp), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB30_5
# BB#4:                                 # %if.then.12
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_container_view_remove_container
.LBB30_5:                               # %if.end.14
	jmp	.LBB30_6
.LBB30_6:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_12
# BB#7:                                 # %if.then.19
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB30_9
# BB#8:                                 # %if.then.23
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_container_view_add_container
.LBB30_9:                               # %if.end.25
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_container_view_freeze, %rax
	movl	$2, %r8d
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_container_view_thaw, %rcx
	movl	$2, %r8d
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-24(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB30_11
# BB#10:                                # %if.then.32
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_connect_context
.LBB30_11:                              # %if.end.33
	jmp	.LBB30_12
.LBB30_12:                              # %if.end.34
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_container_view_real_set_container, .Lfunc_end30-gimp_container_view_real_set_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_real_set_context,@function
gimp_container_view_real_set_context:   # @gimp_container_view_real_set_context
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB31_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_disconnect_context
.LBB31_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB31_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB31_8
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	cmpq	$0, (%rdi)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	je	.LBB31_7
# BB#6:                                 # %if.then.14
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_connect_context
.LBB31_7:                               # %if.end.15
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.16
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_container_view_real_set_context, .Lfunc_end31-gimp_container_view_real_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_real_set_selection_mode,@function
gimp_container_view_real_set_selection_mode: # @gimp_container_view_real_set_selection_mode
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%esi, 36(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_container_view_real_set_selection_mode, .Lfunc_end32-gimp_container_view_real_set_selection_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_real_clear_items,@function
gimp_container_view_real_clear_items:   # @gimp_container_view_real_clear_items
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_hash_table_remove_all
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_container_view_real_clear_items, .Lfunc_end33-gimp_container_view_real_clear_items
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_real_get_selected,@function
gimp_container_view_real_get_selected:  # @gimp_container_view_real_get_selected
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB34_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_4
# BB#3:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB34_5
.LBB34_4:                               # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB34_9
.LBB34_5:                               # %if.end.4
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB34_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -48(%rbp)
	je	.LBB34_8
# BB#7:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB34_8:                               # %if.end.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, -48(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB34_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_container_view_real_get_selected, .Lfunc_end34-gimp_container_view_real_get_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_disconnect_context,@function
gimp_container_view_disconnect_context: # @gimp_container_view_disconnect_context
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_type_to_signal_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB35_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_view_context_changed, %rdx
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB35_3
# BB#2:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_drag_dest_unset
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_dnd_viewable_dest_remove
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB35_3:                               # %if.end
	jmp	.LBB35_4
.LBB35_4:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_container_view_disconnect_context, .Lfunc_end35-gimp_container_view_disconnect_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_freeze,@function
gimp_container_view_freeze:             # @gimp_container_view_freeze
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_remove_container
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_container_view_freeze, .Lfunc_end36-gimp_container_view_freeze
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_thaw,@function
gimp_container_view_thaw:               # @gimp_container_view_thaw
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
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_add_container
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB37_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_type_to_signal_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB37_3
# BB#2:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB37_3:                               # %if.end
	jmp	.LBB37_4
.LBB37_4:                               # %if.end.11
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_container_view_thaw, .Lfunc_end37-gimp_container_view_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_remove_container,@function
gimp_container_view_remove_container:   # @gimp_container_view_remove_container
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_container_view_add, %rdi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_container_view_remove, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_container_view_reorder, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %r8
	cmpq	(%r8), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jne	.LBB38_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-32(%rbp), %rax
	movq	$0, 48(%rax)
.LBB38_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 136(%rax)
	jne	.LBB38_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB38_5
# BB#4:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_clear_items
	jmp	.LBB38_6
.LBB38_5:                               # %if.else
	movabsq	$gimp_container_view_remove_foreach, %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_container_foreach
.LBB38_6:                               # %if.end.12
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_container_view_remove_container, .Lfunc_end38-gimp_container_view_remove_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_add_container,@function
gimp_container_view_add_container:      # @gimp_container_view_add_container
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movabsq	$gimp_container_view_add_foreach, %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_container_foreach
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	cmpq	(%rdx), %rax
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_class_ref
	movabsq	$gimp_container_view_name_changed, %rdi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	168(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	gimp_tree_handler_connect
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
.LBB39_2:                               # %if.end
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_container_view_add, %rax
	movl	$2, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_container_view_remove, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_container_view_reorder, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -96(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_container_view_add_container, .Lfunc_end39-gimp_container_view_add_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_connect_context,@function
gimp_container_view_connect_context:    # @gimp_container_view_connect_context
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_type_to_signal_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB40_6
# BB#1:                                 # %if.then
	movabsq	$gimp_container_view_context_changed, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB40_3
# BB#2:                                 # %if.then.5
	movabsq	$gimp_container_view_viewable_dropped, %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_dnd_viewable_dest_add
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB40_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB40_5
# BB#4:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB40_5:                               # %if.end.17
	jmp	.LBB40_6
.LBB40_6:                               # %if.end.18
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_container_view_connect_context, .Lfunc_end40-gimp_container_view_connect_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_context_changed,@function
gimp_container_view_context_changed:    # @gimp_container_view_context_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_select_item
	cmpl	$0, %eax
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.27, %rdi
	movabsq	$.L__func__.gimp_container_view_context_changed, %rsi
	movb	$0, %al
	callq	g_warning
.LBB41_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_container_view_context_changed, .Lfunc_end41-gimp_container_view_context_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_add,@function
gimp_container_view_add:                # @gimp_container_view_add
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB42_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	movq	%rax, -64(%rbp)
.LBB42_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-76(%rbp), %ecx
	callq	*%rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movq	-32(%rbp), %rdx
	cmpq	$0, 72(%rdx)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB42_4
# BB#3:                                 # %if.then.12
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	*%rax
.LBB42_4:                               # %if.end.14
	movq	-16(%rbp), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB42_6
# BB#5:                                 # %if.then.17
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_container_view_add_container
.LBB42_6:                               # %if.end.18
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_container_view_add, .Lfunc_end42-gimp_container_view_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_remove,@function
gimp_container_view_remove:             # @gimp_container_view_remove
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_container_view_remove_container
.LBB43_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB43_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	80(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	*%rax
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_remove
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB43_4:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_container_view_remove, .Lfunc_end43-gimp_container_view_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_reorder,@function
gimp_container_view_reorder:            # @gimp_container_view_reorder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB44_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	88(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	*%rax
.LBB44_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_container_view_reorder, .Lfunc_end44-gimp_container_view_reorder
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_clear_items,@function
gimp_container_view_clear_items:        # @gimp_container_view_clear_items
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_container_view_clear_items, .Lfunc_end45-gimp_container_view_clear_items
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_remove_foreach,@function
gimp_container_view_remove_foreach:     # @gimp_container_view_remove_foreach
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_container_view_remove
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_container_view_remove_foreach, .Lfunc_end46-gimp_container_view_remove_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_add_foreach,@function
gimp_container_view_add_foreach:        # @gimp_container_view_add_foreach
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
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB47_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	movq	%rax, -56(%rbp)
.LBB47_2:                               # %if.end
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	*%rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movq	-24(%rbp), %rdx
	cmpq	$0, 72(%rdx)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB47_4
# BB#3:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	*%rax
.LBB47_4:                               # %if.end.11
	movq	-8(%rbp), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB47_6
# BB#5:                                 # %if.then.14
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_container_view_add_container
.LBB47_6:                               # %if.end.15
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_container_view_add_foreach, .Lfunc_end47-gimp_container_view_add_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_name_changed,@function
gimp_container_view_name_changed:       # @gimp_container_view_name_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB48_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
.LBB48_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_container_view_name_changed, .Lfunc_end48-gimp_container_view_name_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_viewable_dropped,@function
gimp_container_view_viewable_dropped:   # @gimp_container_view_viewable_dropped
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_container_view_get_private
	movq	%rax, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB49_4
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB49_4
# BB#2:                                 # %land.lhs.true.4
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB49_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_view_item_selected
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB49_4:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_container_view_viewable_dropped, .Lfunc_end49-gimp_container_view_viewable_dropped
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_private_finalize,@function
gimp_container_view_private_finalize:   # @gimp_container_view_private_finalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	je	.LBB50_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBB50_2:                               # %if.end
	jmp	.LBB50_3
.LBB50_3:                               # %do.body
	movl	$56, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#4:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_container_view_private_finalize, .Lfunc_end50-gimp_container_view_private_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_view_private_dispose,@function
gimp_container_view_private_dispose:    # @gimp_container_view_private_dispose
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB51_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_set_container
.LBB51_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB51_4
# BB#3:                                 # %if.then.2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_set_context
.LBB51_4:                               # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_container_view_private_dispose, .Lfunc_end51-gimp_container_view_private_dispose
	.cfi_endproc

	.type	gimp_container_view_interface_get_type.iface_type,@object # @gimp_container_view_interface_get_type.iface_type
	.local	gimp_container_view_interface_get_type.iface_type
	.comm	gimp_container_view_interface_get_type.iface_type,8,8
	.type	gimp_container_view_interface_get_type.iface_info,@object # @gimp_container_view_interface_get_type.iface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_container_view_interface_get_type.iface_info:
	.short	144                     # 0x90
	.zero	6
	.quad	gimp_container_view_iface_base_init
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_container_view_interface_get_type.iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainerViewInterface"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"container"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"context"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"selection-mode"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"reorderable"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view-size"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"view-border-width"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Widgets"
	.size	.L.str.7, 13

	.type	.L__func__.gimp_container_view_get_container,@object # @__func__.gimp_container_view_get_container
.L__func__.gimp_container_view_get_container:
	.asciz	"gimp_container_view_get_container"
	.size	.L__func__.gimp_container_view_get_container, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_CONTAINER_VIEW (view)"
	.size	.L.str.8, 30

	.type	.L__func__.gimp_container_view_set_container,@object # @__func__.gimp_container_view_set_container
.L__func__.gimp_container_view_set_container:
	.asciz	"gimp_container_view_set_container"
	.size	.L__func__.gimp_container_view_set_container, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"container == NULL || GIMP_IS_CONTAINER (container)"
	.size	.L.str.9, 51

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"g_type_is_a (gimp_container_get_children_type (container), GIMP_TYPE_VIEWABLE)"
	.size	.L.str.10, 79

	.type	.L__func__.gimp_container_view_get_context,@object # @__func__.gimp_container_view_get_context
.L__func__.gimp_container_view_get_context:
	.asciz	"gimp_container_view_get_context"
	.size	.L__func__.gimp_container_view_get_context, 32

	.type	.L__func__.gimp_container_view_set_context,@object # @__func__.gimp_container_view_set_context
.L__func__.gimp_container_view_set_context:
	.asciz	"gimp_container_view_set_context"
	.size	.L__func__.gimp_container_view_set_context, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.11, 45

	.type	.L__func__.gimp_container_view_set_selection_mode,@object # @__func__.gimp_container_view_set_selection_mode
.L__func__.gimp_container_view_set_selection_mode:
	.asciz	"gimp_container_view_set_selection_mode"
	.size	.L__func__.gimp_container_view_set_selection_mode, 39

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"mode == GTK_SELECTION_SINGLE || mode == GTK_SELECTION_MULTIPLE"
	.size	.L.str.12, 63

	.type	.L__func__.gimp_container_view_get_view_size,@object # @__func__.gimp_container_view_get_view_size
.L__func__.gimp_container_view_get_view_size:
	.asciz	"gimp_container_view_get_view_size"
	.size	.L__func__.gimp_container_view_get_view_size, 34

	.type	.L__func__.gimp_container_view_set_view_size,@object # @__func__.gimp_container_view_set_view_size
.L__func__.gimp_container_view_set_view_size:
	.asciz	"gimp_container_view_set_view_size"
	.size	.L__func__.gimp_container_view_set_view_size, 34

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.13, 61

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.14, 74

	.type	.L__func__.gimp_container_view_get_reorderable,@object # @__func__.gimp_container_view_get_reorderable
.L__func__.gimp_container_view_get_reorderable:
	.asciz	"gimp_container_view_get_reorderable"
	.size	.L__func__.gimp_container_view_get_reorderable, 36

	.type	.L__func__.gimp_container_view_set_reorderable,@object # @__func__.gimp_container_view_set_reorderable
.L__func__.gimp_container_view_set_reorderable:
	.asciz	"gimp_container_view_set_reorderable"
	.size	.L__func__.gimp_container_view_set_reorderable, 36

	.type	.L__func__.gimp_container_view_get_dnd_widget,@object # @__func__.gimp_container_view_get_dnd_widget
.L__func__.gimp_container_view_get_dnd_widget:
	.asciz	"gimp_container_view_get_dnd_widget"
	.size	.L__func__.gimp_container_view_get_dnd_widget, 35

	.type	.L__func__.gimp_container_view_set_dnd_widget,@object # @__func__.gimp_container_view_set_dnd_widget
.L__func__.gimp_container_view_set_dnd_widget:
	.asciz	"gimp_container_view_set_dnd_widget"
	.size	.L__func__.gimp_container_view_set_dnd_widget, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"dnd_widget == NULL || GTK_IS_WIDGET (dnd_widget)"
	.size	.L.str.15, 49

	.type	.L__func__.gimp_container_view_enable_dnd,@object # @__func__.gimp_container_view_enable_dnd
.L__func__.gimp_container_view_enable_dnd:
	.asciz	"gimp_container_view_enable_dnd"
	.size	.L__func__.gimp_container_view_enable_dnd, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GTK_IS_BUTTON (button)"
	.size	.L.str.16, 23

	.type	.L__func__.gimp_container_view_select_item,@object # @__func__.gimp_container_view_select_item
.L__func__.gimp_container_view_select_item:
	.asciz	"gimp_container_view_select_item"
	.size	.L__func__.gimp_container_view_select_item, 32

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"viewable == NULL || GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.17, 48

	.type	view_signals,@object    # @view_signals
	.local	view_signals
	.comm	view_signals,12,4
	.type	.L__func__.gimp_container_view_activate_item,@object # @__func__.gimp_container_view_activate_item
.L__func__.gimp_container_view_activate_item:
	.asciz	"gimp_container_view_activate_item"
	.size	.L__func__.gimp_container_view_activate_item, 34

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.18, 28

	.type	.L__func__.gimp_container_view_context_item,@object # @__func__.gimp_container_view_context_item
.L__func__.gimp_container_view_context_item:
	.asciz	"gimp_container_view_context_item"
	.size	.L__func__.gimp_container_view_context_item, 33

	.type	.L__func__.gimp_container_view_lookup,@object # @__func__.gimp_container_view_lookup
.L__func__.gimp_container_view_lookup:
	.asciz	"gimp_container_view_lookup"
	.size	.L__func__.gimp_container_view_lookup, 27

	.type	.L__func__.gimp_container_view_item_selected,@object # @__func__.gimp_container_view_item_selected
.L__func__.gimp_container_view_item_selected:
	.asciz	"gimp_container_view_item_selected"
	.size	.L__func__.gimp_container_view_item_selected, 34

	.type	.L__func__.gimp_container_view_multi_selected,@object # @__func__.gimp_container_view_multi_selected
.L__func__.gimp_container_view_multi_selected:
	.asciz	"gimp_container_view_multi_selected"
	.size	.L__func__.gimp_container_view_multi_selected, 35

	.type	.L__func__.gimp_container_view_get_selected,@object # @__func__.gimp_container_view_get_selected
.L__func__.gimp_container_view_get_selected:
	.asciz	"gimp_container_view_get_selected"
	.size	.L__func__.gimp_container_view_get_selected, 33

	.type	.L__func__.gimp_container_view_item_activated,@object # @__func__.gimp_container_view_item_activated
.L__func__.gimp_container_view_item_activated:
	.asciz	"gimp_container_view_item_activated"
	.size	.L__func__.gimp_container_view_item_activated, 35

	.type	.L__func__.gimp_container_view_item_context,@object # @__func__.gimp_container_view_item_context
.L__func__.gimp_container_view_item_context:
	.asciz	"gimp_container_view_item_context"
	.size	.L__func__.gimp_container_view_item_context, 33

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.19, 54

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimpcontainerview.c"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"property"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"select-item"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"activate-item"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"context-item"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"freeze"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"thaw"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s: select_item() failed (should not happen)"
	.size	.L.str.27, 45

	.type	.L__func__.gimp_container_view_context_changed,@object # @__func__.gimp_container_view_context_changed
.L__func__.gimp_container_view_context_changed:
	.asciz	"gimp_container_view_context_changed"
	.size	.L__func__.gimp_container_view_context_changed, 36

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"add"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"remove"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"reorder"
	.size	.L.str.30, 8

	.type	gimp_container_view_get_private.private_key,@object # @gimp_container_view_get_private.private_key
	.local	gimp_container_view_get_private.private_key
	.comm	gimp_container_view_get_private.private_key,4,4
	.type	.L__func__.gimp_container_view_get_private,@object # @__func__.gimp_container_view_get_private
.L__func__.gimp_container_view_get_private:
	.asciz	"gimp_container_view_get_private"
	.size	.L__func__.gimp_container_view_get_private, 32

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-container-view-private"
	.size	.L.str.31, 28

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"destroy"
	.size	.L.str.32, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
