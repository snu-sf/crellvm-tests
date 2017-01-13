	.text
	.file	"gimpcoreconfig.bc"
	.globl	gimp_core_config_get_type
	.align	16, 0x90
	.type	gimp_core_config_get_type,@function
gimp_core_config_get_type:              # @gimp_core_config_get_type
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
	movq	gimp_core_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_core_config_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_base_config_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$136, %edx
	movabsq	$gimp_core_config_class_intern_init, %rdi
	movl	$424, %r8d              # imm = 0x1A8
	movabsq	$gimp_core_config_init, %rcx
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
	movabsq	$gimp_core_config_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_core_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_core_config_get_type, .Lfunc_end0-gimp_core_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_core_config_class_intern_init,@function
gimp_core_config_class_intern_init:     # @gimp_core_config_class_intern_init
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
	movq	%rax, gimp_core_config_parent_class
	cmpl	$0, GimpCoreConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCoreConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_core_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_core_config_class_intern_init, .Lfunc_end1-gimp_core_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_core_config_init,@function
gimp_core_config_init:                  # @gimp_core_config_init
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
	movq	%rdi, -8(%rbp)
	callq	gimp_template_get_type
	movabsq	$.L.str.119, %rsi
	movabsq	$.L.str.120, %rdx
	movabsq	$.L.str.121, %rcx
	movabsq	$.L.str.122, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.123, %rsi
	movabsq	$gimp_core_config_default_image_notify, %rcx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 296(%rdx)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-16(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_grid_get_type
	movabsq	$.L.str.119, %rsi
	movabsq	$.L.str.124, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.123, %rsi
	movabsq	$gimp_core_config_default_grid_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_config_get_type
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.123, %rsi
	movabsq	$gimp_core_config_color_management_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 368(%rdx)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_core_config_init, .Lfunc_end2-gimp_core_config_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_core_config_class_init,@function
gimp_core_config_class_init:            # @gimp_core_config_class_init
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
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp12:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.2, %rdx
	movl	$1511, %r8d             # imm = 0x5E7
	movabsq	$gimp_core_config_get_property, %r9
	movabsq	$gimp_core_config_set_property, %r10
	movabsq	$gimp_core_config_finalize, %r11
	movq	%rax, -24(%rbp)
	movq	.Lgimp_core_config_class_init.red, %rax
	movq	%rax, -64(%rbp)
	movq	.Lgimp_core_config_class_init.red+8, %rax
	movq	%rax, -56(%rbp)
	movq	.Lgimp_core_config_class_init.red+16, %rax
	movq	%rax, -48(%rbp)
	movq	.Lgimp_core_config_class_init.red+24, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.4, %rdx
	movl	$2, %r8d
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
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$15, %r9d
	movl	$487, %ebx              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movl	$487, (%rsp)            # imm = 0x1E7
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	callq	gimp_config_build_plug_in_path
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.9, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$4, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.10, %rdi
	callq	gimp_config_build_plug_in_path
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$5, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.13, %rdi
	callq	gimp_config_build_plug_in_path
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.15, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$6, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.16, %rdi
	callq	gimp_config_build_plug_in_path
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.18, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$7, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.19, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.21, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$8, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.19, %rdi
	callq	gimp_config_build_writable_path
	movabsq	$.L.str.22, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$9, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.24, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.25, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.26, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$10, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.24, %rdi
	callq	gimp_config_build_writable_path
	movabsq	$.L.str.27, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$11, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.28, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.29, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.30, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$12, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.28, %rdi
	callq	gimp_config_build_writable_path
	movabsq	$.L.str.31, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$13, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.32, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.33, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.34, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$14, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.32, %rdi
	callq	gimp_config_build_writable_path
	movabsq	$.L.str.35, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$15, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.36, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.37, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.38, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$16, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.36, %rdi
	callq	gimp_config_build_writable_path
	movabsq	$.L.str.39, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$17, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.40, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.41, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.26, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$18, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.40, %rdi
	callq	gimp_config_build_writable_path
	movabsq	$.L.str.42, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$19, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.43, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.44, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.45, %rdx
	movl	$3, %ecx
	movl	$2535, %r9d             # imm = 0x9E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$20, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.46, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$3, %ecx
	movl	$8679, %r9d             # imm = 0x21E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %r8
	callq	gimp_param_spec_config_path
	movl	$21, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.47, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.48, %rdx
	movabsq	$.L.str.49, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$22, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.50, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.51, %rdx
	movabsq	$.L.str.52, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$23, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.53, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.54, %rdx
	movabsq	$.L.str.55, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$24, %esi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.56, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.57, %rdx
	movabsq	$.L.str.58, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$25, %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.59, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.60, %rdx
	movabsq	$.L.str.61, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$26, %esi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.62, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.63, %rdx
	movabsq	$.L.str.64, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$27, %esi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.65, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.66, %rdx
	movabsq	$.L.str.67, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$28, %esi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.68, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.69, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$29, %esi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.70, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.71, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$30, %esi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.72, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.73, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$31, %esi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.74, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.75, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$32, %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.76, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.77, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$33, %esi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.78, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.79, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$34, %esi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	callq	gimp_template_get_type
	movabsq	$.L.str.80, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.81, %rdx
	movl	$995, %r8d              # imm = 0x3E3
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$35, %esi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	gimp_grid_get_type
	movabsq	$.L.str.82, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.83, %rdx
	movl	$995, %r8d              # imm = 0x3E3
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$36, %esi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.84, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.85, %rdx
	xorl	%ecx, %ecx
	movl	$1048576, %r8d          # imm = 0x100000
	movl	$5, %r9d
	movl	$2535, %ebx             # imm = 0x9E7
	movq	-24(%rbp), %rax
	movl	$2535, (%rsp)           # imm = 0x9E7
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movl	%ebx, -380(%rbp)        # 4-byte Spill
	callq	g_param_spec_int
	movl	$37, %esi
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.86, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movabsq	$.L.str.87, %rdx
	movabsq	$4398046511104, %r8     # imm = 0x40000000000
	movl	$67108864, %ecx         # imm = 0x4000000
	movl	%ecx, %r9d
	movl	$2535, %ecx             # imm = 0x9E7
	movq	-24(%rbp), %r10
	movq	%rax, %rsi
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$2535, (%rsp)           # imm = 0x9E7
	movq	%r10, -392(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_memsize
	movl	$38, %esi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	callq	gimp_view_size_get_type
	movabsq	$.L.str.88, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.89, %rdx
	movl	$48, %r8d
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$39, %esi
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.90, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.91, %rdx
	xorl	%ecx, %ecx
	movl	$256, %r8d              # imm = 0x100
	movl	$10, %r9d
	movl	$1511, %ebx             # imm = 0x5E7
	movq	-24(%rbp), %rax
	movl	$1511, (%rsp)           # imm = 0x5E7
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movl	%ebx, -412(%rbp)        # 4-byte Spill
	callq	g_param_spec_int
	movl	$40, %esi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.92, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.93, %rdx
	xorl	%ecx, %ecx
	movabsq	$.L.str.94, %r8
	movl	$1511, %r9d             # imm = 0x5E7
	movq	-24(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$41, %esi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.95, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.96, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$42, %esi
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gimp_view_size_get_type
	movabsq	$.L.str.97, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.98, %rdx
	movl	$32, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$43, %esi
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gimp_thumbnail_size_get_type
	movabsq	$.L.str.99, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.100, %rdx
	movl	$128, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$44, %esi
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.101, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movabsq	$.L.str.102, %rdx
	movabsq	$4398046511104, %r8     # imm = 0x40000000000
	movl	$4194304, %esi          # imm = 0x400000
	movl	%esi, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-24(%rbp), %rcx
	movl	%esi, -452(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	gimp_param_spec_memsize
	movl	$45, %esi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	callq	gimp_color_config_get_type
	movabsq	$.L.str.103, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.104, %rdx
	movl	$995, %r8d              # imm = 0x3E3
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$46, %esi
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	callq	gimp_color_profile_policy_get_type
	movabsq	$.L.str.105, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.106, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$47, %esi
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.107, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.108, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$48, %esi
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.109, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.110, %rdx
	movl	$1, %ecx
	leaq	-64(%rbp), %r8
	movl	$487, %r9d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_rgb
	movl	$49, %esi
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.111, %rdi
	movabsq	$.L.str.112, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	$231, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$50, %esi
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.113, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$8679, %r8d             # imm = 0x21E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$51, %esi
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.114, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$27, %ecx
	movl	$256, %r8d              # imm = 0x100
	movl	$144, %r9d
	movl	$8679, %esi             # imm = 0x21E7
	movq	-24(%rbp), %rdx
	movl	%esi, -516(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$8679, (%rsp)           # imm = 0x21E7
	callq	g_param_spec_int
	movl	$52, %esi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_core_config_class_init, .Lfunc_end3-gimp_core_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_core_config_finalize,@function
gimp_core_config_finalize:              # @gimp_core_config_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_core_config_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	208(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	216(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	224(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	232(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	248(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	264(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	336(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_4:                                # %if.end.6
	movq	-16(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB4_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_6:                                # %if.end.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_core_config_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_core_config_finalize, .Lfunc_end4-gimp_core_config_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_core_config_set_property,@function
gimp_core_config_set_property:          # @gimp_core_config_set_property
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_core_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$51, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB5_58
# BB#62:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 56(%rdi)
	jmp	.LBB5_61
.LBB5_2:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 64(%rdi)
	jmp	.LBB5_61
.LBB5_3:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 68(%rdi)
	jmp	.LBB5_61
.LBB5_4:                                # %sw.bb.8
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 72(%rdi)
	jmp	.LBB5_61
.LBB5_5:                                # %sw.bb.11
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 80(%rdi)
	jmp	.LBB5_61
.LBB5_6:                                # %sw.bb.14
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 88(%rdi)
	jmp	.LBB5_61
.LBB5_7:                                # %sw.bb.17
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 96(%rdi)
	jmp	.LBB5_61
.LBB5_8:                                # %sw.bb.20
	movq	-40(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 104(%rdi)
	jmp	.LBB5_61
.LBB5_9:                                # %sw.bb.23
	movq	-40(%rbp), %rax
	movq	112(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 112(%rdi)
	jmp	.LBB5_61
.LBB5_10:                               # %sw.bb.26
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 120(%rdi)
	jmp	.LBB5_61
.LBB5_11:                               # %sw.bb.29
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB5_61
.LBB5_12:                               # %sw.bb.32
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 136(%rdi)
	jmp	.LBB5_61
.LBB5_13:                               # %sw.bb.35
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 144(%rdi)
	jmp	.LBB5_61
.LBB5_14:                               # %sw.bb.38
	movq	-40(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 152(%rdi)
	jmp	.LBB5_61
.LBB5_15:                               # %sw.bb.41
	movq	-40(%rbp), %rax
	movq	160(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 160(%rdi)
	jmp	.LBB5_61
.LBB5_16:                               # %sw.bb.44
	movq	-40(%rbp), %rax
	movq	168(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 168(%rdi)
	jmp	.LBB5_61
.LBB5_17:                               # %sw.bb.47
	movq	-40(%rbp), %rax
	movq	176(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 176(%rdi)
	jmp	.LBB5_61
.LBB5_18:                               # %sw.bb.50
	movq	-40(%rbp), %rax
	movq	184(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 184(%rdi)
	jmp	.LBB5_61
.LBB5_19:                               # %sw.bb.53
	movq	-40(%rbp), %rax
	movq	192(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 192(%rdi)
	jmp	.LBB5_61
.LBB5_20:                               # %sw.bb.56
	movq	-40(%rbp), %rax
	movq	200(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 200(%rdi)
	jmp	.LBB5_61
.LBB5_21:                               # %sw.bb.59
	movq	-40(%rbp), %rax
	movq	208(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 208(%rdi)
	jmp	.LBB5_61
.LBB5_22:                               # %sw.bb.62
	movq	-40(%rbp), %rax
	movq	216(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 216(%rdi)
	jmp	.LBB5_61
.LBB5_23:                               # %sw.bb.65
	movq	-40(%rbp), %rax
	movq	224(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 224(%rdi)
	jmp	.LBB5_61
.LBB5_24:                               # %sw.bb.68
	movq	-40(%rbp), %rax
	movq	232(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 232(%rdi)
	jmp	.LBB5_61
.LBB5_25:                               # %sw.bb.71
	movq	-40(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 240(%rdi)
	jmp	.LBB5_61
.LBB5_26:                               # %sw.bb.74
	movq	-40(%rbp), %rax
	movq	256(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 256(%rdi)
	jmp	.LBB5_61
.LBB5_27:                               # %sw.bb.77
	movq	-40(%rbp), %rax
	movq	248(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 248(%rdi)
	jmp	.LBB5_61
.LBB5_28:                               # %sw.bb.80
	movq	-40(%rbp), %rax
	movq	264(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 264(%rdi)
	jmp	.LBB5_61
.LBB5_29:                               # %sw.bb.83
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 272(%rdi)
	jmp	.LBB5_61
.LBB5_30:                               # %sw.bb.85
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 276(%rdi)
	jmp	.LBB5_61
.LBB5_31:                               # %sw.bb.87
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 280(%rdi)
	jmp	.LBB5_61
.LBB5_32:                               # %sw.bb.89
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 284(%rdi)
	jmp	.LBB5_61
.LBB5_33:                               # %sw.bb.91
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 288(%rdi)
	jmp	.LBB5_61
.LBB5_34:                               # %sw.bb.93
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 292(%rdi)
	jmp	.LBB5_61
.LBB5_35:                               # %sw.bb.95
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	cmpq	$0, %rax
	je	.LBB5_37
# BB#36:                                # %if.then
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	296(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB5_37:                               # %if.end
	jmp	.LBB5_61
.LBB5_38:                               # %sw.bb.100
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	cmpq	$0, %rax
	je	.LBB5_40
# BB#39:                                # %if.then.103
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	304(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB5_40:                               # %if.end.107
	jmp	.LBB5_61
.LBB5_41:                               # %sw.bb.108
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 332(%rdi)
	jmp	.LBB5_61
.LBB5_42:                               # %sw.bb.110
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 312(%rdi)
	jmp	.LBB5_61
.LBB5_43:                               # %sw.bb.112
	movq	-24(%rbp), %rdi
	callq	g_value_get_uint64
	movq	-40(%rbp), %rdi
	movq	%rax, 320(%rdi)
	jmp	.LBB5_61
.LBB5_44:                               # %sw.bb.114
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 328(%rdi)
	jmp	.LBB5_61
.LBB5_45:                               # %sw.bb.116
	movq	-40(%rbp), %rax
	movq	336(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 336(%rdi)
	jmp	.LBB5_61
.LBB5_46:                               # %sw.bb.119
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 344(%rdi)
	jmp	.LBB5_61
.LBB5_47:                               # %sw.bb.121
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 348(%rdi)
	jmp	.LBB5_61
.LBB5_48:                               # %sw.bb.123
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 352(%rdi)
	jmp	.LBB5_61
.LBB5_49:                               # %sw.bb.125
	movq	-24(%rbp), %rdi
	callq	g_value_get_uint64
	movq	-40(%rbp), %rdi
	movq	%rax, 360(%rdi)
	jmp	.LBB5_61
.LBB5_50:                               # %sw.bb.127
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	cmpq	$0, %rax
	je	.LBB5_52
# BB#51:                                # %if.then.130
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	368(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB5_52:                               # %if.end.134
	jmp	.LBB5_61
.LBB5_53:                               # %sw.bb.135
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 376(%rdi)
	jmp	.LBB5_61
.LBB5_54:                               # %sw.bb.137
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 380(%rdi)
	jmp	.LBB5_61
.LBB5_55:                               # %sw.bb.139
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rsi
	callq	gimp_value_get_rgb
	jmp	.LBB5_61
.LBB5_56:                               # %sw.bb.140
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 416(%rdi)
	jmp	.LBB5_61
.LBB5_57:                               # %sw.bb.142
	jmp	.LBB5_61
.LBB5_58:                               # %sw.default
	jmp	.LBB5_59
.LBB5_59:                               # %do.body
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
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.115, %rdi
	movabsq	$.L.str.116, %rsi
	movl	$732, %edx              # imm = 0x2DC
	movabsq	$.L.str.117, %rcx
	movl	-136(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#60:                                # %do.end
	jmp	.LBB5_61
.LBB5_61:                               # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_core_config_set_property, .Lfunc_end5-gimp_core_config_set_property
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
	.quad	.LBB5_21
	.quad	.LBB5_22
	.quad	.LBB5_23
	.quad	.LBB5_24
	.quad	.LBB5_25
	.quad	.LBB5_26
	.quad	.LBB5_27
	.quad	.LBB5_28
	.quad	.LBB5_29
	.quad	.LBB5_30
	.quad	.LBB5_31
	.quad	.LBB5_32
	.quad	.LBB5_33
	.quad	.LBB5_34
	.quad	.LBB5_35
	.quad	.LBB5_38
	.quad	.LBB5_42
	.quad	.LBB5_43
	.quad	.LBB5_44
	.quad	.LBB5_41
	.quad	.LBB5_45
	.quad	.LBB5_46
	.quad	.LBB5_47
	.quad	.LBB5_48
	.quad	.LBB5_49
	.quad	.LBB5_50
	.quad	.LBB5_53
	.quad	.LBB5_54
	.quad	.LBB5_55
	.quad	.LBB5_56
	.quad	.LBB5_57
	.quad	.LBB5_57

	.text
	.align	16, 0x90
	.type	gimp_core_config_get_property,@function
gimp_core_config_get_property:          # @gimp_core_config_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_core_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$51, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_52
# BB#56:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	64(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_55
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	68(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_55
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	88(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_7:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	96(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_8:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	104(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_9:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	112(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_10:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	120(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_11:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_12:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_13:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_14:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	152(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_15:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	160(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_16:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	168(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_17:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	176(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_18:                               # %sw.bb.18
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	184(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_19:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	192(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_20:                               # %sw.bb.20
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	200(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_21:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	208(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_22:                               # %sw.bb.22
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	216(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_23:                               # %sw.bb.23
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	224(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_24:                               # %sw.bb.24
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	232(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_25:                               # %sw.bb.25
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	240(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_26:                               # %sw.bb.26
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	256(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_27:                               # %sw.bb.27
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	248(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_28:                               # %sw.bb.28
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	264(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_29:                               # %sw.bb.29
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	272(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_55
.LBB6_30:                               # %sw.bb.30
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	276(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_55
.LBB6_31:                               # %sw.bb.31
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	280(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_55
.LBB6_32:                               # %sw.bb.32
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	284(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_55
.LBB6_33:                               # %sw.bb.33
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	288(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_55
.LBB6_34:                               # %sw.bb.34
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	292(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_55
.LBB6_35:                               # %sw.bb.35
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB6_55
.LBB6_36:                               # %sw.bb.36
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB6_55
.LBB6_37:                               # %sw.bb.37
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	332(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_55
.LBB6_38:                               # %sw.bb.38
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	312(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_55
.LBB6_39:                               # %sw.bb.39
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	320(%rax), %rsi
	callq	g_value_set_uint64
	jmp	.LBB6_55
.LBB6_40:                               # %sw.bb.40
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	328(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_55
.LBB6_41:                               # %sw.bb.41
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	336(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_55
.LBB6_42:                               # %sw.bb.42
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	344(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_55
.LBB6_43:                               # %sw.bb.43
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	348(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_55
.LBB6_44:                               # %sw.bb.44
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	352(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_55
.LBB6_45:                               # %sw.bb.45
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	360(%rax), %rsi
	callq	g_value_set_uint64
	jmp	.LBB6_55
.LBB6_46:                               # %sw.bb.46
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB6_55
.LBB6_47:                               # %sw.bb.47
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	376(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_55
.LBB6_48:                               # %sw.bb.48
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	380(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_55
.LBB6_49:                               # %sw.bb.49
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rsi
	callq	gimp_value_set_rgb
	jmp	.LBB6_55
.LBB6_50:                               # %sw.bb.50
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	416(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_55
.LBB6_51:                               # %sw.bb.51
	jmp	.LBB6_55
.LBB6_52:                               # %sw.default
	jmp	.LBB6_53
.LBB6_53:                               # %do.body
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
	movabsq	$.L.str.115, %rdi
	movabsq	$.L.str.116, %rsi
	movl	$904, %edx              # imm = 0x388
	movabsq	$.L.str.117, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#54:                                # %do.end
	jmp	.LBB6_55
.LBB6_55:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_core_config_get_property, .Lfunc_end6-gimp_core_config_get_property
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
	.quad	.LBB6_31
	.quad	.LBB6_32
	.quad	.LBB6_33
	.quad	.LBB6_34
	.quad	.LBB6_35
	.quad	.LBB6_36
	.quad	.LBB6_38
	.quad	.LBB6_39
	.quad	.LBB6_40
	.quad	.LBB6_37
	.quad	.LBB6_41
	.quad	.LBB6_42
	.quad	.LBB6_43
	.quad	.LBB6_44
	.quad	.LBB6_45
	.quad	.LBB6_46
	.quad	.LBB6_47
	.quad	.LBB6_48
	.quad	.LBB6_49
	.quad	.LBB6_50
	.quad	.LBB6_51
	.quad	.LBB6_51

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.118, %r9d
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
	.type	gimp_core_config_default_image_notify,@function
gimp_core_config_default_image_notify:  # @gimp_core_config_default_image_notify
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
	movabsq	$.L.str.80, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_core_config_default_image_notify, .Lfunc_end8-gimp_core_config_default_image_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_core_config_default_grid_notify,@function
gimp_core_config_default_grid_notify:   # @gimp_core_config_default_grid_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
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
	movabsq	$.L.str.82, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_core_config_default_grid_notify, .Lfunc_end9-gimp_core_config_default_grid_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_core_config_color_management_notify,@function
gimp_core_config_color_management_notify: # @gimp_core_config_color_management_notify
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.103, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_core_config_color_management_notify, .Lfunc_end10-gimp_core_config_color_management_notify
	.cfi_endproc

	.type	gimp_core_config_get_type.g_define_type_id__volatile,@object # @gimp_core_config_get_type.g_define_type_id__volatile
	.local	gimp_core_config_get_type.g_define_type_id__volatile
	.comm	gimp_core_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCoreConfig"
	.size	.L.str, 15

	.type	gimp_core_config_parent_class,@object # @gimp_core_config_parent_class
	.local	gimp_core_config_parent_class
	.comm	gimp_core_config_parent_class,8,8
	.type	GimpCoreConfig_private_offset,@object # @GimpCoreConfig_private_offset
	.local	GimpCoreConfig_private_offset
	.comm	GimpCoreConfig_private_offset,4,4
	.type	.Lgimp_core_config_class_init.red,@object # @gimp_core_config_class_init.red
	.section	.rodata,"a",@progbits
	.align	8
.Lgimp_core_config_class_init.red:
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.size	.Lgimp_core_config_class_init.red, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"language"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Specifies the language to use for the user interface."
	.size	.L.str.2, 54

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"interpolation-type"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Sets the level of interpolation used for scaling and other transformations."
	.size	.L.str.4, 76

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"default-threshold"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Tools such as fuzzy-select and bucket fill find regions based on a seed-fill algorithm.  The seed fill starts at the initially selected pixel and progresses in all directions until the difference of pixel intensity from the original is greater than a specified threshold. This value represents the default threshold."
	.size	.L.str.6, 317

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"plug-ins"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-path"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Sets the plug-in search path."
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"modules"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"module-path"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Sets the module search path."
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"interpreters"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"interpreter-path"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Sets the interpreter search path."
	.size	.L.str.15, 34

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"environ"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"environ-path"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Sets the environ search path."
	.size	.L.str.18, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"brushes"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"brush-path"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Sets the brush search path."
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"brush-path-writable"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.zero	1
	.size	.L.str.23, 1

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"dynamics"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"dynamics-path"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Sets the dynamics search path."
	.size	.L.str.26, 31

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"dynamics-path-writable"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"patterns"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"pattern-path"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Sets the pattern search path."
	.size	.L.str.30, 30

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"pattern-path-writable"
	.size	.L.str.31, 22

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"palettes"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"palette-path"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Sets the palette search path."
	.size	.L.str.34, 30

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"palette-path-writable"
	.size	.L.str.35, 22

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gradients"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gradient-path"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Sets the gradient search path."
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gradient-path-writable"
	.size	.L.str.39, 23

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"tool-presets"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"tool-preset-path"
	.size	.L.str.41, 17

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"tool-preset-path-writable"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"fonts"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"font-path"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Where to look for fonts in addition to the system-wide installed fonts."
	.size	.L.str.45, 72

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"font-path-writable"
	.size	.L.str.46, 19

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"default-brush"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Specify a default brush.  The brush is searched for in the specified brush path."
	.size	.L.str.48, 81

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Round Fuzzy"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"default-dynamics"
	.size	.L.str.50, 17

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Specify a default dynamics.  The dynamics is searched for in the specified dynamics path."
	.size	.L.str.51, 90

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Dynamics Off"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"default-pattern"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Specify a default pattern."
	.size	.L.str.54, 27

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Pine"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"default-palette"
	.size	.L.str.56, 16

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Specify a default palette."
	.size	.L.str.57, 27

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Default"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"default-gradient"
	.size	.L.str.59, 17

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Specify a default gradient."
	.size	.L.str.60, 28

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"FG to BG (RGB)"
	.size	.L.str.61, 15

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"default-tool-preset"
	.size	.L.str.62, 20

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Specify a default tool preset.  The tool preset is searched for in the specified tool prests path."
	.size	.L.str.63, 99

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Current Options"
	.size	.L.str.64, 16

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"default-font"
	.size	.L.str.65, 13

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Specify a default font."
	.size	.L.str.66, 24

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Sans"
	.size	.L.str.67, 5

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"global-brush"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"When enabled, the selected brush will be used for all tools."
	.size	.L.str.69, 61

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"global-dynamics"
	.size	.L.str.70, 16

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"When enabled, the selected dynamics will be used for all tools."
	.size	.L.str.71, 64

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"global-pattern"
	.size	.L.str.72, 15

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"When enabled, the selected pattern will be used for all tools."
	.size	.L.str.73, 63

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"global-palette"
	.size	.L.str.74, 15

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"When enabled, the selected palette will be used for all tools."
	.size	.L.str.75, 63

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"global-gradient"
	.size	.L.str.76, 16

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"When enabled, the selected gradient will be used for all tools."
	.size	.L.str.77, 64

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"global-font"
	.size	.L.str.78, 12

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"When enabled, the selected font will be used for all tools."
	.size	.L.str.79, 60

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"default-image"
	.size	.L.str.80, 14

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Sets the default image in the \"File/New\" dialog."
	.size	.L.str.81, 49

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"default-grid"
	.size	.L.str.82, 13

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Specify a default image grid."
	.size	.L.str.83, 30

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"undo-levels"
	.size	.L.str.84, 12

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Sets the minimal number of operations that can be undone. More undo levels are kept available until the undo-size limit is reached."
	.size	.L.str.85, 132

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"undo-size"
	.size	.L.str.86, 10

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Sets an upper limit to the memory that is used per image to keep operations on the undo stack. Regardless of this setting, at least as many undo-levels as configured can be undone."
	.size	.L.str.87, 181

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"undo-preview-size"
	.size	.L.str.88, 18

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Sets the size of the previews in the Undo History."
	.size	.L.str.89, 51

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"plug-in-history-size"
	.size	.L.str.90, 21

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"How many recently used plug-ins to keep on the Filters menu."
	.size	.L.str.91, 61

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"pluginrc-path"
	.size	.L.str.92, 14

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Sets the pluginrc search path."
	.size	.L.str.93, 31

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"${gimp_dir}/pluginrc"
	.size	.L.str.94, 21

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"layer-previews"
	.size	.L.str.95, 15

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Sets whether GIMP should create previews of layers and channels. Previews in the layers and channels dialog are nice to have but they can slow things down when working with large images."
	.size	.L.str.96, 187

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"layer-preview-size"
	.size	.L.str.97, 19

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Sets the preview size used for layers and channel previews in newly created dialogs."
	.size	.L.str.98, 85

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"thumbnail-size"
	.size	.L.str.99, 15

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Sets the size of the thumbnail shown in the Open dialog."
	.size	.L.str.100, 57

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"thumbnail-filesize-limit"
	.size	.L.str.101, 25

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"The thumbnail in the Open dialog will be automatically updated if the file being previewed is smaller than the size set here."
	.size	.L.str.102, 126

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"color-management"
	.size	.L.str.103, 17

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Defines the color management behavior."
	.size	.L.str.104, 39

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"color-profile-policy"
	.size	.L.str.105, 21

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"How to handle embedded color profiles when opening a file."
	.size	.L.str.106, 59

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"save-document-history"
	.size	.L.str.107, 22

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Keep a permanent record of all opened and saved files in the Recent Documents list."
	.size	.L.str.108, 84

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"quick-mask-color"
	.size	.L.str.109, 17

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Sets the default quick mask color."
	.size	.L.str.110, 35

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"use-gegl"
	.size	.L.str.111, 9

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Use GEGL"
	.size	.L.str.112, 9

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"install-colormap"
	.size	.L.str.113, 17

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"min-colors"
	.size	.L.str.114, 11

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.115, 54

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimpcoreconfig.c"
	.size	.L.str.116, 17

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"property"
	.size	.L.str.117, 9

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Gimp-Config"
	.size	.L.str.118, 12

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"name"
	.size	.L.str.119, 5

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Default Image"
	.size	.L.str.120, 14

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"comment"
	.size	.L.str.121, 8

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Created with GIMP"
	.size	.L.str.122, 18

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"notify"
	.size	.L.str.123, 7

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Default Grid"
	.size	.L.str.124, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
