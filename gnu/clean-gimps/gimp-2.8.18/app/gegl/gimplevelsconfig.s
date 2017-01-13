	.text
	.file	"gimplevelsconfig.bc"
	.globl	gimp_levels_config_get_type
	.align	16, 0x90
	.type	gimp_levels_config_get_type,@function
gimp_levels_config_get_type:            # @gimp_levels_config_get_type
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
	movq	gimp_levels_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_levels_config_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_levels_config_class_intern_init, %rdi
	movl	$248, %r8d
	movabsq	$gimp_levels_config_init, %rcx
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
	movabsq	$gimp_levels_config_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_levels_config_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_levels_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_levels_config_get_type, .Lfunc_end0-gimp_levels_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_config_class_intern_init,@function
gimp_levels_config_class_intern_init:   # @gimp_levels_config_class_intern_init
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
	movq	%rax, gimp_levels_config_parent_class
	cmpl	$0, GimpLevelsConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpLevelsConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_levels_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_levels_config_class_intern_init, .Lfunc_end1-gimp_levels_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_config_init,@function
gimp_levels_config_init:                # @gimp_levels_config_init
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
	.size	gimp_levels_config_init, .Lfunc_end2-gimp_levels_config_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_config_iface_init,@function
gimp_levels_config_iface_init:          # @gimp_levels_config_iface_init
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
	movabsq	$gimp_levels_config_copy, %rax
	movabsq	$gimp_levels_config_reset, %rcx
	movabsq	$gimp_levels_config_equal, %rdx
	movabsq	$gimp_levels_config_deserialize, %rsi
	movabsq	$gimp_levels_config_serialize, %r8
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
	.size	gimp_levels_config_iface_init, .Lfunc_end3-gimp_levels_config_iface_init
	.cfi_endproc

	.globl	gimp_levels_config_reset_channel
	.align	16, 0x90
	.type	gimp_levels_config_reset_channel,@function
gimp_levels_config_reset_channel:       # @gimp_levels_config_reset_channel
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
	callq	gimp_levels_config_get_type
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
	movabsq	$.L__func__.gimp_levels_config_reset_channel, %rsi
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
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
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
	.size	gimp_levels_config_reset_channel, .Lfunc_end4-gimp_levels_config_reset_channel
	.cfi_endproc

	.globl	gimp_levels_config_stretch
	.align	16, 0x90
	.type	gimp_levels_config_stretch,@function
gimp_levels_config_stretch:             # @gimp_levels_config_stretch
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_levels_config_get_type
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
	movabsq	$.L__func__.gimp_levels_config_stretch, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
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
	movabsq	$.L__func__.gimp_levels_config_stretch, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	cmpl	$0, -20(%rbp)
	je	.LBB5_23
# BB#18:                                # %if.then.19
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_levels_config_reset_channel
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 40(%rax)
	movl	$1, -52(%rbp)
.LBB5_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -52(%rbp)
	ja	.LBB5_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	gimp_levels_config_stretch_channel
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB5_19
.LBB5_22:                               # %for.end
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.25
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_levels_config_stretch_channel
.LBB5_24:                               # %if.end.26
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB5_25:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_levels_config_stretch, .Lfunc_end5-gimp_levels_config_stretch
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_2:
	.quad	4573567551181324026     # double 0.0060000000000000001
.LCPI6_3:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_levels_config_stretch_channel
	.align	16, 0x90
	.type	gimp_levels_config_stretch_channel,@function
gimp_levels_config_stretch_channel:     # @gimp_levels_config_stretch_channel
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_levels_config_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_stretch_channel, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_33
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_stretch_channel, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_33
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	xorl	%edx, %edx
	movl	$255, %ecx
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movl	-20(%rbp), %r8d
	movl	%r8d, %eax
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 48(%rsi,%rax,8)
	movl	-20(%rbp), %r8d
	movl	%r8d, %eax
	movq	-8(%rbp), %rsi
	movsd	%xmm1, 168(%rsi,%rax,8)
	movl	-20(%rbp), %r8d
	movl	%r8d, %eax
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 208(%rsi,%rax,8)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_histogram_get_count
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_19
	jp	.LBB6_19
# BB#18:                                # %if.then.24
	xorps	%xmm0, %xmm0
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 88(%rdx,%rcx,8)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 128(%rdx,%rcx,8)
	jmp	.LBB6_32
