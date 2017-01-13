	.text
	.file	"drawable-cmds.bc"
	.globl	register_drawable_procs
	.align	16, 0x90
	.type	register_drawable_procs,@function
register_drawable_procs:                # @register_drawable_procs
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
	pushq	%rbx
	subq	$1592, %rsp             # imm = 0x638
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$drawable_type_invoker, %rax
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.1, %rdx
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-24(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_type_get_type
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_type_with_alpha_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_type_get_type
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_has_alpha_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -152(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_is_rgb_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -192(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_is_gray_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -232(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_is_indexed_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.35, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -272(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_bpp_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	movabsq	$.L.str.41, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -312(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.43, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -332(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_width_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.44, %rsi
	movabsq	$.L.str.45, %rdx
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -360(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.48, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -380(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_height_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.49, %rsi
	movabsq	$.L.str.50, %rdx
	movabsq	$.L.str.51, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -408(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.53, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -428(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_offsets_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.55, %rdx
	movabsq	$.L.str.56, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -456(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.57, %rdi
	movabsq	$.L.str.58, %rsi
	movabsq	$.L.str.59, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movl	%ebx, -476(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.60, %rdi
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.62, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movl	%ebx, -492(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_set_image_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.63, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.63, %rsi
	movabsq	$.L.str.64, %rax
	movabsq	$.L.str.65, %rdx
	movabsq	$.L.str.66, %rdi
	movq	-24(%rbp), %r10
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-520(%rbp), %r8         # 8-byte Reload
	movq	-520(%rbp), %r9         # 8-byte Reload
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-512(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.67, %rax
	movabsq	$.L.str.68, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_mask_bounds_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.69, %rsi
	movabsq	$.L.str.70, %rdx
	movabsq	$.L.str.71, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -560(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.72, %rdi
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.74, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.75, %rax
	movabsq	$.L.str.76, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -588(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.77, %rax
	movabsq	$.L.str.78, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -604(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.79, %rax
	movabsq	$.L.str.80, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -620(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.81, %rax
	movabsq	$.L.str.82, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -636(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_mask_intersect_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.83, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.83, %rsi
	movabsq	$.L.str.70, %rdx
	movabsq	$.L.str.84, %rcx
	movabsq	$.L.str.85, %r8
	movabsq	$.L.str.86, %r9
	movabsq	$.L.str.87, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.72, %rdi
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.88, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.90, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -684(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.91, %rax
	movabsq	$.L.str.92, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -700(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.93, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -716(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.94, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -732(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_merge_shadow_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.95, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.95, %rsi
	movabsq	$.L.str.96, %rdx
	movabsq	$.L.str.97, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-752(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -760(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.98, %rax
	movabsq	$.L.str.99, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_free_shadow_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.100, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.100, %rsi
	movabsq	$.L.str.101, %rdx
	movabsq	$.L.str.102, %rcx
	movabsq	$.L.str.85, %r8
	movabsq	$.L.str.86, %r9
	movabsq	$.L.str.103, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_update_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.104, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.104, %rsi
	movabsq	$.L.str.105, %rdx
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-816(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -824(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.107, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -844(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.91, %rax
	movabsq	$.L.str.108, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -860(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.109, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -876(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.110, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -892(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_get_pixel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.111, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.111, %rsi
	movabsq	$.L.str.112, %rdx
	movabsq	$.L.str.113, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.114, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-912(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -920(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.115, %rdi
	movabsq	$.L.str.116, %rsi
	movabsq	$.L.str.117, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -932(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-932(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -944(%rbp)        # 8-byte Spill
	movl	%ebx, -948(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.118, %rdi
	movabsq	$.L.str.119, %rsi
	movabsq	$.L.str.120, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -952(%rbp)        # 4-byte Spill
	movl	-952(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -956(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.121, %rdi
	movabsq	$.L.str.122, %rsi
	movabsq	$.L.str.123, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$16611, %r9d            # imm = 0x40E3
	movq	-24(%rbp), %rax
	movl	%ecx, -972(%rbp)        # 4-byte Spill
	movl	-972(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -976(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$16611, (%rsp)          # imm = 0x40E3
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.125, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_int8_array
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_set_pixel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.126, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.126, %rsi
	movabsq	$.L.str.127, %rdx
	movabsq	$.L.str.128, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.114, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1016(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.115, %rdi
	movabsq	$.L.str.116, %rsi
	movabsq	$.L.str.117, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1028(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1028(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	movl	%ebx, -1044(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.118, %rdi
	movabsq	$.L.str.119, %rsi
	movabsq	$.L.str.120, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1048(%rbp)       # 4-byte Spill
	movl	-1048(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1052(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.121, %rdi
	movabsq	$.L.str.122, %rsi
	movabsq	$.L.str.123, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$16611, %r9d            # imm = 0x40E3
	movq	-24(%rbp), %rax
	movl	%ecx, -1068(%rbp)       # 4-byte Spill
	movl	-1068(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1072(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$16611, (%rsp)          # imm = 0x40E3
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.125, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_int8_array
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_fill_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.129, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.129, %rsi
	movabsq	$.L.str.130, %rdx
	movabsq	$.L.str.131, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1112(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	callq	gimp_fill_type_get_type
	movabsq	$.L.str.132, %rdi
	movabsq	$.L.str.133, %rsi
	movabsq	$.L.str.134, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_offset_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.135, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.135, %rsi
	movabsq	$.L.str.136, %rdx
	movabsq	$.L.str.137, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.114, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1144(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1152(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.138, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.139, %rdi
	movabsq	$.L.str.140, %rsi
	movabsq	$.L.str.141, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	callq	gimp_offset_type_get_type
	movabsq	$.L.str.132, %rdi
	movabsq	$.L.str.133, %rsi
	movabsq	$.L.str.142, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.57, %rdi
	movabsq	$.L.str.58, %rsi
	movabsq	$.L.str.143, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	movl	%ebx, -1188(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.60, %rdi
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.144, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	movl	%ebx, -1204(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_thumbnail_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.145, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.145, %rsi
	movabsq	$.L.str.146, %rdx
	movabsq	$.L.str.147, %rcx
	movabsq	$.L.str.148, %rax
	movabsq	$.L.str.149, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -1224(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1232(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.150, %rdx
	movl	$1, %r8d
	movl	$1024, %r9d             # imm = 0x400
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1248(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -1252(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1252(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movl	%ebx, -1256(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.151, %rdx
	movl	$1, %ecx
	movl	$1024, %r8d             # imm = 0x400
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -1268(%rbp)       # 4-byte Spill
	movl	-1268(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1272(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.152, %rdi
	movabsq	$.L.str.153, %rsi
	movabsq	$.L.str.154, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	movl	%ebx, -1284(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.155, %rdi
	movabsq	$.L.str.156, %rsi
	movabsq	$.L.str.157, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	movl	%ebx, -1300(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.158, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -1316(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.159, %rdi
	movabsq	$.L.str.160, %rsi
	movabsq	$.L.str.161, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1320(%rbp)       # 4-byte Spill
	movl	-1320(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1324(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.162, %rdi
	movabsq	$.L.str.163, %rsi
	movabsq	$.L.str.164, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_sub_thumbnail_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.165, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.165, %rsi
	movabsq	$.L.str.166, %rdx
	movabsq	$.L.str.147, %rcx
	movabsq	$.L.str.85, %r8
	movabsq	$.L.str.86, %r9
	movabsq	$.L.str.87, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -1360(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1368(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.167, %rdi
	movabsq	$.L.str.168, %rsi
	movabsq	$.L.str.169, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1372(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1372(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	movl	%ebx, -1388(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.170, %rdi
	movabsq	$.L.str.171, %rsi
	movabsq	$.L.str.172, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1392(%rbp)       # 4-byte Spill
	movl	-1392(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1396(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.173, %rdi
	movabsq	$.L.str.174, %rsi
	movabsq	$.L.str.175, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1412(%rbp)       # 4-byte Spill
	movl	-1412(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1416(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.176, %rdi
	movabsq	$.L.str.177, %rsi
	movabsq	$.L.str.178, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1428(%rbp)       # 4-byte Spill
	movl	-1428(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1432(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.179, %rdi
	movabsq	$.L.str.180, %rsi
	movabsq	$.L.str.181, %rdx
	movl	$1, %ecx
	movl	$1024, %r8d             # imm = 0x400
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1444(%rbp)       # 4-byte Spill
	movl	-1444(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1448(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.182, %rdi
	movabsq	$.L.str.183, %rsi
	movabsq	$.L.str.184, %rdx
	movl	$1, %ecx
	movl	$1024, %r8d             # imm = 0x400
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1460(%rbp)       # 4-byte Spill
	movl	-1460(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1464(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.154, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1480(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -1484(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.157, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1496(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -1500(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1496(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.158, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1512(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%ebx, -1516(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.159, %rdi
	movabsq	$.L.str.160, %rsi
	movabsq	$.L.str.161, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1520(%rbp)       # 4-byte Spill
	movl	-1520(%rbp), %ebx       # 4-byte Reload
	movl	%r9d, -1524(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.162, %rdi
	movabsq	$.L.str.163, %rsi
	movabsq	$.L.str.164, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_foreground_extract_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.185, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.185, %rsi
	movabsq	$.L.str.186, %rdx
	movabsq	$.L.str.187, %rcx
	movabsq	$.L.str.188, %r8
	movabsq	$.L.str.189, %r9
	movabsq	$.L.str.190, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -1560(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1568(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -1576(%rbp)       # 8-byte Spill
	callq	gimp_foreground_extract_mode_get_type
	movabsq	$.L.str.191, %rcx
	movabsq	$.L.str.192, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1576(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.193, %rax
	movabsq	$.L.str.194, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1584(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1592, %rsp             # imm = 0x638
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_drawable_procs, .Lfunc_end0-register_drawable_procs
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_type_invoker,@function
drawable_type_invoker:                  # @drawable_type_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -76(%rbp)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB1_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB1_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	drawable_type_invoker, .Lfunc_end1-drawable_type_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_type_with_alpha_invoker,@function
drawable_type_with_alpha_invoker:       # @drawable_type_with_alpha_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_type_with_alpha
	movl	%eax, -76(%rbp)
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB2_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB2_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	drawable_type_with_alpha_invoker, .Lfunc_end2-drawable_type_with_alpha_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_has_alpha_invoker,@function
drawable_has_alpha_invoker:             # @drawable_has_alpha_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -76(%rbp)
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB3_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB3_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	drawable_has_alpha_invoker, .Lfunc_end3-drawable_has_alpha_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_is_rgb_invoker,@function
drawable_is_rgb_invoker:                # @drawable_is_rgb_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	movl	%eax, -76(%rbp)
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB4_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB4_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	drawable_is_rgb_invoker, .Lfunc_end4-drawable_is_rgb_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_is_gray_invoker,@function
drawable_is_gray_invoker:               # @drawable_is_gray_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_is_gray
	movl	%eax, -76(%rbp)
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB5_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB5_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	drawable_is_gray_invoker, .Lfunc_end5-drawable_is_gray_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_is_indexed_invoker,@function
drawable_is_indexed_invoker:            # @drawable_is_indexed_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	movl	%eax, -76(%rbp)
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB6_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB6_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	drawable_is_indexed_invoker, .Lfunc_end6-drawable_is_indexed_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_bpp_invoker,@function
drawable_bpp_invoker:                   # @drawable_bpp_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_bytes
	movl	%eax, -76(%rbp)
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB7_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_5
.LBB7_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB7_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	drawable_bpp_invoker, .Lfunc_end7-drawable_bpp_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_width_invoker,@function
drawable_width_invoker:                 # @drawable_width_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -76(%rbp)
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB8_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_5:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.7
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB8_7:                                # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	drawable_width_invoker, .Lfunc_end8-drawable_width_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_height_invoker,@function
drawable_height_invoker:                # @drawable_height_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -76(%rbp)
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB9_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB9_5
.LBB9_5:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_7
# BB#6:                                 # %if.then.7
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB9_7:                                # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	drawable_height_invoker, .Lfunc_end9-drawable_height_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_offsets_invoker,@function
drawable_offsets_invoker:               # @drawable_offsets_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB10_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_5
.LBB10_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB10_7:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	drawable_offsets_invoker, .Lfunc_end10-drawable_offsets_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_set_image_invoker,@function
drawable_set_image_invoker:             # @drawable_set_image_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_4
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_3
# BB#2:                                 # %if.then.7
	movl	$0, -52(%rbp)
.LBB11_3:                               # %if.end
	jmp	.LBB11_4
.LBB11_4:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB11_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB11_7
.LBB11_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB11_7
.LBB11_7:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	drawable_set_image_invoker, .Lfunc_end11-drawable_set_image_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_mask_bounds_invoker,@function
drawable_mask_bounds_invoker:           # @drawable_mask_bounds_invoker
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB12_3
# BB#2:                                 # %if.then.5
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-92(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_bounds
	movl	%eax, -76(%rbp)
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB12_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_8:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.13
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB12_10:                              # %if.end.24
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	drawable_mask_bounds_invoker, .Lfunc_end12-drawable_mask_bounds_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_mask_intersect_invoker,@function
drawable_mask_intersect_invoker:        # @drawable_mask_intersect_invoker
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB13_3
# BB#2:                                 # %if.then.5
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-92(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	movl	%eax, -76(%rbp)
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB13_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_8:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.13
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB13_10:                              # %if.end.24
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	drawable_mask_intersect_invoker, .Lfunc_end13-drawable_mask_intersect_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_merge_shadow_invoker,@function
drawable_merge_shadow_invoker:          # @drawable_merge_shadow_invoker
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB14_6
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB14_6
# BB#3:                                 # %if.then.12
	movabsq	$.L.str.195, %rdi
	callq	gettext
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 112(%rax)
	je	.LBB14_5
# BB#4:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rdi
	callq	gimp_plug_in_get_undo_desc
	movq	%rax, -80(%rbp)
.LBB14_5:                               # %if.end
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-80(%rbp), %rdx
	callq	gimp_drawable_merge_shadow_tiles
	jmp	.LBB14_7
.LBB14_6:                               # %if.else
	movl	$0, -52(%rbp)
.LBB14_7:                               # %if.end.19
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.20
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB14_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB14_11
.LBB14_11:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	drawable_merge_shadow_invoker, .Lfunc_end14-drawable_merge_shadow_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_free_shadow_invoker,@function
drawable_free_shadow_invoker:           # @drawable_free_shadow_invoker
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 112(%rax)
	je	.LBB15_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_cleanup_remove_shadow
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB15_3:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_free_shadow_tiles
.LBB15_4:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB15_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB15_7
.LBB15_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB15_7
.LBB15_7:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	drawable_free_shadow_invoker, .Lfunc_end15-drawable_free_shadow_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_update_invoker,@function
drawable_update_invoker:                # @drawable_update_invoker
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	callq	gimp_drawable_update
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB16_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB16_5
.LBB16_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB16_5
.LBB16_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	drawable_update_invoker, .Lfunc_end16-drawable_update_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_get_pixel_invoker,@function
drawable_get_pixel_invoker:             # @drawable_get_pixel_invoker
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_10
# BB#1:                                 # %if.then
	movl	-76(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-120(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB17_8
# BB#2:                                 # %land.lhs.true
	movl	-80(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-132(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB17_8
# BB#3:                                 # %if.then.14
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_bytes
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -84(%rbp)
	movslq	-84(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	$1, %ecx
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$64, %ecx
	movq	%rax, -104(%rbp)
	movl	-76(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -76(%rbp)
	movl	-80(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, -80(%rbp)
	movq	-104(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -112(%rbp)
	movl	$0, -116(%rbp)
.LBB17_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB17_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB17_4 Depth=1
	movslq	-116(%rbp), %rax
	movq	-112(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-116(%rbp), %rax
	movq	-96(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB17_4 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB17_4
.LBB17_7:                               # %for.end
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	callq	tile_release
	jmp	.LBB17_9
.LBB17_8:                               # %if.else
	movl	$0, -52(%rbp)
.LBB17_9:                               # %if.end
	jmp	.LBB17_10
.LBB17_10:                              # %if.end.26
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB17_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB17_13
.LBB17_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB17_13
.LBB17_13:                              # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_15
# BB#14:                                # %if.then.30
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-96(%rbp), %rsi
	movslq	-84(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int8array
.LBB17_15:                              # %if.end.36
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	drawable_get_pixel_invoker, .Lfunc_end17-drawable_get_pixel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_set_pixel_invoker,@function
drawable_set_pixel_invoker:             # @drawable_set_pixel_invoker
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_int8array
	movq	%rax, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_13
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_writable
	cmpl	$0, %eax
	je	.LBB18_11
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB18_11
# BB#3:                                 # %land.lhs.true.21
	movl	-68(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-132(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB18_11
# BB#4:                                 # %land.lhs.true.25
	movl	-72(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-148(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB18_11
# BB#5:                                 # %land.lhs.true.30
	movl	-76(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-164(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB18_11
# BB#6:                                 # %if.then.33
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	$1, %ecx
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	-168(%rbp), %r8d        # 4-byte Reload
	callq	tile_manager_get_tile
	movl	$64, %ecx
	movq	%rax, -96(%rbp)
	movl	-68(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -68(%rbp)
	movl	-72(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, -72(%rbp)
	movq	-96(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
.LBB18_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB18_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB18_7 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	(%rax), %dl
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	%dl, (%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB18_7 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB18_7
.LBB18_10:                              # %for.end
	movl	$1, %esi
	movq	-96(%rbp), %rdi
	callq	tile_release
	jmp	.LBB18_12
.LBB18_11:                              # %if.else
	movl	$0, -52(%rbp)
.LBB18_12:                              # %if.end
	jmp	.LBB18_13
.LBB18_13:                              # %if.end.40
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movl	%esi, -180(%rbp)        # 4-byte Spill
	je	.LBB18_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB18_16
.LBB18_15:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB18_16
.LBB18_16:                              # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	drawable_set_pixel_invoker, .Lfunc_end18-drawable_set_pixel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_fill_invoker,@function
drawable_fill_invoker:                  # @drawable_fill_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_6
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_writable
	cmpl	$0, %eax
	je	.LBB19_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB19_4
# BB#3:                                 # %if.then.12
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	callq	gimp_drawable_fill_by_type
	jmp	.LBB19_5
.LBB19_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB19_5:                               # %if.end
	jmp	.LBB19_6
.LBB19_6:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB19_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB19_9
.LBB19_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB19_9
.LBB19_9:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	drawable_fill_invoker, .Lfunc_end19-drawable_fill_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_offset_invoker,@function
drawable_offset_invoker:                # @drawable_offset_invoker
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_6
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB20_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB20_4
# BB#3:                                 # %if.then.21
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	callq	gimp_drawable_offset
	jmp	.LBB20_5
.LBB20_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB20_5:                               # %if.end
	jmp	.LBB20_6
.LBB20_6:                               # %if.end.22
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB20_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB20_9
.LBB20_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB20_9
.LBB20_9:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	drawable_offset_invoker, .Lfunc_end20-drawable_offset_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_thumbnail_invoker,@function
drawable_thumbnail_invoker:             # @drawable_thumbnail_invoker
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB21_19
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -112(%rbp)
# BB#2:                                 # %do.body
	jmp	.LBB21_3
.LBB21_3:                               # %do.end
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -124(%rbp)
	movq	-72(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -128(%rbp)
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jle	.LBB21_8
# BB#4:                                 # %if.then.16
	movl	$1, %eax
	movl	-76(%rbp), %ecx
	imull	-128(%rbp), %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-124(%rbp)
	movl	-156(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB21_6
# BB#5:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB21_7
.LBB21_6:                               # %cond.false
	movl	-76(%rbp), %eax
	imull	-128(%rbp), %eax
	cltd
	idivl	-124(%rbp)
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB21_7:                               # %cond.end
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	jmp	.LBB21_12
.LBB21_8:                               # %if.else
	movl	$1, %eax
	movl	-80(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-128(%rbp)
	movl	-164(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB21_10
# BB#9:                                 # %cond.true.23
	movl	$1, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB21_11
.LBB21_10:                              # %cond.false.24
	movl	-80(%rbp), %eax
	imull	-124(%rbp), %eax
	cltd
	idivl	-128(%rbp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB21_11:                              # %cond.end.27
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
.LBB21_12:                              # %if.end
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 344(%rax)
	je	.LBB21_14
# BB#13:                                # %if.then.31
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_viewable_get_new_preview
	movq	%rax, -120(%rbp)
	jmp	.LBB21_15
.LBB21_14:                              # %if.else.35
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movq	-72(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movl	%edx, -200(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	movl	$3, %edx
	movl	$4, %esi
	cmpl	$0, %eax
	cmovnel	%esi, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %esi        # 4-byte Reload
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-204(%rbp), %ecx        # 4-byte Reload
	callq	gimp_viewable_get_dummy_preview
	movq	%rax, -120(%rbp)
.LBB21_15:                              # %if.end.42
	cmpq	$0, -120(%rbp)
	je	.LBB21_17
# BB#16:                                # %if.then.44
	movq	-120(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-120(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movl	-84(%rbp), %ecx
	imull	-88(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movq	-120(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rdi
	callq	temp_buf_free
	jmp	.LBB21_18
.LBB21_17:                              # %if.else.51
	movl	$0, -52(%rbp)
.LBB21_18:                              # %if.end.52
	jmp	.LBB21_19
.LBB21_19:                              # %if.end.53
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movl	%esi, -220(%rbp)        # 4-byte Spill
	je	.LBB21_21
# BB#20:                                # %cond.true.55
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB21_22
.LBB21_21:                              # %cond.false.56
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB21_22
.LBB21_22:                              # %cond.end.57
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB21_24
# BB#23:                                # %if.then.61
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	-104(%rbp), %rsi
	movslq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int8array
.LBB21_24:                              # %if.end.72
	movq	-64(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	drawable_thumbnail_invoker, .Lfunc_end21-drawable_thumbnail_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_sub_thumbnail_invoker,@function
drawable_sub_thumbnail_invoker:         # @drawable_sub_thumbnail_invoker
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -96(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_12
# BB#1:                                 # %if.then
	movl	-76(%rbp), %eax
	addl	-84(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-140(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jg	.LBB22_10
# BB#2:                                 # %land.lhs.true
	movl	-80(%rbp), %eax
	addl	-88(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-156(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jg	.LBB22_10
# BB#3:                                 # %if.then.27
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 344(%rax)
	je	.LBB22_5
# BB#4:                                 # %if.then.33
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_drawable_get_sub_preview
	movq	%rax, -136(%rbp)
	jmp	.LBB22_6
.LBB22_5:                               # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	movq	-72(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movl	%edx, -200(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	movl	$3, %edx
	movl	$4, %esi
	cmpl	$0, %eax
	cmovnel	%esi, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %esi        # 4-byte Reload
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-204(%rbp), %ecx        # 4-byte Reload
	callq	gimp_viewable_get_dummy_preview
	movq	%rax, -136(%rbp)
.LBB22_6:                               # %if.end
	cmpq	$0, -136(%rbp)
	je	.LBB22_8
# BB#7:                                 # %if.then.41
	movq	-136(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movq	-136(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movq	-136(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movq	-136(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-136(%rbp), %rax
	imull	4(%rax), %ecx
	movq	-136(%rbp), %rax
	imull	(%rax), %ecx
	movl	%ecx, -112(%rbp)
	movq	-136(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-112(%rbp), %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rdi
	callq	temp_buf_free
	jmp	.LBB22_9
.LBB22_8:                               # %if.else.50
	movl	$0, -52(%rbp)
.LBB22_9:                               # %if.end.51
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.52
	movl	$0, -52(%rbp)
.LBB22_11:                              # %if.end.53
	jmp	.LBB22_12
.LBB22_12:                              # %if.end.54
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movl	%esi, -220(%rbp)        # 4-byte Spill
	je	.LBB22_14
# BB#13:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB22_15
.LBB22_14:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB22_15
.LBB22_15:                              # %cond.end
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_17
# BB#16:                                # %if.then.59
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-104(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-108(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-112(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	-120(%rbp), %rsi
	movslq	-112(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int8array
.LBB22_17:                              # %if.end.70
	movq	-64(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	drawable_sub_thumbnail_invoker, .Lfunc_end22-drawable_sub_thumbnail_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_foreground_extract_invoker,@function
drawable_foreground_extract_invoker:    # @drawable_foreground_extract_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gimp_value_get_drawable
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB23_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB23_3
# BB#2:                                 # %if.then.11
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_drawable_foreground_extract
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB23_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB23_8
.LBB23_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB23_8
.LBB23_8:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	drawable_foreground_extract_invoker, .Lfunc_end23-drawable_foreground_extract_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-drawable-type"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Returns the drawable's type."
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure returns the drawable's type."
	.size	.L.str.2, 44

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1995-1996"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"drawable"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The drawable"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"type"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The drawable's type"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-drawable-type-with-alpha"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Returns the drawable's type with alpha."
	.size	.L.str.10, 40

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"This procedure returns the drawable's type as if had an alpha channel. If the type is currently Gray, for instance, the returned type would be GrayA. If the drawable already has an alpha channel, the drawable's type is simply returned."
	.size	.L.str.11, 236

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"type-with-alpha"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"type with alpha"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The drawable's type with alpha"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-drawable-has-alpha"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Returns TRUE if the drawable has an alpha channel."
	.size	.L.str.16, 51

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"This procedure returns whether the specified drawable has an alpha channel. This can only be true for layers, and the associated type will be one of: { RGBA , GRAYA, INDEXEDA }."
	.size	.L.str.17, 178

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"has-alpha"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"has alpha"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Does the drawable have an alpha channel?"
	.size	.L.str.20, 41

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-drawable-is-rgb"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Returns whether the drawable is an RGB type."
	.size	.L.str.22, 45

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"This procedure returns TRUE if the specified drawable is of type { RGB, RGBA }."
	.size	.L.str.23, 80

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"is-rgb"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"is rgb"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"TRUE if the drawable is an RGB type"
	.size	.L.str.26, 36

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-drawable-is-gray"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Returns whether the drawable is a grayscale type."
	.size	.L.str.28, 50

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"This procedure returns TRUE if the specified drawable is of type { Gray, GrayA }."
	.size	.L.str.29, 82

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"is-gray"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"is gray"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"TRUE if the drawable is a grayscale type"
	.size	.L.str.32, 41

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-drawable-is-indexed"
	.size	.L.str.33, 25

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Returns whether the drawable is an indexed type."
	.size	.L.str.34, 49

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"This procedure returns TRUE if the specified drawable is of type { Indexed, IndexedA }."
	.size	.L.str.35, 88

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"is-indexed"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"is indexed"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"TRUE if the drawable is an indexed type"
	.size	.L.str.38, 40

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-drawable-bpp"
	.size	.L.str.39, 18

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Returns the bytes per pixel."
	.size	.L.str.40, 29

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"This procedure returns the number of bytes per pixel (or the number of channels) for the specified drawable."
	.size	.L.str.41, 109

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"bpp"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Bytes per pixel"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-drawable-width"
	.size	.L.str.44, 20

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Returns the width of the drawable."
	.size	.L.str.45, 35

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"This procedure returns the specified drawable's width in pixels."
	.size	.L.str.46, 65

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"width"
	.size	.L.str.47, 6

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Width of drawable"
	.size	.L.str.48, 18

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-drawable-height"
	.size	.L.str.49, 21

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Returns the height of the drawable."
	.size	.L.str.50, 36

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"This procedure returns the specified drawable's height in pixels."
	.size	.L.str.51, 66

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"height"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Height of drawable"
	.size	.L.str.53, 19

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-drawable-offsets"
	.size	.L.str.54, 22

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Returns the offsets for the drawable."
	.size	.L.str.55, 38

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"This procedure returns the specified drawable's offsets. This only makes sense if the drawable is a layer since channels are anchored. The offsets of a channel will be returned as 0."
	.size	.L.str.56, 183

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"offset-x"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"offset x"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"x offset of drawable"
	.size	.L.str.59, 21

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"offset-y"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"offset y"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"y offset of drawable"
	.size	.L.str.62, 21

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-drawable-set-image"
	.size	.L.str.63, 24

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Deprecated: There is no replacement for this procedure."
	.size	.L.str.64, 56

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.zero	1
	.size	.L.str.65, 1

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"NONE"
	.size	.L.str.66, 5

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"image"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"The image"
	.size	.L.str.68, 10

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-drawable-mask-bounds"
	.size	.L.str.69, 26

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Find the bounding box of the current selection in relation to the specified drawable."
	.size	.L.str.70, 86

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"This procedure returns whether there is a selection. If there is one, the upper left and lower right-hand corners of its bounding box are returned. These coordinates are specified relative to the drawable's origin, and bounded by the drawable's extents. Please note that the pixel specified by the lower right-hand coordinate of the bounding box is not part of the selection. The selection ends at the upper left corner of this pixel. This means the width of the selection can be calculated as (x2 - x1), its height as (y2 - y1). Note that the returned boolean does NOT correspond with the returned region being empty or not, it always returns whether the selection is non_empty. See 'gimp-drawable-mask-intersect' for a boolean return value which is more useful in most cases."
	.size	.L.str.71, 778

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"non-empty"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"non empty"
	.size	.L.str.73, 10

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"TRUE if there is a selection"
	.size	.L.str.74, 29

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"x1"
	.size	.L.str.75, 3

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"x coordinate of the upper left corner of selection bounds"
	.size	.L.str.76, 58

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"y1"
	.size	.L.str.77, 3

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"y coordinate of the upper left corner of selection bounds"
	.size	.L.str.78, 58

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"x2"
	.size	.L.str.79, 3

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"x coordinate of the lower right corner of selection bounds"
	.size	.L.str.80, 59

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"y2"
	.size	.L.str.81, 3

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"y coordinate of the lower right corner of selection bounds"
	.size	.L.str.82, 59

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-drawable-mask-intersect"
	.size	.L.str.83, 29

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"This procedure returns whether there is an intersection between the drawable and the selection. Unlike 'gimp-drawable-mask-bounds', the intersection's bounds are returned as x, y, width, height. If there is no selection this function returns TRUE and the returned bounds are the extents of the whole drawable."
	.size	.L.str.84, 310

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.85, 34

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Michael Natterer"
	.size	.L.str.86, 17

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"2004"
	.size	.L.str.87, 5

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"TRUE if the returned area is not empty"
	.size	.L.str.88, 39

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"x"
	.size	.L.str.89, 2

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"x coordinate of the upper left corner of the intersection"
	.size	.L.str.90, 58

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"y"
	.size	.L.str.91, 2

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"y coordinate of the upper left corner of the intersection"
	.size	.L.str.92, 58

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"width of the intersection"
	.size	.L.str.93, 26

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"height of the intersection"
	.size	.L.str.94, 27

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gimp-drawable-merge-shadow"
	.size	.L.str.95, 27

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Merge the shadow buffer with the specified drawable."
	.size	.L.str.96, 53

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"This procedure combines the contents of the drawable's shadow buffer (for temporary processing) with the specified drawable. The 'undo' parameter specifies whether to add an undo step for the operation. Requesting no undo is useful for such applications as 'auto-apply'."
	.size	.L.str.97, 271

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"undo"
	.size	.L.str.98, 5

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Push merge to undo stack?"
	.size	.L.str.99, 26

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-drawable-free-shadow"
	.size	.L.str.100, 26

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Free the specified drawable's shadow data (if it exists)."
	.size	.L.str.101, 58

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"This procedure is intended as a memory saving device. If any shadow memory has been allocated, it will be freed automatically when the drawable is removed from the image, or when the plug-in procedure which allocated it returns."
	.size	.L.str.102, 229

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"2008"
	.size	.L.str.103, 5

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimp-drawable-update"
	.size	.L.str.104, 21

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Update the specified region of the drawable."
	.size	.L.str.105, 45

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"This procedure updates the specified region of the drawable. The (x, y) coordinate pair is relative to the drawable's origin, not to the image origin. Therefore, the entire drawable can be updated using (0, 0, width, height)."
	.size	.L.str.106, 226

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"x coordinate of upper left corner of update region"
	.size	.L.str.107, 51

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"y coordinate of upper left corner of update region"
	.size	.L.str.108, 51

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Width of update region"
	.size	.L.str.109, 23

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Height of update region"
	.size	.L.str.110, 24

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gimp-drawable-get-pixel"
	.size	.L.str.111, 24

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Gets the value of the pixel at the specified coordinates."
	.size	.L.str.112, 58

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"This procedure gets the pixel value at the specified coordinates. The 'num_channels' argument must always be equal to the bytes-per-pixel value for the specified drawable."
	.size	.L.str.113, 172

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"1997"
	.size	.L.str.114, 5

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"x-coord"
	.size	.L.str.115, 8

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"x coord"
	.size	.L.str.116, 8

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"The x coordinate"
	.size	.L.str.117, 17

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"y-coord"
	.size	.L.str.118, 8

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"y coord"
	.size	.L.str.119, 8

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"The y coordinate"
	.size	.L.str.120, 17

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"num-channels"
	.size	.L.str.121, 13

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"num channels"
	.size	.L.str.122, 13

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"The number of channels for the pixel"
	.size	.L.str.123, 37

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"pixel"
	.size	.L.str.124, 6

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"The pixel value"
	.size	.L.str.125, 16

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"gimp-drawable-set-pixel"
	.size	.L.str.126, 24

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Sets the value of the pixel at the specified coordinates."
	.size	.L.str.127, 58

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"This procedure sets the pixel value at the specified coordinates. The 'num_channels' argument must always be equal to the bytes-per-pixel value for the specified drawable. Note that this function is not undoable, you should use it only on drawables you just created yourself."
	.size	.L.str.128, 276

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"gimp-drawable-fill"
	.size	.L.str.129, 19

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Fill the drawable with the specified fill mode."
	.size	.L.str.130, 48

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"This procedure fills the drawable. If the fill mode is foreground the current foreground color is used. If the fill mode is background, the current background color is used. If the fill type is white, then white is used. Transparent fill only affects layers with an alpha channel, in which case the alpha channel is set to transparent. If the drawable has no alpha channel, it is filled to white. No fill leaves the drawable's contents undefined. This procedure is unlike 'gimp-edit-fill' or the bucket fill tool because it fills regardless of a selection. Its main purpose is to fill a newly created drawable before adding it to the image. This operation cannot be undone."
	.size	.L.str.131, 674

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"fill-type"
	.size	.L.str.132, 10

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"fill type"
	.size	.L.str.133, 10

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"The type of fill"
	.size	.L.str.134, 17

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"gimp-drawable-offset"
	.size	.L.str.135, 21

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Offset the drawable by the specified amounts in the X and Y directions"
	.size	.L.str.136, 71

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"This procedure offsets the specified drawable by the amounts specified by 'offset_x' and 'offset_y'. If 'wrap_around' is set to TRUE, then portions of the drawable which are offset out of bounds are wrapped around. Alternatively, the undefined regions of the drawable can be filled with transparency or the background color, as specified by the 'fill-type' parameter."
	.size	.L.str.137, 368

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"The drawable to offset"
	.size	.L.str.138, 23

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"wrap-around"
	.size	.L.str.139, 12

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"wrap around"
	.size	.L.str.140, 12

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"wrap image around or fill vacated regions"
	.size	.L.str.141, 42

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"fill vacated regions of drawable with background or transparent"
	.size	.L.str.142, 64

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"offset by this amount in X direction"
	.size	.L.str.143, 37

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"offset by this amount in Y direction"
	.size	.L.str.144, 37

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"gimp-drawable-thumbnail"
	.size	.L.str.145, 24

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Get a thumbnail of a drawable."
	.size	.L.str.146, 31

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"This function gets data from which a thumbnail of a drawable preview can be created. Maximum x or y dimension is 1024 pixels. The pixels are returned in RGB[A] or GRAY[A] format. The bpp return value gives the number of bytes in the image."
	.size	.L.str.147, 240

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Andy Thomas"
	.size	.L.str.148, 12

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"1999"
	.size	.L.str.149, 5

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"The requested thumbnail width"
	.size	.L.str.150, 30

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"The requested thumbnail height"
	.size	.L.str.151, 31

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"actual-width"
	.size	.L.str.152, 13

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"actual width"
	.size	.L.str.153, 13

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"The previews width"
	.size	.L.str.154, 19

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"actual-height"
	.size	.L.str.155, 14

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"actual height"
	.size	.L.str.156, 14

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"The previews height"
	.size	.L.str.157, 20

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"The previews bpp"
	.size	.L.str.158, 17

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"thumbnail-data-count"
	.size	.L.str.159, 21

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"thumbnail data count"
	.size	.L.str.160, 21

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"The number of bytes in thumbnail data"
	.size	.L.str.161, 38

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"thumbnail-data"
	.size	.L.str.162, 15

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"thumbnail data"
	.size	.L.str.163, 15

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"The thumbnail data"
	.size	.L.str.164, 19

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"gimp-drawable-sub-thumbnail"
	.size	.L.str.165, 28

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"Get a thumbnail of a sub-area of a drawable drawable."
	.size	.L.str.166, 54

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"src-x"
	.size	.L.str.167, 6

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"src x"
	.size	.L.str.168, 6

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"The x coordinate of the area"
	.size	.L.str.169, 29

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"src-y"
	.size	.L.str.170, 6

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"src y"
	.size	.L.str.171, 6

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"The y coordinate of the area"
	.size	.L.str.172, 29

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"src-width"
	.size	.L.str.173, 10

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"src width"
	.size	.L.str.174, 10

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"The width of the area"
	.size	.L.str.175, 22

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"src-height"
	.size	.L.str.176, 11

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"src height"
	.size	.L.str.177, 11

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"The height of the area"
	.size	.L.str.178, 23

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"dest-width"
	.size	.L.str.179, 11

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"dest width"
	.size	.L.str.180, 11

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"The thumbnail width"
	.size	.L.str.181, 20

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"dest-height"
	.size	.L.str.182, 12

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"dest height"
	.size	.L.str.183, 12

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"The thumbnail height"
	.size	.L.str.184, 21

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"gimp-drawable-foreground-extract"
	.size	.L.str.185, 33

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"Extract the foreground of a drawable using a given trimap."
	.size	.L.str.186, 59

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"Image Segmentation by Uniform Color Clustering, see http://www.inf.fu-berlin.de/inst/pubs/tr-b-05-07.pdf"
	.size	.L.str.187, 105

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Gerald Friedland <fland@inf.fu-berlin.de>, Kristian Jantz <jantz@inf.fu-berlin.de>, Sven Neumann <sven@gimp.org>"
	.size	.L.str.188, 113

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"Gerald Friedland"
	.size	.L.str.189, 17

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"2005"
	.size	.L.str.190, 5

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"mode"
	.size	.L.str.191, 5

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"The algorithm to use"
	.size	.L.str.192, 21

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"mask"
	.size	.L.str.193, 5

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"Tri-Map"
	.size	.L.str.194, 8

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"Plug-In"
	.size	.L.str.195, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
