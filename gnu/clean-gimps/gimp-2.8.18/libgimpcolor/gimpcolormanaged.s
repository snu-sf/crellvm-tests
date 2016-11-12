	.text
	.file	"gimpcolormanaged.bc"
	.globl	gimp_color_managed_interface_get_type
	.align	16, 0x90
	.type	gimp_color_managed_interface_get_type,@function
gimp_color_managed_interface_get_type:  # @gimp_color_managed_interface_get_type
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
	cmpq	$0, gimp_color_managed_interface_get_type.iface_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	leaq	gimp_color_managed_interface_get_type.iface_info(%rip), %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, gimp_color_managed_interface_get_type.iface_type(%rip)
	movq	gimp_color_managed_interface_get_type.iface_type(%rip), %rdi
	callq	g_type_interface_add_prerequisite@PLT
.LBB0_2:                                # %if.end
	movq	gimp_color_managed_interface_get_type.iface_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_managed_interface_get_type, .Lfunc_end0-gimp_color_managed_interface_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_managed_base_init,@function
gimp_color_managed_base_init:           # @gimp_color_managed_base_init
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, gimp_color_managed_base_init.initialized(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.4(%rip), %rdi
	movl	$1, %edx
	movl	$24, %ecx
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r8
	movl	$4, %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
	movq	-8(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-16(%rbp), %r10         # 8-byte Reload
	movq	%r8, -24(%rbp)          # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-24(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_signal_new@PLT
	movl	%eax, gimp_color_managed_signals(%rip)
	movq	-8(%rbp), %rsi
	movq	$0, 16(%rsi)
	movq	-8(%rbp), %rsi
	movq	$0, 24(%rsi)
	movl	$1, gimp_color_managed_base_init.initialized(%rip)
.LBB1_2:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_managed_base_init, .Lfunc_end1-gimp_color_managed_base_init
	.cfi_endproc

	.globl	gimp_color_managed_get_icc_profile
	.align	16, 0x90
	.type	gimp_color_managed_get_icc_profile,@function
gimp_color_managed_get_icc_profile:     # @gimp_color_managed_get_icc_profile
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_color_managed_interface_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_managed_get_icc_profile(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_20
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_managed_get_icc_profile(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_20
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_managed_interface_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_19
# BB#18:                                # %if.then.21
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.end.24
	movq	$0, -8(%rbp)
.LBB2_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_managed_get_icc_profile, .Lfunc_end2-gimp_color_managed_get_icc_profile
	.cfi_endproc

	.globl	gimp_color_managed_profile_changed
	.align	16, 0x90
	.type	gimp_color_managed_profile_changed,@function
gimp_color_managed_profile_changed:     # @gimp_color_managed_profile_changed
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_color_managed_interface_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_managed_profile_changed(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_color_managed_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB3_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_managed_profile_changed, .Lfunc_end3-gimp_color_managed_profile_changed
	.cfi_endproc

	.type	gimp_color_managed_interface_get_type.iface_type,@object # @gimp_color_managed_interface_get_type.iface_type
	.local	gimp_color_managed_interface_get_type.iface_type
	.comm	gimp_color_managed_interface_get_type.iface_type,8,8
	.type	gimp_color_managed_interface_get_type.iface_info,@object # @gimp_color_managed_interface_get_type.iface_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_color_managed_interface_get_type.iface_info:
	.short	32                      # 0x20
	.zero	6
	.quad	gimp_color_managed_base_init
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_color_managed_interface_get_type.iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorManagedInterface"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpColor"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_color_managed_get_icc_profile,@object # @__func__.gimp_color_managed_get_icc_profile
.L__func__.gimp_color_managed_get_icc_profile:
	.asciz	"gimp_color_managed_get_icc_profile"
	.size	.L__func__.gimp_color_managed_get_icc_profile, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COLOR_MANAGED (managed)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"len != NULL"
	.size	.L.str.3, 12

	.type	.L__func__.gimp_color_managed_profile_changed,@object # @__func__.gimp_color_managed_profile_changed
.L__func__.gimp_color_managed_profile_changed:
	.asciz	"gimp_color_managed_profile_changed"
	.size	.L__func__.gimp_color_managed_profile_changed, 35

	.type	gimp_color_managed_signals,@object # @gimp_color_managed_signals
	.local	gimp_color_managed_signals
	.comm	gimp_color_managed_signals,4,4
	.type	gimp_color_managed_base_init.initialized,@object # @gimp_color_managed_base_init.initialized
	.local	gimp_color_managed_base_init.initialized
	.comm	gimp_color_managed_base_init.initialized,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"profile-changed"
	.size	.L.str.4, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
