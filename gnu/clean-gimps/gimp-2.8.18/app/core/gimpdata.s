	.text
	.file	"gimpdata.bc"
	.globl	gimp_data_get_type
	.align	16, 0x90
	.type	gimp_data_get_type,@function
gimp_data_get_type:                     # @gimp_data_get_type
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
	cmpq	$0, gimp_data_get_type.data_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rsi
	movabsq	$gimp_data_get_type.data_info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_data_get_type.data_type
	movq	gimp_data_get_type.data_type, %rdi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movabsq	$gimp_data_get_type.tagged_info, %rdx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
.LBB0_2:                                # %if.end
	movq	gimp_data_get_type.data_type, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_data_get_type, .Lfunc_end0-gimp_data_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_class_init,@function
gimp_data_class_init:                   # @gimp_data_class_init
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
	subq	$136, %rsp
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent
	movabsq	$.L.str.23, %rdi
	movl	$1, %edx
	movl	$280, %ecx              # imm = 0x118
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, parent_class
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$227, %r8d
	movabsq	$gimp_data_real_dirty, %r9
	movabsq	$gimp_data_get_memsize, %r10
	movabsq	$gimp_data_name_changed, %r11
	movabsq	$gimp_data_get_property, %rbx
	movabsq	$gimp_data_set_property, %r14
	movabsq	$gimp_data_finalize, %r15
	movabsq	$gimp_data_constructed, %r12
	movl	%eax, data_signals
	movq	-56(%rbp), %r13
	movq	%r12, 72(%r13)
	movq	-56(%rbp), %r12
	movq	%r15, 48(%r12)
	movq	-56(%rbp), %r15
	movq	%r14, 24(%r15)
	movq	-56(%rbp), %r14
	movq	%rbx, 32(%r14)
	movq	-64(%rbp), %rbx
	movq	%r11, 144(%rbx)
	movq	-64(%rbp), %r11
	movq	%r10, 152(%r11)
	movq	-48(%rbp), %r10
	movq	%r9, 280(%r10)
	movq	-48(%rbp), %r9
	movq	$0, 288(%r9)
	movq	-48(%rbp), %r9
	movq	$0, 296(%r9)
	movq	-48(%rbp), %r9
	movq	$0, 304(%r9)
	movq	-56(%rbp), %r9
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.20, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.21, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.25, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$235, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$4, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$48, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_data_class_init, .Lfunc_end1-gimp_data_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_init,@function
gimp_data_init:                         # @gimp_data_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 12(%rax)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 12(%rax)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, 12(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 12(%rax)
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_data_freeze
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_data_init, .Lfunc_end2-gimp_data_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_tagged_iface_init,@function
gimp_data_tagged_iface_init:            # @gimp_data_tagged_iface_init
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
	movabsq	$gimp_data_get_checksum, %rax
	movabsq	$gimp_data_get_identifier, %rcx
	movabsq	$gimp_data_get_tags, %rdx
	movabsq	$gimp_data_remove_tag, %rsi
	movabsq	$gimp_data_add_tag, %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r8, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 48(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 56(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_data_tagged_iface_init, .Lfunc_end3-gimp_data_tagged_iface_init
	.cfi_endproc

	.globl	gimp_data_save
	.align	16, 0x90
	.type	gimp_data_save,@function
gimp_data_save:                         # @gimp_data_save
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_save, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_37
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_16
.LBB4_15:                               # %if.then.14
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_save, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_37
.LBB4_17:                               # %if.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.17
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
# BB#19:                                # %do.body.20
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$1, %edx
	jne	.LBB4_21
# BB#20:                                # %if.then.22
	jmp	.LBB4_22
.LBB4_21:                               # %if.else.23
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_save, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_37
.LBB4_22:                               # %if.end.24
	jmp	.LBB4_23
.LBB4_23:                               # %do.end.25
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB4_25
# BB#24:                                # %if.then.30
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 12(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB4_37
.LBB4_25:                               # %if.end.33
	jmp	.LBB4_26
.LBB4_26:                               # %do.body.34
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_28
# BB#27:                                # %if.then.36
	jmp	.LBB4_29
.LBB4_28:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_save, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_37
.LBB4_29:                               # %if.end.38
	jmp	.LBB4_30
.LBB4_30:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 288(%rax)
	je	.LBB4_32
# BB#31:                                # %if.then.42
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -36(%rbp)
.LBB4_32:                               # %if.end.46
	cmpl	$0, -36(%rbp)
	je	.LBB4_36
# BB#33:                                # %if.then.48
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_file_new_for_path
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	g_file_query_info
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB4_35
# BB#34:                                # %if.then.55
	movabsq	$.L.str.7, %rsi
	movq	-80(%rbp), %rdi
	callq	g_file_info_get_attribute_uint64
	movq	-32(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_35:                               # %if.end.57
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 12(%rax)
.LBB4_36:                               # %if.end.61
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_37:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_data_save, .Lfunc_end4-gimp_data_save
	.cfi_endproc

	.globl	gimp_data_dirty
	.align	16, 0x90
	.type	gimp_data_dirty,@function
gimp_data_dirty:                        # @gimp_data_dirty
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_get_type
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
	movabsq	$.L__func__.gimp_data_dirty, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB5_14
# BB#13:                                # %if.then.14
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	data_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_14:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_data_dirty, .Lfunc_end5-gimp_data_dirty
	.cfi_endproc

	.globl	gimp_data_clean
	.align	16, 0x90
	.type	gimp_data_clean,@function
gimp_data_clean:                        # @gimp_data_clean
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_get_type
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
	movabsq	$.L__func__.gimp_data_clean, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 12(%rax)
.LBB6_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_data_clean, .Lfunc_end6-gimp_data_clean
	.cfi_endproc

	.globl	gimp_data_is_dirty
	.align	16, 0x90
	.type	gimp_data_is_dirty,@function
gimp_data_is_dirty:                     # @gimp_data_is_dirty
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
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
	movabsq	$.L__func__.gimp_data_is_dirty, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_data_is_dirty, .Lfunc_end7-gimp_data_is_dirty
	.cfi_endproc

	.globl	gimp_data_freeze
	.align	16, 0x90
	.type	gimp_data_freeze,@function
gimp_data_freeze:                       # @gimp_data_freeze
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_freeze, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB8_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_data_freeze, .Lfunc_end8-gimp_data_freeze
	.cfi_endproc

	.globl	gimp_data_thaw
	.align	16, 0x90
	.type	gimp_data_thaw,@function
gimp_data_thaw:                         # @gimp_data_thaw
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_thaw, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_19
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jle	.LBB9_15
# BB#14:                                # %if.then.15
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_thaw, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_19
.LBB9_16:                               # %if.end.17
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.18
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB9_19
# BB#18:                                # %if.then.22
	movq	-8(%rbp), %rdi
	callq	gimp_data_dirty
.LBB9_19:                               # %if.end.23
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_data_thaw, .Lfunc_end9-gimp_data_thaw
	.cfi_endproc

	.globl	gimp_data_is_frozen
	.align	16, 0x90
	.type	gimp_data_is_frozen,@function
gimp_data_is_frozen:                    # @gimp_data_is_frozen
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_is_frozen, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB10_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_data_is_frozen, .Lfunc_end10-gimp_data_is_frozen
	.cfi_endproc

	.globl	gimp_data_delete_from_disk
	.align	16, 0x90
	.type	gimp_data_delete_from_disk,@function
gimp_data_delete_from_disk:             # @gimp_data_delete_from_disk
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_delete_from_disk, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_33
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB11_16
.LBB11_15:                              # %if.then.14
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_delete_from_disk, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_33
.LBB11_17:                              # %if.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.end.17
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
# BB#19:                                # %do.body.20
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_21
# BB#20:                                # %if.then.22
	jmp	.LBB11_22
.LBB11_21:                              # %if.else.23
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_delete_from_disk, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_33
.LBB11_22:                              # %if.end.24
	jmp	.LBB11_23
.LBB11_23:                              # %do.end.25
	jmp	.LBB11_24
.LBB11_24:                              # %do.body.26
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$1, %edx
	jne	.LBB11_26
# BB#25:                                # %if.then.28
	jmp	.LBB11_27
.LBB11_26:                              # %if.else.29
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_delete_from_disk, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_33
.LBB11_27:                              # %if.end.30
	jmp	.LBB11_28
.LBB11_28:                              # %do.end.31
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB11_30
# BB#29:                                # %if.then.37
	movl	$1, -4(%rbp)
	jmp	.LBB11_33
.LBB11_30:                              # %if.end.38
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_unlink
	cmpl	$-1, %eax
	jne	.LBB11_32
# BB#31:                                # %if.then.42
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movl	$3, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB11_33
.LBB11_32:                              # %if.end.49
	movl	$1, -4(%rbp)
.LBB11_33:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_data_delete_from_disk, .Lfunc_end11-gimp_data_delete_from_disk
	.cfi_endproc

	.globl	gimp_data_error_quark
	.align	16, 0x90
	.type	gimp_data_error_quark,@function
gimp_data_error_quark:                  # @gimp_data_error_quark
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
	movabsq	$.L.str.22, %rdi
	callq	g_quark_from_static_string
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_data_error_quark, .Lfunc_end12-gimp_data_error_quark
	.cfi_endproc

	.globl	gimp_data_get_extension
	.align	16, 0x90
	.type	gimp_data_get_extension,@function
gimp_data_get_extension:                # @gimp_data_get_extension
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
	callq	gimp_data_get_type
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
	movabsq	$.L__func__.gimp_data_get_extension, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_15
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 296(%rax)
	je	.LBB13_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	296(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_15
.LBB13_14:                              # %if.end.17
	movq	$0, -8(%rbp)
.LBB13_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_data_get_extension, .Lfunc_end13-gimp_data_get_extension
	.cfi_endproc

	.globl	gimp_data_set_filename
	.align	16, 0x90
	.type	gimp_data_set_filename,@function
gimp_data_set_filename:                 # @gimp_data_set_filename
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_set_filename, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_36
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB14_15
# BB#14:                                # %if.then.13
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_set_filename, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_36
.LBB14_16:                              # %if.end.15
	jmp	.LBB14_17
.LBB14_17:                              # %do.end.16
	jmp	.LBB14_18
.LBB14_18:                              # %do.body.17
	movq	-16(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB14_20
# BB#19:                                # %if.then.20
	jmp	.LBB14_21
.LBB14_20:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_set_filename, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_36
.LBB14_21:                              # %if.end.22
	jmp	.LBB14_22
.LBB14_22:                              # %do.end.23
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB14_24
# BB#23:                                # %if.then.27
	jmp	.LBB14_36
.LBB14_24:                              # %if.end.28
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_26
# BB#25:                                # %if.then.31
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
.LBB14_26:                              # %if.end.33
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 12(%rax)
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 12(%rax)
	cmpl	$0, -20(%rbp)
	jne	.LBB14_28
# BB#27:                                # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	je	.LBB14_36
.LBB14_28:                              # %if.then.44
	movq	-16(%rbp), %rdi
	callq	g_path_get_dirname
	xorl	%esi, %esi
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_access
	cmpl	$0, %eax
	jne	.LBB14_30
# BB#29:                                # %land.lhs.true.49
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	g_access
	cmpl	$0, %eax
	je	.LBB14_32
.LBB14_30:                              # %lor.lhs.false.52
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	g_access
	cmpl	$0, %eax
	je	.LBB14_33
# BB#31:                                # %land.lhs.true.55
	movl	$2, %esi
	movq	-64(%rbp), %rdi
	callq	g_access
	cmpl	$0, %eax
	jne	.LBB14_33
.LBB14_32:                              # %if.then.58
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -20(%rbp)
	movl	%eax, %edx
	cmovnel	%ecx, %edx
	movq	-32(%rbp), %rsi
	movb	%dl, %dil
	movb	12(%rsi), %r8b
	andb	$1, %dil
	andb	$-2, %r8b
	orb	%dil, %r8b
	movb	%r8b, 12(%rsi)
	cmpl	$0, -24(%rbp)
	cmovnel	%ecx, %eax
	movq	-32(%rbp), %rsi
	movb	%al, %dil
	movb	12(%rsi), %r8b
	andb	$1, %dil
	shlb	$1, %dil
	andb	$-3, %r8b
	orb	%dil, %r8b
	movb	%r8b, 12(%rsi)
.LBB14_33:                              # %if.end.71
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, 288(%rdi)
	jne	.LBB14_35
# BB#34:                                # %if.then.74
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 12(%rax)
.LBB14_35:                              # %if.end.78
	jmp	.LBB14_36
.LBB14_36:                              # %if.end.79
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_data_set_filename, .Lfunc_end14-gimp_data_set_filename
	.cfi_endproc

	.globl	gimp_data_create_filename
	.align	16, 0x90
	.type	gimp_data_create_filename,@function
gimp_data_create_filename:              # @gimp_data_create_filename
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -56(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_create_filename, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_38
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_create_filename, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_38
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	jmp	.LBB15_18
.LBB15_18:                              # %do.body.17
	movq	-16(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB15_20
# BB#19:                                # %if.then.20
	jmp	.LBB15_21
.LBB15_20:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_create_filename, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_38
.LBB15_21:                              # %if.end.22
	jmp	.LBB15_22
.LBB15_22:                              # %do.end.23
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB15_24
# BB#23:                                # %if.then.27
	jmp	.LBB15_38
.LBB15_24:                              # %if.end.28
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	-64(%rbp), %r8
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_26
# BB#25:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movabsq	$.L.str.15, %rdi
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-64(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB15_38
.LBB15_26:                              # %if.end.34
	movq	-32(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	-32(%rbp), %rdi
	movsbl	(%rdi), %ecx
	cmpl	$46, %ecx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB15_28
# BB#27:                                # %if.then.39
	movq	-32(%rbp), %rax
	movb	$45, (%rax)
.LBB15_28:                              # %if.end.41
	movl	$0, -52(%rbp)
.LBB15_29:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB15_34
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB15_29 Depth=1
	movabsq	$.L.str.16, %rdi
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB15_32
# BB#31:                                # %if.then.49
                                        #   in Loop: Header=BB15_29 Depth=1
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$45, (%rcx,%rax)
.LBB15_32:                              # %if.end.52
                                        #   in Loop: Header=BB15_29 Depth=1
	jmp	.LBB15_33
.LBB15_33:                              # %for.inc
                                        #   in Loop: Header=BB15_29 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB15_29
.LBB15_34:                              # %for.end
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_get_extension
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strconcat
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB15_35:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$16, %esi
	movq	-48(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB15_37
# BB#36:                                # %while.body
                                        #   in Loop: Header=BB15_35 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rsi
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_data_get_extension
	movabsq	$.L.str.17, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	-132(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB15_35
.LBB15_37:                              # %while.end
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_data_set_filename
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB15_38:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_data_create_filename, .Lfunc_end15-gimp_data_create_filename
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
	je	.LBB16_2
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
.LBB16_2:                               # %entry
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
.Lfunc_end16:
	.size	g_warning, .Lfunc_end16-g_warning
	.cfi_endproc

	.globl	gimp_data_get_filename
	.align	16, 0x90
	.type	gimp_data_get_filename,@function
gimp_data_get_filename:                 # @gimp_data_get_filename
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_get_filename, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB17_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_data_get_filename, .Lfunc_end17-gimp_data_get_filename
	.cfi_endproc

	.globl	gimp_data_set_folder_tags
	.align	16, 0x90
	.type	gimp_data_set_folder_tags,@function
gimp_data_set_folder_tags:              # @gimp_data_set_folder_tags
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_set_folder_tags, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_41
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB18_14
# BB#13:                                # %if.then.14
	jmp	.LBB18_41
.LBB18_14:                              # %if.end.15
	jmp	.LBB18_15
.LBB18_15:                              # %do.body.16
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_17
# BB#16:                                # %if.then.18
	jmp	.LBB18_18
.LBB18_17:                              # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_set_folder_tags, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_41
.LBB18_18:                              # %if.end.20
	jmp	.LBB18_19
.LBB18_19:                              # %do.end.21
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_path_get_dirname
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB18_31
# BB#20:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -64(%rbp)
# BB#21:                                # %do.body.28
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB18_25
# BB#22:                                # %land.lhs.true.31
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB18_24
# BB#23:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$47, %edx
	jne	.LBB18_25
.LBB18_24:                              # %if.then.38
	jmp	.LBB18_26
.LBB18_25:                              # %if.else.39
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_set_folder_tags, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_41
.LBB18_26:                              # %if.end.40
	jmp	.LBB18_27
.LBB18_27:                              # %do.end.41
	jmp	.LBB18_28
.LBB18_28:                              # %do.body.42
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	g_path_get_basename
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_tag_new
	movl	$1, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_tag_set_internal
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_tagged_add_tag
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_path_get_dirname
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#29:                                # %do.cond
                                        #   in Loop: Header=BB18_28 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_28
# BB#30:                                # %do.end.54
	jmp	.LBB18_31
.LBB18_31:                              # %if.end.55
	cmpq	$0, -32(%rbp)
	je	.LBB18_41
# BB#32:                                # %if.then.57
	movq	-32(%rbp), %rdi
	callq	g_path_get_basename
	movq	%rax, -96(%rbp)
	movl	$0, -100(%rbp)
.LBB18_33:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-100(%rbp), %rax
	cmpq	$6, %rax
	jae	.LBB18_38
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB18_33 Depth=1
	movq	-96(%rbp), %rdi
	movslq	-100(%rbp), %rax
	movq	tag_blacklist(,%rax,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_36
# BB#35:                                # %if.then.68
	jmp	.LBB18_38
.LBB18_36:                              # %if.end.69
                                        #   in Loop: Header=BB18_33 Depth=1
	jmp	.LBB18_37
.LBB18_37:                              # %for.inc
                                        #   in Loop: Header=BB18_33 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB18_33
.LBB18_38:                              # %for.end
	movslq	-100(%rbp), %rax
	cmpq	$6, %rax
	jne	.LBB18_40
# BB#39:                                # %if.then.73
	movq	-96(%rbp), %rdi
	callq	gimp_tag_new
	movl	$1, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_tag_set_internal
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_tagged_add_tag
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB18_40:                              # %if.end.79
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB18_41:                              # %if.end.80
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_data_set_folder_tags, .Lfunc_end18-gimp_data_set_folder_tags
	.cfi_endproc

	.globl	gimp_data_get_mime_type
	.align	16, 0x90
	.type	gimp_data_get_mime_type,@function
gimp_data_get_mime_type:                # @gimp_data_get_mime_type
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_get_mime_type, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	callq	g_quark_to_string
	movq	%rax, -8(%rbp)
.LBB19_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_data_get_mime_type, .Lfunc_end19-gimp_data_get_mime_type
	.cfi_endproc

	.globl	gimp_data_is_writable
	.align	16, 0x90
	.type	gimp_data_is_writable,@function
gimp_data_is_writable:                  # @gimp_data_is_writable
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
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
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_is_writable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB20_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_data_is_writable, .Lfunc_end20-gimp_data_is_writable
	.cfi_endproc

	.globl	gimp_data_is_deletable
	.align	16, 0x90
	.type	gimp_data_is_deletable,@function
gimp_data_is_deletable:                 # @gimp_data_is_deletable
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_is_deletable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB21_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_data_is_deletable, .Lfunc_end21-gimp_data_is_deletable
	.cfi_endproc

	.globl	gimp_data_set_mtime
	.align	16, 0x90
	.type	gimp_data_set_mtime,@function
gimp_data_set_mtime:                    # @gimp_data_set_mtime
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_set_mtime, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
.LBB22_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_data_set_mtime, .Lfunc_end22-gimp_data_set_mtime
	.cfi_endproc

	.globl	gimp_data_get_mtime
	.align	16, 0x90
	.type	gimp_data_get_mtime,@function
gimp_data_get_mtime:                    # @gimp_data_get_mtime
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_get_mtime, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_13
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB23_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_data_get_mtime, .Lfunc_end23-gimp_data_get_mtime
	.cfi_endproc

	.globl	gimp_data_duplicate
	.align	16, 0x90
	.type	gimp_data_duplicate,@function
gimp_data_duplicate:                    # @gimp_data_duplicate
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_duplicate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_17
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 304(%rax)
	je	.LBB24_16
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	304(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$.L.str.19, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.21, %r9
	movl	$1, %r8d
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, 288(%rdi)
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movq	%rax, %rdi
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_set
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB24_15
# BB#14:                                # %if.then.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.LBB24_15:                              # %if.end.27
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB24_17
.LBB24_16:                              # %if.end.28
	movq	$0, -8(%rbp)
.LBB24_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_data_duplicate, .Lfunc_end24-gimp_data_duplicate
	.cfi_endproc

	.globl	gimp_data_make_internal
	.align	16, 0x90
	.type	gimp_data_make_internal,@function
gimp_data_make_internal:                # @gimp_data_make_internal
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
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_make_internal, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_15
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_14
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB25_14:                              # %if.end.17
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 12(%rax)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 12(%rax)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 12(%rax)
.LBB25_15:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_data_make_internal, .Lfunc_end25-gimp_data_make_internal
	.cfi_endproc

	.globl	gimp_data_is_internal
	.align	16, 0x90
	.type	gimp_data_is_internal,@function
gimp_data_is_internal:                  # @gimp_data_is_internal
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_get_type
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
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_is_internal, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_13
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB26_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_data_is_internal, .Lfunc_end26-gimp_data_is_internal
	.cfi_endproc

	.globl	gimp_data_compare
	.align	16, 0x90
	.type	gimp_data_compare,@function
gimp_data_compare:                      # @gimp_data_compare
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	cmpl	%r8d, %edx
	je	.LBB27_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdx
	movb	12(%rdx), %sil
	shrb	$3, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB27_5
.LBB27_2:                               # %if.end
	movq	-32(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	je	.LBB27_4
# BB#3:                                 # %if.then.24
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdx
	movb	12(%rdx), %sil
	shrb	$1, %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB27_5
.LBB27_4:                               # %if.end.32
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_object_name_collate
	movl	%eax, -4(%rbp)
.LBB27_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_data_compare, .Lfunc_end27-gimp_data_compare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_constructed,@function
gimp_data_constructed:                  # @gimp_data_constructed
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	parent_class, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB28_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_data_constructed, .Lfunc_end28-gimp_data_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_finalize,@function
gimp_data_finalize:                     # @gimp_data_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB29_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB29_4
# BB#3:                                 # %if.then.5
	movabsq	$g_object_unref, %rsi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB29_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB29_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB29_6:                               # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_data_finalize, .Lfunc_end29-gimp_data_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_set_property,@function
gimp_data_set_property:                 # @gimp_data_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB30_8
# BB#12:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI30_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB30_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	-48(%rbp), %rdi
	movb	12(%rdi), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rdi
	movb	12(%rdi), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_set_filename
	jmp	.LBB30_11
.LBB30_2:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movb	%al, %cl
	movb	12(%rdi), %dl
	andb	$1, %cl
	andb	$-2, %dl
	orb	%cl, %dl
	movb	%dl, 12(%rdi)
	jmp	.LBB30_11
.LBB30_3:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-48(%rbp), %rdi
	movb	%al, %cl
	movb	12(%rdi), %dl
	andb	$1, %cl
	shlb	$1, %cl
	andb	$-3, %dl
	orb	%cl, %dl
	movb	%dl, 12(%rdi)
	jmp	.LBB30_11
.LBB30_4:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_string
	cmpq	$0, %rax
	je	.LBB30_6
# BB#5:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_value_get_string
	movq	%rax, %rdi
	callq	g_quark_from_string
	movq	-48(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else
	movq	-48(%rbp), %rax
	movl	$0, 8(%rax)
.LBB30_7:                               # %if.end
	jmp	.LBB30_11
.LBB30_8:                               # %sw.default
	jmp	.LBB30_9
.LBB30_9:                               # %do.body
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
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movl	$318, %edx              # imm = 0x13E
	movabsq	$.L.str.28, %rcx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#10:                                # %do.end
	jmp	.LBB30_11
.LBB30_11:                              # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_data_set_property, .Lfunc_end30-gimp_data_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI30_0:
	.quad	.LBB30_1
	.quad	.LBB30_2
	.quad	.LBB30_3
	.quad	.LBB30_4

	.text
	.align	16, 0x90
	.type	gimp_data_get_property,@function
gimp_data_get_property:                 # @gimp_data_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB31_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI31_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB31_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB31_8
.LBB31_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movb	12(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	g_value_set_boolean
	jmp	.LBB31_8
.LBB31_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	g_value_set_boolean
	jmp	.LBB31_8
.LBB31_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	g_quark_to_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_string
	jmp	.LBB31_8
.LBB31_5:                               # %sw.default
	jmp	.LBB31_6
.LBB31_6:                               # %do.body
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
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movl	$350, %edx              # imm = 0x15E
	movabsq	$.L.str.28, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB31_8
.LBB31_8:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_data_get_property, .Lfunc_end31-gimp_data_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI31_0:
	.quad	.LBB31_1
	.quad	.LBB31_2
	.quad	.LBB31_3
	.quad	.LBB31_4

	.text
	.align	16, 0x90
	.type	gimp_data_name_changed,@function
gimp_data_name_changed:                 # @gimp_data_name_changed
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	12(%rax), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, 12(%rax)
	movq	parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 144(%rax)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB32_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_data_name_changed, .Lfunc_end32-gimp_data_name_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_get_memsize,@function
gimp_data_get_memsize:                  # @gimp_data_get_memsize
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	parent_class, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_data_get_memsize, .Lfunc_end33-gimp_data_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_real_dirty,@function
gimp_data_real_dirty:                   # @gimp_data_real_dirty
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_object_name_changed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_data_real_dirty, .Lfunc_end34-gimp_data_real_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_add_tag,@function
gimp_data_add_tag:                      # @gimp_data_add_tag
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB35_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_tag_equals
	cmpl	$0, %eax
	je	.LBB35_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB35_10
.LBB35_4:                               # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_5
.LBB35_5:                               # %for.inc
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB35_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB35_8
.LBB35_7:                               # %cond.false
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB35_8
.LBB35_8:                               # %cond.end
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB35_1
.LBB35_9:                               # %for.end
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-32(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movl	$1, -4(%rbp)
.LBB35_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_data_add_tag, .Lfunc_end35-gimp_data_add_tag
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_remove_tag,@function
gimp_data_remove_tag:                   # @gimp_data_remove_tag
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB36_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_tag_equals
	cmpl	$0, %eax
	je	.LBB36_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_delete_link
	movq	-32(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, -4(%rbp)
	jmp	.LBB36_10
.LBB36_4:                               # %if.end
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_5
.LBB36_5:                               # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB36_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB36_8
.LBB36_7:                               # %cond.false
                                        #   in Loop: Header=BB36_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB36_8
.LBB36_8:                               # %cond.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB36_1
.LBB36_9:                               # %for.end
	movl	$0, -4(%rbp)
.LBB36_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_data_remove_tag, .Lfunc_end36-gimp_data_remove_tag
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_get_tags,@function
gimp_data_get_tags:                     # @gimp_data_get_tags
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_data_get_tags, .Lfunc_end37-gimp_data_get_tags
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_get_identifier,@function
gimp_data_get_identifier:               # @gimp_data_get_identifier
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_10
# BB#1:                                 # %if.then
	callq	gimp_data_directory
	movq	%rax, -32(%rbp)
	callq	gimp_directory
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB38_3
# BB#2:                                 # %if.then.7
	movabsq	$.L.str.29, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %rsi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movb	$0, %al
	callq	g_strconcat
	movq	$-1, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	g_filename_to_utf8
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB38_7
.LBB38_3:                               # %if.else
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB38_5
# BB#4:                                 # %if.then.15
	movabsq	$.L.str.30, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-40(%rbp), %rsi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-104(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_strconcat
	movq	$-1, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	g_filename_to_utf8
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB38_6
.LBB38_5:                               # %if.else.21
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	g_filename_to_utf8
	movq	%rax, -24(%rbp)
.LBB38_6:                               # %if.end
	jmp	.LBB38_7
.LBB38_7:                               # %if.end.24
	cmpq	$0, -24(%rbp)
	jne	.LBB38_9
# BB#8:                                 # %if.then.26
	movabsq	$.L.str.31, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
.LBB38_9:                               # %if.end.30
	jmp	.LBB38_13
.LBB38_10:                              # %if.else.31
	movq	-16(%rbp), %rax
	movb	12(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB38_12
# BB#11:                                # %if.then.33
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
.LBB38_12:                              # %if.end.36
	jmp	.LBB38_13
.LBB38_13:                              # %if.end.37
	movq	-24(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_data_get_identifier, .Lfunc_end38-gimp_data_get_identifier
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_get_checksum,@function
gimp_data_get_checksum:                 # @gimp_data_get_checksum
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
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_data_get_checksum, .Lfunc_end39-gimp_data_get_checksum
	.cfi_endproc

	.type	gimp_data_get_type.data_type,@object # @gimp_data_get_type.data_type
	.local	gimp_data_get_type.data_type
	.comm	gimp_data_get_type.data_type,8,8
	.type	gimp_data_get_type.data_info,@object # @gimp_data_get_type.data_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_data_get_type.data_info:
	.short	312                     # 0x138
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_data_class_init
	.quad	0
	.quad	0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_data_init
	.quad	0
	.size	gimp_data_get_type.data_info, 72

	.type	gimp_data_get_type.tagged_info,@object # @gimp_data_get_type.tagged_info
	.align	8
gimp_data_get_type.tagged_info:
	.quad	gimp_data_tagged_iface_init
	.quad	0
	.quad	0
	.size	gimp_data_get_type.tagged_info, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpData"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_data_save,@object # @__func__.gimp_data_save
.L__func__.gimp_data_save:
	.asciz	"gimp_data_save"
	.size	.L__func__.gimp_data_save, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DATA (data)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"private->writable == TRUE"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"private->filename != NULL"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"time::*"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"time::modified"
	.size	.L.str.7, 15

	.type	.L__func__.gimp_data_dirty,@object # @__func__.gimp_data_dirty
.L__func__.gimp_data_dirty:
	.asciz	"gimp_data_dirty"
	.size	.L__func__.gimp_data_dirty, 16

	.type	data_signals,@object    # @data_signals
	.local	data_signals
	.comm	data_signals,4,4
	.type	.L__func__.gimp_data_clean,@object # @__func__.gimp_data_clean
.L__func__.gimp_data_clean:
	.asciz	"gimp_data_clean"
	.size	.L__func__.gimp_data_clean, 16

	.type	.L__func__.gimp_data_is_dirty,@object # @__func__.gimp_data_is_dirty
.L__func__.gimp_data_is_dirty:
	.asciz	"gimp_data_is_dirty"
	.size	.L__func__.gimp_data_is_dirty, 19

	.type	.L__func__.gimp_data_freeze,@object # @__func__.gimp_data_freeze
.L__func__.gimp_data_freeze:
	.asciz	"gimp_data_freeze"
	.size	.L__func__.gimp_data_freeze, 17

	.type	.L__func__.gimp_data_thaw,@object # @__func__.gimp_data_thaw
.L__func__.gimp_data_thaw:
	.asciz	"gimp_data_thaw"
	.size	.L__func__.gimp_data_thaw, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"private->freeze_count > 0"
	.size	.L.str.8, 26

	.type	.L__func__.gimp_data_is_frozen,@object # @__func__.gimp_data_is_frozen
.L__func__.gimp_data_is_frozen:
	.asciz	"gimp_data_is_frozen"
	.size	.L__func__.gimp_data_is_frozen, 20

	.type	.L__func__.gimp_data_delete_from_disk,@object # @__func__.gimp_data_delete_from_disk
.L__func__.gimp_data_delete_from_disk:
	.asciz	"gimp_data_delete_from_disk"
	.size	.L__func__.gimp_data_delete_from_disk, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"private->deletable == TRUE"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Could not delete '%s': %s"
	.size	.L.str.10, 26

	.type	.L__func__.gimp_data_get_extension,@object # @__func__.gimp_data_get_extension
.L__func__.gimp_data_get_extension:
	.asciz	"gimp_data_get_extension"
	.size	.L__func__.gimp_data_get_extension, 24

	.type	.L__func__.gimp_data_set_filename,@object # @__func__.gimp_data_set_filename
.L__func__.gimp_data_set_filename:
	.asciz	"gimp_data_set_filename"
	.size	.L__func__.gimp_data_set_filename, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"filename != NULL"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"g_path_is_absolute (filename)"
	.size	.L.str.12, 30

	.type	.L__func__.gimp_data_create_filename,@object # @__func__.gimp_data_create_filename
.L__func__.gimp_data_create_filename:
	.asciz	"gimp_data_create_filename"
	.size	.L__func__.gimp_data_create_filename, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dest_dir != NULL"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"g_path_is_absolute (dest_dir)"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp_data_create_filename:\ng_filename_from_utf8() failed for '%s': %s"
	.size	.L.str.15, 70

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\\/*?\"`'<>{}|\n\t ;:$^&"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s-%d%s"
	.size	.L.str.17, 8

	.type	.L__func__.gimp_data_get_filename,@object # @__func__.gimp_data_get_filename
.L__func__.gimp_data_get_filename:
	.asciz	"gimp_data_get_filename"
	.size	.L__func__.gimp_data_get_filename, 23

	.type	.L__func__.gimp_data_set_folder_tags,@object # @__func__.gimp_data_set_folder_tags
.L__func__.gimp_data_set_folder_tags:
	.asciz	"gimp_data_set_folder_tags"
	.size	.L__func__.gimp_data_set_folder_tags, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"g_str_has_prefix (dirname, top_directory) && (dirname[top_directory_len] == '\\0' || G_IS_DIR_SEPARATOR (dirname[top_directory_len]))"
	.size	.L.str.18, 133

	.type	tag_blacklist,@object   # @tag_blacklist
	.data
	.align	16
tag_blacklist:
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.size	tag_blacklist, 48

	.type	.L__func__.gimp_data_get_mime_type,@object # @__func__.gimp_data_get_mime_type
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_data_get_mime_type:
	.asciz	"gimp_data_get_mime_type"
	.size	.L__func__.gimp_data_get_mime_type, 24

	.type	.L__func__.gimp_data_is_writable,@object # @__func__.gimp_data_is_writable
.L__func__.gimp_data_is_writable:
	.asciz	"gimp_data_is_writable"
	.size	.L__func__.gimp_data_is_writable, 22

	.type	.L__func__.gimp_data_is_deletable,@object # @__func__.gimp_data_is_deletable
.L__func__.gimp_data_is_deletable:
	.asciz	"gimp_data_is_deletable"
	.size	.L__func__.gimp_data_is_deletable, 23

	.type	.L__func__.gimp_data_set_mtime,@object # @__func__.gimp_data_set_mtime
.L__func__.gimp_data_set_mtime:
	.asciz	"gimp_data_set_mtime"
	.size	.L__func__.gimp_data_set_mtime, 20

	.type	.L__func__.gimp_data_get_mtime,@object # @__func__.gimp_data_get_mtime
.L__func__.gimp_data_get_mtime:
	.asciz	"gimp_data_get_mtime"
	.size	.L__func__.gimp_data_get_mtime, 20

	.type	.L__func__.gimp_data_duplicate,@object # @__func__.gimp_data_duplicate
.L__func__.gimp_data_duplicate:
	.asciz	"gimp_data_duplicate"
	.size	.L__func__.gimp_data_duplicate, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"name"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"writable"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"deletable"
	.size	.L.str.21, 10

	.type	.L__func__.gimp_data_make_internal,@object # @__func__.gimp_data_make_internal
.L__func__.gimp_data_make_internal:
	.asciz	"gimp_data_make_internal"
	.size	.L__func__.gimp_data_make_internal, 24

	.type	.L__func__.gimp_data_is_internal,@object # @__func__.gimp_data_is_internal
.L__func__.gimp_data_is_internal:
	.asciz	"gimp_data_is_internal"
	.size	.L__func__.gimp_data_is_internal, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-data-error-quark"
	.size	.L.str.22, 22

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"dirty"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"filename"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"mime-type"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.26, 54

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimpdata.c"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"property"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"${gimp_data_dir}"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"${gimp_dir}"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Failed to convert '%s' to utf8.\n"
	.size	.L.str.31, 33

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"brushes"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"dynamics"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"patterns"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"palettes"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gradients"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"tool-presets"
	.size	.L.str.37, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
