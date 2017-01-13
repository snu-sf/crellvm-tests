	.text
	.file	"gimpcolorbalanceconfig.bc"
	.globl	gimp_color_balance_config_get_type
	.align	16, 0x90
	.type	gimp_color_balance_config_get_type,@function
gimp_color_balance_config_get_type:     # @gimp_color_balance_config_get_type
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
	movq	gimp_color_balance_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_balance_config_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_map_config_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_color_balance_config_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_color_balance_config_init, %rcx
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
	movabsq	$gimp_color_balance_config_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_color_balance_config_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_balance_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_balance_config_get_type, .Lfunc_end0-gimp_color_balance_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_config_class_intern_init,@function
gimp_color_balance_config_class_intern_init: # @gimp_color_balance_config_class_intern_init
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
	movq	%rax, gimp_color_balance_config_parent_class
	cmpl	$0, GimpColorBalanceConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorBalanceConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_balance_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_balance_config_class_intern_init, .Lfunc_end1-gimp_color_balance_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_config_init,@function
gimp_color_balance_config_init:         # @gimp_color_balance_config_init
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
	callq	gimp_config_interface_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_balance_config_init, .Lfunc_end2-gimp_color_balance_config_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_config_iface_init,@function
gimp_color_balance_config_iface_init:   # @gimp_color_balance_config_iface_init
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
	movabsq	$gimp_color_balance_config_copy, %rax
	movabsq	$gimp_color_balance_config_reset, %rcx
	movabsq	$gimp_color_balance_config_equal, %rdx
	movabsq	$gimp_color_balance_config_deserialize, %rsi
	movabsq	$gimp_color_balance_config_serialize, %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r8, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_balance_config_iface_init, .Lfunc_end3-gimp_color_balance_config_iface_init
	.cfi_endproc

	.globl	gimp_color_balance_config_reset_range
	.align	16, 0x90
	.type	gimp_color_balance_config_reset_range,@function
gimp_color_balance_config_reset_range:  # @gimp_color_balance_config_reset_range
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_color_balance_config_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_balance_config_reset_range, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB4_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_balance_config_reset_range, .Lfunc_end4-gimp_color_balance_config_reset_range
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gimp_color_balance_config_to_cruft
	.align	16, 0x90
	.type	gimp_color_balance_config_to_cruft,@function
