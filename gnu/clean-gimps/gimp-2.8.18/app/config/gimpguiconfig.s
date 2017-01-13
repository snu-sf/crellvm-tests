	.text
	.file	"gimpguiconfig.bc"
	.globl	gimp_gui_config_get_type
	.align	16, 0x90
	.type	gimp_gui_config_get_type,@function
gimp_gui_config_get_type:               # @gimp_gui_config_get_type
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
	movq	gimp_gui_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_gui_config_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_display_config_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$136, %edx
	movabsq	$gimp_gui_config_class_intern_init, %rdi
	movl	$736, %r8d              # imm = 0x2E0
	movabsq	$gimp_gui_config_init, %rcx
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
	movabsq	$gimp_gui_config_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_gui_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gui_config_get_type, .Lfunc_end0-gimp_gui_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gui_config_class_intern_init,@function
gimp_gui_config_class_intern_init:      # @gimp_gui_config_class_intern_init
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
	movq	%rax, gimp_gui_config_parent_class
	cmpl	$0, GimpGuiConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpGuiConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_gui_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gui_config_class_intern_init, .Lfunc_end1-gimp_gui_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gui_config_init,@function
gimp_gui_config_init:                   # @gimp_gui_config_init
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
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_gui_config_init, .Lfunc_end2-gimp_gui_config_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gui_config_class_init,@function
gimp_gui_config_class_init:             # @gimp_gui_config_class_init
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
	subq	$376, %rsp              # imm = 0x178
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
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movabsq	$gimp_gui_config_get_property, %r9
	movabsq	$gimp_gui_config_set_property, %r10
	movabsq	$gimp_gui_config_finalize, %r11
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.4, %rdx
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$10, %r9d
	movl	$487, %ebx              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movl	$487, (%rsp)            # imm = 0x1E7
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.6, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.8, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$4, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.10, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$6, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$7, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.15, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.16, %rdx
	movl	$1, %ecx
	movl	$1511, %r8d             # imm = 0x5E7
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$8, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.18, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$9, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.20, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$10, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.21, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.22, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$11, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.23, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.24, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$12, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.25, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.26, %rdx
	xorl	%ecx, %ecx
	movl	$1024, %r8d             # imm = 0x400
	movl	$10, %r9d
	movl	$1511, %ebx             # imm = 0x5E7
	movq	-24(%rbp), %rax
	movl	$1511, (%rsp)           # imm = 0x5E7
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	callq	g_param_spec_int
	movl	$13, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.27, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movabsq	$.L.str.28, %rdx
	movabsq	$4398046511104, %r8     # imm = 0x40000000000
	movl	$134217728, %ecx        # imm = 0x8000000
	movl	%ecx, %r9d
	movl	$487, %ecx              # imm = 0x1E7
	movq	-24(%rbp), %r10
	movq	%rax, %rsi
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$487, (%rsp)            # imm = 0x1E7
	movq	%r10, -160(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_memsize
	movl	$14, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.29, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.30, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$15, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.31, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.32, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$16, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.33, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.34, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$17, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.35, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$18, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.37, %rdi
	callq	gimp_config_build_data_path
	movabsq	$.L.str.38, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.39, %rdx
	movl	$3, %ecx
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_config_path
	movl	$19, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.40, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.41, %rdx
	movabsq	$.L.str.42, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$20, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.43, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.44, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$21, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.45, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.46, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$22, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.47, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.48, %rdx
	movabsq	$.L.str.49, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$23, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_help_browser_type_get_type
	movabsq	$.L.str.50, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.51, %rdx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$24, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.52, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.53, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$25, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.54, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.55, %rdx
	movabsq	$.L.str.56, %rcx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_param_spec_string
	movl	$26, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gimp_window_hint_get_type
	movabsq	$.L.str.57, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.58, %rdx
	movl	$1, %r8d
	movl	$1511, %r9d             # imm = 0x5E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$27, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gimp_cursor_format_get_type
	movabsq	$.L.str.59, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.60, %rdx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$28, %esi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	gimp_handedness_get_type
	movabsq	$.L.str.61, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.62, %rdx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$29, %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.63, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.64, %rdx
	xorl	%ecx, %ecx
	movl	$231, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$30, %esi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.65, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.66, %rdx
	xorl	%ecx, %ecx
	movl	$231, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$31, %esi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.67, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$231, %esi
	movq	-24(%rbp), %rdx
	movl	%esi, -300(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r9d        # 4-byte Reload
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$32, %esi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.68, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$8679, %r8d             # imm = 0x21E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$33, %esi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.69, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$8679, %r8d             # imm = 0x21E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$34, %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.70, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$8679, %r8d             # imm = 0x21E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$35, %esi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.71, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$8679, %r8d             # imm = 0x21E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$36, %esi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-24(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	callq	gimp_window_hint_get_type
	movabsq	$.L.str.72, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r8d
	movl	$8679, %r9d             # imm = 0x21E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$37, %esi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.73, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$8679, %r8d             # imm = 0x21E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$38, %esi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.74, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movabsq	$.L.str.75, %r8
	movl	$8679, %r9d             # imm = 0x21E7
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	gimp_param_spec_config_path
	movl	$39, %esi
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_gui_config_class_init, .Lfunc_end3-gimp_gui_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gui_config_finalize,@function
gimp_gui_config_finalize:               # @gimp_gui_config_finalize
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
	callq	gimp_gui_config_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	648(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	656(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	672(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	688(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	704(%rax), %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_gui_config_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_gui_config_finalize, .Lfunc_end4-gimp_gui_config_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gui_config_set_property,@function
gimp_gui_config_set_property:           # @gimp_gui_config_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$38, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB5_34
# BB#38:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 568(%rdi)
	jmp	.LBB5_37
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 572(%rdi)
	jmp	.LBB5_37
.LBB5_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 576(%rdi)
	jmp	.LBB5_37
.LBB5_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 580(%rdi)
	jmp	.LBB5_37
.LBB5_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 584(%rdi)
	jmp	.LBB5_37
.LBB5_6:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 588(%rdi)
	jmp	.LBB5_37
.LBB5_7:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 592(%rdi)
	jmp	.LBB5_37
.LBB5_8:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 596(%rdi)
	jmp	.LBB5_37
.LBB5_9:                                # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 600(%rdi)
	jmp	.LBB5_37
.LBB5_10:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 604(%rdi)
	jmp	.LBB5_37
.LBB5_11:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 608(%rdi)
	jmp	.LBB5_37
.LBB5_12:                               # %sw.bb.23
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 612(%rdi)
	jmp	.LBB5_37
.LBB5_13:                               # %sw.bb.25
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 616(%rdi)
	jmp	.LBB5_37
.LBB5_14:                               # %sw.bb.27
	movq	-24(%rbp), %rdi
	callq	g_value_get_uint64
	movq	-40(%rbp), %rdi
	movq	%rax, 624(%rdi)
	jmp	.LBB5_37
.LBB5_15:                               # %sw.bb.29
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 632(%rdi)
	jmp	.LBB5_37
.LBB5_16:                               # %sw.bb.31
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 636(%rdi)
	jmp	.LBB5_37
.LBB5_17:                               # %sw.bb.33
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 640(%rdi)
	jmp	.LBB5_37
.LBB5_18:                               # %sw.bb.35
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 644(%rdi)
	jmp	.LBB5_37
.LBB5_19:                               # %sw.bb.37
	movq	-40(%rbp), %rax
	movq	648(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 648(%rdi)
	jmp	.LBB5_37
.LBB5_20:                               # %sw.bb.40
	movq	-40(%rbp), %rax
	movq	656(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 656(%rdi)
	jmp	.LBB5_37
.LBB5_21:                               # %sw.bb.43
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 664(%rdi)
	jmp	.LBB5_37
.LBB5_22:                               # %sw.bb.45
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 668(%rdi)
	jmp	.LBB5_37
.LBB5_23:                               # %sw.bb.47
	movq	-40(%rbp), %rax
	movq	672(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 672(%rdi)
	jmp	.LBB5_37
.LBB5_24:                               # %sw.bb.50
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 680(%rdi)
	jmp	.LBB5_37
.LBB5_25:                               # %sw.bb.52
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 696(%rdi)
	jmp	.LBB5_37
.LBB5_26:                               # %sw.bb.54
	movq	-40(%rbp), %rax
	movq	704(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 704(%rdi)
	jmp	.LBB5_37
.LBB5_27:                               # %sw.bb.57
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 712(%rdi)
	jmp	.LBB5_37
.LBB5_28:                               # %sw.bb.59
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 716(%rdi)
	jmp	.LBB5_37
.LBB5_29:                               # %sw.bb.61
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 720(%rdi)
	jmp	.LBB5_37
.LBB5_30:                               # %sw.bb.63
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 724(%rdi)
	jmp	.LBB5_37
.LBB5_31:                               # %sw.bb.65
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 728(%rdi)
	jmp	.LBB5_37
.LBB5_32:                               # %sw.bb.67
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 732(%rdi)
	jmp	.LBB5_37
.LBB5_33:                               # %sw.bb.69
	jmp	.LBB5_37
.LBB5_34:                               # %sw.default
	jmp	.LBB5_35
.LBB5_35:                               # %do.body
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
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movl	$470, %edx              # imm = 0x1D6
	movabsq	$.L.str.78, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#36:                                # %do.end
	jmp	.LBB5_37
.LBB5_37:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_gui_config_set_property, .Lfunc_end5-gimp_gui_config_set_property
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
	.quad	.LBB5_33
	.quad	.LBB5_33
	.quad	.LBB5_33
	.quad	.LBB5_33
	.quad	.LBB5_33
	.quad	.LBB5_33

	.text
	.align	16, 0x90
	.type	gimp_gui_config_get_property,@function
gimp_gui_config_get_property:           # @gimp_gui_config_get_property
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
	callq	gimp_gui_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$38, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_34
# BB#38:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	568(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	572(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_37
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	576(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	580(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	584(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	588(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_7:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	592(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_8:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	596(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_9:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	600(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_10:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	604(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_11:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	608(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_12:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	612(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_13:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	616(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_37
.LBB6_14:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	624(%rax), %rsi
	callq	g_value_set_uint64
	jmp	.LBB6_37
.LBB6_15:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	632(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_16:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	636(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_17:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	640(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_18:                               # %sw.bb.18
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	644(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_19:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	648(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_37
.LBB6_20:                               # %sw.bb.20
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	656(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_37
.LBB6_21:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	664(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_22:                               # %sw.bb.22
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	668(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_23:                               # %sw.bb.23
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	672(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_37
.LBB6_24:                               # %sw.bb.24
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	680(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_37
.LBB6_25:                               # %sw.bb.25
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	696(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_26:                               # %sw.bb.26
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	704(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_37
.LBB6_27:                               # %sw.bb.27
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	712(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_37
.LBB6_28:                               # %sw.bb.28
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	716(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_37
.LBB6_29:                               # %sw.bb.29
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	720(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_37
.LBB6_30:                               # %sw.bb.30
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	724(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_31:                               # %sw.bb.31
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	728(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_37
.LBB6_32:                               # %sw.bb.32
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	732(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_37
.LBB6_33:                               # %sw.bb.33
	jmp	.LBB6_37
.LBB6_34:                               # %sw.default
	jmp	.LBB6_35
.LBB6_35:                               # %do.body
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
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movl	$594, %edx              # imm = 0x252
	movabsq	$.L.str.78, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#36:                                # %do.end
	jmp	.LBB6_37
.LBB6_37:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_gui_config_get_property, .Lfunc_end6-gimp_gui_config_get_property
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
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_33

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
	movl	$.L.str.79, %r9d
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

	.type	gimp_gui_config_get_type.g_define_type_id__volatile,@object # @gimp_gui_config_get_type.g_define_type_id__volatile
	.local	gimp_gui_config_get_type.g_define_type_id__volatile
	.comm	gimp_gui_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpGuiConfig"
	.size	.L.str, 14

	.type	gimp_gui_config_parent_class,@object # @gimp_gui_config_parent_class
	.local	gimp_gui_config_parent_class
	.comm	gimp_gui_config_parent_class,8,8
	.type	GimpGuiConfig_private_offset,@object # @GimpGuiConfig_private_offset
	.local	GimpGuiConfig_private_offset
	.comm	GimpGuiConfig_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"move-tool-changes-active"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"If enabled, the move tool sets the edited layer or path as active.  This used to be the default behaviour in older versions."
	.size	.L.str.2, 125

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image-map-tool-max-recent"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"How many recent settings to keep around in color correction tools"
	.size	.L.str.4, 66

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"trust-dirty-flag"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"When enabled, GIMP will not save an image if it has not been changed since it was opened."
	.size	.L.str.6, 90

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"save-device-status"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Remember the current tool, pattern, color, and brush across GIMP sessions."
	.size	.L.str.8, 75

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"save-session-info"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Save the positions and sizes of the main dialogs when GIMP exits."
	.size	.L.str.10, 66

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"restore-session"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Let GIMP try to restore your last saved session on each startup."
	.size	.L.str.12, 65

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"save-tool-options"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Save the tool options when GIMP exits."
	.size	.L.str.14, 39

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"show-tooltips"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Show a tooltip when the pointer hovers over an item."
	.size	.L.str.16, 53

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"tearoff-menus"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"When enabled, menus can be torn off."
	.size	.L.str.18, 37

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"can-change-accels"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"When enabled, you can change keyboard shortcuts for menu items by hitting a key combination while the menu item is highlighted."
	.size	.L.str.20, 128

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"save-accels"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Save changed keyboard shortcuts when GIMP exits."
	.size	.L.str.22, 49

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"restore-accels"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Restore saved keyboard shortcuts on each GIMP startup."
	.size	.L.str.24, 55

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"last-opened-size"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"How many recently opened image filenames to keep on the File menu."
	.size	.L.str.26, 67

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"max-new-image-size"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"GIMP will warn the user if an attempt is made to create an image that would take more memory than the size specified here."
	.size	.L.str.28, 123

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"toolbox-color-area"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Show the current foreground and background colors in the toolbox."
	.size	.L.str.30, 66

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"toolbox-foo-area"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Show the currently selected brush, pattern and gradient in the toolbox."
	.size	.L.str.32, 72

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"toolbox-image-area"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Show the currently active image in the toolbox."
	.size	.L.str.34, 48

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"toolbox-wilber"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Show the GIMP mascot at the top of the toolbox."
	.size	.L.str.36, 48

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"themes"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"theme-path"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Sets the theme search path."
	.size	.L.str.39, 28

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"theme"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The name of the theme to use."
	.size	.L.str.41, 30

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Default"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"use-help"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"When enabled, pressing F1 will open the help browser."
	.size	.L.str.44, 54

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"show-help-button"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"When enabled, dialogs will show a help button that gives access to the related help page.  Without this button, the help page can still be reached by pressing F1."
	.size	.L.str.46, 163

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"help-locales"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Specifies the language preferences used by the help system. This is a colon-separated list of language identifiers with decreasing priority. If empty, the language is taken from the user's locale setting."
	.size	.L.str.48, 205

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.zero	1
	.size	.L.str.49, 1

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"help-browser"
	.size	.L.str.50, 13

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Sets the browser used by the help system."
	.size	.L.str.51, 42

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"user-manual-online"
	.size	.L.str.52, 19

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"When enabled, the online user manual will be used by the help system. Otherwise the locally installed copy is used."
	.size	.L.str.53, 116

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"user-manual-online-uri"
	.size	.L.str.54, 23

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"The location of the online user manual. This is used if 'user-manual-online' is enabled."
	.size	.L.str.55, 89

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"http://docs.gimp.org/2.8"
	.size	.L.str.56, 25

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"dock-window-hint"
	.size	.L.str.57, 17

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"The window type hint that is set on dock windows and the toolbox window. This may affect the way your window manager decorates and handles these windows."
	.size	.L.str.58, 154

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"cursor-format"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Sets the pixel format to use for mouse pointers."
	.size	.L.str.60, 49

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"cursor-handedness"
	.size	.L.str.61, 18

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Sets the handedness for cursor positioning."
	.size	.L.str.62, 44

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"hide-docks"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Hide docks and other windows, leaving only image windows."
	.size	.L.str.64, 58

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"single-window-mode"
	.size	.L.str.65, 19

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Use GIMP in a single-window mode."
	.size	.L.str.66, 34

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"last-tip-shown"
	.size	.L.str.67, 15

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"info-window-per-display"
	.size	.L.str.68, 24

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"menu-mnemonics"
	.size	.L.str.69, 15

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"show-tool-tips"
	.size	.L.str.70, 15

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"show-tips"
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"toolbox-window-hint"
	.size	.L.str.72, 20

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"transient-docks"
	.size	.L.str.73, 16

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"web-browser"
	.size	.L.str.74, 12

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"not used any longer"
	.size	.L.str.75, 20

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.76, 54

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimpguiconfig.c"
	.size	.L.str.77, 16

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"property"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Gimp-Config"
	.size	.L.str.79, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