.LBB6_19:                               # %if.else.29
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$0, -36(%rbp)
.LBB6_20:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$255, -36(%rbp)
	jge	.LBB6_25
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB6_20 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	gimp_histogram_get_value
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_histogram_get_value
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	divsd	-32(%rbp), %xmm2
	movsd	%xmm2, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movapd	.LCPI6_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movapd	.LCPI6_1(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB6_23
# BB#22:                                # %if.then.43
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm1, 88(%rdx,%rcx,8)
	jmp	.LBB6_25
.LBB6_23:                               # %if.end.49
                                        #   in Loop: Header=BB6_20 Depth=1
	jmp	.LBB6_24
.LBB6_24:                               # %for.inc
                                        #   in Loop: Header=BB6_20 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_20
.LBB6_25:                               # %for.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$255, -36(%rbp)
.LBB6_26:                               # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jle	.LBB6_31
# BB#27:                                # %for.body.53
                                        #   in Loop: Header=BB6_26 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	gimp_histogram_get_value
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gimp_histogram_get_value
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	divsd	-32(%rbp), %xmm2
	movsd	%xmm2, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movapd	.LCPI6_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movapd	.LCPI6_1(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB6_29
# BB#28:                                # %if.then.67
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm1, 128(%rdx,%rcx,8)
	jmp	.LBB6_31
.LBB6_29:                               # %if.end.74
                                        #   in Loop: Header=BB6_26 Depth=1
	jmp	.LBB6_30
.LBB6_30:                               # %for.inc.75
                                        #   in Loop: Header=BB6_26 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_26
.LBB6_31:                               # %for.end.76
	jmp	.LBB6_32
.LBB6_32:                               # %if.end.77
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
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
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB6_33:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_levels_config_stretch_channel, .Lfunc_end6-gimp_levels_config_stretch_channel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4589866978952703325     # double 0.0722
.LCPI7_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI7_2:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI7_3:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI7_4:
	.quad	4607181518080091934     # double 0.99990000000000001
.LCPI7_5:
	.quad	4621819117588971520     # double 10
.LCPI7_6:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	gimp_levels_config_adjust_by_colors
	.align	16, 0x90
	.type	gimp_levels_config_adjust_by_colors,@function
gimp_levels_config_adjust_by_colors:    # @gimp_levels_config_adjust_by_colors
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
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_levels_config_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_adjust_by_colors, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_33
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	cmpq	$0, -24(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_levels_config_input_from_color
	movl	$80, %edi
	movl	%edi, %esi
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 88(%rcx,%rax,8)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB7_14:                               # %if.end.16
	cmpq	$0, -40(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.18
	movl	-12(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	gimp_levels_config_input_from_color
	movl	$80, %edi
	movl	%edi, %esi
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 128(%rcx,%rax,8)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB7_16:                               # %if.end.23
	cmpq	$0, -32(%rbp)
	je	.LBB7_31
# BB#17:                                # %if.then.25
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_2, %xmm2         # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	(%rax), %xmm2
	movq	-32(%rbp), %rax
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm2
	movq	-32(%rbp), %rax
	mulsd	16(%rax), %xmm0
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -104(%rbp)
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	gimp_levels_config_input_from_color
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -72(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	-8(%rbp), %rsi
	movsd	128(%rsi,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	-8(%rbp), %rsi
	subsd	88(%rsi,%rax,8), %xmm0
	movsd	%xmm0, -80(%rbp)
	ucomisd	-80(%rbp), %xmm1
	jb	.LBB7_19
# BB#18:                                # %if.then.42
	jmp	.LBB7_32
.LBB7_19:                               # %if.end.43
	xorps	%xmm0, %xmm0
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	88(%rdx,%rcx,8), %xmm1  # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -72(%rbp)
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB7_21
# BB#20:                                # %if.then.49
	jmp	.LBB7_32
.LBB7_21:                               # %if.end.50
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-80(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-80(%rbp), %xmm1
	movsd	%xmm1, -96(%rbp)
	ucomisd	-96(%rbp), %xmm0
	jae	.LBB7_23
# BB#22:                                # %lor.lhs.false
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_24
.LBB7_23:                               # %if.then.54
	jmp	.LBB7_32
.LBB7_24:                               # %if.end.55
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	log
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	.LCPI7_5, %xmm1         # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm2, 48(%rdx,%rcx,8)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	48(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_26
# BB#25:                                # %cond.true
	movsd	.LCPI7_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB7_30
.LBB7_26:                               # %cond.false
	movsd	.LCPI7_6, %xmm0         # xmm0 = mem[0],zero
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	ucomisd	48(%rdx,%rcx,8), %xmm0
	jbe	.LBB7_28
# BB#27:                                # %cond.true.69
	movsd	.LCPI7_6, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB7_29
.LBB7_28:                               # %cond.false.70
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	48(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB7_29:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB7_30:                               # %cond.end.74
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 48(%rdx,%rcx,8)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB7_31:                               # %if.end.80
	jmp	.LBB7_32
.LBB7_32:                               # %out
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
.LBB7_33:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_levels_config_adjust_by_colors, .Lfunc_end7-gimp_levels_config_adjust_by_colors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_config_input_from_color,@function
gimp_levels_config_input_from_color:    # @gimp_levels_config_input_from_color
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
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %esi
	movq	%rsi, %rax
	subq	$5, %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	ja	.LBB8_25
# BB#27:                                # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB8_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB8_4
.LBB8_3:                                # %cond.false
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB8_4:                                # %cond.end
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB8_9
# BB#5:                                 # %cond.true.4
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB8_7
# BB#6:                                 # %cond.true.8
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false.10
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB8_8:                                # %cond.end.12
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false.14
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB8_10:                               # %cond.end.16
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_26
.LBB8_11:                               # %sw.bb.18
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_26
.LBB8_12:                               # %sw.bb.20
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_26
.LBB8_13:                               # %sw.bb.22
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_26
.LBB8_14:                               # %sw.bb.24
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_26
.LBB8_15:                               # %sw.bb.25
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_17
# BB#16:                                # %cond.true.29
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB8_18
.LBB8_17:                               # %cond.false.31
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB8_18:                               # %cond.end.33
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_23
# BB#19:                                # %cond.true.37
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_21
# BB#20:                                # %cond.true.41
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB8_22
.LBB8_21:                               # %cond.false.43
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB8_22:                               # %cond.end.45
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB8_24
.LBB8_23:                               # %cond.false.47
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB8_24:                               # %cond.end.49
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB8_26
.LBB8_25:                               # %sw.epilog
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB8_26:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_levels_config_input_from_color, .Lfunc_end8-gimp_levels_config_input_from_color
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1
	.quad	.LBB8_11
	.quad	.LBB8_12
	.quad	.LBB8_13
	.quad	.LBB8_14
	.quad	.LBB8_15

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	-4616189618054758400    # double -1
.LCPI9_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_levels_config_to_curves_config
	.align	16, 0x90
	.type	gimp_levels_config_to_curves_config,@function
gimp_levels_config_to_curves_config:    # @gimp_levels_config_to_curves_config
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_levels_config_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_to_curves_config, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_63
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	callq	gimp_curves_config_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB9_13:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_24 Depth 2
                                        #     Child Loop BB9_28 Depth 2
                                        #     Child Loop BB9_39 Depth 2
                                        #     Child Loop BB9_43 Depth 2
	cmpl	$4, -28(%rbp)
	ja	.LBB9_62
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_curve_get_n_points
	xorl	%esi, %esi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -68(%rbp)
	movl	$-1, -72(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	48(%rdx,%rcx,8), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	128(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subsd	88(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	208(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subsd	168(%rdx,%rcx,8), %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	88(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	168(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	$4, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	$4, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB9_20
.LBB9_16:                               # %cond.false
                                        #   in Loop: Header=BB9_13 Depth=1
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_18
# BB#17:                                # %cond.true.56
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB9_19
.LBB9_18:                               # %cond.false.59
                                        #   in Loop: Header=BB9_13 Depth=1
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB9_19:                               # %cond.end
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB9_20:                               # %cond.end.62
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movl	-72(%rbp), %esi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_21
	jp	.LBB9_21
	jmp	.LBB9_54
.LBB9_21:                               # %land.lhs.true.67
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_22
	jp	.LBB9_22
	jmp	.LBB9_54
.LBB9_22:                               # %if.then.70
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_38
# BB#23:                                # %if.then.74
                                        #   in Loop: Header=BB9_13 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	$0, -116(%rbp)
.LBB9_24:                               # %for.cond.77
                                        #   Parent Loop BB9_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -116(%rbp)
	jge	.LBB9_27
# BB#25:                                # %for.body.80
                                        #   in Loop: Header=BB9_24 Depth=2
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB9_24
.LBB9_27:                               # %for.end
                                        #   in Loop: Header=BB9_13 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-128(%rbp), %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	%xmm0, -128(%rbp)
	movl	$1, -116(%rbp)
.LBB9_28:                               # %for.cond.83
                                        #   Parent Loop BB9_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -116(%rbp)
	jge	.LBB9_37
# BB#29:                                # %for.body.86
                                        #   in Loop: Header=BB9_28 Depth=2
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	addsd	-136(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	88(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	168(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	callq	gimp_operation_levels_map_input
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	$4, %eax
	addl	-116(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_31
# BB#30:                                # %cond.true.107
                                        #   in Loop: Header=BB9_28 Depth=2
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	$4, %eax
	addl	-116(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB9_35
.LBB9_31:                               # %cond.false.112
                                        #   in Loop: Header=BB9_28 Depth=2
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_33
# BB#32:                                # %cond.true.119
                                        #   in Loop: Header=BB9_28 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB9_34
.LBB9_33:                               # %cond.false.122
                                        #   in Loop: Header=BB9_28 Depth=2
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB9_34:                               # %cond.end.125
                                        #   in Loop: Header=BB9_28 Depth=2
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB9_35:                               # %cond.end.127
                                        #   in Loop: Header=BB9_28 Depth=2
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movl	-72(%rbp), %esi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
# BB#36:                                # %for.inc.130
                                        #   in Loop: Header=BB9_28 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB9_28
.LBB9_37:                               # %for.end.132
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_53
.LBB9_38:                               # %if.else.133
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -152(%rbp)
	divsd	-80(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -144(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-144(%rbp), %rsi
	movsd	%xmm0, 48(%rsi,%rax,8)
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rsi
	movsd	168(%rsi,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-144(%rbp), %rsi
	movsd	%xmm0, 88(%rsi,%rax,8)
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rsi
	movsd	88(%rsi,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-144(%rbp), %rsi
	movsd	%xmm0, 168(%rsi,%rax,8)
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rsi
	movsd	208(%rsi,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-144(%rbp), %rsi
	movsd	%xmm0, 128(%rsi,%rax,8)
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rsi
	movsd	128(%rsi,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-144(%rbp), %rsi
	movsd	%xmm0, 208(%rsi,%rax,8)
	movl	$0, -116(%rbp)
.LBB9_39:                               # %for.cond.169
                                        #   Parent Loop BB9_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -116(%rbp)
	jge	.LBB9_42
# BB#40:                                # %for.body.172
                                        #   in Loop: Header=BB9_39 Depth=2
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-168(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
# BB#41:                                # %for.inc.175
                                        #   in Loop: Header=BB9_39 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB9_39
.LBB9_42:                               # %for.end.177
                                        #   in Loop: Header=BB9_13 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-152(%rbp), %xmm1
	movsd	%xmm1, -160(%rbp)
	movsd	%xmm0, -152(%rbp)
	movl	$1, -116(%rbp)
.LBB9_43:                               # %for.cond.179
                                        #   Parent Loop BB9_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -116(%rbp)
	jge	.LBB9_52
# BB#44:                                # %for.body.182
                                        #   in Loop: Header=BB9_43 Depth=2
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-168(%rbp), %xmm0
	addsd	-160(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	168(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	88(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-144(%rbp), %rdi
	movl	-28(%rbp), %esi
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -256(%rbp)       # 8-byte Spill
	callq	gimp_operation_levels_map_input
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	$4, %eax
	addl	-116(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_46
# BB#45:                                # %cond.true.203
                                        #   in Loop: Header=BB9_43 Depth=2
	movl	-68(%rbp), %eax
	subl	$1, %eax
	subl	$4, %eax
	addl	-116(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB9_50
.LBB9_46:                               # %cond.false.208
                                        #   in Loop: Header=BB9_43 Depth=2
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_48
# BB#47:                                # %cond.true.215
                                        #   in Loop: Header=BB9_43 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB9_49
.LBB9_48:                               # %cond.false.218
                                        #   in Loop: Header=BB9_43 Depth=2
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB9_49:                               # %cond.end.221
                                        #   in Loop: Header=BB9_43 Depth=2
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB9_50:                               # %cond.end.223
                                        #   in Loop: Header=BB9_43 Depth=2
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movl	-72(%rbp), %esi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
# BB#51:                                # %for.inc.226
                                        #   in Loop: Header=BB9_43 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB9_43
.LBB9_52:                               # %for.end.228
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB9_53:                               # %if.end.229
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_54
.LBB9_54:                               # %if.end.230
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	128(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	208(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movl	-68(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_56
# BB#55:                                # %cond.true.243
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-68(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB9_60
.LBB9_56:                               # %cond.false.246
                                        #   in Loop: Header=BB9_13 Depth=1
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_58
# BB#57:                                # %cond.true.253
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB9_59
.LBB9_58:                               # %cond.false.256
                                        #   in Loop: Header=BB9_13 Depth=1
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB9_59:                               # %cond.end.259
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB9_60:                               # %cond.end.261
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movl	-72(%rbp), %esi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
# BB#61:                                # %for.inc.264
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_13
.LBB9_62:                               # %for.end.266
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_63:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_levels_config_to_curves_config, .Lfunc_end9-gimp_levels_config_to_curves_config
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_levels_config_load_cruft
	.align	16, 0x90
	.type	gimp_levels_config_load_cruft,@function
gimp_levels_config_load_cruft:          # @gimp_levels_config_load_cruft
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gimp_levels_config_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -300(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -300(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_load_cruft, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_43
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_load_cruft, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_43
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	jmp	.LBB10_18
.LBB10_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB10_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB10_21
.LBB10_20:                              # %if.then.20
	jmp	.LBB10_22
.LBB10_21:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_load_cruft, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_43
.LBB10_22:                              # %if.end.22
	jmp	.LBB10_23
.LBB10_23:                              # %do.end.23
	movl	$50, %esi
	leaq	-272(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB10_25
# BB#24:                                # %lor.lhs.false.26
	leaq	-272(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB10_26
.LBB10_25:                              # %if.then.30
	movq	-32(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark
	movabsq	$.L.str.12, %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	-316(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB10_43
.LBB10_26:                              # %if.end.33
	movl	$0, -212(%rbp)
.LBB10_27:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -212(%rbp)
	jge	.LBB10_37
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB10_27 Depth=1
	movabsq	$.L.str.13, %rsi
	leaq	-160(%rbp), %rax
	leaq	-128(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rdi
	movq	-40(%rbp), %r8
	movslq	-212(%rbp), %r9
	shlq	$2, %r9
	addq	%r9, %rdi
	movslq	-212(%rbp), %r9
	shlq	$2, %r9
	addq	%r9, %rdx
	movslq	-212(%rbp), %r9
	shlq	$2, %r9
	addq	%r9, %rcx
	movslq	-212(%rbp), %r9
	shlq	$2, %r9
	addq	%r9, %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-328(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-336(%rbp), %r9         # 8-byte Reload
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	__isoc99_fscanf
	movl	%eax, -216(%rbp)
	cmpl	$4, -216(%rbp)
	je	.LBB10_30
# BB#29:                                # %if.then.43
	jmp	.LBB10_42
.LBB10_30:                              # %if.end.44
                                        #   in Loop: Header=BB10_27 Depth=1
	movl	$50, %esi
	leaq	-272(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB10_32
# BB#31:                                # %if.then.48
	jmp	.LBB10_42
.LBB10_32:                              # %if.end.49
                                        #   in Loop: Header=BB10_27 Depth=1
	leaq	-280(%rbp), %rsi
	leaq	-272(%rbp), %rdi
	callq	g_ascii_strtod
	leaq	-272(%rbp), %rsi
	movslq	-212(%rbp), %rdi
	movsd	%xmm0, -208(%rbp,%rdi,8)
	cmpq	-280(%rbp), %rsi
	je	.LBB10_34
# BB#33:                                # %lor.lhs.false.56
                                        #   in Loop: Header=BB10_27 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	jne	.LBB10_35
.LBB10_34:                              # %if.then.59
	jmp	.LBB10_42
.LBB10_35:                              # %if.end.60
                                        #   in Loop: Header=BB10_27 Depth=1
	jmp	.LBB10_36
.LBB10_36:                              # %for.inc
                                        #   in Loop: Header=BB10_27 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB10_27
.LBB10_37:                              # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$0, -212(%rbp)
.LBB10_38:                              # %for.cond.62
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -212(%rbp)
	jge	.LBB10_41
# BB#39:                                # %for.body.64
                                        #   in Loop: Header=BB10_38 Depth=1
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-212(%rbp), %rax
	cvtsi2sdl	-64(%rbp,%rax,4), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-212(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	%xmm1, 88(%rcx,%rax,8)
	movslq	-212(%rbp), %rax
	cvtsi2sdl	-96(%rbp,%rax,4), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-212(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	%xmm1, 128(%rcx,%rax,8)
	movslq	-212(%rbp), %rax
	cvtsi2sdl	-128(%rbp,%rax,4), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-212(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	%xmm1, 168(%rcx,%rax,8)
	movslq	-212(%rbp), %rax
	cvtsi2sdl	-160(%rbp,%rax,4), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-212(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	%xmm1, 208(%rcx,%rax,8)
	movslq	-212(%rbp), %rax
	movsd	-208(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-212(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 48(%rcx,%rax,8)
# BB#40:                                # %for.inc.96
                                        #   in Loop: Header=BB10_38 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB10_38
.LBB10_41:                              # %for.end.98
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movl	$1, -4(%rbp)
	jmp	.LBB10_43
.LBB10_42:                              # %error.105
	movq	-32(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark
	movabsq	$.L.str.14, %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	-356(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
.LBB10_43:                              # %return
	movl	-4(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_levels_config_load_cruft, .Lfunc_end10-gimp_levels_config_load_cruft
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.globl	gimp_levels_config_save_cruft
	.align	16, 0x90
	.type	gimp_levels_config_save_cruft,@function
gimp_levels_config_save_cruft:          # @gimp_levels_config_save_cruft
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp36:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_levels_config_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_save_cruft, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB11_28
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -48(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_save_cruft, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB11_28
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB11_20
# BB#19:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB11_21
.LBB11_20:                              # %if.then.20
	jmp	.LBB11_22
.LBB11_21:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_save_cruft, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB11_28
.LBB11_22:                              # %if.end.22
	jmp	.LBB11_23
.LBB11_23:                              # %do.end.23
	movabsq	$.L.str.11, %rsi
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$0, -52(%rbp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB11_24:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -52(%rbp)
	jge	.LBB11_27
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	$39, %esi
	movabsq	$.L.str.16, %rdx
	leaq	-128(%rbp), %rdi
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-24(%rbp), %r8
	movaps	%xmm0, %xmm1
	mulsd	88(%r8,%rcx,8), %xmm1
	cvttsd2si	%xmm1, %r9d
	movslq	-52(%rbp), %rcx
	movq	-24(%rbp), %r8
	movaps	%xmm0, %xmm1
	mulsd	128(%r8,%rcx,8), %xmm1
	cvttsd2si	%xmm1, %ecx
	movslq	-52(%rbp), %r8
	movq	-24(%rbp), %r10
	movaps	%xmm0, %xmm1
	mulsd	168(%r10,%r8,8), %xmm1
	cvttsd2si	%xmm1, %r8d
	movslq	-52(%rbp), %r10
	movq	-24(%rbp), %r11
	mulsd	208(%r11,%r10,8), %xmm0
	cvttsd2si	%xmm0, %ebx
	movslq	-52(%rbp), %r10
	movq	-24(%rbp), %r11
	movsd	48(%r11,%r10,8), %xmm0  # xmm0 = mem[0],zero
	movl	%ebx, -136(%rbp)        # 4-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.15, %rsi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-144(%rbp), %edx        # 4-byte Reload
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movl	-136(%rbp), %r9d        # 4-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	fprintf
	movl	%eax, -164(%rbp)        # 4-byte Spill
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_24
.LBB11_27:                              # %for.end
	movl	$1, -12(%rbp)
.LBB11_28:                              # %return
	movl	-12(%rbp), %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_levels_config_save_cruft, .Lfunc_end11-gimp_levels_config_save_cruft
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.globl	gimp_levels_config_to_cruft
	.align	16, 0x90
	.type	gimp_levels_config_to_cruft,@function
gimp_levels_config_to_cruft:            # @gimp_levels_config_to_cruft
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_levels_config_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_to_cruft, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_23
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_levels_config_to_cruft, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_23
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movl	$0, -24(%rbp)
.LBB12_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -24(%rbp)
	ja	.LBB12_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB12_18 Depth=1
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	48(%rdx,%rcx,8), %xmm1  # xmm1 = mem[0],zero
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movsd	%xmm1, (%rdx,%rcx,8)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movaps	%xmm0, %xmm1
	mulsd	88(%rdx,%rcx,8), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	-24(%rbp), %esi
	movl	%esi, %ecx
	movq	-16(%rbp), %rdx
	movl	%eax, 40(%rdx,%rcx,4)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movaps	%xmm0, %xmm1
	mulsd	128(%rdx,%rcx,8), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	-24(%rbp), %esi
	movl	%esi, %ecx
	movq	-16(%rbp), %rdx
	movl	%eax, 60(%rdx,%rcx,4)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movaps	%xmm0, %xmm1
	mulsd	168(%rdx,%rcx,8), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	-24(%rbp), %esi
	movl	%esi, %ecx
	movq	-16(%rbp), %rdx
	movl	%eax, 80(%rdx,%rcx,4)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	mulsd	208(%rdx,%rcx,8), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	-24(%rbp), %esi
	movl	%esi, %ecx
	movq	-16(%rbp), %rdx
	movl	%eax, 100(%rdx,%rcx,4)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB12_18 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB12_18
.LBB12_21:                              # %for.end
	cmpl	$0, -20(%rbp)
	jne	.LBB12_23
# BB#22:                                # %if.then.48
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 44(%rax)
	movq	-16(%rbp), %rax
	movl	76(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 84(%rax)
	movq	-16(%rbp), %rax
	movl	116(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 104(%rax)
.LBB12_23:                              # %if.end.69
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_levels_config_to_cruft, .Lfunc_end12-gimp_levels_config_to_cruft
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
.LCPI13_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI13_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_levels_config_class_init,@function
gimp_levels_config_class_init:          # @gimp_levels_config_class_init
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
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_levels_config_get_property, %rdi
	movabsq	$gimp_levels_config_set_property, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 160(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_histogram_channel_get_type
	movabsq	$.L.str.19, %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
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
	movabsq	$.L.str.21, %rdx
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_0, %xmm2        # xmm2 = mem[0],zero
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
	movabsq	$.L.str.22, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movl	$263, %ecx              # imm = 0x107
	movq	-16(%rbp), %rax
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movl	$263, %ecx              # imm = 0x107
	movq	-16(%rbp), %rax
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.24, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movl	$263, %ecx              # imm = 0x107
	movq	-16(%rbp), %rax
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$5, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.25, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	movl	$263, %ecx              # imm = 0x107
	movq	-16(%rbp), %rax
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$6, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_levels_config_class_init, .Lfunc_end13-gimp_levels_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_config_set_property,@function
gimp_levels_config_set_property:        # @gimp_levels_config_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB14_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_1:                               # %sw.bb
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
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	callq	g_object_notify
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	callq	g_object_notify
	jmp	.LBB14_10
.LBB14_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 48(%rcx,%rdi,8)
	jmp	.LBB14_10
.LBB14_3:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 88(%rcx,%rdi,8)
	jmp	.LBB14_10
.LBB14_4:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 128(%rcx,%rdi,8)
	jmp	.LBB14_10
.LBB14_5:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 168(%rcx,%rdi,8)
	jmp	.LBB14_10
.LBB14_6:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movl	40(%rdi), %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movsd	%xmm0, 208(%rcx,%rdi,8)
	jmp	.LBB14_10
.LBB14_7:                               # %sw.default
	jmp	.LBB14_8
.LBB14_8:                               # %do.body
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
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movl	$235, %edx
	movabsq	$.L.str.28, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB14_10
.LBB14_10:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_levels_config_set_property, .Lfunc_end14-gimp_levels_config_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_1
	.quad	.LBB14_2
	.quad	.LBB14_3
	.quad	.LBB14_4
	.quad	.LBB14_5
	.quad	.LBB14_6

	.text
	.align	16, 0x90
	.type	gimp_levels_config_get_property,@function
gimp_levels_config_get_property:        # @gimp_levels_config_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB15_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB15_10
.LBB15_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movsd	48(%rdx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB15_10
.LBB15_3:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movsd	88(%rdx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB15_10
.LBB15_4:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movsd	128(%rdx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB15_10
.LBB15_5:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movsd	168(%rdx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB15_10
.LBB15_6:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movsd	208(%rdx,%rax,8), %xmm0 # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB15_10
.LBB15_7:                               # %sw.default
	jmp	.LBB15_8
.LBB15_8:                               # %do.body
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
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movl	$190, %edx
	movabsq	$.L.str.28, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB15_10
.LBB15_10:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_levels_config_get_property, .Lfunc_end15-gimp_levels_config_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_1
	.quad	.LBB15_2
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_6

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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

	.align	16, 0x90
	.type	gimp_levels_config_serialize,@function
gimp_levels_config_serialize:           # @gimp_levels_config_serialize
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movq	%rax, -40(%rbp)
	movl	$1, -52(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	cmpl	$0, %eax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB17_15
.LBB17_2:                               # %if.end
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	$0, -44(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	ja	.LBB17_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	movabsq	$.L.str.19, %rsi
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
	je	.LBB17_10
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_3 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -65(%rbp)         # 1-byte Spill
	je	.LBB17_10
# BB#6:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB17_3 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -65(%rbp)         # 1-byte Spill
	je	.LBB17_10
# BB#7:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB17_3 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -65(%rbp)         # 1-byte Spill
	je	.LBB17_10
# BB#8:                                 # %land.lhs.true.15
                                        #   in Loop: Header=BB17_3 Depth=1
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -65(%rbp)         # 1-byte Spill
	je	.LBB17_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB17_3 Depth=1
	movabsq	$.L.str.7, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB17_10:                              # %land.end
                                        #   in Loop: Header=BB17_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB17_12
# BB#11:                                # %if.then.21
	jmp	.LBB17_14
.LBB17_12:                              # %if.end.22
                                        #   in Loop: Header=BB17_3 Depth=1
	jmp	.LBB17_13
.LBB17_13:                              # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB17_3
.LBB17_14:                              # %for.end
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_levels_config_serialize, .Lfunc_end17-gimp_levels_config_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_config_deserialize,@function
gimp_levels_config_deserialize:         # @gimp_levels_config_deserialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
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
	movabsq	$.L.str.19, %rsi
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
.Lfunc_end18:
	.size	gimp_levels_config_deserialize, .Lfunc_end18-gimp_levels_config_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_config_equal,@function
gimp_levels_config_equal:               # @gimp_levels_config_equal
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	ja	.LBB19_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	48(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	ucomisd	48(%rdx,%rcx,8), %xmm0
	jne	.LBB19_7
	jp	.LBB19_7
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	88(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	ucomisd	88(%rdx,%rcx,8), %xmm0
	jne	.LBB19_7
	jp	.LBB19_7
# BB#4:                                 # %lor.lhs.false.14
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	128(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	ucomisd	128(%rdx,%rcx,8), %xmm0
	jne	.LBB19_7
	jp	.LBB19_7
# BB#5:                                 # %lor.lhs.false.21
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	168(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	ucomisd	168(%rdx,%rcx,8), %xmm0
	jne	.LBB19_7
	jp	.LBB19_7
# BB#6:                                 # %lor.lhs.false.28
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	208(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	ucomisd	208(%rdx,%rcx,8), %xmm0
	jne	.LBB19_7
	jp	.LBB19_7
	jmp	.LBB19_8
.LBB19_7:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB19_11
.LBB19_8:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_9
.LBB19_9:                               # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB19_1
.LBB19_10:                              # %for.end
	movl	$1, -4(%rbp)
.LBB19_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_levels_config_equal, .Lfunc_end19-gimp_levels_config_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_config_reset,@function
gimp_levels_config_reset:               # @gimp_levels_config_reset
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	ja	.LBB20_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_levels_config_reset_channel
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB20_1
.LBB20_4:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_levels_config_reset, .Lfunc_end20-gimp_levels_config_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_levels_config_copy,@function
gimp_levels_config_copy:                # @gimp_levels_config_copy
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_levels_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	ja	.LBB21_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
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
	movsd	88(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 88(%rdx,%rcx,8)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	128(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 128(%rdx,%rcx,8)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	168(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 168(%rdx,%rcx,8)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsd	208(%rdx,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 208(%rdx,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB21_1
.LBB21_4:                               # %for.end
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rax
	movl	40(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_levels_config_copy, .Lfunc_end21-gimp_levels_config_copy
	.cfi_endproc

	.type	gimp_levels_config_get_type.g_define_type_id__volatile,@object # @gimp_levels_config_get_type.g_define_type_id__volatile
	.local	gimp_levels_config_get_type.g_define_type_id__volatile
	.comm	gimp_levels_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpLevelsConfig"
	.size	.L.str, 17

	.type	gimp_levels_config_get_type.g_implement_interface_info,@object # @gimp_levels_config_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_levels_config_get_type.g_implement_interface_info:
	.quad	gimp_levels_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_levels_config_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-GEGL"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_levels_config_reset_channel,@object # @__func__.gimp_levels_config_reset_channel
.L__func__.gimp_levels_config_reset_channel:
	.asciz	"gimp_levels_config_reset_channel"
	.size	.L__func__.gimp_levels_config_reset_channel, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_LEVELS_CONFIG (config)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gamma"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"low-input"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"high-input"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"low-output"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"high-output"
	.size	.L.str.7, 12

	.type	.L__func__.gimp_levels_config_stretch,@object # @__func__.gimp_levels_config_stretch
.L__func__.gimp_levels_config_stretch:
	.asciz	"gimp_levels_config_stretch"
	.size	.L__func__.gimp_levels_config_stretch, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"histogram != NULL"
	.size	.L.str.8, 18

	.type	.L__func__.gimp_levels_config_stretch_channel,@object # @__func__.gimp_levels_config_stretch_channel
.L__func__.gimp_levels_config_stretch_channel:
	.asciz	"gimp_levels_config_stretch_channel"
	.size	.L__func__.gimp_levels_config_stretch_channel, 35

	.type	.L__func__.gimp_levels_config_adjust_by_colors,@object # @__func__.gimp_levels_config_adjust_by_colors
.L__func__.gimp_levels_config_adjust_by_colors:
	.asciz	"gimp_levels_config_adjust_by_colors"
	.size	.L__func__.gimp_levels_config_adjust_by_colors, 36

	.type	.L__func__.gimp_levels_config_to_curves_config,@object # @__func__.gimp_levels_config_to_curves_config
.L__func__.gimp_levels_config_to_curves_config:
	.asciz	"gimp_levels_config_to_curves_config"
	.size	.L__func__.gimp_levels_config_to_curves_config, 36

	.type	gimp_levels_config_to_curves_config.n,@object # @gimp_levels_config_to_curves_config.n
	.section	.rodata,"a",@progbits
	.align	4
gimp_levels_config_to_curves_config.n:
	.long	4                       # 0x4
	.size	gimp_levels_config_to_curves_config.n, 4

	.type	.L__func__.gimp_levels_config_load_cruft,@object # @__func__.gimp_levels_config_load_cruft
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_levels_config_load_cruft:
	.asciz	"gimp_levels_config_load_cruft"
	.size	.L__func__.gimp_levels_config_load_cruft, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file != NULL"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"# GIMP Levels File\n"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"not a GIMP Levels file"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%d %d %d %d "
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"parse error"
	.size	.L.str.14, 12

	.type	.L__func__.gimp_levels_config_save_cruft,@object # @__func__.gimp_levels_config_save_cruft
.L__func__.gimp_levels_config_save_cruft:
	.asciz	"gimp_levels_config_save_cruft"
	.size	.L__func__.gimp_levels_config_save_cruft, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%d %d %d %d %s\n"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%f"
	.size	.L.str.16, 3

	.type	.L__func__.gimp_levels_config_to_cruft,@object # @__func__.gimp_levels_config_to_cruft
.L__func__.gimp_levels_config_to_cruft:
	.asciz	"gimp_levels_config_to_cruft"
	.size	.L__func__.gimp_levels_config_to_cruft, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"cruft != NULL"
	.size	.L.str.17, 14

	.type	gimp_levels_config_parent_class,@object # @gimp_levels_config_parent_class
	.local	gimp_levels_config_parent_class
	.comm	gimp_levels_config_parent_class,8,8
	.type	GimpLevelsConfig_private_offset,@object # @GimpLevelsConfig_private_offset
	.local	GimpLevelsConfig_private_offset
	.comm	GimpLevelsConfig_private_offset,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-tool-levels"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"channel"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The affected channel"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Gamma"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Low Input"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"High Input"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Low Output"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"High Output"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.26, 54

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimplevelsconfig.c"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"property"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"time"
	.size	.L.str.29, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
