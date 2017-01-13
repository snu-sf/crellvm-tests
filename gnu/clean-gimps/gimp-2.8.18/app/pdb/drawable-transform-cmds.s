	.text
	.file	"drawable-transform-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_drawable_transform_procs
	.align	16, 0x90
	.type	register_drawable_transform_procs,@function
register_drawable_transform_procs:      # @register_drawable_transform_procs
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
	subq	$2000, %rsp             # imm = 0x7D0
	movabsq	$drawable_transform_flip_simple_invoker, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.1, %rax
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %rdx
	movq	-16(%rbp), %r8
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-32(%rbp), %r8          # 8-byte Reload
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.18, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_flip_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.21, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.23, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rax
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -208(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.18, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_flip_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.40, %rsi
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.21, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	-264(%rbp), %r9         # 8-byte Reload
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-248(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.23, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.42, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.18, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_perspective_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.45, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	-360(%rbp), %r9         # 8-byte Reload
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-344(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.46, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.47, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.48, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.49, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.50, %rax
	movabsq	$.L.str.51, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.53, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.54, %rax
	movabsq	$.L.str.55, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.56, %rax
	movabsq	$.L.str.57, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rax
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	-460(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -464(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_perspective_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.60, %rsi
	movabsq	$.L.str.44, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.45, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-520(%rbp), %r8         # 8-byte Reload
	movq	-520(%rbp), %r9         # 8-byte Reload
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-504(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.46, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.47, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.48, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.49, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.50, %rax
	movabsq	$.L.str.51, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.53, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.54, %rax
	movabsq	$.L.str.55, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.56, %rax
	movabsq	$.L.str.57, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.42, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_rotate_simple_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.62, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.63, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-648(%rbp), %r8         # 8-byte Reload
	movq	-648(%rbp), %r9         # 8-byte Reload
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-632(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	callq	gimp_rotation_type_get_type
	movabsq	$.L.str.64, %rdi
	movabsq	$.L.str.65, %rsi
	movabsq	$.L.str.66, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.67, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.68, %rdi
	movabsq	$.L.str.69, %rsi
	movabsq	$.L.str.70, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movl	%r11d, -684(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$.L.str.73, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movl	%r11d, -700(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.74, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_rotate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.75, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.75, %rsi
	movabsq	$.L.str.76, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.77, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-752(%rbp), %r8         # 8-byte Reload
	movq	-752(%rbp), %r9         # 8-byte Reload
	movq	-744(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-736(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.78, %rax
	movabsq	$.L.str.79, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.67, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.68, %rdi
	movabsq	$.L.str.69, %rsi
	movabsq	$.L.str.70, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -784(%rbp)        # 8-byte Spill
	movl	%r11d, -788(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$.L.str.73, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -800(%rbp)        # 8-byte Spill
	movl	%r11d, -804(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rax
	movl	%ecx, -836(%rbp)        # 4-byte Spill
	movl	-836(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -840(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.74, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_rotate_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.80, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.80, %rsi
	movabsq	$.L.str.76, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.77, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-896(%rbp), %r8         # 8-byte Reload
	movq	-896(%rbp), %r9         # 8-byte Reload
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-880(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -904(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.78, %rax
	movabsq	$.L.str.79, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.67, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.68, %rdi
	movabsq	$.L.str.69, %rsi
	movabsq	$.L.str.70, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -928(%rbp)        # 8-byte Spill
	movl	%r11d, -932(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$.L.str.73, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -944(%rbp)        # 8-byte Spill
	movl	%r11d, -948(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.42, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -960(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.74, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_scale_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.81, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.83, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1008(%rbp), %r8        # 8-byte Reload
	movq	-1008(%rbp), %r9        # 8-byte Reload
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-992(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.84, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.85, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.86, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.87, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1048(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rax
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	movl	-1076(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1080(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.88, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_scale_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.89, %rsi
	movabsq	$.L.str.82, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.83, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1136(%rbp), %r8        # 8-byte Reload
	movq	-1136(%rbp), %r9        # 8-byte Reload
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1120(%rbp), %r10       # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.84, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.85, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.86, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.87, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.42, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1192(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.88, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_shear_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.90, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.90, %rsi
	movabsq	$.L.str.91, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.92, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -1216(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -1224(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1232(%rbp), %r8        # 8-byte Reload
	movq	-1232(%rbp), %r9        # 8-byte Reload
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1216(%rbp), %r10       # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1248(%rbp)       # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.93, %rdi
	movabsq	$.L.str.94, %rsi
	movabsq	$.L.str.95, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-1248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.96, %rax
	movabsq	$.L.str.97, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1272(%rbp)       # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1288(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rax
	movl	%ecx, -1292(%rbp)       # 4-byte Spill
	movl	-1292(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1296(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.98, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1320(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_shear_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.99, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.99, %rsi
	movabsq	$.L.str.91, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.92, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -1336(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -1344(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1352(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1352(%rbp), %r8        # 8-byte Reload
	movq	-1352(%rbp), %r9        # 8-byte Reload
	movq	-1344(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1336(%rbp), %r10       # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1360(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1368(%rbp)       # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.93, %rdi
	movabsq	$.L.str.94, %rsi
	movabsq	$.L.str.95, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.96, %rax
	movabsq	$.L.str.97, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1384(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.42, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1392(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1400(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1400(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.98, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1408(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_2d_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.100, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.100, %rsi
	movabsq	$.L.str.101, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.102, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -1424(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -1432(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1440(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1440(%rbp), %r8        # 8-byte Reload
	movq	-1440(%rbp), %r9        # 8-byte Reload
	movq	-1432(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1424(%rbp), %r10       # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1448(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1448(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.103, %rdi
	movabsq	$.L.str.104, %rsi
	movabsq	$.L.str.105, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.106, %rdi
	movabsq	$.L.str.107, %rsi
	movabsq	$.L.str.108, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.109, %rdi
	movabsq	$.L.str.110, %rsi
	movabsq	$.L.str.111, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.112, %rdi
	movabsq	$.L.str.113, %rsi
	movabsq	$.L.str.114, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.78, %rax
	movabsq	$.L.str.79, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1488(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.115, %rdi
	movabsq	$.L.str.116, %rsi
	movabsq	$.L.str.117, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1496(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.118, %rdi
	movabsq	$.L.str.119, %rsi
	movabsq	$.L.str.120, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1504(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1512(%rbp)       # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1520(%rbp)       # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1528(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rax
	movl	%ecx, -1532(%rbp)       # 4-byte Spill
	movl	-1532(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1536(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1552(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.121, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1560(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_2d_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.122, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.122, %rsi
	movabsq	$.L.str.101, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.102, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -1576(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -1584(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1592(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1592(%rbp), %r8        # 8-byte Reload
	movq	-1592(%rbp), %r9        # 8-byte Reload
	movq	-1584(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1576(%rbp), %r10       # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1600(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.103, %rdi
	movabsq	$.L.str.104, %rsi
	movabsq	$.L.str.105, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1608(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.106, %rdi
	movabsq	$.L.str.107, %rsi
	movabsq	$.L.str.108, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.109, %rdi
	movabsq	$.L.str.110, %rsi
	movabsq	$.L.str.111, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1624(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.112, %rdi
	movabsq	$.L.str.113, %rsi
	movabsq	$.L.str.114, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.78, %rax
	movabsq	$.L.str.79, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -1640(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.115, %rdi
	movabsq	$.L.str.116, %rsi
	movabsq	$.L.str.117, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.118, %rdi
	movabsq	$.L.str.119, %rsi
	movabsq	$.L.str.120, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.42, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1664(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1664(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1672(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1672(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.121, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1680(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1680(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_matrix_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.123, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.123, %rsi
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.125, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -1696(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -1704(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1712(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1712(%rbp), %r8        # 8-byte Reload
	movq	-1712(%rbp), %r9        # 8-byte Reload
	movq	-1704(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1696(%rbp), %r10       # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1720(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.126, %rdi
	movabsq	$.L.str.127, %rsi
	movabsq	$.L.str.128, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1728(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.129, %rdi
	movabsq	$.L.str.130, %rsi
	movabsq	$.L.str.131, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1736(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.132, %rdi
	movabsq	$.L.str.133, %rsi
	movabsq	$.L.str.134, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1744(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.135, %rdi
	movabsq	$.L.str.136, %rsi
	movabsq	$.L.str.137, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.138, %rdi
	movabsq	$.L.str.139, %rsi
	movabsq	$.L.str.140, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1760(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.141, %rdi
	movabsq	$.L.str.142, %rsi
	movabsq	$.L.str.143, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1768(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.144, %rdi
	movabsq	$.L.str.145, %rsi
	movabsq	$.L.str.146, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1776(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1776(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.147, %rdi
	movabsq	$.L.str.148, %rsi
	movabsq	$.L.str.149, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1784(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.150, %rdi
	movabsq	$.L.str.151, %rsi
	movabsq	$.L.str.152, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1792(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1792(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1800(%rbp)       # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1808(%rbp)       # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1816(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1816(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rax
	movl	%ecx, -1820(%rbp)       # 4-byte Spill
	movl	-1820(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1824(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1832(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1840(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.121, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1848(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$drawable_transform_matrix_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.153, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.153, %rsi
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.125, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -1864(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -1872(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1880(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1880(%rbp), %r8        # 8-byte Reload
	movq	-1880(%rbp), %r9        # 8-byte Reload
	movq	-1872(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1864(%rbp), %r10       # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1888(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1888(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.126, %rdi
	movabsq	$.L.str.127, %rsi
	movabsq	$.L.str.128, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1896(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.129, %rdi
	movabsq	$.L.str.130, %rsi
	movabsq	$.L.str.131, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1904(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.132, %rdi
	movabsq	$.L.str.133, %rsi
	movabsq	$.L.str.134, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1912(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.135, %rdi
	movabsq	$.L.str.136, %rsi
	movabsq	$.L.str.137, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1920(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1920(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.138, %rdi
	movabsq	$.L.str.139, %rsi
	movabsq	$.L.str.140, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1928(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1928(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.141, %rdi
	movabsq	$.L.str.142, %rsi
	movabsq	$.L.str.143, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1936(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.144, %rdi
	movabsq	$.L.str.145, %rsi
	movabsq	$.L.str.146, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1944(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.147, %rdi
	movabsq	$.L.str.148, %rsi
	movabsq	$.L.str.149, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1952(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.150, %rdi
	movabsq	$.L.str.151, %rsi
	movabsq	$.L.str.152, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -1960(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1960(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.42, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1968(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1968(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -1976(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1976(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.121, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1984(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1984(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$2000, %rsp             # imm = 0x7D0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_drawable_transform_procs, .Lfunc_end0-register_drawable_transform_procs
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_flip_simple_invoker,@function
drawable_transform_flip_simple_invoker: # @drawable_transform_flip_simple_invoker
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -92(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_11
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_10
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	leaq	-100(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	leaq	-108(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB1_10
# BB#3:                                 # %if.then.21
	leaq	-88(%rbp), %rax
	movl	-96(%rbp), %edi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movq	%rax, (%rsp)
	callq	gimp_transform_get_flip_axis
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB1_8
# BB#4:                                 # %land.lhs.true.26
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#5:                                 # %if.then.33
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-92(%rbp), %ecx
	callq	gimp_drawable_transform_flip
	cmpq	$0, %rax
	jne	.LBB1_7
# BB#6:                                 # %if.then.36
	movl	$0, -52(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-92(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_flip
.LBB1_9:                                # %if.end.39
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.40
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.41
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB1_13
# BB#12:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_14
.LBB1_13:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_14
.LBB1_14:                               # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.45
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB1_16:                               # %if.end.48
	movq	-64(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	drawable_transform_flip_simple_invoker, .Lfunc_end1-drawable_transform_flip_simple_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_flip_invoker,@function
drawable_transform_flip_invoker:        # @drawable_transform_flip_invoker
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
	subq	$336, %rsp              # imm = 0x150
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -112(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$192, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -116(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$216, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -120(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_15
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_14
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB2_14
# BB#3:                                 # %if.then.33
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-212(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-208(%rbp), %rdi
	movl	-212(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	movl	-216(%rbp), %ecx
	addl	-128(%rbp), %ecx
	movl	%ecx, -128(%rbp)
	callq	gimp_matrix3_identity
	leaq	-208(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	gimp_transform_matrix_flip_free
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.38
	movabsq	$.L.str.154, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB2_5:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB2_10
# BB#6:                                 # %land.lhs.true.45
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB2_10
# BB#7:                                 # %if.then.52
	leaq	-208(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	-120(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB2_9
# BB#8:                                 # %if.then.55
	movl	$0, -52(%rbp)
.LBB2_9:                                # %if.end.56
	jmp	.LBB2_11
.LBB2_10:                               # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-208(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	-120(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB2_11:                               # %if.end.59
	cmpq	$0, -32(%rbp)
	je	.LBB2_13
# BB#12:                                # %if.then.61
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB2_13:                               # %if.end.62
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.63
	jmp	.LBB2_15
.LBB2_15:                               # %if.end.64
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movl	%esi, -300(%rbp)        # 4-byte Spill
	je	.LBB2_17
# BB#16:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB2_18
.LBB2_18:                               # %cond.end
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	-300(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.68
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB2_20:                               # %if.end.71
	movq	-64(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end2:
	.size	drawable_transform_flip_invoker, .Lfunc_end2-drawable_transform_flip_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_flip_default_invoker,@function
drawable_transform_flip_default_invoker: # @drawable_transform_flip_default_invoker
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
	subq	$336, %rsp              # imm = 0x150
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -112(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_17
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_16
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	leaq	-124(%rbp), %rcx
	leaq	-128(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB3_16
# BB#3:                                 # %if.then.27
	movl	$0, -204(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-208(%rbp), %rsi
	leaq	-212(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-200(%rbp), %rdi
	movl	-208(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movl	-212(%rbp), %ecx
	addl	-120(%rbp), %ecx
	movl	%ecx, -120(%rbp)
	callq	gimp_matrix3_identity
	leaq	-200(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	gimp_transform_matrix_flip_free
	cmpl	$0, -108(%rbp)
	je	.LBB3_5
# BB#4:                                 # %if.then.32
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -204(%rbp)
.LBB3_5:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.35
	movabsq	$.L.str.154, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB3_7:                                # %if.end.38
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB3_12
# BB#8:                                 # %land.lhs.true.43
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB3_12
# BB#9:                                 # %if.then.50
	leaq	-200(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-204(%rbp), %r8d
	movl	-112(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB3_11
# BB#10:                                # %if.then.53
	movl	$0, -52(%rbp)
.LBB3_11:                               # %if.end.54
	jmp	.LBB3_13
.LBB3_12:                               # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-200(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-204(%rbp), %r8d
	movl	-112(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB3_13:                               # %if.end.57
	cmpq	$0, -32(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.59
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB3_15:                               # %if.end.60
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.61
	jmp	.LBB3_17
.LBB3_17:                               # %if.end.62
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movl	%esi, -300(%rbp)        # 4-byte Spill
	je	.LBB3_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB3_20
.LBB3_20:                               # %cond.end
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	-300(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.66
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB3_22:                               # %if.end.69
	movq	-64(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end3:
	.size	drawable_transform_flip_default_invoker, .Lfunc_end3-drawable_transform_flip_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_perspective_invoker,@function
drawable_transform_perspective_invoker: # @drawable_transform_perspective_invoker
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
	subq	$368, %rsp              # imm = 0x170
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -136(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$216, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -140(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$240, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -144(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$288, %rcx              # imm = 0x120
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -148(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$312, %rcx              # imm = 0x138
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -152(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_15
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_14
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	leaq	-164(%rbp), %rcx
	leaq	-168(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB4_14
# BB#3:                                 # %if.then.45
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-244(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-240(%rbp), %rdi
	movl	-244(%rbp), %ecx
	addl	-156(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movl	-248(%rbp), %ecx
	addl	-160(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	callq	gimp_matrix3_identity
	leaq	-240(%rbp), %rdi
	movl	-156(%rbp), %esi
	movl	-160(%rbp), %edx
	movl	-164(%rbp), %ecx
	movl	-168(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-112(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-120(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-128(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-136(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	gimp_transform_matrix_perspective
	cmpq	$0, -32(%rbp)
	je	.LBB4_5
# BB#4:                                 # %if.then.50
	movabsq	$.L.str.155, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB4_5:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB4_10
# BB#6:                                 # %land.lhs.true.57
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB4_10
# BB#7:                                 # %if.then.64
	leaq	-240(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movl	-144(%rbp), %r8d
	movl	-148(%rbp), %r9d
	movl	-152(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB4_9
# BB#8:                                 # %if.then.67
	movl	$0, -52(%rbp)
.LBB4_9:                                # %if.end.68
	jmp	.LBB4_11
.LBB4_10:                               # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-240(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movl	-144(%rbp), %r8d
	movl	-148(%rbp), %r9d
	movl	-152(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB4_11:                               # %if.end.71
	cmpq	$0, -32(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.73
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB4_13:                               # %if.end.74
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.75
	jmp	.LBB4_15
.LBB4_15:                               # %if.end.76
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%esi, -332(%rbp)        # 4-byte Spill
	je	.LBB4_17
# BB#16:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB4_18
.LBB4_18:                               # %cond.end
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.80
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB4_20:                               # %if.end.83
	movq	-64(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end4:
	.size	drawable_transform_perspective_invoker, .Lfunc_end4-drawable_transform_perspective_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_perspective_default_invoker,@function
drawable_transform_perspective_default_invoker: # @drawable_transform_perspective_default_invoker
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
	subq	$368, %rsp              # imm = 0x170
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -136(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$216, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -140(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$240, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -144(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_17
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_16
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	leaq	-156(%rbp), %rcx
	leaq	-160(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB5_16
# BB#3:                                 # %if.then.39
	movl	$0, -236(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-240(%rbp), %rsi
	leaq	-244(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-232(%rbp), %rdi
	movl	-240(%rbp), %ecx
	addl	-148(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movl	-244(%rbp), %ecx
	addl	-152(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	callq	gimp_matrix3_identity
	leaq	-232(%rbp), %rdi
	movl	-148(%rbp), %esi
	movl	-152(%rbp), %edx
	movl	-156(%rbp), %ecx
	movl	-160(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-112(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-120(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-128(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-136(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	gimp_transform_matrix_perspective
	cmpl	$0, -140(%rbp)
	je	.LBB5_5
# BB#4:                                 # %if.then.44
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -236(%rbp)
.LBB5_5:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.47
	movabsq	$.L.str.155, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB5_7:                                # %if.end.50
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB5_12
# BB#8:                                 # %land.lhs.true.55
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB5_12
# BB#9:                                 # %if.then.62
	leaq	-232(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-236(%rbp), %r8d
	movl	-144(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB5_11
# BB#10:                                # %if.then.65
	movl	$0, -52(%rbp)
.LBB5_11:                               # %if.end.66
	jmp	.LBB5_13
.LBB5_12:                               # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-232(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-236(%rbp), %r8d
	movl	-144(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB5_13:                               # %if.end.69
	cmpq	$0, -32(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.71
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB5_15:                               # %if.end.72
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.73
	jmp	.LBB5_17
.LBB5_17:                               # %if.end.74
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%esi, -332(%rbp)        # 4-byte Spill
	je	.LBB5_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB5_20
.LBB5_19:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB5_20
.LBB5_20:                               # %cond.end
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.78
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB5_22:                               # %if.end.81
	movq	-64(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end5:
	.size	drawable_transform_perspective_default_invoker, .Lfunc_end5-drawable_transform_perspective_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_rotate_simple_invoker,@function
drawable_transform_rotate_simple_invoker: # @drawable_transform_rotate_simple_invoker
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
	subq	$208, %rsp
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
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
	callq	g_value_get_boolean
	movl	%eax, -92(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_11
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_10
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	leaq	-100(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	leaq	-108(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB6_10
# BB#3:                                 # %if.then.24
	leaq	-120(%rbp), %r9
	leaq	-128(%rbp), %rax
	cvtsi2sdl	-84(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	cvtsi2sdl	-88(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	-96(%rbp), %edi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movq	%rax, (%rsp)
	callq	gimp_transform_get_rotate_center
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB6_8
# BB#4:                                 # %land.lhs.true.30
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB6_8
# BB#5:                                 # %if.then.37
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-92(%rbp), %ecx
	callq	gimp_drawable_transform_rotate
	cmpq	$0, %rax
	jne	.LBB6_7
# BB#6:                                 # %if.then.40
	movl	$0, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_9
.LBB6_8:                                # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-92(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_rotate
.LBB6_9:                                # %if.end.43
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.44
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.45
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movl	%esi, -180(%rbp)        # 4-byte Spill
	je	.LBB6_13
# BB#12:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB6_14
.LBB6_13:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB6_14
.LBB6_14:                               # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.49
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB6_16:                               # %if.end.52
	movq	-64(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	drawable_transform_rotate_simple_invoker, .Lfunc_end6-drawable_transform_rotate_simple_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_rotate_invoker,@function
drawable_transform_rotate_invoker:      # @drawable_transform_rotate_invoker
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
	subq	$320, %rsp              # imm = 0x140
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$192, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$216, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -108(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_18
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_17
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	leaq	-124(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB7_17
# BB#3:                                 # %if.then.33
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-204(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-200(%rbp), %rdi
	movl	-204(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movl	-208(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	callq	gimp_matrix3_identity
	cmpl	$0, -84(%rbp)
	je	.LBB7_5
# BB#4:                                 # %if.then.38
	leaq	-200(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	movl	-124(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_rotate_rect
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	leaq	-200(%rbp), %rdi
	cvtsi2sdl	-88(%rbp), %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_transform_matrix_rotate_center
.LBB7_6:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.41
	movabsq	$.L.str.156, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB7_8:                                # %if.end.44
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB7_13
# BB#9:                                 # %land.lhs.true.49
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB7_13
# BB#10:                                # %if.then.56
	leaq	-200(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-96(%rbp), %ecx
	movl	-100(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	-108(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB7_12
# BB#11:                                # %if.then.59
	movl	$0, -52(%rbp)
.LBB7_12:                               # %if.end.60
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.61
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-200(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-96(%rbp), %ecx
	movl	-100(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	-108(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB7_14:                               # %if.end.64
	cmpq	$0, -32(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.66
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB7_16:                               # %if.end.67
	jmp	.LBB7_17
.LBB7_17:                               # %if.end.68
	jmp	.LBB7_18
.LBB7_18:                               # %if.end.69
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movl	%esi, -292(%rbp)        # 4-byte Spill
	je	.LBB7_20
# BB#19:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB7_21
.LBB7_20:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB7_21
.LBB7_21:                               # %cond.end
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_23
# BB#22:                                # %if.then.73
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB7_23:                               # %if.end.76
	movq	-64(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end7:
	.size	drawable_transform_rotate_invoker, .Lfunc_end7-drawable_transform_rotate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_rotate_default_invoker,@function
drawable_transform_rotate_default_invoker: # @drawable_transform_rotate_default_invoker
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
	subq	$320, %rsp              # imm = 0x140
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -100(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_20
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_19
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-108(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-116(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB8_19
# BB#3:                                 # %if.then.27
	movl	$0, -196(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-200(%rbp), %rsi
	leaq	-204(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-192(%rbp), %rdi
	movl	-200(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movl	-204(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	callq	gimp_matrix3_identity
	cmpl	$0, -84(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then.32
	leaq	-192(%rbp), %rdi
	movl	-104(%rbp), %esi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_rotate_rect
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	leaq	-192(%rbp), %rdi
	cvtsi2sdl	-88(%rbp), %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_transform_matrix_rotate_center
.LBB8_6:                                # %if.end
	cmpl	$0, -96(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then.35
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -196(%rbp)
.LBB8_8:                                # %if.end.37
	cmpq	$0, -32(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.39
	movabsq	$.L.str.156, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB8_10:                               # %if.end.42
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB8_15
# BB#11:                                # %land.lhs.true.47
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB8_15
# BB#12:                                # %if.then.54
	leaq	-192(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-196(%rbp), %r8d
	movl	-100(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB8_14
# BB#13:                                # %if.then.57
	movl	$0, -52(%rbp)
.LBB8_14:                               # %if.end.58
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.59
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-196(%rbp), %r8d
	movl	-100(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB8_16:                               # %if.end.62
	cmpq	$0, -32(%rbp)
	je	.LBB8_18
# BB#17:                                # %if.then.64
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB8_18:                               # %if.end.65
	jmp	.LBB8_19
.LBB8_19:                               # %if.end.66
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.67
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movl	%esi, -292(%rbp)        # 4-byte Spill
	je	.LBB8_22
# BB#21:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB8_23
.LBB8_22:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB8_23
.LBB8_23:                               # %cond.end
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_25
# BB#24:                                # %if.then.71
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB8_25:                               # %if.end.74
	movq	-64(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end8:
	.size	drawable_transform_rotate_default_invoker, .Lfunc_end8-drawable_transform_rotate_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_scale_invoker,@function
drawable_transform_scale_invoker:       # @drawable_transform_scale_invoker
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
	subq	$336, %rsp              # imm = 0x150
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -112(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$192, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -116(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$216, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -120(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_18
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	xorl	%edx, %edx
	movb	%dl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -225(%rbp)        # 1-byte Spill
	je	.LBB9_4
# BB#2:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -225(%rbp)         # 1-byte Spill
	jbe	.LBB9_4
# BB#3:                                 # %land.rhs
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -225(%rbp)         # 1-byte Spill
.LBB9_4:                                # %land.end
	movb	-225(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_17
# BB#5:                                 # %land.lhs.true.31
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB9_17
# BB#6:                                 # %if.then.36
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-212(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-208(%rbp), %rdi
	movl	-212(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	movl	-216(%rbp), %ecx
	addl	-128(%rbp), %ecx
	movl	%ecx, -128(%rbp)
	callq	gimp_matrix3_identity
	leaq	-208(%rbp), %rdi
	movl	-124(%rbp), %esi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-80(%rbp), %xmm2
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-88(%rbp), %xmm3
	callq	gimp_transform_matrix_scale
	cmpq	$0, -32(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.42
	movabsq	$.L.str.157, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB9_8:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB9_13
# BB#9:                                 # %land.lhs.true.49
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB9_13
# BB#10:                                # %if.then.56
	leaq	-208(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	-120(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB9_12
# BB#11:                                # %if.then.59
	movl	$0, -52(%rbp)
.LBB9_12:                               # %if.end.60
	jmp	.LBB9_14
.LBB9_13:                               # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-208(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	-120(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB9_14:                               # %if.end.63
	cmpq	$0, -32(%rbp)
	je	.LBB9_16
# BB#15:                                # %if.then.65
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB9_16:                               # %if.end.66
	jmp	.LBB9_17
.LBB9_17:                               # %if.end.67
	jmp	.LBB9_18
.LBB9_18:                               # %if.end.68
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movl	%esi, -308(%rbp)        # 4-byte Spill
	je	.LBB9_20
# BB#19:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB9_21
.LBB9_20:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB9_21
.LBB9_21:                               # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-308(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_23
# BB#22:                                # %if.then.72
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB9_23:                               # %if.end.75
	movq	-64(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end9:
	.size	drawable_transform_scale_invoker, .Lfunc_end9-drawable_transform_scale_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_scale_default_invoker,@function
drawable_transform_scale_default_invoker: # @drawable_transform_scale_default_invoker
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
	subq	$336, %rsp              # imm = 0x150
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -112(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_20
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	xorl	%edx, %edx
	movb	%dl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -225(%rbp)        # 1-byte Spill
	je	.LBB10_4
# BB#2:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -225(%rbp)         # 1-byte Spill
	jbe	.LBB10_4
# BB#3:                                 # %land.rhs
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -225(%rbp)         # 1-byte Spill
.LBB10_4:                               # %land.end
	movb	-225(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_19
# BB#5:                                 # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	leaq	-124(%rbp), %rcx
	leaq	-128(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB10_19
# BB#6:                                 # %if.then.30
	movl	$0, -204(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-208(%rbp), %rsi
	leaq	-212(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-200(%rbp), %rdi
	movl	-208(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movl	-212(%rbp), %ecx
	addl	-120(%rbp), %ecx
	movl	%ecx, -120(%rbp)
	callq	gimp_matrix3_identity
	leaq	-200(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-80(%rbp), %xmm2
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-88(%rbp), %xmm3
	callq	gimp_transform_matrix_scale
	cmpl	$0, -108(%rbp)
	je	.LBB10_8
# BB#7:                                 # %if.then.36
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -204(%rbp)
.LBB10_8:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.39
	movabsq	$.L.str.157, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB10_10:                              # %if.end.42
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB10_15
# BB#11:                                # %land.lhs.true.47
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB10_15
# BB#12:                                # %if.then.54
	leaq	-200(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-204(%rbp), %r8d
	movl	-112(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB10_14
# BB#13:                                # %if.then.57
	movl	$0, -52(%rbp)
.LBB10_14:                              # %if.end.58
	jmp	.LBB10_16
.LBB10_15:                              # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-200(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-204(%rbp), %r8d
	movl	-112(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB10_16:                              # %if.end.61
	cmpq	$0, -32(%rbp)
	je	.LBB10_18
# BB#17:                                # %if.then.63
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB10_18:                              # %if.end.64
	jmp	.LBB10_19
.LBB10_19:                              # %if.end.65
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.66
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movl	%esi, -308(%rbp)        # 4-byte Spill
	je	.LBB10_22
# BB#21:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB10_23
.LBB10_22:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB10_23
.LBB10_23:                              # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-308(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_25
# BB#24:                                # %if.then.70
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB10_25:                              # %if.end.73
	movq	-64(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end10:
	.size	drawable_transform_scale_default_invoker, .Lfunc_end10-drawable_transform_scale_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_shear_invoker,@function
drawable_transform_shear_invoker:       # @drawable_transform_shear_invoker
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
	subq	$320, %rsp              # imm = 0x140
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -104(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_15
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_14
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB11_14
# BB#3:                                 # %if.then.27
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-196(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-192(%rbp), %rdi
	movl	-196(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-200(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	callq	gimp_matrix3_identity
	leaq	-192(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	movl	-116(%rbp), %ecx
	movl	-120(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_shear
	cmpq	$0, -32(%rbp)
	je	.LBB11_5
# BB#4:                                 # %if.then.32
	movabsq	$.L.str.158, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB11_5:                               # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB11_10
# BB#6:                                 # %land.lhs.true.39
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB11_10
# BB#7:                                 # %if.then.46
	leaq	-192(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movl	-100(%rbp), %r9d
	movl	-104(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB11_9
# BB#8:                                 # %if.then.49
	movl	$0, -52(%rbp)
.LBB11_9:                               # %if.end.50
	jmp	.LBB11_11
.LBB11_10:                              # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movl	-100(%rbp), %r9d
	movl	-104(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB11_11:                              # %if.end.53
	cmpq	$0, -32(%rbp)
	je	.LBB11_13
# BB#12:                                # %if.then.55
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB11_13:                              # %if.end.56
	jmp	.LBB11_14
.LBB11_14:                              # %if.end.57
	jmp	.LBB11_15
.LBB11_15:                              # %if.end.58
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movl	%esi, -284(%rbp)        # 4-byte Spill
	je	.LBB11_17
# BB#16:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB11_18
.LBB11_17:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB11_18
.LBB11_18:                              # %cond.end
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	-284(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_20
# BB#19:                                # %if.then.62
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB11_20:                              # %if.end.65
	movq	-64(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end11:
	.size	drawable_transform_shear_invoker, .Lfunc_end11-drawable_transform_shear_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_shear_default_invoker,@function
drawable_transform_shear_default_invoker: # @drawable_transform_shear_default_invoker
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
	subq	$320, %rsp              # imm = 0x140
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -96(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_17
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_16
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-108(%rbp), %rcx
	leaq	-112(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB12_16
# BB#3:                                 # %if.then.21
	movl	$0, -188(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %rsi
	leaq	-196(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-184(%rbp), %rdi
	movl	-192(%rbp), %ecx
	addl	-100(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	movl	-196(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	callq	gimp_matrix3_identity
	leaq	-184(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_shear
	cmpl	$0, -92(%rbp)
	je	.LBB12_5
# BB#4:                                 # %if.then.26
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -188(%rbp)
.LBB12_5:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB12_7
# BB#6:                                 # %if.then.29
	movabsq	$.L.str.158, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB12_7:                               # %if.end.32
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB12_12
# BB#8:                                 # %land.lhs.true.37
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB12_12
# BB#9:                                 # %if.then.44
	leaq	-184(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-188(%rbp), %r8d
	movl	-96(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB12_11
# BB#10:                                # %if.then.47
	movl	$0, -52(%rbp)
.LBB12_11:                              # %if.end.48
	jmp	.LBB12_13
.LBB12_12:                              # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-184(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-188(%rbp), %r8d
	movl	-96(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB12_13:                              # %if.end.51
	cmpq	$0, -32(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.53
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB12_15:                              # %if.end.54
	jmp	.LBB12_16
.LBB12_16:                              # %if.end.55
	jmp	.LBB12_17
.LBB12_17:                              # %if.end.56
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movl	%esi, -284(%rbp)        # 4-byte Spill
	je	.LBB12_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB12_20
.LBB12_19:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB12_20
.LBB12_20:                              # %cond.end
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	-284(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.60
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB12_22:                              # %if.end.63
	movq	-64(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end12:
	.size	drawable_transform_shear_default_invoker, .Lfunc_end12-drawable_transform_shear_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_2d_invoker,@function
drawable_transform_2d_invoker:          # @drawable_transform_2d_invoker
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
	subq	$352, %rsp              # imm = 0x160
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -132(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$216, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -136(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$264, %rcx              # imm = 0x108
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -140(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$288, %rcx              # imm = 0x120
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -144(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_15
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_14
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	leaq	-156(%rbp), %rcx
	leaq	-160(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB13_14
# BB#3:                                 # %if.then.42
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-236(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-232(%rbp), %rdi
	movl	-236(%rbp), %ecx
	addl	-148(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movl	-240(%rbp), %ecx
	addl	-152(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	callq	gimp_matrix3_identity
	leaq	-232(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	leaq	-232(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_scale
	leaq	-232(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_matrix3_rotate
	leaq	-232(%rbp), %rdi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
	cmpq	$0, -32(%rbp)
	je	.LBB13_5
# BB#4:                                 # %if.then.48
	movabsq	$.L.str.159, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB13_5:                               # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB13_10
# BB#6:                                 # %land.lhs.true.55
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB13_10
# BB#7:                                 # %if.then.62
	leaq	-232(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-144(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB13_9
# BB#8:                                 # %if.then.65
	movl	$0, -52(%rbp)
.LBB13_9:                               # %if.end.66
	jmp	.LBB13_11
.LBB13_10:                              # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-232(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-144(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB13_11:                              # %if.end.69
	cmpq	$0, -32(%rbp)
	je	.LBB13_13
# BB#12:                                # %if.then.71
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB13_13:                              # %if.end.72
	jmp	.LBB13_14
.LBB13_14:                              # %if.end.73
	jmp	.LBB13_15
.LBB13_15:                              # %if.end.74
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movl	%esi, -324(%rbp)        # 4-byte Spill
	je	.LBB13_17
# BB#16:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB13_18
.LBB13_17:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB13_18
.LBB13_18:                              # %cond.end
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	-324(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_20
# BB#19:                                # %if.then.78
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB13_20:                              # %if.end.81
	movq	-64(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end13:
	.size	drawable_transform_2d_invoker, .Lfunc_end13-drawable_transform_2d_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_2d_default_invoker,@function
drawable_transform_2d_default_invoker:  # @drawable_transform_2d_default_invoker
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
	subq	$352, %rsp              # imm = 0x160
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -132(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$216, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -136(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_17
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_16
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB14_16
# BB#3:                                 # %if.then.36
	movl	$0, -228(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-232(%rbp), %rsi
	leaq	-236(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-224(%rbp), %rdi
	movl	-232(%rbp), %ecx
	addl	-140(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-236(%rbp), %ecx
	addl	-144(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	callq	gimp_matrix3_identity
	leaq	-224(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	leaq	-224(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_scale
	leaq	-224(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_matrix3_rotate
	leaq	-224(%rbp), %rdi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
	cmpl	$0, -132(%rbp)
	je	.LBB14_5
# BB#4:                                 # %if.then.42
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -228(%rbp)
.LBB14_5:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB14_7
# BB#6:                                 # %if.then.45
	movabsq	$.L.str.160, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB14_7:                               # %if.end.48
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB14_12
# BB#8:                                 # %land.lhs.true.53
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB14_12
# BB#9:                                 # %if.then.60
	leaq	-224(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-228(%rbp), %r8d
	movl	-136(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB14_11
# BB#10:                                # %if.then.63
	movl	$0, -52(%rbp)
.LBB14_11:                              # %if.end.64
	jmp	.LBB14_13
.LBB14_12:                              # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-224(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-228(%rbp), %r8d
	movl	-136(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB14_13:                              # %if.end.67
	cmpq	$0, -32(%rbp)
	je	.LBB14_15
# BB#14:                                # %if.then.69
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB14_15:                              # %if.end.70
	jmp	.LBB14_16
.LBB14_16:                              # %if.end.71
	jmp	.LBB14_17
.LBB14_17:                              # %if.end.72
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movl	%esi, -324(%rbp)        # 4-byte Spill
	je	.LBB14_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB14_20
.LBB14_19:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB14_20
.LBB14_20:                              # %cond.end
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	-324(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_22
# BB#21:                                # %if.then.76
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB14_22:                              # %if.end.79
	movq	-64(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end14:
	.size	drawable_transform_2d_default_invoker, .Lfunc_end14-drawable_transform_2d_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_matrix_invoker,@function
drawable_transform_matrix_invoker:      # @drawable_transform_matrix_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -136(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$216, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$240, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -148(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$264, %rcx              # imm = 0x108
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -152(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$312, %rcx              # imm = 0x138
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -156(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$336, %rcx              # imm = 0x150
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -160(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_15
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_14
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	leaq	-172(%rbp), %rcx
	leaq	-176(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB15_14
# BB#3:                                 # %if.then.48
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-252(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-252(%rbp), %ecx
	addl	-164(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movl	-256(%rbp), %ecx
	addl	-168(%rbp), %ecx
	movl	%ecx, -168(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB15_5
# BB#4:                                 # %if.then.79
	movabsq	$.L.str.160, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB15_5:                               # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB15_10
# BB#6:                                 # %land.lhs.true.86
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB15_10
# BB#7:                                 # %if.then.93
	leaq	-248(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-148(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	-160(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB15_9
# BB#8:                                 # %if.then.96
	movl	$0, -52(%rbp)
.LBB15_9:                               # %if.end.97
	jmp	.LBB15_11
.LBB15_10:                              # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-248(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-148(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	-160(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB15_11:                              # %if.end.100
	cmpq	$0, -32(%rbp)
	je	.LBB15_13
# BB#12:                                # %if.then.102
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB15_13:                              # %if.end.103
	jmp	.LBB15_14
.LBB15_14:                              # %if.end.104
	jmp	.LBB15_15
.LBB15_15:                              # %if.end.105
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movl	%esi, -340(%rbp)        # 4-byte Spill
	je	.LBB15_17
# BB#16:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB15_18
.LBB15_17:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB15_18
.LBB15_18:                              # %cond.end
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	-340(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_20
# BB#19:                                # %if.then.109
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB15_20:                              # %if.end.112
	movq	-64(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end15:
	.size	drawable_transform_matrix_invoker, .Lfunc_end15-drawable_transform_matrix_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	drawable_transform_matrix_default_invoker,@function
drawable_transform_matrix_default_invoker: # @drawable_transform_matrix_default_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
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
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -136(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$216, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -144(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$240, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -148(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$264, %rcx              # imm = 0x108
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -152(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_17
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_16
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	leaq	-164(%rbp), %rcx
	leaq	-168(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB16_16
# BB#3:                                 # %if.then.42
	movl	$0, -244(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-248(%rbp), %rsi
	leaq	-252(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-248(%rbp), %ecx
	addl	-156(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movl	-252(%rbp), %ecx
	addl	-160(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	cmpl	$0, -148(%rbp)
	je	.LBB16_5
# BB#4:                                 # %if.then.73
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -244(%rbp)
.LBB16_5:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB16_7
# BB#6:                                 # %if.then.76
	movabsq	$.L.str.160, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB16_7:                               # %if.end.79
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB16_12
# BB#8:                                 # %land.lhs.true.84
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB16_12
# BB#9:                                 # %if.then.91
	leaq	-240(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-244(%rbp), %r8d
	movl	-152(%rbp), %eax
	movq	-32(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB16_11
# BB#10:                                # %if.then.94
	movl	$0, -52(%rbp)
.LBB16_11:                              # %if.end.95
	jmp	.LBB16_13
.LBB16_12:                              # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-240(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-244(%rbp), %r8d
	movl	-152(%rbp), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB16_13:                              # %if.end.98
	cmpq	$0, -32(%rbp)
	je	.LBB16_15
# BB#14:                                # %if.then.100
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB16_15:                              # %if.end.101
	jmp	.LBB16_16
.LBB16_16:                              # %if.end.102
	jmp	.LBB16_17
.LBB16_17:                              # %if.end.103
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movl	%esi, -340(%rbp)        # 4-byte Spill
	je	.LBB16_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB16_20
.LBB16_19:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB16_20
.LBB16_20:                              # %cond.end
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	-340(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_22
# BB#21:                                # %if.then.107
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB16_22:                              # %if.end.110
	movq	-64(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end16:
	.size	drawable_transform_matrix_default_invoker, .Lfunc_end16-drawable_transform_matrix_default_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-drawable-transform-flip-simple"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Deprecated: Use 'gimp-item-transform-flip-simple' instead."
	.size	.L.str.1, 59

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Jo\303\243o S. O. Bueno"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2004"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-item-transform-flip-simple"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"drawable"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The affected drawable"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"flip-type"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"flip type"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Type of flip"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"auto-center"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"auto center"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Whether to automatically position the axis in the selection center"
	.size	.L.str.12, 67

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"axis"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"coord. of flip axis"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"clip-result"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"clip result"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Whether to clip results"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The flipped drawable"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-drawable-transform-flip"
	.size	.L.str.19, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Deprecated: Use 'gimp-item-transform-flip' instead."
	.size	.L.str.20, 52

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-item-transform-flip"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"x0"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"horz. coord. of one end of axis"
	.size	.L.str.23, 32

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"y0"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"vert. coord. of one end of axis"
	.size	.L.str.25, 32

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"x1"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"horz. coord. of other end of axis"
	.size	.L.str.27, 34

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"y1"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"vert. coord. of other end of axis"
	.size	.L.str.29, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"transform-direction"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"transform direction"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Direction of transformation"
	.size	.L.str.32, 28

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"interpolation"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Type of interpolation"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"supersample"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"This parameter is ignored, supersampling is performed based on the interpolation type"
	.size	.L.str.36, 86

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"recursion-level"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"recursion level"
	.size	.L.str.38, 16

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Maximum recursion level used for supersampling (3 is a nice value)"
	.size	.L.str.39, 67

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-drawable-transform-flip-default"
	.size	.L.str.40, 37

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"interpolate"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Whether to use interpolation and supersampling"
	.size	.L.str.42, 47

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-drawable-transform-perspective"
	.size	.L.str.43, 36

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Deprecated: Use 'gimp-item-transform-perspective' instead."
	.size	.L.str.44, 59

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-item-transform-perspective"
	.size	.L.str.45, 32

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The new x coordinate of upper-left corner of original bounding box"
	.size	.L.str.46, 67

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The new y coordinate of upper-left corner of original bounding box"
	.size	.L.str.47, 67

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"The new x coordinate of upper-right corner of original bounding box"
	.size	.L.str.48, 68

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"The new y coordinate of upper-right corner of original bounding box"
	.size	.L.str.49, 68

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"x2"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"The new x coordinate of lower-left corner of original bounding box"
	.size	.L.str.51, 67

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"y2"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"The new y coordinate of lower-left corner of original bounding box"
	.size	.L.str.53, 67

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"x3"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"The new x coordinate of lower-right corner of original bounding box"
	.size	.L.str.55, 68

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"y3"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"The new y coordinate of lower-right corner of original bounding box"
	.size	.L.str.57, 68

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"How to clip results"
	.size	.L.str.58, 20

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"The newly mapped drawable"
	.size	.L.str.59, 26

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-drawable-transform-perspective-default"
	.size	.L.str.60, 44

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-drawable-transform-rotate-simple"
	.size	.L.str.61, 38

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Deprecated: Use 'gimp-item-transform-rotate-simple' instead."
	.size	.L.str.62, 61

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-item-transform-rotate-simple"
	.size	.L.str.63, 34

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"rotate-type"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"rotate type"
	.size	.L.str.65, 12

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Type of rotation"
	.size	.L.str.66, 17

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Whether to automatically rotate around the selection center"
	.size	.L.str.67, 60

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"center-x"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"center x"
	.size	.L.str.69, 9

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"The hor. coordinate of the center of rotation"
	.size	.L.str.70, 46

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"center-y"
	.size	.L.str.71, 9

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"center y"
	.size	.L.str.72, 9

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"The vert. coordinate of the center of rotation"
	.size	.L.str.73, 47

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"The rotated drawable"
	.size	.L.str.74, 21

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-drawable-transform-rotate"
	.size	.L.str.75, 31

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Deprecated: Use 'gimp-item-transform-rotate' instead."
	.size	.L.str.76, 54

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimp-item-transform-rotate"
	.size	.L.str.77, 27

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"angle"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"The angle of rotation (radians)"
	.size	.L.str.79, 32

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gimp-drawable-transform-rotate-default"
	.size	.L.str.80, 39

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-drawable-transform-scale"
	.size	.L.str.81, 30

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Deprecated: Use 'gimp-item-transform-scale' instead."
	.size	.L.str.82, 53

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-item-transform-scale"
	.size	.L.str.83, 26

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"The new x coordinate of the upper-left corner of the scaled region"
	.size	.L.str.84, 67

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"The new y coordinate of the upper-left corner of the scaled region"
	.size	.L.str.85, 67

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"The new x coordinate of the lower-right corner of the scaled region"
	.size	.L.str.86, 68

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"The new y coordinate of the lower-right corner of the scaled region"
	.size	.L.str.87, 68

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"The scaled drawable"
	.size	.L.str.88, 20

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gimp-drawable-transform-scale-default"
	.size	.L.str.89, 38

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"gimp-drawable-transform-shear"
	.size	.L.str.90, 30

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Deprecated: Use 'gimp-item-transform-shear' instead."
	.size	.L.str.91, 53

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gimp-item-transform-shear"
	.size	.L.str.92, 26

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"shear-type"
	.size	.L.str.93, 11

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"shear type"
	.size	.L.str.94, 11

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Type of shear"
	.size	.L.str.95, 14

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"magnitude"
	.size	.L.str.96, 10

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"The magnitude of the shear"
	.size	.L.str.97, 27

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"The sheared drawable"
	.size	.L.str.98, 21

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"gimp-drawable-transform-shear-default"
	.size	.L.str.99, 38

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-drawable-transform-2d"
	.size	.L.str.100, 27

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Deprecated: Use 'gimp-item-transform-2d' instead."
	.size	.L.str.101, 50

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gimp-item-transform-2d"
	.size	.L.str.102, 23

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"source-x"
	.size	.L.str.103, 9

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"source x"
	.size	.L.str.104, 9

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"X coordinate of the transformation center"
	.size	.L.str.105, 42

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"source-y"
	.size	.L.str.106, 9

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"source y"
	.size	.L.str.107, 9

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Y coordinate of the transformation center"
	.size	.L.str.108, 42

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"scale-x"
	.size	.L.str.109, 8

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"scale x"
	.size	.L.str.110, 8

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Amount to scale in x direction"
	.size	.L.str.111, 31

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"scale-y"
	.size	.L.str.112, 8

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"scale y"
	.size	.L.str.113, 8

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Amount to scale in y direction"
	.size	.L.str.114, 31

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"dest-x"
	.size	.L.str.115, 7

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"dest x"
	.size	.L.str.116, 7

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"X coordinate of where the center goes"
	.size	.L.str.117, 38

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"dest-y"
	.size	.L.str.118, 7

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"dest y"
	.size	.L.str.119, 7

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Y coordinate of where the center goes"
	.size	.L.str.120, 38

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"The transformed drawable"
	.size	.L.str.121, 25

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"gimp-drawable-transform-2d-default"
	.size	.L.str.122, 35

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"gimp-drawable-transform-matrix"
	.size	.L.str.123, 31

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Deprecated: Use 'gimp-item-transform-matrix' instead."
	.size	.L.str.124, 54

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"gimp-item-transform-matrix"
	.size	.L.str.125, 27

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"coeff-0-0"
	.size	.L.str.126, 10

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"coeff 0 0"
	.size	.L.str.127, 10

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"coefficient (0,0) of the transformation matrix"
	.size	.L.str.128, 47

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"coeff-0-1"
	.size	.L.str.129, 10

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"coeff 0 1"
	.size	.L.str.130, 10

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"coefficient (0,1) of the transformation matrix"
	.size	.L.str.131, 47

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"coeff-0-2"
	.size	.L.str.132, 10

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"coeff 0 2"
	.size	.L.str.133, 10

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"coefficient (0,2) of the transformation matrix"
	.size	.L.str.134, 47

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"coeff-1-0"
	.size	.L.str.135, 10

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"coeff 1 0"
	.size	.L.str.136, 10

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"coefficient (1,0) of the transformation matrix"
	.size	.L.str.137, 47

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"coeff-1-1"
	.size	.L.str.138, 10

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"coeff 1 1"
	.size	.L.str.139, 10

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"coefficient (1,1) of the transformation matrix"
	.size	.L.str.140, 47

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"coeff-1-2"
	.size	.L.str.141, 10

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"coeff 1 2"
	.size	.L.str.142, 10

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"coefficient (1,2) of the transformation matrix"
	.size	.L.str.143, 47

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"coeff-2-0"
	.size	.L.str.144, 10

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"coeff 2 0"
	.size	.L.str.145, 10

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"coefficient (2,0) of the transformation matrix"
	.size	.L.str.146, 47

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"coeff-2-1"
	.size	.L.str.147, 10

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"coeff 2 1"
	.size	.L.str.148, 10

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"coefficient (2,1) of the transformation matrix"
	.size	.L.str.149, 47

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"coeff-2-2"
	.size	.L.str.150, 10

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"coeff 2 2"
	.size	.L.str.151, 10

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"coefficient (2,2) of the transformation matrix"
	.size	.L.str.152, 47

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"gimp-drawable-transform-matrix-default"
	.size	.L.str.153, 39

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"Flipping"
	.size	.L.str.154, 9

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"Perspective"
	.size	.L.str.155, 12

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"Rotating"
	.size	.L.str.156, 9

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"Scaling"
	.size	.L.str.157, 8

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"Shearing"
	.size	.L.str.158, 9

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"2D Transform"
	.size	.L.str.159, 13

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"2D Transforming"
	.size	.L.str.160, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
