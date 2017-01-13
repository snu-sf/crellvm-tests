	.text
	.file	"item-transform-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_item_transform_procs
	.align	16, 0x90
	.type	register_item_transform_procs,@function
register_item_transform_procs:          # @register_item_transform_procs
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
	subq	$704, %rsp              # imm = 0x2C0
	movabsq	$item_transform_flip_simple_invoker, %rax
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
	movabsq	$.L.str.1, %rdx
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.16, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_transform_flip_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.20, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.22, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.24, %rdx
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
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %rdx
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
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.28, %rdx
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
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.16, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_transform_perspective_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.20, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.32, %rdx
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
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.33, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.34, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.35, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.36, %rax
	movabsq	$.L.str.37, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.38, %rax
	movabsq	$.L.str.39, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.40, %rax
	movabsq	$.L.str.41, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.43, %rdx
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
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.44, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_transform_rotate_simple_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	movabsq	$.L.str.47, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.20, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gimp_rotation_type_get_type
	movabsq	$.L.str.48, %rdi
	movabsq	$.L.str.49, %rsi
	movabsq	$.L.str.50, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.51, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.55, %rdi
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.57, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_transform_rotate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.59, %rsi
	movabsq	$.L.str.46, %rdx
	movabsq	$.L.str.60, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.20, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.61, %rax
	movabsq	$.L.str.62, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.51, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.55, %rdi
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.57, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_transform_scale_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.63, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.63, %rsi
	movabsq	$.L.str.64, %rdx
	movabsq	$.L.str.65, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.20, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.66, %rdx
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
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.67, %rdx
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
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.68, %rdx
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
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.69, %rdx
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
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_transform_shear_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.71, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.71, %rsi
	movabsq	$.L.str.72, %rdx
	movabsq	$.L.str.73, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.20, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.74, %rdi
	movabsq	$.L.str.75, %rsi
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.77, %rax
	movabsq	$.L.str.78, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.79, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_transform_2d_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.80, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.80, %rsi
	movabsq	$.L.str.81, %rdx
	movabsq	$.L.str.82, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.20, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.83, %rdi
	movabsq	$.L.str.84, %rsi
	movabsq	$.L.str.85, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.86, %rdi
	movabsq	$.L.str.87, %rsi
	movabsq	$.L.str.88, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.89, %rdi
	movabsq	$.L.str.90, %rsi
	movabsq	$.L.str.91, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.92, %rdi
	movabsq	$.L.str.93, %rsi
	movabsq	$.L.str.94, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.61, %rax
	movabsq	$.L.str.62, %rdx
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
	movabsq	$.L.str.95, %rdi
	movabsq	$.L.str.96, %rsi
	movabsq	$.L.str.97, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.98, %rdi
	movabsq	$.L.str.99, %rsi
	movabsq	$.L.str.100, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.101, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_transform_matrix_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.102, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.102, %rsi
	movabsq	$.L.str.81, %rdx
	movabsq	$.L.str.103, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.20, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %r11
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.104, %rdi
	movabsq	$.L.str.105, %rsi
	movabsq	$.L.str.106, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.107, %rdi
	movabsq	$.L.str.108, %rsi
	movabsq	$.L.str.109, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.110, %rdi
	movabsq	$.L.str.111, %rsi
	movabsq	$.L.str.112, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.113, %rdi
	movabsq	$.L.str.114, %rsi
	movabsq	$.L.str.115, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.116, %rdi
	movabsq	$.L.str.117, %rsi
	movabsq	$.L.str.118, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.119, %rdi
	movabsq	$.L.str.120, %rsi
	movabsq	$.L.str.121, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.122, %rdi
	movabsq	$.L.str.123, %rsi
	movabsq	$.L.str.124, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.125, %rdi
	movabsq	$.L.str.126, %rsi
	movabsq	$.L.str.127, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.128, %rdi
	movabsq	$.L.str.129, %rsi
	movabsq	$.L.str.130, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.101, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_item_transform_procs, .Lfunc_end0-register_item_transform_procs
	.cfi_endproc

	.align	16, 0x90
	.type	item_transform_flip_simple_invoker,@function
