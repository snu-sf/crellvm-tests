	.text
	.file	"vectors-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_vectors_procs
	.align	16, 0x90
	.type	register_vectors_procs,@function
register_vectors_procs:                 # @register_vectors_procs
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
	subq	$1976, %rsp             # imm = 0x7B8
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$vectors_new_invoker, %rax
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
	callq	gimp_param_spec_image_id
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_new_from_text_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.17, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_copy_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movabsq	$.L.str.25, %r9
	movabsq	$.L.str.16, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.26, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_vectors_id
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_get_strokes_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -184(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -196(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-196(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movl	%r11d, -212(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_get_length_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.40, %rsi
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-248(%rbp), %r8         # 8-byte Reload
	movq	-248(%rbp), %r9         # 8-byte Reload
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -256(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movl	%r11d, -276(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.45, %rax
	movabsq	$.L.str.46, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.48, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_get_point_at_dist_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
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
	movq	-24(%rbp), %rbx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -320(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movl	%r11d, -340(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rax
	movabsq	$.L.str.53, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.45, %rax
	movabsq	$.L.str.46, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.54, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.56, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.57, %rdi
	movabsq	$.L.str.58, %rsi
	movabsq	$.L.str.59, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.60, %rax
	movabsq	$.L.str.61, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.62, %rax
	movabsq	$.L.str.63, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_remove_stroke_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.65, %rdx
	movabsq	$.L.str.66, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -416(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movl	%r11d, -436(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_close_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.67, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.67, %rsi
	movabsq	$.L.str.68, %rdx
	movabsq	$.L.str.69, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -464(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movl	%r11d, -484(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_translate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.70, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.70, %rsi
	movabsq	$.L.str.71, %rdx
	movabsq	$.L.str.72, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -512(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movl	%r11d, -532(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.73, %rdi
	movabsq	$.L.str.74, %rsi
	movabsq	$.L.str.75, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movl	%r11d, -548(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movabsq	$.L.str.78, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movl	%r11d, -564(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_scale_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.79, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.79, %rsi
	movabsq	$.L.str.80, %rdx
	movabsq	$.L.str.81, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -592(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movl	%r11d, -612(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.82, %rdi
	movabsq	$.L.str.83, %rsi
	movabsq	$.L.str.84, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.85, %rdi
	movabsq	$.L.str.86, %rsi
	movabsq	$.L.str.87, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_rotate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.88, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.88, %rsi
	movabsq	$.L.str.89, %rdx
	movabsq	$.L.str.90, %rcx
	movabsq	$.L.str.91, %rax
	movabsq	$.L.str.92, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -656(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -672(%rbp)        # 8-byte Spill
	movl	%r11d, -676(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.93, %rdi
	movabsq	$.L.str.94, %rsi
	movabsq	$.L.str.95, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.96, %rdi
	movabsq	$.L.str.97, %rsi
	movabsq	$.L.str.98, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.99, %rax
	movabsq	$.L.str.100, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_flip_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.101, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.101, %rsi
	movabsq	$.L.str.102, %rdx
	movabsq	$.L.str.90, %rcx
	movabsq	$.L.str.91, %rax
	movabsq	$.L.str.92, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-720(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -728(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -744(%rbp)        # 8-byte Spill
	movl	%r11d, -748(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.103, %rdi
	movabsq	$.L.str.104, %rsi
	movabsq	$.L.str.105, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.106, %rax
	movabsq	$.L.str.107, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_flip_free_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.108, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.108, %rsi
	movabsq	$.L.str.109, %rdx
	movabsq	$.L.str.110, %rcx
	movabsq	$.L.str.91, %rax
	movabsq	$.L.str.92, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -800(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movl	%r11d, -820(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.111, %rax
	movabsq	$.L.str.112, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.113, %rax
	movabsq	$.L.str.114, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.115, %rax
	movabsq	$.L.str.116, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.117, %rax
	movabsq	$.L.str.118, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_get_points_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.119, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.119, %rsi
	movabsq	$.L.str.120, %rdx
	movabsq	$.L.str.121, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.92, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -880(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -896(%rbp)        # 8-byte Spill
	movl	%r11d, -900(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	callq	gimp_vectors_stroke_type_get_type
	movabsq	$.L.str.122, %rdx
	movabsq	$.L.str.123, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -920(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-920(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -924(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-924(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -936(%rbp)        # 8-byte Spill
	movl	%r11d, -940(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.127, %rax
	movabsq	$.L.str.128, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.129, %rax
	movabsq	$.L.str.130, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -960(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_new_from_points_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.131, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.131, %rsi
	movabsq	$.L.str.132, %rdx
	movabsq	$.L.str.133, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.92, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -984(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	callq	gimp_vectors_stroke_type_get_type
	movabsq	$.L.str.122, %rcx
	movabsq	$.L.str.123, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.134, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1004(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1004(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	movl	%r11d, -1020(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rax
	movabsq	$.L.str.135, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.129, %rax
	movabsq	$.L.str.136, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.137, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	movl	%r11d, -1052(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_stroke_interpolate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.138, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.138, %rsi
	movabsq	$.L.str.139, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-1080(%rbp), %r8        # 8-byte Reload
	movq	-1080(%rbp), %r9        # 8-byte Reload
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1088(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	movl	%r11d, -1108(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.45, %rax
	movabsq	$.L.str.46, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.140, %rdi
	movabsq	$.L.str.141, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1124(%rbp)       # 4-byte Spill
	movl	-1124(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1128(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.142, %rax
	movabsq	$.L.str.143, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.129, %rax
	movabsq	$.L.str.130, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_bezier_stroke_new_moveto_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.144, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.144, %rsi
	movabsq	$.L.str.145, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rdx, -1176(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-1176(%rbp), %r8        # 8-byte Reload
	movq	-1176(%rbp), %r9        # 8-byte Reload
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1184(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1192(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.146, %rax
	movabsq	$.L.str.147, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.148, %rax
	movabsq	$.L.str.149, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.150, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	movl	%r11d, -1220(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_bezier_stroke_lineto_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.151, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.151, %rsi
	movabsq	$.L.str.152, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-1248(%rbp), %r8        # 8-byte Reload
	movq	-1248(%rbp), %r9        # 8-byte Reload
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1256(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	movl	%r11d, -1276(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.146, %rax
	movabsq	$.L.str.153, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1288(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.148, %rax
	movabsq	$.L.str.154, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_bezier_stroke_conicto_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.155, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.155, %rsi
	movabsq	$.L.str.156, %rdx
	movabsq	$.L.str.157, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1320(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1328(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	movl	%r11d, -1340(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.146, %rax
	movabsq	$.L.str.158, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1352(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.148, %rax
	movabsq	$.L.str.159, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1360(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.111, %rax
	movabsq	$.L.str.160, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1368(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.113, %rax
	movabsq	$.L.str.161, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1376(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_bezier_stroke_cubicto_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.162, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.162, %rsi
	movabsq	$.L.str.163, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1392(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rdx, -1400(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-1400(%rbp), %r8        # 8-byte Reload
	movq	-1400(%rbp), %r9        # 8-byte Reload
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1408(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1416(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	movl	%r11d, -1428(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.146, %rax
	movabsq	$.L.str.164, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1440(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.148, %rax
	movabsq	$.L.str.165, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1448(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1448(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.111, %rax
	movabsq	$.L.str.166, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1456(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.113, %rax
	movabsq	$.L.str.167, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1464(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.115, %rax
	movabsq	$.L.str.160, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1472(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.117, %rax
	movabsq	$.L.str.161, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1480(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_bezier_stroke_new_ellipse_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.168, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.168, %rsi
	movabsq	$.L.str.169, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1496(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rdx, -1504(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-1504(%rbp), %r8        # 8-byte Reload
	movq	-1504(%rbp), %r9        # 8-byte Reload
	movq	-1496(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1512(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1520(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.146, %rax
	movabsq	$.L.str.170, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1528(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.148, %rax
	movabsq	$.L.str.171, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1536(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.172, %rdi
	movabsq	$.L.str.173, %rsi
	movabsq	$.L.str.174, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.175, %rdi
	movabsq	$.L.str.176, %rsi
	movabsq	$.L.str.177, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.99, %rax
	movabsq	$.L.str.178, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1560(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.150, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	movl	%r11d, -1572(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_to_selection_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.179, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.179, %rsi
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.92, %rdi
	movabsq	$.L.str.181, %r10
	movq	-24(%rbp), %rbx
	movq	%rdi, -1592(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rdx, -1600(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-1600(%rbp), %r8        # 8-byte Reload
	movq	-1600(%rbp), %r9        # 8-byte Reload
	movq	-1592(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.182, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1608(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1608(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -1616(%rbp)       # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.183, %rcx
	movabsq	$.L.str.184, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.185, %rax
	movabsq	$.L.str.186, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1624(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1624(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.187, %rax
	movabsq	$.L.str.188, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1632(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.189, %rdi
	movabsq	$.L.str.190, %rsi
	movabsq	$.L.str.191, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.192, %rdi
	movabsq	$.L.str.193, %rsi
	movabsq	$.L.str.194, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_import_from_file_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.195, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.195, %rsi
	movabsq	$.L.str.196, %rdx
	movabsq	$.L.str.197, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.92, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1664(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1664(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1672(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1680(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1680(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.198, %rax
	movabsq	$.L.str.199, %rdx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1688(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1696(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -1700(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1700(%rbp), %r9d       # 4-byte Reload
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%r11d, -1704(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.200, %rax
	movabsq	$.L.str.201, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1712(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1712(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.202, %rax
	movabsq	$.L.str.203, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1720(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.204, %rdi
	movabsq	$.L.str.205, %rsi
	movabsq	$.L.str.206, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1724(%rbp)       # 4-byte Spill
	movl	-1724(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1728(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1736(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.207, %rdi
	movabsq	$.L.str.208, %rsi
	movabsq	$.L.str.209, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-1744(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_import_from_string_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.210, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.210, %rsi
	movabsq	$.L.str.211, %rdx
	movabsq	$.L.str.212, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.92, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1760(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1760(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1768(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1776(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1776(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.213, %rax
	movabsq	$.L.str.214, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1784(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1792(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -1796(%rbp)       # 4-byte Spill
	movl	-1796(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1800(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-1784(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.215, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1808(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -1812(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.200, %rax
	movabsq	$.L.str.201, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1824(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1824(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.202, %rax
	movabsq	$.L.str.203, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1832(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1832(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.204, %rdi
	movabsq	$.L.str.205, %rsi
	movabsq	$.L.str.206, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1836(%rbp)       # 4-byte Spill
	movl	-1836(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1840(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1848(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.207, %rdi
	movabsq	$.L.str.208, %rsi
	movabsq	$.L.str.209, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_export_to_file_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1864(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1864(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.216, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.216, %rsi
	movabsq	$.L.str.217, %rdx
	movabsq	$.L.str.218, %rcx
	movabsq	$.L.str.219, %r8
	movabsq	$.L.str.220, %r9
	movabsq	$.L.str.221, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -1872(%rbp)       # 8-byte Spill
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
	movq	%rdi, -1880(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1880(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.198, %rax
	movabsq	$.L.str.222, %rdx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1888(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1896(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -1900(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1900(%rbp), %r9d       # 4-byte Reload
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%r11d, -1904(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1888(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.223, %rdx
	xorl	%r8d, %r8d
	movl	$16611, %r9d            # imm = 0x40E3
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -1912(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1912(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$vectors_export_to_string_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1920(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1920(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.224, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.224, %rsi
	movabsq	$.L.str.225, %rdx
	movabsq	$.L.str.226, %rcx
	movabsq	$.L.str.219, %r8
	movabsq	$.L.str.220, %r9
	movabsq	$.L.str.221, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -1928(%rbp)       # 8-byte Spill
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
	movq	%rdi, -1936(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1936(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.227, %rdx
	xorl	%r8d, %r8d
	movl	$16611, %r9d            # imm = 0x40E3
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1944(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1944(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.213, %rax
	movabsq	$.L.str.228, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1952(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1960(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -1964(%rbp)       # 4-byte Spill
	movl	-1964(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1968(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-1952(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1976, %rsp             # imm = 0x7B8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_vectors_procs, .Lfunc_end0-register_vectors_procs
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_new_invoker,@function
vectors_new_invoker:                    # @vectors_new_invoker
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
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_vectors_new
	movq	%rax, -88(%rbp)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB1_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_5:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_vectors
.LBB1_7:                                # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	vectors_new_invoker, .Lfunc_end1-vectors_new_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_new_from_text_layer_invoker,@function
vectors_new_from_text_layer_invoker:    # @vectors_new_from_text_layer_invoker
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_5
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_layer_is_text_layer
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then.6
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_text_layer_get_text
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_text_vectors_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-88(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_translate
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.15
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB2_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_8:                                # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.19
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_vectors
.LBB2_10:                               # %if.end.22
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	vectors_new_from_text_layer_invoker, .Lfunc_end2-vectors_new_from_text_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_copy_invoker,@function
vectors_copy_invoker:                   # @vectors_copy_invoker
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_4
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_item_duplicate
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then.7
	movl	$0, -52(%rbp)
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB3_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_7
.LBB3_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_7
.LBB3_7:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_vectors
.LBB3_9:                                # %if.end.15
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	vectors_copy_invoker, .Lfunc_end3-vectors_copy_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_get_strokes_invoker,@function
vectors_get_strokes_invoker:            # @vectors_get_strokes_invoker
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_8
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_vectors_get_n_strokes
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB4_7
# BB#2:                                 # %if.then.3
	movl	$4, %eax
	movl	%eax, %esi
	movl	$0, -100(%rbp)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -96(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB4_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-96(%rbp), %rdi
	callq	gimp_stroke_get_ID
	movslq	-100(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx,%rdi,4)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -96(%rbp)
	jmp	.LBB4_3
.LBB4_6:                                # %for.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB4_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_11
.LBB4_11:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-88(%rbp), %rsi
	movslq	-76(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int32array
.LBB4_13:                               # %if.end.20
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	vectors_get_strokes_invoker, .Lfunc_end4-vectors_get_strokes_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_get_length_invoker,@function
vectors_stroke_get_length_invoker:      # @vectors_stroke_get_length_invoker
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
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
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then.9
	movq	-104(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_stroke_get_length
	movsd	%xmm0, -96(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB5_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.15
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB5_10:                               # %if.end.18
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	vectors_stroke_get_length_invoker, .Lfunc_end5-vectors_stroke_get_length_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_get_point_at_dist_invoker,@function
vectors_stroke_get_point_at_dist_invoker: # @vectors_stroke_get_point_at_dist_invoker
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
	subq	$240, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movl	$0, -124(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
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
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_11
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB6_9
# BB#2:                                 # %if.then.12
	leaq	-200(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-136(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_stroke_get_point_at_dist
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB6_4
# BB#3:                                 # %cond.true
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %cond.end
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB6_7
# BB#6:                                 # %cond.true.16
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false.17
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB6_8
.LBB6_8:                                # %cond.end.18
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB6_10
.LBB6_9:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_10:                               # %if.end
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.20
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movl	%esi, -228(%rbp)        # 4-byte Spill
	je	.LBB6_13
# BB#12:                                # %cond.true.22
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB6_14
.LBB6_13:                               # %cond.false.23
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB6_14
.LBB6_14:                               # %cond.end.24
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.28
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-124(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB6_16:                               # %if.end.37
	movq	-64(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	vectors_stroke_get_point_at_dist_invoker, .Lfunc_end6-vectors_stroke_get_point_at_dist_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_remove_stroke_invoker,@function
vectors_remove_stroke_invoker:          # @vectors_remove_stroke_invoker
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
	subq	$144, %rsp
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
	callq	gimp_value_get_vectors
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB7_5
# BB#2:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.229, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB7_4:                                # %if.end
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_vectors_stroke_remove
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_6:                                # %if.end.17
	jmp	.LBB7_7
.LBB7_7:                                # %if.end.18
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB7_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_10
.LBB7_10:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	vectors_remove_stroke_invoker, .Lfunc_end7-vectors_remove_stroke_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_close_invoker,@function
vectors_stroke_close_invoker:           # @vectors_stroke_close_invoker
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
	subq	$144, %rsp
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
	callq	gimp_value_get_vectors
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB8_5
# BB#2:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.230, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB8_4:                                # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-80(%rbp), %rdi
	callq	gimp_stroke_close
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_thaw
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB8_6:                                # %if.end.17
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.18
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB8_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB8_10
.LBB8_10:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	vectors_stroke_close_invoker, .Lfunc_end8-vectors_stroke_close_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_translate_invoker,@function
vectors_stroke_translate_invoker:       # @vectors_stroke_translate_invoker
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
	subq	$144, %rsp
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
	callq	gimp_value_get_vectors
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
	cmpl	$0, -52(%rbp)
	je	.LBB9_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB9_5
# BB#2:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB9_4
# BB#3:                                 # %if.then.17
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.231, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB9_4:                                # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-88(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	callq	gimp_stroke_translate
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_thaw
	jmp	.LBB9_6
.LBB9_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB9_6:                                # %if.end.24
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.25
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB9_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB9_10
.LBB9_10:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	vectors_stroke_translate_invoker, .Lfunc_end9-vectors_stroke_translate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_scale_invoker,@function
vectors_stroke_scale_invoker:           # @vectors_stroke_scale_invoker
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
	subq	$160, %rsp
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
	callq	gimp_value_get_vectors
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
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB10_5
# BB#2:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %if.then.17
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.232, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB10_4:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-96(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_stroke_scale
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_thaw
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB10_6:                               # %if.end.23
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.24
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB10_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB10_10
.LBB10_10:                              # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	vectors_stroke_scale_invoker, .Lfunc_end10-vectors_stroke_scale_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_rotate_invoker,@function
vectors_stroke_rotate_invoker:          # @vectors_stroke_rotate_invoker
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
	subq	$160, %rsp
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
	callq	gimp_value_get_vectors
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
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
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
	je	.LBB11_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB11_5
# BB#2:                                 # %if.then.15
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %if.then.20
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.233, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB11_4:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-104(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_stroke_rotate
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_thaw
	jmp	.LBB11_6
.LBB11_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB11_6:                               # %if.end.26
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.27
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	je	.LBB11_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB11_10
.LBB11_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB11_10
.LBB11_10:                              # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	vectors_stroke_rotate_invoker, .Lfunc_end11-vectors_stroke_rotate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_flip_invoker,@function
vectors_stroke_flip_invoker:            # @vectors_stroke_flip_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
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
	callq	g_value_get_enum
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB12_5
# BB#2:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB12_4
# BB#3:                                 # %if.then.17
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.234, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB12_4:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-88(%rbp), %rdi
	movl	-72(%rbp), %esi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_stroke_flip
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_thaw
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB12_6:                               # %if.end.23
	jmp	.LBB12_7
.LBB12_7:                               # %if.end.24
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB12_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB12_10
.LBB12_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB12_10
.LBB12_10:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	vectors_stroke_flip_invoker, .Lfunc_end12-vectors_stroke_flip_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_flip_free_invoker,@function
vectors_stroke_flip_free_invoker:       # @vectors_stroke_flip_free_invoker
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
	callq	gimp_value_get_vectors
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
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB13_5
# BB#2:                                 # %if.then.18
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB13_4
# BB#3:                                 # %if.then.23
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.234, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB13_4:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_freeze
	movq	-112(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	gimp_stroke_flip_free
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_thaw
	jmp	.LBB13_6
.LBB13_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB13_6:                               # %if.end.29
	jmp	.LBB13_7
.LBB13_7:                               # %if.end.30
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB13_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB13_10
.LBB13_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB13_10
.LBB13_10:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	vectors_stroke_flip_free_invoker, .Lfunc_end13-vectors_stroke_flip_free_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_get_points_invoker,@function
vectors_stroke_get_points_invoker:      # @vectors_stroke_get_points_invoker
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_19
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_bezier_stroke_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then.7
	movl	$0, -132(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.10
	movl	$1, -132(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.11
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.13
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB14_17
# BB#9:                                 # %if.then.15
	leaq	-100(%rbp), %rsi
	movq	-112(%rbp), %rdi
	callq	gimp_stroke_control_points_get
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB14_15
# BB#10:                                # %if.then.20
	movl	$8, %eax
	movl	%eax, %esi
	movq	-144(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -96(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -148(%rbp)
.LBB14_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB14_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB14_11 Depth=1
	movslq	-148(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	(%rcx), %rcx
	imulq	$72, %rax, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-148(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rax
	movq	-96(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-148(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	(%rcx), %rcx
	imulq	$72, %rax, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movl	-148(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-96(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB14_11 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB14_11
.LBB14_14:                              # %for.end
	movl	$1, %esi
	movq	-144(%rbp), %rdi
	callq	g_array_free
	movl	-84(%rbp), %esi
	shll	$1, %esi
	movl	%esi, -84(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.37
	movl	$0, -52(%rbp)
.LBB14_16:                              # %if.end.38
	jmp	.LBB14_18
.LBB14_17:                              # %if.else.39
	movl	$0, -52(%rbp)
.LBB14_18:                              # %if.end.40
	jmp	.LBB14_19
.LBB14_19:                              # %if.end.41
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB14_21
# BB#20:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB14_22
.LBB14_21:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB14_22
.LBB14_22:                              # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_24
# BB#23:                                # %if.then.45
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	-96(%rbp), %rsi
	movslq	-84(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_floatarray
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB14_24:                              # %if.end.55
	movq	-64(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	vectors_stroke_get_points_invoker, .Lfunc_end14-vectors_stroke_get_points_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
.LCPI15_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	vectors_stroke_new_from_points_invoker,@function
vectors_stroke_new_from_points_invoker: # @vectors_stroke_new_from_points_invoker
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
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
	callq	g_value_get_int
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -92(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_13
# BB#1:                                 # %if.then
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movq	%rcx, %rdi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -136(%rbp)
	movl	$0, -52(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB15_12
# BB#2:                                 # %land.lhs.true
	movl	$6, %eax
	movl	-80(%rbp), %ecx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-204(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB15_12
# BB#3:                                 # %if.then.14
	movl	$64, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	-80(%rbp), %ecx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-208(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -112(%rbp)
	movl	$0, -180(%rbp)
.LBB15_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	-180(%rbp), %ecx
	movl	-80(%rbp), %edx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-212(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB15_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB15_4 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movslq	-180(%rbp), %rsi
	shlq	$6, %rsi
	addq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	-180(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-180(%rbp), %rcx
	shlq	$6, %rcx
	addq	-112(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movl	-180(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-180(%rbp), %rcx
	shlq	$6, %rcx
	addq	-112(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB15_4 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB15_4
.LBB15_7:                               # %for.end
	movl	$2, %eax
	movl	-76(%rbp), %edi
	movq	-112(%rbp), %rsi
	movl	-80(%rbp), %ecx
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-216(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-92(%rbp), %ecx
	movl	%eax, %edx
	callq	gimp_stroke_new_from_coords
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB15_11
# BB#8:                                 # %if.then.32
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB15_10
# BB#9:                                 # %if.then.37
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.235, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-72(%rbp), %rdx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB15_10:                              # %if.end
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_vectors_stroke_add
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-104(%rbp), %rdi
	callq	gimp_stroke_get_ID
	movl	%eax, -96(%rbp)
	movl	$1, -52(%rbp)
.LBB15_11:                              # %if.end.44
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB15_12:                              # %if.end.45
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.46
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movl	%esi, -260(%rbp)        # 4-byte Spill
	je	.LBB15_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB15_16
.LBB15_15:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB15_16
.LBB15_16:                              # %cond.end
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_18
# BB#17:                                # %if.then.50
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB15_18:                              # %if.end.53
	movq	-64(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end15:
	.size	vectors_stroke_new_from_points_invoker, .Lfunc_end15-vectors_stroke_new_from_points_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_stroke_interpolate_invoker,@function
vectors_stroke_interpolate_invoker:     # @vectors_stroke_interpolate_invoker
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -92(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
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
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_12
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB16_10
# BB#2:                                 # %if.then.9
	leaq	-108(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_stroke_interpolate
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB16_8
# BB#3:                                 # %if.then.12
	movl	$8, %eax
	movl	%eax, %esi
	movq	-128(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -104(%rbp)
	movl	$0, -132(%rbp)
.LBB16_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB16_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB16_4 Depth=1
	movslq	-132(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-132(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rax
	movq	-104(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-132(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movl	-132(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-104(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB16_4 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB16_4
.LBB16_7:                               # %for.end
	movl	$1, %esi
	movq	-128(%rbp), %rdi
	callq	g_array_free
	movl	-92(%rbp), %esi
	shll	$1, %esi
	movl	%esi, -92(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB16_9
.LBB16_8:                               # %if.else
	movl	$0, -52(%rbp)
.LBB16_9:                               # %if.end
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.27
	movl	$0, -52(%rbp)
.LBB16_11:                              # %if.end.28
	jmp	.LBB16_12
.LBB16_12:                              # %if.end.29
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB16_14
# BB#13:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB16_15
.LBB16_14:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB16_15
.LBB16_15:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_17
# BB#16:                                # %if.then.33
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-104(%rbp), %rsi
	movslq	-92(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_floatarray
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-108(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB16_17:                              # %if.end.41
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	vectors_stroke_interpolate_invoker, .Lfunc_end16-vectors_stroke_interpolate_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4602678819172646912     # double 0.5
.LCPI17_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	vectors_bezier_stroke_new_moveto_invoker,@function
vectors_bezier_stroke_new_moveto_invoker: # @vectors_bezier_stroke_new_moveto_invoker
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
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
	cmpl	$0, -52(%rbp)
	je	.LBB17_8
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_writable
	cmpl	$0, %eax
	je	.LBB17_6
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB17_6
# BB#3:                                 # %if.then.15
	leaq	-168(%rbp), %rax
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI17_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movsd	%xmm1, -208(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -128(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -168(%rbp)
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -160(%rbp)
	movq	-192(%rbp), %rdi        # 8-byte Reload
	callq	gimp_bezier_stroke_new_moveto
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB17_5
# BB#4:                                 # %if.then.21
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.235, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-72(%rbp), %rdx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB17_5:                               # %if.end
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_vectors_stroke_add
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-104(%rbp), %rdi
	callq	gimp_stroke_get_ID
	movl	%eax, -92(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else
	movl	$0, -52(%rbp)
.LBB17_7:                               # %if.end.28
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.29
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movl	%esi, -252(%rbp)        # 4-byte Spill
	je	.LBB17_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB17_11
.LBB17_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB17_11
.LBB17_11:                              # %cond.end
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	-252(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_13
# BB#12:                                # %if.then.33
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB17_13:                              # %if.end.36
	movq	-64(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end17:
	.size	vectors_bezier_stroke_new_moveto_invoker, .Lfunc_end17-vectors_bezier_stroke_new_moveto_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4602678819172646912     # double 0.5
.LCPI18_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	vectors_bezier_stroke_lineto_invoker,@function
vectors_bezier_stroke_lineto_invoker:   # @vectors_bezier_stroke_lineto_invoker
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
	subq	$240, %rsp
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
	callq	gimp_value_get_vectors
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
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB18_5
# BB#2:                                 # %if.then.12
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -120(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -160(%rbp)
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -152(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB18_4
# BB#3:                                 # %if.then.17
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.236, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB18_4:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_freeze
	leaq	-160(%rbp), %rsi
	movq	-96(%rbp), %rdi
	callq	gimp_bezier_stroke_lineto
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_thaw
	jmp	.LBB18_6
.LBB18_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB18_6:                               # %if.end.23
	jmp	.LBB18_7
.LBB18_7:                               # %if.end.24
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movl	%esi, -220(%rbp)        # 4-byte Spill
	je	.LBB18_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB18_10
.LBB18_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB18_10
.LBB18_10:                              # %cond.end
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	vectors_bezier_stroke_lineto_invoker, .Lfunc_end18-vectors_bezier_stroke_lineto_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4602678819172646912     # double 0.5
.LCPI19_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	vectors_bezier_stroke_conicto_invoker,@function
vectors_bezier_stroke_conicto_invoker:  # @vectors_bezier_stroke_conicto_invoker
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
	callq	gimp_value_get_vectors
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
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB19_5
# BB#2:                                 # %if.then.18
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI19_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-240(%rbp), %rsi
	leaq	-176(%rbp), %rdi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	memset
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -136(%rbp)
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-276(%rbp), %esi        # 4-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -200(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -176(%rbp)
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -168(%rbp)
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -240(%rbp)
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm2, -232(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB19_4
# BB#3:                                 # %if.then.25
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.236, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB19_4:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_freeze
	leaq	-176(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	-112(%rbp), %rdi
	callq	gimp_bezier_stroke_conicto
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_thaw
	jmp	.LBB19_6
.LBB19_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB19_6:                               # %if.end.31
	jmp	.LBB19_7
.LBB19_7:                               # %if.end.32
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movl	%esi, -324(%rbp)        # 4-byte Spill
	je	.LBB19_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB19_10
.LBB19_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB19_10
.LBB19_10:                              # %cond.end
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	-324(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end19:
	.size	vectors_bezier_stroke_conicto_invoker, .Lfunc_end19-vectors_bezier_stroke_conicto_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4602678819172646912     # double 0.5
.LCPI20_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	vectors_bezier_stroke_cubicto_invoker,@function
vectors_bezier_stroke_cubicto_invoker:  # @vectors_bezier_stroke_cubicto_invoker
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
	subq	$432, %rsp              # imm = 0x1B0
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
	callq	gimp_value_get_vectors
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
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_7
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_vectors_stroke
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB20_5
# BB#2:                                 # %if.then.24
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-320(%rbp), %rsi
	leaq	-256(%rbp), %rdi
	leaq	-192(%rbp), %r8
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movsd	%xmm1, -360(%rbp)       # 8-byte Spill
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	memset
	movsd	-360(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -152(%rbp)
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-364(%rbp), %esi        # 4-byte Reload
	movq	-344(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movsd	-360(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -216(%rbp)
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-364(%rbp), %esi        # 4-byte Reload
	movq	-344(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movsd	-360(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -280(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -192(%rbp)
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -184(%rbp)
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -256(%rbp)
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm2, -248(%rbp)
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm2, -320(%rbp)
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm2, -312(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB20_4
# BB#3:                                 # %if.then.33
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.236, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB20_4:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_freeze
	leaq	-192(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	leaq	-320(%rbp), %rcx
	movq	-128(%rbp), %rdi
	callq	gimp_bezier_stroke_cubicto
	movq	-64(%rbp), %rdi
	callq	gimp_vectors_thaw
	jmp	.LBB20_6
.LBB20_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB20_6:                               # %if.end.39
	jmp	.LBB20_7
.LBB20_7:                               # %if.end.40
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movl	%esi, -412(%rbp)        # 4-byte Spill
	je	.LBB20_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB20_10
.LBB20_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB20_10
.LBB20_10:                              # %cond.end
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	-412(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end20:
	.size	vectors_bezier_stroke_cubicto_invoker, .Lfunc_end20-vectors_bezier_stroke_cubicto_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4602678819172646912     # double 0.5
.LCPI21_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	vectors_bezier_stroke_new_ellipse_invoker,@function
vectors_bezier_stroke_new_ellipse_invoker: # @vectors_bezier_stroke_new_ellipse_invoker
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -116(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_vectors
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
	cmpl	$0, -52(%rbp)
	je	.LBB21_8
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_writable
	cmpl	$0, %eax
	je	.LBB21_6
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB21_6
# BB#3:                                 # %if.then.24
	leaq	-192(%rbp), %rax
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -152(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -192(%rbp)
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -184(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-216(%rbp), %rdi        # 8-byte Reload
	callq	gimp_bezier_stroke_new_ellipse
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB21_5
# BB#4:                                 # %if.then.30
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.235, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-72(%rbp), %rdx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_vectors_mod
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB21_5:                               # %if.end
	movq	-72(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	gimp_vectors_stroke_add
	movq	-128(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-128(%rbp), %rdi
	callq	gimp_stroke_get_ID
	movl	%eax, -116(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else
	movl	$0, -52(%rbp)
.LBB21_7:                               # %if.end.37
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.38
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movl	%esi, -276(%rbp)        # 4-byte Spill
	je	.LBB21_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB21_11
.LBB21_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB21_11
.LBB21_11:                              # %cond.end
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	-276(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB21_13
# BB#12:                                # %if.then.42
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-116(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB21_13:                              # %if.end.45
	movq	-64(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end21:
	.size	vectors_bezier_stroke_new_ellipse_invoker, .Lfunc_end21-vectors_bezier_stroke_new_ellipse_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_to_selection_invoker,@function
vectors_to_selection_invoker:           # @vectors_to_selection_invoker
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
	subq	$144, %rsp
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
	callq	gimp_value_get_vectors
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
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
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
	je	.LBB22_3
# BB#2:                                 # %if.then.20
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_item_to_selection
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %if.end.23
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB22_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB22_8
.LBB22_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB22_8
.LBB22_8:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	vectors_to_selection_invoker, .Lfunc_end22-vectors_to_selection_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_import_from_file_invoker,@function
vectors_import_from_file_invoker:       # @vectors_import_from_file_invoker
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -92(%rbp)
	movq	$0, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
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
	callq	g_value_get_boolean
	movl	%eax, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB23_13
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	leaq	-120(%rbp), %rcx
	movq	$0, -120(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %eax
	movq	-48(%rbp), %r10
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_vectors_import_file
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB23_12
# BB#2:                                 # %if.then.12
	movq	-120(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB23_11
# BB#3:                                 # %if.then.15
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-92(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -124(%rbp)
.LBB23_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB23_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movslq	-124(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB23_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB23_9
.LBB23_8:                               # %cond.false
                                        #   in Loop: Header=BB23_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB23_9
.LBB23_9:                               # %cond.end
                                        #   in Loop: Header=BB23_4 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB23_4
.LBB23_10:                              # %for.end
	movq	-120(%rbp), %rdi
	callq	g_list_free
.LBB23_11:                              # %if.end
	jmp	.LBB23_12
.LBB23_12:                              # %if.end.23
	jmp	.LBB23_13
.LBB23_13:                              # %if.end.24
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB23_15
# BB#14:                                # %cond.true.26
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB23_16
.LBB23_15:                              # %cond.false.27
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB23_16
.LBB23_16:                              # %cond.end.28
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB23_18
# BB#17:                                # %if.then.32
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-104(%rbp), %rsi
	movslq	-92(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int32array
.LBB23_18:                              # %if.end.38
	movq	-64(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	vectors_import_from_file_invoker, .Lfunc_end23-vectors_import_from_file_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_import_from_string_invoker,@function
vectors_import_from_string_invoker:     # @vectors_import_from_string_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$216, %rsp
.Ltmp76:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movl	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -92(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -96(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -100(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB24_13
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leaq	-128(%rbp), %rcx
	movq	$0, -128(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movslq	-92(%rbp), %rdx
	movl	-96(%rbp), %r8d
	movl	-100(%rbp), %r10d
	movq	-56(%rbp), %r11
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movl	$-1, (%rsp)
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_vectors_import_buffer
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB24_12
# BB#2:                                 # %if.then.15
	movq	-128(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB24_11
# BB#3:                                 # %if.then.18
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-104(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -132(%rbp)
.LBB24_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB24_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movslq	-132(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB24_4 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB24_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB24_9
.LBB24_8:                               # %cond.false
                                        #   in Loop: Header=BB24_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB24_9
.LBB24_9:                               # %cond.end
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	jmp	.LBB24_4
.LBB24_10:                              # %for.end
	movq	-128(%rbp), %rdi
	callq	g_list_free
.LBB24_11:                              # %if.end
	jmp	.LBB24_12
.LBB24_12:                              # %if.end.27
	jmp	.LBB24_13
.LBB24_13:                              # %if.end.28
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movl	%esi, -180(%rbp)        # 4-byte Spill
	je	.LBB24_15
# BB#14:                                # %cond.true.30
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB24_16
.LBB24_15:                              # %cond.false.31
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB24_16
.LBB24_16:                              # %cond.end.32
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -72(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB24_18
# BB#17:                                # %if.then.36
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-104(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-112(%rbp), %rsi
	movslq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int32array
.LBB24_18:                              # %if.end.42
	movq	-72(%rbp), %rax
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	vectors_import_from_string_invoker, .Lfunc_end24-vectors_import_from_string_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_export_to_file_invoker,@function
vectors_export_to_file_invoker:         # @vectors_export_to_file_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_vectors
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	gimp_vectors_export_file
	movl	%eax, -52(%rbp)
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB25_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB25_5
.LBB25_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB25_5
.LBB25_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	vectors_export_to_file_invoker, .Lfunc_end25-vectors_export_to_file_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_export_to_string_invoker,@function
vectors_export_to_string_invoker:       # @vectors_export_to_string_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_vectors
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_vectors_export_string
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -52(%rbp)
.LBB26_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB26_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB26_5
.LBB26_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB26_5
.LBB26_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB26_7
# BB#6:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB26_7:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	vectors_export_to_string_invoker, .Lfunc_end26-vectors_export_to_string_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-vectors-new"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Creates a new empty vectors object."
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Creates a new empty vectors object. The vectors object needs to be added to the image using 'gimp-image-insert-vectors'."
	.size	.L.str.2, 121

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Simon Budig"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2005"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The image"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"name"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"the name of the new vector object."
	.size	.L.str.8, 35

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vectors"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"the current vector object, 0 if no vector exists in the image."
	.size	.L.str.10, 63

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-vectors-new-from-text-layer"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Creates a new vectors object from a text layer."
	.size	.L.str.12, 48

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Creates a new vectors object from a text layer. The vectors object needs to be added to the image using 'gimp-image-insert-vectors'."
	.size	.L.str.13, 133

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Marcus Heese <heese@cip.ifi.lmu.de>"
	.size	.L.str.14, 36

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Marcus Heese"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"2008"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The image."
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"layer"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"The text layer."
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The vectors of the text layer."
	.size	.L.str.20, 31

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-vectors-copy"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Copy a vectors object."
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"This procedure copies the specified vectors object and returns the copy."
	.size	.L.str.23, 73

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Barak Itkin <lightningismyname@gmail.com>"
	.size	.L.str.24, 42

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Barak Itkin"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The vectors object to copy"
	.size	.L.str.26, 27

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"vectors-copy"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"vectors copy"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The newly copied vectors object"
	.size	.L.str.29, 32

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-vectors-get-strokes"
	.size	.L.str.30, 25

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"List the strokes associated with the passed path."
	.size	.L.str.31, 50

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Returns an Array with the stroke-IDs associated with the passed path."
	.size	.L.str.32, 70

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"The vectors object"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"num-strokes"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"num strokes"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"The number of strokes returned."
	.size	.L.str.36, 32

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"stroke-ids"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"stroke ids"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"List of the strokes belonging to the path."
	.size	.L.str.39, 43

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-vectors-stroke-get-length"
	.size	.L.str.40, 31

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Measure the length of the given stroke."
	.size	.L.str.41, 40

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"stroke-id"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"stroke id"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"The stroke ID"
	.size	.L.str.44, 14

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"precision"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The precision used for the approximation"
	.size	.L.str.46, 41

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"length"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"The length (in pixels) of the given stroke."
	.size	.L.str.48, 44

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-vectors-stroke-get-point-at-dist"
	.size	.L.str.49, 38

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Get point at a specified distance along the stroke."
	.size	.L.str.50, 52

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"This will return the x,y position of a point at a given distance along the stroke. The distance will be obtained by first digitizing the curve internally and then walking along the curve. For a closed stroke the start of the path is the first point on the path that was created. This might not be obvious. If the stroke is not long enough, a \"valid\" flag will be FALSE."
	.size	.L.str.51, 370

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"dist"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"The given distance."
	.size	.L.str.53, 20

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"x-point"
	.size	.L.str.54, 8

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"x point"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"The x position of the point."
	.size	.L.str.56, 29

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"y-point"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"y point"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"The y position of the point."
	.size	.L.str.59, 29

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"slope"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"The slope (dy / dx) at the specified point."
	.size	.L.str.61, 44

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"valid"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Indicator for the validity of the returned data."
	.size	.L.str.63, 49

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-vectors-remove-stroke"
	.size	.L.str.64, 27

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"remove the stroke from a vectors object."
	.size	.L.str.65, 41

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Remove the stroke from a vectors object."
	.size	.L.str.66, 41

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-vectors-stroke-close"
	.size	.L.str.67, 26

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"closes the specified stroke."
	.size	.L.str.68, 29

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Closes the specified stroke."
	.size	.L.str.69, 29

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gimp-vectors-stroke-translate"
	.size	.L.str.70, 30

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"translate the given stroke."
	.size	.L.str.71, 28

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Translate the given stroke."
	.size	.L.str.72, 28

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"off-x"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"off x"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Offset in x direction"
	.size	.L.str.75, 22

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"off-y"
	.size	.L.str.76, 6

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"off y"
	.size	.L.str.77, 6

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Offset in y direction"
	.size	.L.str.78, 22

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-vectors-stroke-scale"
	.size	.L.str.79, 26

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"scales the given stroke."
	.size	.L.str.80, 25

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Scale the given stroke."
	.size	.L.str.81, 24

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"scale-x"
	.size	.L.str.82, 8

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"scale x"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Scale factor in x direction"
	.size	.L.str.84, 28

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"scale-y"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"scale y"
	.size	.L.str.86, 8

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Scale factor in y direction"
	.size	.L.str.87, 28

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"gimp-vectors-stroke-rotate"
	.size	.L.str.88, 27

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"rotates the given stroke."
	.size	.L.str.89, 26

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Rotates the given stroke around given center by angle (in degrees)."
	.size	.L.str.90, 68

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Jo\303\243o S. O. Bueno"
	.size	.L.str.91, 18

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"2006"
	.size	.L.str.92, 5

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"center-x"
	.size	.L.str.93, 9

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"center x"
	.size	.L.str.94, 9

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"X coordinate of the rotation center"
	.size	.L.str.95, 36

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"center-y"
	.size	.L.str.96, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"center y"
	.size	.L.str.97, 9

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Y coordinate of the rotation center"
	.size	.L.str.98, 36

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"angle"
	.size	.L.str.99, 6

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"angle to rotate about"
	.size	.L.str.100, 22

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"gimp-vectors-stroke-flip"
	.size	.L.str.101, 25

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"flips the given stroke."
	.size	.L.str.102, 24

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"flip-type"
	.size	.L.str.103, 10

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"flip type"
	.size	.L.str.104, 10

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Flip orientation, either vertical or horizontal"
	.size	.L.str.105, 48

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"axis"
	.size	.L.str.106, 5

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"axis coordinate about which to flip, in pixels"
	.size	.L.str.107, 47

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-vectors-stroke-flip-free"
	.size	.L.str.108, 30

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"flips the given stroke about an arbitrary axis."
	.size	.L.str.109, 48

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Flips the given stroke about an arbitrary axis. Axis is defined by two coordinates in the image (in pixels), through which the flipping axis passes."
	.size	.L.str.110, 149

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"x1"
	.size	.L.str.111, 3

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"X coordinate of the first point of the flipping axis"
	.size	.L.str.112, 53

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"y1"
	.size	.L.str.113, 3

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Y coordinate of the first point of the flipping axis"
	.size	.L.str.114, 53

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"x2"
	.size	.L.str.115, 3

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"X coordinate of the second point of the flipping axis"
	.size	.L.str.116, 54

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"y2"
	.size	.L.str.117, 3

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Y coordinate of the second point of the flipping axis"
	.size	.L.str.118, 54

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"gimp-vectors-stroke-get-points"
	.size	.L.str.119, 31

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"returns the control points of a stroke."
	.size	.L.str.120, 40

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"returns the control points of a stroke. The interpretation of the coordinates returned depends on the type of the stroke. For Gimp 2.4 this is always a bezier stroke, where the coordinates are the control points."
	.size	.L.str.121, 213

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"type"
	.size	.L.str.122, 5

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"type of the stroke (always GIMP_VECTORS_STROKE_TYPE_BEZIER for now)."
	.size	.L.str.123, 69

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"num-points"
	.size	.L.str.124, 11

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"num points"
	.size	.L.str.125, 11

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"The number of floats returned."
	.size	.L.str.126, 31

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"controlpoints"
	.size	.L.str.127, 14

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"List of the control points for the stroke (x0, y0, x1, y1, ...)."
	.size	.L.str.128, 65

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"closed"
	.size	.L.str.129, 7

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Whether the stroke is closed or not."
	.size	.L.str.130, 37

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"gimp-vectors-stroke-new-from-points"
	.size	.L.str.131, 36

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Adds a stroke of a given type to the vectors object."
	.size	.L.str.132, 53

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Adds a stroke of a given type to the vectors object. The coordinates of the control points can be specified. For now only strokes of the type GIMP_VECTORS_STROKE_TYPE_BEZIER are supported. The control points are specified as a pair of float values for the x- and y-coordinate. The Bezier stroke type needs a multiple of three control points. Each Bezier segment endpoint (anchor, A) has two additional control points (C) associated. They are specified in the order CACCACCAC..."
	.size	.L.str.133, 478

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"The number of elements in the array, i.e. the number of controlpoints in the stroke * 2 (x- and y-coordinate)."
	.size	.L.str.134, 111

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"List of the x- and y-coordinates of the control points."
	.size	.L.str.135, 56

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Whether the stroke is to be closed or not."
	.size	.L.str.136, 43

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"The stroke ID of the newly created stroke."
	.size	.L.str.137, 43

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"gimp-vectors-stroke-interpolate"
	.size	.L.str.138, 32

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"returns polygonal approximation of the stroke."
	.size	.L.str.139, 47

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"num-coords"
	.size	.L.str.140, 11

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"num coords"
	.size	.L.str.141, 11

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"coords"
	.size	.L.str.142, 7

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"List of the coords along the path (x0, y0, x1, y1, ...)."
	.size	.L.str.143, 57

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gimp-vectors-bezier-stroke-new-moveto"
	.size	.L.str.144, 38

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Adds a bezier stroke with a single moveto to the vectors object."
	.size	.L.str.145, 65

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"x0"
	.size	.L.str.146, 3

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"The x-coordinate of the moveto"
	.size	.L.str.147, 31

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"y0"
	.size	.L.str.148, 3

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"The y-coordinate of the moveto"
	.size	.L.str.149, 31

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"The resulting stroke"
	.size	.L.str.150, 21

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"gimp-vectors-bezier-stroke-lineto"
	.size	.L.str.151, 34

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Extends a bezier stroke with a lineto."
	.size	.L.str.152, 39

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"The x-coordinate of the lineto"
	.size	.L.str.153, 31

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"The y-coordinate of the lineto"
	.size	.L.str.154, 31

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"gimp-vectors-bezier-stroke-conicto"
	.size	.L.str.155, 35

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"Extends a bezier stroke with a conic bezier spline."
	.size	.L.str.156, 52

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"Extends a bezier stroke with a conic bezier spline. Actually a cubic bezier spline gets added that realizes the shape of a conic bezier spline."
	.size	.L.str.157, 144

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"The x-coordinate of the control point"
	.size	.L.str.158, 38

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"The y-coordinate of the control point"
	.size	.L.str.159, 38

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"The x-coordinate of the end point"
	.size	.L.str.160, 34

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"The y-coordinate of the end point"
	.size	.L.str.161, 34

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"gimp-vectors-bezier-stroke-cubicto"
	.size	.L.str.162, 35

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"Extends a bezier stroke with a cubic bezier spline."
	.size	.L.str.163, 52

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"The x-coordinate of the first control point"
	.size	.L.str.164, 44

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"The y-coordinate of the first control point"
	.size	.L.str.165, 44

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"The x-coordinate of the second control point"
	.size	.L.str.166, 45

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"The y-coordinate of the second control point"
	.size	.L.str.167, 45

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"gimp-vectors-bezier-stroke-new-ellipse"
	.size	.L.str.168, 39

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"Adds a bezier stroke describing an ellipse the vectors object."
	.size	.L.str.169, 63

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"The x-coordinate of the center"
	.size	.L.str.170, 31

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"The y-coordinate of the center"
	.size	.L.str.171, 31

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"radius-x"
	.size	.L.str.172, 9

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"radius x"
	.size	.L.str.173, 9

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"The radius in x direction"
	.size	.L.str.174, 26

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"radius-y"
	.size	.L.str.175, 9

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"radius y"
	.size	.L.str.176, 9

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"The radius in y direction"
	.size	.L.str.177, 26

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"The angle the x-axis of the ellipse (radians, counterclockwise)"
	.size	.L.str.178, 64

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"gimp-vectors-to-selection"
	.size	.L.str.179, 26

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"Deprecated: Use 'gimp-image-select-item' instead."
	.size	.L.str.180, 50

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"gimp-image-select-item"
	.size	.L.str.181, 23

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"The vectors object to render to the selection"
	.size	.L.str.182, 46

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"operation"
	.size	.L.str.183, 10

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"The desired operation with current selection"
	.size	.L.str.184, 45

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"antialias"
	.size	.L.str.185, 10

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"Antialias selection."
	.size	.L.str.186, 21

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"feather"
	.size	.L.str.187, 8

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Feather selection."
	.size	.L.str.188, 19

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"feather-radius-x"
	.size	.L.str.189, 17

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"feather radius x"
	.size	.L.str.190, 17

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Feather radius x."
	.size	.L.str.191, 18

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"feather-radius-y"
	.size	.L.str.192, 17

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"feather radius y"
	.size	.L.str.193, 17

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"Feather radius y."
	.size	.L.str.194, 18

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"gimp-vectors-import-from-file"
	.size	.L.str.195, 30

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"Import paths from an SVG file."
	.size	.L.str.196, 31

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"This procedure imports paths from an SVG file. SVG elements other than paths and basic shapes are ignored."
	.size	.L.str.197, 107

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"filename"
	.size	.L.str.198, 9

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"The name of the SVG file to import."
	.size	.L.str.199, 36

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"merge"
	.size	.L.str.200, 6

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"Merge paths into a single vectors object."
	.size	.L.str.201, 42

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"scale"
	.size	.L.str.202, 6

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"Scale the SVG to image dimensions."
	.size	.L.str.203, 35

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"num-vectors"
	.size	.L.str.204, 12

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"num vectors"
	.size	.L.str.205, 12

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"The number of newly created vectors"
	.size	.L.str.206, 36

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"vectors-ids"
	.size	.L.str.207, 12

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"vectors ids"
	.size	.L.str.208, 12

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"The list of newly created vectors"
	.size	.L.str.209, 34

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"gimp-vectors-import-from-string"
	.size	.L.str.210, 32

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"Import paths from an SVG string."
	.size	.L.str.211, 33

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"This procedure works like 'gimp-vectors-import-from-file' but takes a string rather than reading the SVG from a file. This allows you to write scripts that generate SVG and feed it to GIMP."
	.size	.L.str.212, 190

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"string"
	.size	.L.str.213, 7

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"A string that must be a complete and valid SVG document."
	.size	.L.str.214, 57

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"Number of bytes in string or -1 if the string is NULL terminated."
	.size	.L.str.215, 66

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"gimp-vectors-export-to-file"
	.size	.L.str.216, 28

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"save a path as an SVG file."
	.size	.L.str.217, 28

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"This procedure creates an SVG file to save a Vectors object, that is, a path. The resulting file can be edited using a vector graphics application, or later reloaded into GIMP. If you pass 0 as the 'vectors' argument, then all paths in the image will be exported."
	.size	.L.str.218, 264

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"Bill Skaggs <weskaggs@primate.ucdavis.edu>"
	.size	.L.str.219, 43

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"Bill Skaggs"
	.size	.L.str.220, 12

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"2007"
	.size	.L.str.221, 5

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"The name of the SVG file to create."
	.size	.L.str.222, 36

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"The vectors object to be saved, or 0 for all in the image"
	.size	.L.str.223, 58

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"gimp-vectors-export-to-string"
	.size	.L.str.224, 30

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"Save a path as an SVG string."
	.size	.L.str.225, 30

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"This procedure works like 'gimp-vectors-export-to-file' but creates a string rather than a file. The contents are a NUL-terminated string that holds a complete XML document. If you pass 0 as the 'vectors' argument, then all paths in the image will be exported."
	.size	.L.str.226, 261

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"The vectors object to save, or 0 for all in the image"
	.size	.L.str.227, 54

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"A string whose contents are a complete SVG document."
	.size	.L.str.228, 53

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"Remove path stroke"
	.size	.L.str.229, 19

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"Close path stroke"
	.size	.L.str.230, 18

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"Translate path stroke"
	.size	.L.str.231, 22

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"Scale path stroke"
	.size	.L.str.232, 18

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"Rotate path stroke"
	.size	.L.str.233, 19

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"Flip path stroke"
	.size	.L.str.234, 17

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"Add path stroke"
	.size	.L.str.235, 16

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"Extend path stroke"
	.size	.L.str.236, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
