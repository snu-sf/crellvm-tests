	.text
	.file	"gimpdisplayconfig.bc"
	.globl	gimp_display_config_get_type
	.align	16, 0x90
	.type	gimp_display_config_get_type,@function
gimp_display_config_get_type:           # @gimp_display_config_get_type
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
	movq	gimp_display_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_display_config_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_core_config_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$136, %edx
	movabsq	$gimp_display_config_class_intern_init, %rdi
	movl	$568, %r8d              # imm = 0x238
	movabsq	$gimp_display_config_init, %rcx
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
	movabsq	$gimp_display_config_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_display_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_config_get_type, .Lfunc_end0-gimp_display_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_config_class_intern_init,@function
gimp_display_config_class_intern_init:  # @gimp_display_config_class_intern_init
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
	movq	%rax, gimp_display_config_parent_class
	cmpl	$0, GimpDisplayConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDisplayConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_display_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_config_class_intern_init, .Lfunc_end1-gimp_display_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_config_init,@function
gimp_display_config_init:               # @gimp_display_config_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_display_options_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.67, %rsi
	movabsq	$gimp_display_config_view_notify, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 520(%rdx)
	movq	-8(%rbp), %rax
	movq	520(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_display_options_get_type
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.67, %rsi
	movabsq	$gimp_display_config_fullscreen_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 528(%rdx)
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_config_init, .Lfunc_end2-gimp_display_config_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI3_1:
	.quad	4679240012837945344     # double 65536
.LCPI3_2:
	.quad	4636455816377925632     # double 96
	.text
	.align	16, 0x90
	.type	gimp_display_config_class_init,@function
gimp_display_config_class_init:         # @gimp_display_config_class_init
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
	subq	$352, %rsp              # imm = 0x160
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_display_config_get_property, %rsi
	movabsq	$gimp_display_config_set_property, %rdi
	movabsq	$gimp_display_config_finalize, %rcx
	xorl	%edx, %edx
	movl	$32, %r8d
	movl	%r8d, %r9d
	leaq	-48(%rbp), %r10
	movq	%rax, -16(%rbp)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movq	%r9, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	memset
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_check_size_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.2, %rdx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_check_type_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.4, %rdx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.6, %rdx
	movl	$1, %ecx
	movl	$255, %r8d
	movl	$8, %r9d
	movl	$487, %r11d             # imm = 0x1E7
	movq	-16(%rbp), %rax
	movl	$487, (%rsp)            # imm = 0x1E7
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r11d, -100(%rbp)       # 4-byte Spill
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.8, %rdx
	movl	$10, %ecx
	movl	$10000, %r8d            # imm = 0x2710
	movl	$200, %r9d
	movl	$487, %r11d             # imm = 0x1E7
	movq	-16(%rbp), %rax
	movl	$487, (%rsp)            # imm = 0x1E7
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$6, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.14, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$7, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.15, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.16, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$8, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.18, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$9, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_cursor_mode_get_type
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$10, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.21, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.22, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$11, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.23, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.24, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$12, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.25, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.26, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$13, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.27, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$14, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.30, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.31, %rdx
	movabsq	$.L.str.32, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$15, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.33, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.34, %rdx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$16, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.35, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.36, %rdx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$17, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.37, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.38, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$18, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_view_size_get_type
	movabsq	$.L.str.39, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.40, %rdx
	movl	$32, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$19, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_display_options_get_type
	movabsq	$.L.str.41, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.42, %rdx
	movl	$995, %r8d              # imm = 0x3E3
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$20, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gimp_display_options_get_type
	movabsq	$.L.str.43, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.44, %rdx
	movl	$995, %r8d              # imm = 0x3E3
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$21, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.45, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.46, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$22, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.47, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.48, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$23, %esi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.49, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.50, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$24, %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.51, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.52, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$25, %esi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.53, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.54, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$26, %esi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	callq	gimp_space_bar_action_get_type
	movabsq	$.L.str.55, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.56, %rdx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$27, %esi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gimp_zoom_quality_get_type
	movabsq	$.L.str.57, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.58, %rdx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$28, %esi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.59, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.60, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$29, %esi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.61, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$8679, %r8d             # imm = 0x21E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$30, %esi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.62, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	leaq	-48(%rbp), %r8
	movl	$8679, %r9d             # imm = 0x21E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	gimp_param_spec_rgb
	movl	$31, %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_config_class_init, .Lfunc_end3-gimp_display_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_config_finalize,@function
gimp_display_config_finalize:           # @gimp_display_config_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	480(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	488(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	cmpq	$0, 520(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	520(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 528(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_4:                                # %if.end.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_display_config_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_config_finalize, .Lfunc_end4-gimp_display_config_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_config_set_property,@function
gimp_display_config_set_property:       # @gimp_display_config_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$30, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB5_35
# BB#39:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 424(%rdi)
	jmp	.LBB5_38
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 428(%rdi)
	jmp	.LBB5_38
.LBB5_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 432(%rdi)
	jmp	.LBB5_38
.LBB5_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 436(%rdi)
	jmp	.LBB5_38
.LBB5_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 440(%rdi)
	jmp	.LBB5_38
.LBB5_6:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 444(%rdi)
	jmp	.LBB5_38
.LBB5_7:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 448(%rdi)
	jmp	.LBB5_38
.LBB5_8:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 452(%rdi)
	jmp	.LBB5_38
.LBB5_9:                                # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 456(%rdi)
	jmp	.LBB5_38
.LBB5_10:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 460(%rdi)
	jmp	.LBB5_38
.LBB5_11:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 464(%rdi)
	jmp	.LBB5_38
.LBB5_12:                               # %sw.bb.23
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 468(%rdi)
	jmp	.LBB5_38
.LBB5_13:                               # %sw.bb.25
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 472(%rdi)
	jmp	.LBB5_38
.LBB5_14:                               # %sw.bb.27
	movq	-40(%rbp), %rax
	movq	480(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 480(%rdi)
	jmp	.LBB5_38
.LBB5_15:                               # %sw.bb.30
	movq	-40(%rbp), %rax
	movq	488(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 488(%rdi)
	jmp	.LBB5_38
.LBB5_16:                               # %sw.bb.33
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 496(%rdi)
	jmp	.LBB5_38
.LBB5_17:                               # %sw.bb.35
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 504(%rdi)
	jmp	.LBB5_38
.LBB5_18:                               # %sw.bb.37
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 512(%rdi)
	jmp	.LBB5_38
.LBB5_19:                               # %sw.bb.39
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 516(%rdi)
	jmp	.LBB5_38
.LBB5_20:                               # %sw.bb.41
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	cmpq	$0, %rax
	je	.LBB5_22
# BB#21:                                # %if.then
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	520(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB5_22:                               # %if.end
	jmp	.LBB5_38
.LBB5_23:                               # %sw.bb.46
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	cmpq	$0, %rax
	je	.LBB5_25
# BB#24:                                # %if.then.49
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	528(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB5_25:                               # %if.end.53
	jmp	.LBB5_38
.LBB5_26:                               # %sw.bb.54
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 536(%rdi)
	jmp	.LBB5_38
.LBB5_27:                               # %sw.bb.56
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 540(%rdi)
	jmp	.LBB5_38
.LBB5_28:                               # %sw.bb.58
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 544(%rdi)
	jmp	.LBB5_38
.LBB5_29:                               # %sw.bb.60
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 548(%rdi)
	jmp	.LBB5_38
.LBB5_30:                               # %sw.bb.62
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 552(%rdi)
	jmp	.LBB5_38
.LBB5_31:                               # %sw.bb.64
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 556(%rdi)
	jmp	.LBB5_38
.LBB5_32:                               # %sw.bb.66
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 560(%rdi)
	jmp	.LBB5_38
.LBB5_33:                               # %sw.bb.68
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 564(%rdi)
	jmp	.LBB5_38
.LBB5_34:                               # %sw.bb.70
	jmp	.LBB5_38
.LBB5_35:                               # %sw.default
	jmp	.LBB5_36
.LBB5_36:                               # %do.body
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
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.63, %rdi
	movabsq	$.L.str.64, %rsi
	movl	$424, %edx              # imm = 0x1A8
	movabsq	$.L.str.65, %rcx
	movl	-120(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#37:                                # %do.end
	jmp	.LBB5_38
.LBB5_38:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_config_set_property, .Lfunc_end5-gimp_display_config_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_2
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5
	.quad	.LBB5_6
	.quad	.LBB5_7
	.quad	.LBB5_8
	.quad	.LBB5_9
	.quad	.LBB5_10
	.quad	.LBB5_11
	.quad	.LBB5_12
	.quad	.LBB5_13
	.quad	.LBB5_14
	.quad	.LBB5_15
	.quad	.LBB5_16
	.quad	.LBB5_17
	.quad	.LBB5_18
	.quad	.LBB5_19
	.quad	.LBB5_20
	.quad	.LBB5_23
	.quad	.LBB5_26
	.quad	.LBB5_27
	.quad	.LBB5_28
	.quad	.LBB5_29
	.quad	.LBB5_30
	.quad	.LBB5_31
	.quad	.LBB5_32
	.quad	.LBB5_33
	.quad	.LBB5_34
	.quad	.LBB5_34

	.text
	.align	16, 0x90
	.type	gimp_display_config_get_property,@function
gimp_display_config_get_property:       # @gimp_display_config_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$30, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_31
# BB#35:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	424(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_34
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	428(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_34
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	432(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_34
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	436(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_34
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	440(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	444(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_7:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	448(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_8:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	452(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_9:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	456(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_10:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	460(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_34
.LBB6_11:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	464(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_12:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	468(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_13:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	472(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_14:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	480(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_34
.LBB6_15:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	488(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_34
.LBB6_16:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	496(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_34
.LBB6_17:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	504(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_34
.LBB6_18:                               # %sw.bb.18
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	512(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_19:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	516(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_34
.LBB6_20:                               # %sw.bb.20
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	520(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB6_34
.LBB6_21:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB6_34
.LBB6_22:                               # %sw.bb.22
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	536(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_23:                               # %sw.bb.23
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	540(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_24:                               # %sw.bb.24
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	544(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_25:                               # %sw.bb.25
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	548(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_26:                               # %sw.bb.26
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	552(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_27:                               # %sw.bb.27
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	556(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_34
.LBB6_28:                               # %sw.bb.28
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	560(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_34
.LBB6_29:                               # %sw.bb.29
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	564(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_34
.LBB6_30:                               # %sw.bb.30
	jmp	.LBB6_34
.LBB6_31:                               # %sw.default
	jmp	.LBB6_32
.LBB6_32:                               # %do.body
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
	movabsq	$.L.str.63, %rdi
	movabsq	$.L.str.64, %rsi
	movl	$533, %edx              # imm = 0x215
	movabsq	$.L.str.65, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#33:                                # %do.end
	jmp	.LBB6_34
.LBB6_34:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_config_get_property, .Lfunc_end6-gimp_display_config_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_8
	.quad	.LBB6_9
	.quad	.LBB6_10
	.quad	.LBB6_11
	.quad	.LBB6_12
	.quad	.LBB6_13
	.quad	.LBB6_14
	.quad	.LBB6_15
	.quad	.LBB6_16
	.quad	.LBB6_17
	.quad	.LBB6_18
	.quad	.LBB6_19
	.quad	.LBB6_20
	.quad	.LBB6_21
	.quad	.LBB6_22
	.quad	.LBB6_23
	.quad	.LBB6_24
	.quad	.LBB6_25
	.quad	.LBB6_26
	.quad	.LBB6_27
	.quad	.LBB6_28
	.quad	.LBB6_29
	.quad	.LBB6_30
	.quad	.LBB6_30

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB7_2
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
.LBB7_2:                                # %entry
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
	movl	$.L.str.66, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_warning, .Lfunc_end7-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_config_view_notify,@function
gimp_display_config_view_notify:        # @gimp_display_config_view_notify
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_config_view_notify, .Lfunc_end8-gimp_display_config_view_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_config_fullscreen_notify,@function
gimp_display_config_fullscreen_notify:  # @gimp_display_config_fullscreen_notify
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_config_fullscreen_notify, .Lfunc_end9-gimp_display_config_fullscreen_notify
	.cfi_endproc

	.type	gimp_display_config_get_type.g_define_type_id__volatile,@object # @gimp_display_config_get_type.g_define_type_id__volatile
	.local	gimp_display_config_get_type.g_define_type_id__volatile
	.comm	gimp_display_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDisplayConfig"
	.size	.L.str, 18

	.type	gimp_display_config_parent_class,@object # @gimp_display_config_parent_class
	.local	gimp_display_config_parent_class
	.comm	gimp_display_config_parent_class,8,8
	.type	GimpDisplayConfig_private_offset,@object # @GimpDisplayConfig_private_offset
	.local	GimpDisplayConfig_private_offset
	.comm	GimpDisplayConfig_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"transparency-size"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Sets the size of the checkerboard used to display transparency."
	.size	.L.str.2, 64

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"transparency-type"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Sets the manner in which transparency is displayed in images."
	.size	.L.str.4, 62

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"snap-distance"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"This is the distance in pixels where Guide and Grid snapping activates."
	.size	.L.str.6, 72

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"marching-ants-speed"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Speed of marching ants in the selection outline.  This value is in milliseconds (less time indicates faster marching)."
	.size	.L.str.8, 119

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"resize-windows-on-zoom"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"When enabled, the image window will automatically resize itself when zooming into and out of images."
	.size	.L.str.10, 101

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"resize-windows-on-resize"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"When enabled, the image window will automatically resize itself whenever the physical image size changes."
	.size	.L.str.12, 106

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"default-dot-for-dot"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"When enabled, this will ensure that each pixel of an image gets mapped to a pixel on the screen."
	.size	.L.str.14, 97

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"initial-zoom-to-fit"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"When enabled, this will ensure that the full image is visible after a file is opened, otherwise it will be displayed with a scale of 1:1."
	.size	.L.str.16, 138

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"perfect-mouse"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"When enabled, the X server is queried for the mouse's current position on each motion event, rather than relying on the position hint.  This means painting with large brushes should be more accurate, but it may be slower.  Conversely, on some X servers enabling this option results in faster painting."
	.size	.L.str.18, 302

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"cursor-mode"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Sets the type of mouse pointers to use."
	.size	.L.str.20, 40

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"cursor-updating"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Context-dependent mouse pointers are helpful.  They are enabled by default.  However, they require overhead that you may want to do without."
	.size	.L.str.22, 141

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"show-brush-outline"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"When enabled, all paint tools will show a preview of the current brush's outline."
	.size	.L.str.24, 82

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"show-paint-tool-cursor"
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"When enabled, the mouse pointer will be shown over the image while using a paint tool."
	.size	.L.str.26, 87

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"image-title-format"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Sets the text to appear in image window titles."
	.size	.L.str.28, 48

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%D*%f-%p.%i (%t, %L) %wx%h"
	.size	.L.str.29, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"image-status-format"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Sets the text to appear in image window status bars."
	.size	.L.str.31, 53

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%n (%m)"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"monitor-xresolution"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Sets the monitor's horizontal resolution, in dots per inch.  If set to 0, forces the X server to be queried for both horizontal and vertical resolution information."
	.size	.L.str.34, 165

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"monitor-yresolution"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Sets the monitor's vertical resolution, in dots per inch.  If set to 0, forces the X server to be queried for both horizontal and vertical resolution information."
	.size	.L.str.36, 163

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"monitor-resolution-from-windowing-system"
	.size	.L.str.37, 41

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"When enabled, GIMP will use the monitor resolution from the windowing system."
	.size	.L.str.38, 78

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"navigation-preview-size"
	.size	.L.str.39, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Sets the size of the navigation preview available in the lower right corner of the image window."
	.size	.L.str.40, 97

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"default-view"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Sets the default settings for the image view."
	.size	.L.str.42, 46

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"default-fullscreen-view"
	.size	.L.str.43, 24

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Sets the default settings used when an image is viewed in fullscreen mode."
	.size	.L.str.44, 75

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"default-snap-to-guides"
	.size	.L.str.45, 23

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Snap to guides by default in new image windows."
	.size	.L.str.46, 48

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"default-snap-to-grid"
	.size	.L.str.47, 21

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Snap to the grid by default in new image windows."
	.size	.L.str.48, 50

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"default-snap-to-canvas"
	.size	.L.str.49, 23

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Snap to the canvas edge by default in new image windows."
	.size	.L.str.50, 57

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"default-snap-to-path"
	.size	.L.str.51, 21

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Snap to the active path by default in new image windows."
	.size	.L.str.52, 57

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"activate-on-focus"
	.size	.L.str.53, 18

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"When enabled, an image will become the active image when its image window receives the focus. This is useful for window managers using \"click to focus\"."
	.size	.L.str.54, 153

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"space-bar-action"
	.size	.L.str.55, 17

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"What to do when the space bar is pressed in the image window."
	.size	.L.str.56, 62

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"zoom-quality"
	.size	.L.str.57, 13

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"There's a tradeoff between speed and quality of the zoomed-out display."
	.size	.L.str.58, 72

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"use-event-history"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Bugs in event history buffer are frequent so in case of cursor offset problems turning it off helps."
	.size	.L.str.60, 101

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"confirm-on-close"
	.size	.L.str.61, 17

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"xor-color"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.63, 54

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimpdisplayconfig.c"
	.size	.L.str.64, 20

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"property"
	.size	.L.str.65, 9

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Gimp-Config"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"notify"
	.size	.L.str.67, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