item_transform_flip_simple_invoker:     # @item_transform_flip_simple_invoker
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
	subq	$224, %rsp
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
	callq	gimp_value_get_item
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
	cmpl	$0, -52(%rbp)
	je	.LBB1_20
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_19
# BB#2:                                 # %land.lhs.true
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB1_19
# BB#3:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	leaq	-88(%rbp), %rax
	movl	-116(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-120(%rbp), %ecx
	addl	-96(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movq	%rax, (%rsp)
	callq	gimp_transform_get_flip_axis
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB1_5
# BB#4:                                 # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB1_10
.LBB1_5:                                # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_8
# BB#6:                                 # %land.lhs.true.22
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB1_8
# BB#7:                                 # %if.then.24
	movl	$1, -140(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.25
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB1_9:                                # %if.end
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.27
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB1_17
# BB#11:                                # %land.lhs.true.29
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB1_17
# BB#12:                                # %land.lhs.true.34
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB1_17
# BB#13:                                # %if.then.39
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movl	396(%rdi), %ecx
	movq	%rax, %rdi
	callq	gimp_drawable_transform_flip
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.45
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.48
	movl	$0, -52(%rbp)
.LBB1_16:                               # %if.end.49
	jmp	.LBB1_18
.LBB1_17:                               # %if.else.50
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-112(%rbp), %rax
	movl	396(%rax), %ecx
	callq	gimp_item_flip
.LBB1_18:                               # %if.end.52
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.53
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.54
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movl	%esi, -196(%rbp)        # 4-byte Spill
	je	.LBB1_22
# BB#21:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB1_23
.LBB1_23:                               # %cond.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.58
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB1_25:                               # %if.end.61
	movq	-64(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	item_transform_flip_simple_invoker, .Lfunc_end1-item_transform_flip_simple_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_transform_flip_invoker,@function
item_transform_flip_invoker:            # @item_transform_flip_invoker
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
	callq	gimp_value_get_item
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
	cmpl	$0, -52(%rbp)
	je	.LBB2_24
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_23
# BB#2:                                 # %land.lhs.true
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB2_23
# BB#3:                                 # %if.then.17
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-204(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	leaq	-200(%rbp), %rdi
	movl	-204(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-208(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	callq	gimp_matrix3_identity
	leaq	-200(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	gimp_transform_matrix_flip_free
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.22
	movabsq	$.L.str.131, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB2_5:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB2_7
# BB#6:                                 # %if.then.27
	movl	$0, -228(%rbp)
	jmp	.LBB2_12
.LBB2_7:                                # %if.else
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_10
# BB#8:                                 # %land.lhs.true.29
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB2_10
# BB#9:                                 # %if.then.31
	movl	$1, -228(%rbp)
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.32
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB2_11:                               # %if.end.34
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.35
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB2_19
# BB#13:                                # %land.lhs.true.37
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB2_19
# BB#14:                                # %land.lhs.true.42
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB2_19
# BB#15:                                # %if.then.47
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-200(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movl	392(%rdi), %ecx
	movq	-128(%rbp), %rdi
	movl	388(%rdi), %r8d
	movq	-128(%rbp), %rdi
	movl	400(%rdi), %r9d
	movq	-128(%rbp), %rdi
	movl	396(%rdi), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	je	.LBB2_17
# BB#16:                                # %if.then.53
	movq	-240(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB2_18
.LBB2_17:                               # %if.else.56
	movl	$0, -52(%rbp)
.LBB2_18:                               # %if.end.57
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.58
	leaq	-200(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	392(%rax), %ecx
	movq	-128(%rbp), %rax
	movl	388(%rax), %r8d
	movq	-128(%rbp), %rax
	movl	400(%rax), %r9d
	movq	-128(%rbp), %rax
	movl	396(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB2_20:                               # %if.end.63
	cmpq	$0, -32(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.65
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB2_22:                               # %if.end.66
	jmp	.LBB2_23
.LBB2_23:                               # %if.end.67
	jmp	.LBB2_24
.LBB2_24:                               # %if.end.68
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movl	%esi, -308(%rbp)        # 4-byte Spill
	je	.LBB2_26
# BB#25:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB2_27
.LBB2_26:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB2_27
.LBB2_27:                               # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-308(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_29
# BB#28:                                # %if.then.72
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB2_29:                               # %if.end.75
	movq	-64(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end2:
	.size	item_transform_flip_invoker, .Lfunc_end2-item_transform_flip_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_transform_perspective_invoker,@function
item_transform_perspective_invoker:     # @item_transform_perspective_invoker
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
	callq	gimp_value_get_item
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
	cmpl	$0, -52(%rbp)
	je	.LBB3_24
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_23
# BB#2:                                 # %land.lhs.true
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB3_23
# BB#3:                                 # %if.then.29
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-236(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	leaq	-232(%rbp), %rdi
	movl	-236(%rbp), %ecx
	addl	-140(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-240(%rbp), %ecx
	addl	-144(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	callq	gimp_matrix3_identity
	leaq	-232(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-152(%rbp), %r8d
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
	je	.LBB3_5
# BB#4:                                 # %if.then.34
	movabsq	$.L.str.132, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB3_5:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %if.then.39
	movl	$0, -260(%rbp)
	jmp	.LBB3_12
.LBB3_7:                                # %if.else
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_10
# BB#8:                                 # %land.lhs.true.41
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB3_10
# BB#9:                                 # %if.then.43
	movl	$1, -260(%rbp)
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.44
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB3_11:                               # %if.end.46
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.47
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB3_19
# BB#13:                                # %land.lhs.true.49
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB3_19
# BB#14:                                # %land.lhs.true.54
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB3_19
# BB#15:                                # %if.then.59
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-232(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-160(%rbp), %rdi
	movl	392(%rdi), %ecx
	movq	-160(%rbp), %rdi
	movl	388(%rdi), %r8d
	movq	-160(%rbp), %rdi
	movl	400(%rdi), %r9d
	movq	-160(%rbp), %rdi
	movl	396(%rdi), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	movq	%rax, -272(%rbp)
	cmpq	$0, -272(%rbp)
	je	.LBB3_17
# BB#16:                                # %if.then.65
	movq	-272(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB3_18
.LBB3_17:                               # %if.else.68
	movl	$0, -52(%rbp)
.LBB3_18:                               # %if.end.69
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.70
	leaq	-232(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-160(%rbp), %rax
	movl	392(%rax), %ecx
	movq	-160(%rbp), %rax
	movl	388(%rax), %r8d
	movq	-160(%rbp), %rax
	movl	400(%rax), %r9d
	movq	-160(%rbp), %rax
	movl	396(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB3_20:                               # %if.end.75
	cmpq	$0, -32(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.77
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB3_22:                               # %if.end.78
	jmp	.LBB3_23
.LBB3_23:                               # %if.end.79
	jmp	.LBB3_24
.LBB3_24:                               # %if.end.80
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movl	%esi, -340(%rbp)        # 4-byte Spill
	je	.LBB3_26
# BB#25:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB3_27
.LBB3_26:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB3_27
.LBB3_27:                               # %cond.end
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	-340(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_29
# BB#28:                                # %if.then.84
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB3_29:                               # %if.end.87
	movq	-64(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end3:
	.size	item_transform_perspective_invoker, .Lfunc_end3-item_transform_perspective_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_transform_rotate_simple_invoker,@function
item_transform_rotate_simple_invoker:   # @item_transform_rotate_simple_invoker
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
	subq	$224, %rsp
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
	callq	gimp_value_get_item
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
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_20
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_19
# BB#2:                                 # %land.lhs.true
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-108(%rbp), %rcx
	leaq	-112(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB4_19
# BB#3:                                 # %if.then.17
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	leaq	-88(%rbp), %r9
	leaq	-96(%rbp), %rax
	movl	-124(%rbp), %ecx
	addl	-100(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	movl	-128(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %esi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movq	%rax, (%rsp)
	callq	gimp_transform_get_rotate_center
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.23
	movl	$0, -148(%rbp)
	jmp	.LBB4_10
.LBB4_5:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_8
# BB#6:                                 # %land.lhs.true.25
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB4_8
# BB#7:                                 # %if.then.27
	movl	$1, -148(%rbp)
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.28
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB4_9:                                # %if.end
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.30
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB4_17
# BB#11:                                # %land.lhs.true.32
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB4_17
# BB#12:                                # %land.lhs.true.37
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB4_17
# BB#13:                                # %if.then.42
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-120(%rbp), %rdi
	movl	396(%rdi), %ecx
	movq	%rax, %rdi
	callq	gimp_drawable_transform_rotate
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.48
	movq	-160(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.51
	movl	$0, -52(%rbp)
.LBB4_16:                               # %if.end.52
	jmp	.LBB4_18
.LBB4_17:                               # %if.else.53
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-120(%rbp), %rax
	movl	396(%rax), %ecx
	callq	gimp_item_rotate
.LBB4_18:                               # %if.end.55
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.56
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.57
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movl	%esi, -204(%rbp)        # 4-byte Spill
	je	.LBB4_22
# BB#21:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB4_23
.LBB4_23:                               # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_25
# BB#24:                                # %if.then.61
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB4_25:                               # %if.end.64
	movq	-64(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	item_transform_rotate_simple_invoker, .Lfunc_end4-item_transform_rotate_simple_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_transform_rotate_invoker,@function
item_transform_rotate_invoker:          # @item_transform_rotate_invoker
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
	callq	gimp_value_get_item
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
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_27
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_26
# BB#2:                                 # %land.lhs.true
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB5_26
# BB#3:                                 # %if.then.17
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-204(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	leaq	-200(%rbp), %rdi
	movl	-204(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-208(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	callq	gimp_matrix3_identity
	cmpl	$0, -84(%rbp)
	je	.LBB5_5
# BB#4:                                 # %if.then.22
	leaq	-200(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	movl	-116(%rbp), %ecx
	movl	-120(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_rotate_rect
	jmp	.LBB5_6
.LBB5_5:                                # %if.else
	leaq	-200(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_transform_matrix_rotate_center
.LBB5_6:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.24
	movabsq	$.L.str.133, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB5_8:                                # %if.end.27
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB5_10
# BB#9:                                 # %if.then.30
	movl	$0, -228(%rbp)
	jmp	.LBB5_15
.LBB5_10:                               # %if.else.31
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_13
# BB#11:                                # %land.lhs.true.33
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB5_13
# BB#12:                                # %if.then.35
	movl	$1, -228(%rbp)
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.36
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB5_14:                               # %if.end.38
	jmp	.LBB5_15
.LBB5_15:                               # %if.end.39
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB5_22
# BB#16:                                # %land.lhs.true.41
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB5_22
# BB#17:                                # %land.lhs.true.46
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB5_22
# BB#18:                                # %if.then.51
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-200(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movl	392(%rdi), %ecx
	movq	-128(%rbp), %rdi
	movl	388(%rdi), %r8d
	movq	-128(%rbp), %rdi
	movl	400(%rdi), %r9d
	movq	-128(%rbp), %rdi
	movl	396(%rdi), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.57
	movq	-240(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.60
	movl	$0, -52(%rbp)
.LBB5_21:                               # %if.end.61
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.62
	leaq	-200(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	392(%rax), %ecx
	movq	-128(%rbp), %rax
	movl	388(%rax), %r8d
	movq	-128(%rbp), %rax
	movl	400(%rax), %r9d
	movq	-128(%rbp), %rax
	movl	396(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB5_23:                               # %if.end.67
	cmpq	$0, -32(%rbp)
	je	.LBB5_25
# BB#24:                                # %if.then.69
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB5_25:                               # %if.end.70
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.71
	jmp	.LBB5_27
.LBB5_27:                               # %if.end.72
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movl	%esi, -308(%rbp)        # 4-byte Spill
	je	.LBB5_29
# BB#28:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB5_30
.LBB5_29:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB5_30
.LBB5_30:                               # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-308(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_32
# BB#31:                                # %if.then.76
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB5_32:                               # %if.end.79
	movq	-64(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end5:
	.size	item_transform_rotate_invoker, .Lfunc_end5-item_transform_rotate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_transform_scale_invoker,@function
item_transform_scale_invoker:           # @item_transform_scale_invoker
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
	callq	gimp_value_get_item
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
	cmpl	$0, -52(%rbp)
	je	.LBB6_27
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	xorl	%edx, %edx
	movb	%dl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -241(%rbp)        # 1-byte Spill
	je	.LBB6_4
# BB#2:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -241(%rbp)         # 1-byte Spill
	jbe	.LBB6_4
# BB#3:                                 # %land.rhs
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -241(%rbp)         # 1-byte Spill
.LBB6_4:                                # %land.end
	movb	-241(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_26
# BB#5:                                 # %land.lhs.true.17
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB6_26
# BB#6:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-204(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	leaq	-200(%rbp), %rdi
	movl	-204(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-208(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	callq	gimp_matrix3_identity
	leaq	-200(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	movl	-116(%rbp), %ecx
	movl	-120(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-80(%rbp), %xmm2
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-88(%rbp), %xmm3
	callq	gimp_transform_matrix_scale
	cmpq	$0, -32(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.26
	movabsq	$.L.str.134, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB6_8:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB6_10
# BB#9:                                 # %if.then.31
	movl	$0, -228(%rbp)
	jmp	.LBB6_15
.LBB6_10:                               # %if.else
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_13
# BB#11:                                # %land.lhs.true.33
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB6_13
# BB#12:                                # %if.then.36
	movl	$1, -228(%rbp)
	jmp	.LBB6_14
.LBB6_13:                               # %if.else.37
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB6_14:                               # %if.end.39
	jmp	.LBB6_15
.LBB6_15:                               # %if.end.40
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB6_22
# BB#16:                                # %land.lhs.true.42
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB6_22
# BB#17:                                # %land.lhs.true.47
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB6_22
# BB#18:                                # %if.then.52
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-200(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movl	392(%rdi), %ecx
	movq	-128(%rbp), %rdi
	movl	388(%rdi), %r8d
	movq	-128(%rbp), %rdi
	movl	400(%rdi), %r9d
	movq	-128(%rbp), %rdi
	movl	396(%rdi), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.58
	movq	-240(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.61
	movl	$0, -52(%rbp)
.LBB6_21:                               # %if.end.62
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.63
	leaq	-200(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-128(%rbp), %rax
	movl	392(%rax), %ecx
	movq	-128(%rbp), %rax
	movl	388(%rax), %r8d
	movq	-128(%rbp), %rax
	movl	400(%rax), %r9d
	movq	-128(%rbp), %rax
	movl	396(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB6_23:                               # %if.end.68
	cmpq	$0, -32(%rbp)
	je	.LBB6_25
# BB#24:                                # %if.then.70
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB6_25:                               # %if.end.71
	jmp	.LBB6_26
.LBB6_26:                               # %if.end.72
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.73
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movl	%esi, -316(%rbp)        # 4-byte Spill
	je	.LBB6_29
# BB#28:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB6_30
.LBB6_29:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB6_30
.LBB6_30:                               # %cond.end
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	-316(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_32
# BB#31:                                # %if.then.77
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB6_32:                               # %if.end.80
	movq	-64(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end6:
	.size	item_transform_scale_invoker, .Lfunc_end6-item_transform_scale_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_transform_shear_invoker,@function
item_transform_shear_invoker:           # @item_transform_shear_invoker
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
	callq	gimp_value_get_item
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
	cmpl	$0, -52(%rbp)
	je	.LBB7_24
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_23
# BB#2:                                 # %land.lhs.true
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB7_23
# BB#3:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-188(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	leaq	-184(%rbp), %rdi
	movl	-188(%rbp), %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-192(%rbp), %ecx
	addl	-96(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	callq	gimp_matrix3_identity
	leaq	-184(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_transform_matrix_shear
	cmpq	$0, -32(%rbp)
	je	.LBB7_5
# BB#4:                                 # %if.then.16
	movabsq	$.L.str.135, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB7_5:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -208(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB7_7
# BB#6:                                 # %if.then.21
	movl	$0, -212(%rbp)
	jmp	.LBB7_12
.LBB7_7:                                # %if.else
	movq	-200(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_10
# BB#8:                                 # %land.lhs.true.23
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jne	.LBB7_10
# BB#9:                                 # %if.then.25
	movl	$1, -212(%rbp)
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.26
	movq	-200(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -212(%rbp)
.LBB7_11:                               # %if.end.28
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.29
	movl	-212(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, -216(%rbp)
	je	.LBB7_19
# BB#13:                                # %land.lhs.true.31
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB7_19
# BB#14:                                # %land.lhs.true.36
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB7_19
# BB#15:                                # %if.then.41
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movl	392(%rdi), %ecx
	movq	-112(%rbp), %rdi
	movl	388(%rdi), %r8d
	movq	-112(%rbp), %rdi
	movl	400(%rdi), %r9d
	movq	-112(%rbp), %rdi
	movl	396(%rdi), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB7_17
# BB#16:                                # %if.then.47
	movq	-224(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB7_18
.LBB7_17:                               # %if.else.50
	movl	$0, -52(%rbp)
.LBB7_18:                               # %if.end.51
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.52
	leaq	-184(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-112(%rbp), %rax
	movl	392(%rax), %ecx
	movq	-112(%rbp), %rax
	movl	388(%rax), %r8d
	movq	-112(%rbp), %rax
	movl	400(%rax), %r9d
	movq	-112(%rbp), %rax
	movl	396(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB7_20:                               # %if.end.57
	cmpq	$0, -32(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.59
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB7_22:                               # %if.end.60
	jmp	.LBB7_23
.LBB7_23:                               # %if.end.61
	jmp	.LBB7_24
.LBB7_24:                               # %if.end.62
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movl	%esi, -292(%rbp)        # 4-byte Spill
	je	.LBB7_26
# BB#25:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB7_27
.LBB7_26:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB7_27
.LBB7_27:                               # %cond.end
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_29
# BB#28:                                # %if.then.66
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB7_29:                               # %if.end.69
	movq	-64(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end7:
	.size	item_transform_shear_invoker, .Lfunc_end7-item_transform_shear_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_transform_2d_invoker,@function
item_transform_2d_invoker:              # @item_transform_2d_invoker
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
	callq	gimp_value_get_item
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
	cmpl	$0, -52(%rbp)
	je	.LBB8_24
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_23
# BB#2:                                 # %land.lhs.true
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	leaq	-140(%rbp), %rcx
	leaq	-144(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB8_23
# BB#3:                                 # %if.then.26
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-228(%rbp), %rsi
	leaq	-232(%rbp), %rdx
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	leaq	-224(%rbp), %rdi
	movl	-228(%rbp), %ecx
	addl	-132(%rbp), %ecx
	movl	%ecx, -132(%rbp)
	movl	-232(%rbp), %ecx
	addl	-136(%rbp), %ecx
	movl	%ecx, -136(%rbp)
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
	cmpq	$0, -32(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then.32
	movabsq	$.L.str.136, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB8_5:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB8_7
# BB#6:                                 # %if.then.37
	movl	$0, -252(%rbp)
	jmp	.LBB8_12
.LBB8_7:                                # %if.else
	movq	-240(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_10
# BB#8:                                 # %land.lhs.true.39
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-248(%rbp), %rax
	jne	.LBB8_10
# BB#9:                                 # %if.then.41
	movl	$1, -252(%rbp)
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.42
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -252(%rbp)
.LBB8_11:                               # %if.end.44
	jmp	.LBB8_12
.LBB8_12:                               # %if.end.45
	movl	-252(%rbp), %eax
	movl	%eax, -256(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB8_19
# BB#13:                                # %land.lhs.true.47
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB8_19
# BB#14:                                # %land.lhs.true.52
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB8_19
# BB#15:                                # %if.then.57
	movq	-72(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-224(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movl	392(%rdi), %ecx
	movq	-152(%rbp), %rdi
	movl	388(%rdi), %r8d
	movq	-152(%rbp), %rdi
	movl	400(%rdi), %r9d
	movq	-152(%rbp), %rdi
	movl	396(%rdi), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	movq	%rax, -264(%rbp)
	cmpq	$0, -264(%rbp)
	je	.LBB8_17
# BB#16:                                # %if.then.63
	movq	-264(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB8_18
.LBB8_17:                               # %if.else.66
	movl	$0, -52(%rbp)
.LBB8_18:                               # %if.end.67
	jmp	.LBB8_20
.LBB8_19:                               # %if.else.68
	leaq	-224(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	392(%rax), %ecx
	movq	-152(%rbp), %rax
	movl	388(%rax), %r8d
	movq	-152(%rbp), %rax
	movl	400(%rax), %r9d
	movq	-152(%rbp), %rax
	movl	396(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB8_20:                               # %if.end.73
	cmpq	$0, -32(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.75
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB8_22:                               # %if.end.76
	jmp	.LBB8_23
.LBB8_23:                               # %if.end.77
	jmp	.LBB8_24
.LBB8_24:                               # %if.end.78
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%esi, -332(%rbp)        # 4-byte Spill
	je	.LBB8_26
# BB#25:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB8_27
.LBB8_26:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB8_27
.LBB8_27:                               # %cond.end
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_29
# BB#28:                                # %if.then.82
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB8_29:                               # %if.end.85
	movq	-64(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end8:
	.size	item_transform_2d_invoker, .Lfunc_end8-item_transform_2d_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_transform_matrix_invoker,@function
item_transform_matrix_invoker:          # @item_transform_matrix_invoker
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
	callq	gimp_value_get_item
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
	cmpl	$0, -52(%rbp)
	je	.LBB9_24
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_23
# BB#2:                                 # %land.lhs.true
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	leaq	-156(%rbp), %rcx
	leaq	-160(%rbp), %r8
	movq	-72(%rbp), %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB9_23
# BB#3:                                 # %if.then.32
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-244(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-244(%rbp), %ecx
	addl	-148(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movl	-248(%rbp), %ecx
	addl	-152(%rbp), %ecx
	movl	%ecx, -152(%rbp)
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
	cmpq	$0, -32(%rbp)
	je	.LBB9_5
# BB#4:                                 # %if.then.63
	movabsq	$.L.str.137, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB9_5:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -264(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.LBB9_7
# BB#6:                                 # %if.then.68
	movl	$0, -268(%rbp)
	jmp	.LBB9_12
.LBB9_7:                                # %if.else
	movq	-256(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_10
# BB#8:                                 # %land.lhs.true.70
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-264(%rbp), %rax
	jne	.LBB9_10
# BB#9:                                 # %if.then.72
	movl	$1, -268(%rbp)
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.73
	movq	-256(%rbp), %rdi
	movq	-264(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -268(%rbp)
.LBB9_11:                               # %if.end.75
	jmp	.LBB9_12
.LBB9_12:                               # %if.end.76
	movl	-268(%rbp), %eax
	movl	%eax, -272(%rbp)
	cmpl	$0, -272(%rbp)
	je	.LBB9_19
# BB#13:                                # %land.lhs.true.78
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	jne	.LBB9_19
# BB#14:                                # %land.lhs.true.83
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB9_19
# BB#15:                                # %if.then.88
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-240(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movl	392(%rdi), %ecx
	movq	-168(%rbp), %rdi
	movl	388(%rdi), %r8d
	movq	-168(%rbp), %rdi
	movl	400(%rdi), %r9d
	movq	-168(%rbp), %rdi
	movl	396(%rdi), %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_transform_affine
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	je	.LBB9_17
# BB#16:                                # %if.then.94
	movq	-280(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	jmp	.LBB9_18
.LBB9_17:                               # %if.else.97
	movl	$0, -52(%rbp)
.LBB9_18:                               # %if.end.98
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.99
	leaq	-240(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-168(%rbp), %rax
	movl	392(%rax), %ecx
	movq	-168(%rbp), %rax
	movl	388(%rax), %r8d
	movq	-168(%rbp), %rax
	movl	400(%rax), %r9d
	movq	-168(%rbp), %rax
	movl	396(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB9_20:                               # %if.end.104
	cmpq	$0, -32(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.106
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB9_22:                               # %if.end.107
	jmp	.LBB9_23
.LBB9_23:                               # %if.end.108
	jmp	.LBB9_24
.LBB9_24:                               # %if.end.109
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movl	%esi, -348(%rbp)        # 4-byte Spill
	je	.LBB9_26
# BB#25:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_26:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_27:                               # %cond.end
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movl	-348(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_29
# BB#28:                                # %if.then.113
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB9_29:                               # %if.end.116
	movq	-64(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	item_transform_matrix_invoker, .Lfunc_end9-item_transform_matrix_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-item-transform-flip-simple"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Flip the specified item either vertically or horizontally."
	.size	.L.str.1, 59

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure flips the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then flipped. If auto_center is set to TRUE, the flip is around the selection's center. Otherwise, the coordinate of the axis needs to be specified. The return value is the ID of the flipped item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and flipped drawable. This procedure is affected by the following context setters: 'gimp-context-set-transform-resize'."
	.size	.L.str.2, 688

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Michael Natterer"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2004"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"item"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The affected item"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"flip-type"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"flip type"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Type of flip"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"auto-center"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"auto center"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Whether to automatically position the axis in the selection center"
	.size	.L.str.13, 67

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"axis"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"coord. of flip axis"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"The flipped item"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-item-transform-flip"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Flip the specified item around a given line."
	.size	.L.str.18, 45

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"This procedure flips the specified item. If a selection exists and the item is a drawable , the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then flipped. The axis to flip around is specified by specifying two points from that line. The return value is the ID of the flipped item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and flipped drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'."
	.size	.L.str.19, 746

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"2010"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"x0"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"horz. coord. of one end of axis"
	.size	.L.str.22, 32

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"y0"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"vert. coord. of one end of axis"
	.size	.L.str.24, 32

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"x1"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"horz. coord. of other end of axis"
	.size	.L.str.26, 34

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"y1"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"vert. coord. of other end of axis"
	.size	.L.str.28, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-item-transform-perspective"
	.size	.L.str.29, 32

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Perform a possibly non-affine transformation on the specified item."
	.size	.L.str.30, 68

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"This procedure performs a possibly non-affine transformation on the specified item by allowing the corners of the original bounding box to be arbitrarily remapped to any values. The specified item is remapped if no selection exists or it is not a drawable. However, if a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then remapped as specified. The return value is the ID of the remapped item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and remapped drawable. The 4 coordinates specify the new locations of each corner of the original bounding box. By specifying these values, any affine transformation (rotation, scaling, translation) can be affected. Additionally, these values can be specified such that the resulting transformed item will appear to havebeen projected via a perspective transform. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'."
	.size	.L.str.31, 1249

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The new x coordinate of upper-left corner of original bounding box"
	.size	.L.str.32, 67

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"The new y coordinate of upper-left corner of original bounding box"
	.size	.L.str.33, 67

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"The new x coordinate of upper-right corner of original bounding box"
	.size	.L.str.34, 68

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"The new y coordinate of upper-right corner of original bounding box"
	.size	.L.str.35, 68

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"x2"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The new x coordinate of lower-left corner of original bounding box"
	.size	.L.str.37, 67

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"y2"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"The new y coordinate of lower-left corner of original bounding box"
	.size	.L.str.39, 67

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"x3"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The new x coordinate of lower-right corner of original bounding box"
	.size	.L.str.41, 68

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"y3"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"The new y coordinate of lower-right corner of original bounding box"
	.size	.L.str.43, 68

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"The newly mapped item"
	.size	.L.str.44, 22

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-item-transform-rotate-simple"
	.size	.L.str.45, 34

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Rotate the specified item about given coordinates through the specified angle."
	.size	.L.str.46, 79

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"This function rotates the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then rotated by the specified amount. The return value is the ID of the rotated item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and rotated drawable. This procedure is affected by the following context setters: 'gimp-context-set-transform-resize'."
	.size	.L.str.47, 578

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"rotate-type"
	.size	.L.str.48, 12

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"rotate type"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Type of rotation"
	.size	.L.str.50, 17

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Whether to automatically rotate around the selection center"
	.size	.L.str.51, 60

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"center-x"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"center x"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"The hor. coordinate of the center of rotation"
	.size	.L.str.54, 46

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"center-y"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"center y"
	.size	.L.str.56, 9

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"The vert. coordinate of the center of rotation"
	.size	.L.str.57, 47

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"The rotated item"
	.size	.L.str.58, 17

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-item-transform-rotate"
	.size	.L.str.59, 27

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"This function rotates the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then rotated by the specified amount. The return value is the ID of the rotated item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and rotated drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'."
	.size	.L.str.60, 692

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"angle"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"The angle of rotation (radians)"
	.size	.L.str.62, 32

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-item-transform-scale"
	.size	.L.str.63, 26

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Scale the specified item."
	.size	.L.str.64, 26

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"This procedure scales the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then scaled by the specified amount. The return value is the ID of the scaled item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and scaled drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'."
	.size	.L.str.65, 689

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"The new x coordinate of the upper-left corner of the scaled region"
	.size	.L.str.66, 67

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"The new y coordinate of the upper-left corner of the scaled region"
	.size	.L.str.67, 67

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"The new x coordinate of the lower-right corner of the scaled region"
	.size	.L.str.68, 68

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"The new y coordinate of the lower-right corner of the scaled region"
	.size	.L.str.69, 68

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"The scaled item"
	.size	.L.str.70, 16

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-item-transform-shear"
	.size	.L.str.71, 26

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Shear the specified item about its center by the specified magnitude."
	.size	.L.str.72, 70

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"This procedure shears the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then sheard by the specified amount. The return value is the ID of the sheard item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and sheard drawable. The shear type parameter indicates whether the shear will be applied horizontally or vertically. The magnitude can be either positive or negative and indicates the extent (in pixels) to shear by. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'."
	.size	.L.str.73, 885

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"shear-type"
	.size	.L.str.74, 11

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"shear type"
	.size	.L.str.75, 11

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Type of shear"
	.size	.L.str.76, 14

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"magnitude"
	.size	.L.str.77, 10

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"The magnitude of the shear"
	.size	.L.str.78, 27

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"The sheared item"
	.size	.L.str.79, 17

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gimp-item-transform-2d"
	.size	.L.str.80, 23

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Transform the specified item in 2d."
	.size	.L.str.81, 36

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"This procedure transforms the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then transformed. The transformation is done by scaling the image by the x and y scale factors about the point (source_x, source_y), then rotating around the same point, then translating that point to the new position (dest_x, dest_y). The return value is the ID of the rotated drawable. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and transformed drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'."
	.size	.L.str.82, 902

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"source-x"
	.size	.L.str.83, 9

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"source x"
	.size	.L.str.84, 9

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"X coordinate of the transformation center"
	.size	.L.str.85, 42

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"source-y"
	.size	.L.str.86, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"source y"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Y coordinate of the transformation center"
	.size	.L.str.88, 42

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"scale-x"
	.size	.L.str.89, 8

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"scale x"
	.size	.L.str.90, 8

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Amount to scale in x direction"
	.size	.L.str.91, 31

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"scale-y"
	.size	.L.str.92, 8

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"scale y"
	.size	.L.str.93, 8

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Amount to scale in y direction"
	.size	.L.str.94, 31

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"dest-x"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"dest x"
	.size	.L.str.96, 7

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"X coordinate of where the center goes"
	.size	.L.str.97, 38

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"dest-y"
	.size	.L.str.98, 7

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"dest y"
	.size	.L.str.99, 7

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Y coordinate of where the center goes"
	.size	.L.str.100, 38

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"The transformed item"
	.size	.L.str.101, 21

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gimp-item-transform-matrix"
	.size	.L.str.102, 27

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"This procedure transforms the specified item. If a selection exists and the item is a drawable, the portion of the drawable which lies under the selection is cut from the drawable and made into a floating selection which is then transformed. The transformation is done by assembling a 3x3 matrix from the coefficients passed. The return value is the ID of the transformed item. If there was no selection or the item is not a drawable, this will be equal to the item ID supplied as input. Otherwise, this will be the newly created and transformed drawable. This procedure is affected by the following context setters: 'gimp-context-set-interpolation', 'gimp-context-set-transform-direction', 'gimp-context-set-transform-resize', 'gimp-context-set-transform-recursion'."
	.size	.L.str.103, 768

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"coeff-0-0"
	.size	.L.str.104, 10

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"coeff 0 0"
	.size	.L.str.105, 10

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"coefficient (0,0) of the transformation matrix"
	.size	.L.str.106, 47

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"coeff-0-1"
	.size	.L.str.107, 10

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"coeff 0 1"
	.size	.L.str.108, 10

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"coefficient (0,1) of the transformation matrix"
	.size	.L.str.109, 47

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"coeff-0-2"
	.size	.L.str.110, 10

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"coeff 0 2"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"coefficient (0,2) of the transformation matrix"
	.size	.L.str.112, 47

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"coeff-1-0"
	.size	.L.str.113, 10

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"coeff 1 0"
	.size	.L.str.114, 10

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"coefficient (1,0) of the transformation matrix"
	.size	.L.str.115, 47

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"coeff-1-1"
	.size	.L.str.116, 10

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"coeff 1 1"
	.size	.L.str.117, 10

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"coefficient (1,1) of the transformation matrix"
	.size	.L.str.118, 47

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"coeff-1-2"
	.size	.L.str.119, 10

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"coeff 1 2"
	.size	.L.str.120, 10

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"coefficient (1,2) of the transformation matrix"
	.size	.L.str.121, 47

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"coeff-2-0"
	.size	.L.str.122, 10

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"coeff 2 0"
	.size	.L.str.123, 10

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"coefficient (2,0) of the transformation matrix"
	.size	.L.str.124, 47

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"coeff-2-1"
	.size	.L.str.125, 10

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"coeff 2 1"
	.size	.L.str.126, 10

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"coefficient (2,1) of the transformation matrix"
	.size	.L.str.127, 47

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"coeff-2-2"
	.size	.L.str.128, 10

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"coeff 2 2"
	.size	.L.str.129, 10

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"coefficient (2,2) of the transformation matrix"
	.size	.L.str.130, 47

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Flipping"
	.size	.L.str.131, 9

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Perspective"
	.size	.L.str.132, 12

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Rotating"
	.size	.L.str.133, 9

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Scaling"
	.size	.L.str.134, 8

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Shearing"
	.size	.L.str.135, 9

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"2D Transform"
	.size	.L.str.136, 13

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"2D Transforming"
	.size	.L.str.137, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
