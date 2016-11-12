	.text
	.file	"transform-tools-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_transform_tools_procs
	.align	16, 0x90
	.type	register_transform_tools_procs,@function
register_transform_tools_procs:         # @register_transform_tools_procs
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
	subq	$512, %rsp              # imm = 0x200
	movabsq	$flip_invoker, %rax
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
	movq	-16(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-32(%rbp), %r8          # 8-byte Reload
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.5, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.9, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$perspective_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.12, %rdx
	movq	-16(%rbp), %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.5, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.16, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.18, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.22, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.24, %rdx
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
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %rdx
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
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.28, %rdx
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
	movabsq	$.L.str.29, %rax
	movabsq	$.L.str.30, %rdx
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
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.31, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$rotate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.34, %rdx
	movq	-16(%rbp), %rdi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.5, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.37, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$scale_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.40, %rdx
	movq	-16(%rbp), %rdi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	-264(%rbp), %r9         # 8-byte Reload
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-256(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.5, %rdx
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
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.41, %rdx
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
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.42, %rdx
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
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.43, %rdx
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
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.44, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.45, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$shear_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.46, %rsi
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.48, %rdx
	movq	-16(%rbp), %rdi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	-344(%rbp), %r9         # 8-byte Reload
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-336(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.5, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.50, %rsi
	movabsq	$.L.str.51, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.53, %rdx
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
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.54, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$transform_2d_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.56, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.57, %rdx
	movq	-16(%rbp), %rdi
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	-416(%rbp), %r9         # 8-byte Reload
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-408(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.5, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.58, %rdi
	movabsq	$.L.str.59, %rsi
	movabsq	$.L.str.60, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.61, %rdi
	movabsq	$.L.str.62, %rsi
	movabsq	$.L.str.63, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.64, %rdi
	movabsq	$.L.str.65, %rsi
	movabsq	$.L.str.66, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.67, %rdi
	movabsq	$.L.str.68, %rsi
	movabsq	$.L.str.69, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.70, %rdi
	movabsq	$.L.str.71, %rsi
	movabsq	$.L.str.72, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.73, %rdi
	movabsq	$.L.str.74, %rsi
	movabsq	$.L.str.75, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_transform_tools_procs, .Lfunc_end0-register_transform_tools_procs
	.cfi_endproc

	.align	16, 0x90
	.type	flip_invoker,@function
flip_invoker:                           # @flip_invoker
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
	subq	$176, %rsp
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
	cmpl	$0, -52(%rbp)
	je	.LBB1_11
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
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
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-92(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB1_10
# BB#3:                                 # %if.then.12
	movl	$1, %r9d
	leaq	-104(%rbp), %rax
	movl	-80(%rbp), %edi
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movq	%rax, (%rsp)
	callq	gimp_transform_get_flip_axis
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB1_8
# BB#4:                                 # %land.lhs.true.17
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
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
# BB#5:                                 # %if.then.24
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_drawable_transform_flip
	cmpq	$0, %rax
	jne	.LBB1_7
# BB#6:                                 # %if.then.27
	movl	$0, -52(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_item_flip
.LBB1_9:                                # %if.end.30
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.31
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.32
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB1_13
# BB#12:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_14
.LBB1_13:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_14
.LBB1_14:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.36
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB1_16:                               # %if.end.39
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	flip_invoker, .Lfunc_end1-flip_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	perspective_invoker,@function
perspective_invoker:                    # @perspective_invoker
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
	callq	g_value_get_boolean
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
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$192, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -136(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$216, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -144(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_17
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
	je	.LBB2_16
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
	je	.LBB2_16
# BB#3:                                 # %if.then.36
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
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-120(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-144(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	gimp_transform_matrix_perspective
	cmpl	$0, -76(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.41
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -236(%rbp)
.LBB2_5:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.44
	movabsq	$.L.str.77, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB2_7:                                # %if.end.47
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB2_12
# BB#8:                                 # %land.lhs.true.52
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
	jne	.LBB2_12
# BB#9:                                 # %if.then.59
	leaq	-232(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-236(%rbp), %r8d
	movq	-32(%rbp), %rax
	movl	$0, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB2_11
# BB#10:                                # %if.then.62
	movl	$0, -52(%rbp)
.LBB2_11:                               # %if.end.63
	jmp	.LBB2_13
.LBB2_12:                               # %if.else
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
	movl	-76(%rbp), %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB2_13:                               # %if.end.66
	cmpq	$0, -32(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.68
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB2_15:                               # %if.end.69
	jmp	.LBB2_16
.LBB2_16:                               # %if.end.70
	jmp	.LBB2_17
.LBB2_17:                               # %if.end.71
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%esi, -332(%rbp)        # 4-byte Spill
	je	.LBB2_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB2_20
.LBB2_19:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB2_20
.LBB2_20:                               # %cond.end
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.75
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB2_22:                               # %if.end.78
	movq	-64(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end2:
	.size	perspective_invoker, .Lfunc_end2-perspective_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	rotate_invoker,@function
rotate_invoker:                         # @rotate_invoker
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
	subq	$304, %rsp              # imm = 0x130
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
	callq	g_value_get_boolean
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_17
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
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
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB3_16
# BB#3:                                 # %if.then.15
	movl	$0, -180(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-184(%rbp), %rsi
	leaq	-188(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-176(%rbp), %rdi
	movl	-184(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-188(%rbp), %ecx
	addl	-96(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	callq	gimp_matrix3_identity
	leaq	-176(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %r8d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_rotate_rect
	cmpl	$0, -76(%rbp)
	je	.LBB3_5
# BB#4:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -180(%rbp)
.LBB3_5:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.23
	movabsq	$.L.str.78, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB3_7:                                # %if.end.26
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB3_12
# BB#8:                                 # %land.lhs.true.31
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
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
# BB#9:                                 # %if.then.38
	leaq	-176(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-180(%rbp), %r8d
	movq	-32(%rbp), %rax
	movl	$0, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB3_11
# BB#10:                                # %if.then.41
	movl	$0, -52(%rbp)
.LBB3_11:                               # %if.end.42
	jmp	.LBB3_13
.LBB3_12:                               # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-176(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB3_13:                               # %if.end.45
	cmpq	$0, -32(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.47
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB3_15:                               # %if.end.48
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.49
	jmp	.LBB3_17
.LBB3_17:                               # %if.end.50
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movl	%esi, -276(%rbp)        # 4-byte Spill
	je	.LBB3_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB3_20
.LBB3_20:                               # %cond.end
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	-276(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.54
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB3_22:                               # %if.end.57
	movq	-64(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rotate_invoker, .Lfunc_end3-rotate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	scale_invoker,@function
scale_invoker:                          # @scale_invoker
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
	callq	g_value_get_boolean
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
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_20
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
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -225(%rbp)         # 1-byte Spill
	jbe	.LBB4_4
# BB#3:                                 # %land.rhs
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -225(%rbp)         # 1-byte Spill
.LBB4_4:                                # %land.end
	movb	-225(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_19
# BB#5:                                 # %land.lhs.true.22
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
	je	.LBB4_19
# BB#6:                                 # %if.then.27
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
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-88(%rbp), %xmm2
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-96(%rbp), %xmm3
	callq	gimp_transform_matrix_scale
	cmpl	$0, -76(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.33
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -204(%rbp)
.LBB4_8:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.36
	movabsq	$.L.str.79, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB4_10:                               # %if.end.39
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB4_15
# BB#11:                                # %land.lhs.true.44
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
	jne	.LBB4_15
# BB#12:                                # %if.then.51
	leaq	-200(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-204(%rbp), %r8d
	movq	-32(%rbp), %rax
	movl	$0, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB4_14
# BB#13:                                # %if.then.54
	movl	$0, -52(%rbp)
.LBB4_14:                               # %if.end.55
	jmp	.LBB4_16
.LBB4_15:                               # %if.else
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
	movl	-76(%rbp), %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB4_16:                               # %if.end.58
	cmpq	$0, -32(%rbp)
	je	.LBB4_18
# BB#17:                                # %if.then.60
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB4_18:                               # %if.end.61
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.62
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.63
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movl	%esi, -308(%rbp)        # 4-byte Spill
	je	.LBB4_22
# BB#21:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB4_23
.LBB4_23:                               # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-308(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_25
# BB#24:                                # %if.then.67
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB4_25:                               # %if.end.70
	movq	-64(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end4:
	.size	scale_invoker, .Lfunc_end4-scale_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	shear_invoker,@function
shear_invoker:                          # @shear_invoker
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
	subq	$304, %rsp              # imm = 0x130
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
	callq	g_value_get_boolean
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_17
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
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
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB5_16
# BB#3:                                 # %if.then.18
	movl	$0, -180(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-184(%rbp), %rsi
	leaq	-188(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	leaq	-176(%rbp), %rdi
	movl	-184(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-188(%rbp), %ecx
	addl	-96(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	callq	gimp_matrix3_identity
	leaq	-176(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_shear
	cmpl	$0, -76(%rbp)
	je	.LBB5_5
# BB#4:                                 # %if.then.23
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -180(%rbp)
.LBB5_5:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.26
	movabsq	$.L.str.80, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB5_7:                                # %if.end.29
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB5_12
# BB#8:                                 # %land.lhs.true.34
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
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
# BB#9:                                 # %if.then.41
	leaq	-176(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-180(%rbp), %r8d
	movq	-32(%rbp), %rax
	movl	$0, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB5_11
# BB#10:                                # %if.then.44
	movl	$0, -52(%rbp)
.LBB5_11:                               # %if.end.45
	jmp	.LBB5_13
.LBB5_12:                               # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-176(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB5_13:                               # %if.end.48
	cmpq	$0, -32(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.50
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB5_15:                               # %if.end.51
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.52
	jmp	.LBB5_17
.LBB5_17:                               # %if.end.53
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movl	%esi, -276(%rbp)        # 4-byte Spill
	je	.LBB5_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB5_20
.LBB5_19:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB5_20
.LBB5_20:                               # %cond.end
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	-276(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.57
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB5_22:                               # %if.end.60
	movq	-64(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end5:
	.size	shear_invoker, .Lfunc_end5-shear_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	transform_2d_invoker,@function
transform_2d_invoker:                   # @transform_2d_invoker
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
	callq	g_value_get_boolean
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
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$192, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -136(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_17
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
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
	je	.LBB6_16
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB6_16
# BB#3:                                 # %if.then.33
	leaq	-224(%rbp), %rdi
	movl	$0, -228(%rbp)
	callq	gimp_matrix3_identity
	leaq	-224(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	leaq	-224(%rbp), %rdi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_scale
	leaq	-224(%rbp), %rdi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_matrix3_rotate
	leaq	-224(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
	cmpl	$0, -76(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.36
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -228(%rbp)
.LBB6_5:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.39
	movabsq	$.L.str.81, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB6_7:                                # %if.end.42
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB6_12
# BB#8:                                 # %land.lhs.true.47
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
	jne	.LBB6_12
# BB#9:                                 # %if.then.54
	leaq	-224(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-228(%rbp), %r8d
	movq	-32(%rbp), %rax
	movl	$0, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	cmpq	$0, %rax
	jne	.LBB6_11
# BB#10:                                # %if.then.57
	movl	$0, -52(%rbp)
.LBB6_11:                               # %if.end.58
	jmp	.LBB6_13
.LBB6_12:                               # %if.else
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-224(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$3, %r9d
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB6_13:                               # %if.end.61
	cmpq	$0, -32(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.63
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB6_15:                               # %if.end.64
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.65
	jmp	.LBB6_17
.LBB6_17:                               # %if.end.66
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movl	%esi, -308(%rbp)        # 4-byte Spill
	je	.LBB6_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB6_20
.LBB6_19:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB6_20
.LBB6_20:                               # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-308(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.70
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB6_22:                               # %if.end.73
	movq	-64(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end6:
	.size	transform_2d_invoker, .Lfunc_end6-transform_2d_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-flip"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Deprecated: Use 'gimp-item-transform-flip-simple' instead."
	.size	.L.str.1, 59

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-item-transform-flip-simple"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The affected drawable"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"flip-type"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"flip type"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Type of flip"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The flipped drawable"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-perspective"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Deprecated: Use 'gimp-item-transform-perspective' instead."
	.size	.L.str.11, 59

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-item-transform-perspective"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"interpolation"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Whether to use interpolation"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"x0"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"The new x coordinate of upper-left corner of original bounding box"
	.size	.L.str.16, 67

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"y0"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The new y coordinate of upper-left corner of original bounding box"
	.size	.L.str.18, 67

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"x1"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The new x coordinate of upper-right corner of original bounding box"
	.size	.L.str.20, 68

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"y1"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The new y coordinate of upper-right corner of original bounding box"
	.size	.L.str.22, 68

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"x2"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"The new x coordinate of lower-left corner of original bounding box"
	.size	.L.str.24, 67

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"y2"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The new y coordinate of lower-left corner of original bounding box"
	.size	.L.str.26, 67

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"x3"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"The new x coordinate of lower-right corner of original bounding box"
	.size	.L.str.28, 68

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"y3"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"The new y coordinate of lower-right corner of original bounding box"
	.size	.L.str.30, 68

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"The newly mapped drawable"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-rotate"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Deprecated: Use 'gimp-item-transform-rotate' instead."
	.size	.L.str.33, 54

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-item-transform-rotate"
	.size	.L.str.34, 27

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"angle"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"The angle of rotation (radians)"
	.size	.L.str.36, 32

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The rotated drawable"
	.size	.L.str.37, 21

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-scale"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Deprecated: Use 'gimp-item-transform-scale' instead."
	.size	.L.str.39, 53

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-item-transform-scale"
	.size	.L.str.40, 26

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The new x coordinate of the upper-left corner of the scaled region"
	.size	.L.str.41, 67

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"The new y coordinate of the upper-left corner of the scaled region"
	.size	.L.str.42, 67

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"The new x coordinate of the lower-right corner of the scaled region"
	.size	.L.str.43, 68

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"The new y coordinate of the lower-right corner of the scaled region"
	.size	.L.str.44, 68

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"The scaled drawable"
	.size	.L.str.45, 20

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-shear"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Deprecated: Use 'gimp-item-transform-shear' instead."
	.size	.L.str.47, 53

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-item-transform-shear"
	.size	.L.str.48, 26

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"shear-type"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"shear type"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Type of shear"
	.size	.L.str.51, 14

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"magnitude"
	.size	.L.str.52, 10

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"The magnitude of the shear"
	.size	.L.str.53, 27

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"The sheared drawable"
	.size	.L.str.54, 21

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-transform-2d"
	.size	.L.str.55, 18

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Deprecated: Use 'gimp-item-transform-2d' instead."
	.size	.L.str.56, 50

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-item-transform-2d"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"source-x"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"source x"
	.size	.L.str.59, 9

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"X coordinate of the transformation center"
	.size	.L.str.60, 42

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"source-y"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"source y"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Y coordinate of the transformation center"
	.size	.L.str.63, 42

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"scale-x"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"scale x"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Amount to scale in x direction"
	.size	.L.str.66, 31

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"scale-y"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"scale y"
	.size	.L.str.68, 8

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Amount to scale in y direction"
	.size	.L.str.69, 31

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"dest-x"
	.size	.L.str.70, 7

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"dest x"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"X coordinate of where the centre goes"
	.size	.L.str.72, 38

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"dest-y"
	.size	.L.str.73, 7

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"dest y"
	.size	.L.str.74, 7

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Y coordinate of where the centre goes"
	.size	.L.str.75, 38

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"The transformed drawable"
	.size	.L.str.76, 25

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Perspective"
	.size	.L.str.77, 12

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Rotating"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Scaling"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Shearing"
	.size	.L.str.80, 9

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"2D Transform"
	.size	.L.str.81, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