gimp_color_balance_config_to_cruft:     # @gimp_color_balance_config_to_cruft
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_balance_config_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_balance_config_to_cruft, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_22
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_balance_config_to_cruft, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_22
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movl	$0, -20(%rbp)
.LBB5_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -20(%rbp)
	ja	.LBB5_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB5_18 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movaps	%xmm0, %xmm1
	mulsd	48(%rdx,%rcx,8), %xmm1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	%xmm1, 8(%rdx,%rcx,8)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movaps	%xmm0, %xmm1
	mulsd	72(%rdx,%rcx,8), %xmm1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	%xmm1, 32(%rdx,%rcx,8)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	mulsd	96(%rdx,%rcx,8), %xmm0
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	%xmm0, 56(%rdx,%rcx,8)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB5_18 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_18
.LBB5_21:                               # %for.end
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	color_balance_create_lookup_tables
.LBB5_22:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_balance_config_to_cruft, .Lfunc_end5-gimp_color_balance_config_to_cruft
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	-4616189618054758400    # double -1
.LCPI6_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_balance_config_class_init,@function
gimp_color_balance_config_class_init:   # @gimp_color_balance_config_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_color_balance_config_get_property, %rdi
	movabsq	$gimp_color_balance_config_set_property, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 160(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_transfer_mode_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	movabsq	$.L.str.9, %rdx
	movl	$1, %r8d
	movl	$263, %r9d              # imm = 0x107
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.10, %rdx
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$263, %ecx              # imm = 0x107
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.11, %rdx
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$263, %ecx              # imm = 0x107
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$263, %ecx              # imm = 0x107
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.14, %rdx
	movl	$1, %ecx
	movl	$263, %r8d              # imm = 0x107
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_balance_config_class_init, .Lfunc_end6-gimp_color_balance_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_config_set_property,@function
gimp_color_balance_config_set_property: # @gimp_color_balance_config_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB7_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movabsq	$.L.str.3, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, 40(%rdi)
	movq	-8(%rbp), %rdi
	callq	g_object_notify
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	callq	g_object_notify
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	callq	g_object_notify
	jmp	.LBB7_9
.LBB7_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 48(%rcx,%rdi,8)
	jmp	.LBB7_9
.LBB7_3:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 72(%rcx,%rdi,8)
	jmp	.LBB7_9
.LBB7_4:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 96(%rcx,%rdi,8)
	jmp	.LBB7_9
.LBB7_5:                                # %sw.bb.16
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 120(%rdi)
	jmp	.LBB7_9
.LBB7_6:                                # %sw.default
	jmp	.LBB7_7
.LBB7_7:                                # %do.body
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
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$207, %edx
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB7_9
.LBB7_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_balance_config_set_property, .Lfunc_end7-gimp_color_balance_config_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_5

	.text
	.align	16, 0x90
	.type	gimp_color_balance_config_get_property,@function
gimp_color_balance_config_get_property: # @gimp_color_balance_config_get_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB8_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB8_9
.LBB8_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movsd	48(%rdx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB8_9
.LBB8_3:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movsd	72(%rdx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB8_9
.LBB8_4:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movsd	96(%rdx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB8_9
.LBB8_5:                                # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	120(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB8_9
.LBB8_6:                                # %sw.default
	jmp	.LBB8_7
.LBB8_7:                                # %do.body
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
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$168, %edx
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB8_9
.LBB8_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_balance_config_get_property, .Lfunc_end8-gimp_color_balance_config_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1
	.quad	.LBB8_2
	.quad	.LBB8_3
	.quad	.LBB8_4
	.quad	.LBB8_5

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_config_serialize,@function
gimp_color_balance_config_serialize:    # @gimp_color_balance_config_serialize
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, -40(%rbp)
	movl	$1, -52(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_15
.LBB10_2:                               # %if.end
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	$0, -44(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -44(%rbp)
	ja	.LBB10_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$.L.str.8, %rsi
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	cmpl	$0, %eax
	movb	%r9b, -65(%rbp)         # 1-byte Spill
	je	.LBB10_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -65(%rbp)         # 1-byte Spill
	je	.LBB10_8
# BB#6:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -65(%rbp)         # 1-byte Spill
	je	.LBB10_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB10_8:                               # %land.end
                                        #   in Loop: Header=BB10_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB10_10
# BB#9:                                 # %if.then.15
	jmp	.LBB10_12
.LBB10_10:                              # %if.end.16
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_11
.LBB10_11:                              # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB10_3
.LBB10_12:                              # %for.end
	cmpl	$0, -52(%rbp)
	je	.LBB10_14
# BB#13:                                # %if.then.18
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	movl	%eax, -52(%rbp)
.LBB10_14:                              # %if.end.20
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_balance_config_serialize, .Lfunc_end10-gimp_color_balance_config_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_config_deserialize,@function
gimp_color_balance_config_deserialize:  # @gimp_color_balance_config_deserialize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$1, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	40(%rax), %edx
	movl	%edx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_config_deserialize_properties
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %edx
	movb	$0, %al
	callq	g_object_set
	movl	-48(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_balance_config_deserialize, .Lfunc_end11-gimp_color_balance_config_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_config_equal,@function
gimp_color_balance_config_equal:        # @gimp_color_balance_config_equal
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
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -44(%rbp)
	ja	.LBB12_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	48(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	ucomisd	48(%rdx,%rcx,8), %xmm0
	jne	.LBB12_5
	jp	.LBB12_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	72(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	ucomisd	72(%rdx,%rcx,8), %xmm0
	jne	.LBB12_5
	jp	.LBB12_5
# BB#4:                                 # %lor.lhs.false.14
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	96(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	ucomisd	96(%rdx,%rcx,8), %xmm0
	jne	.LBB12_5
	jp	.LBB12_5
	jmp	.LBB12_6
.LBB12_5:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_11
.LBB12_6:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB12_1
.LBB12_8:                               # %for.end
	movq	-32(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	120(%rax), %ecx
	je	.LBB12_10
# BB#9:                                 # %if.then.23
	movl	$0, -4(%rbp)
	jmp	.LBB12_11
.LBB12_10:                              # %if.end.24
	movl	$1, -4(%rbp)
.LBB12_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_balance_config_equal, .Lfunc_end12-gimp_color_balance_config_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_config_reset,@function
gimp_color_balance_config_reset:        # @gimp_color_balance_config_reset
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -20(%rbp)
	ja	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_color_balance_config_reset_range
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_balance_config_reset, .Lfunc_end13-gimp_color_balance_config_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_balance_config_copy,@function
gimp_color_balance_config_copy:         # @gimp_color_balance_config_copy
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_balance_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -44(%rbp)
	ja	.LBB14_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	48(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 48(%rdx,%rcx,8)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	72(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 72(%rdx,%rcx,8)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	96(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 96(%rdx,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_1
.LBB14_4:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rax
	movl	40(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-32(%rbp), %rax
	movl	120(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 120(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_balance_config_copy, .Lfunc_end14-gimp_color_balance_config_copy
	.cfi_endproc

	.type	gimp_color_balance_config_get_type.g_define_type_id__volatile,@object # @gimp_color_balance_config_get_type.g_define_type_id__volatile
	.local	gimp_color_balance_config_get_type.g_define_type_id__volatile
	.comm	gimp_color_balance_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorBalanceConfig"
	.size	.L.str, 23

	.type	gimp_color_balance_config_get_type.g_implement_interface_info,@object # @gimp_color_balance_config_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_color_balance_config_get_type.g_implement_interface_info:
	.quad	gimp_color_balance_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_color_balance_config_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-GEGL"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_color_balance_config_reset_range,@object # @__func__.gimp_color_balance_config_reset_range
.L__func__.gimp_color_balance_config_reset_range:
	.asciz	"gimp_color_balance_config_reset_range"
	.size	.L__func__.gimp_color_balance_config_reset_range, 38

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COLOR_BALANCE_CONFIG (config)"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cyan-red"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"magenta-green"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"yellow-blue"
	.size	.L.str.5, 12

	.type	.L__func__.gimp_color_balance_config_to_cruft,@object # @__func__.gimp_color_balance_config_to_cruft
.L__func__.gimp_color_balance_config_to_cruft:
	.asciz	"gimp_color_balance_config_to_cruft"
	.size	.L__func__.gimp_color_balance_config_to_cruft, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cruft != NULL"
	.size	.L.str.6, 14

	.type	gimp_color_balance_config_parent_class,@object # @gimp_color_balance_config_parent_class
	.local	gimp_color_balance_config_parent_class
	.comm	gimp_color_balance_config_parent_class,8,8
	.type	GimpColorBalanceConfig_private_offset,@object # @GimpColorBalanceConfig_private_offset
	.local	GimpColorBalanceConfig_private_offset
	.comm	GimpColorBalanceConfig_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-tool-color-balance"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"range"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The affected range"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Cyan-Red"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Magenta-Green"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Yellow-Blue"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"preserve-luminosity"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Preserve Luminosity"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimpcolorbalanceconfig.c"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"time"
	.size	.L.str.18, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
