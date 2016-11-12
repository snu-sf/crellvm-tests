	.text
	.file	"paths-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_paths_procs
	.align	16, 0x90
	.type	register_paths_procs,@function
register_paths_procs:                   # @register_paths_procs
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
	subq	$1104, %rsp             # imm = 0x450
	movabsq	$path_list_invoker, %rax
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
	callq	gimp_param_spec_image_id
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	-52(%rbp), %r9d         # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_get_current_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.14, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -136(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_set_current_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.20, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	-160(%rbp), %r9         # 8-byte Reload
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.22, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -192(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_delete_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.25, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	-216(%rbp), %r9         # 8-byte Reload
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-208(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.26, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.27, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -248(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_get_points_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.30, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-272(%rbp), %r8         # 8-byte Reload
	movq	-272(%rbp), %r9         # 8-byte Reload
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-264(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.5, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.31, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -304(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movl	%r11d, -316(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movl	%r11d, -332(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rax
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	movl	-336(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -340(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.43, %rdx
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_float_array
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_set_points_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.44, %rsi
	movabsq	$.L.str.45, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.46, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-384(%rbp), %r8         # 8-byte Reload
	movq	-384(%rbp), %r9         # 8-byte Reload
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-376(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.47, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.48, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -412(%rbp)        # 4-byte Spill
	movl	-412(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -416(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.49, %rax
	movabsq	$.L.str.50, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -428(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.51, %rdi
	movabsq	$.L.str.52, %rsi
	movabsq	$.L.str.53, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rax
	movl	%ecx, -432(%rbp)        # 4-byte Spill
	movl	-432(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -436(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.54, %rdx
	movl	$227, %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_float_array
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_stroke_current_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.56, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.57, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-480(%rbp), %r8         # 8-byte Reload
	movq	-480(%rbp), %r9         # 8-byte Reload
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-472(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.58, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_get_point_at_dist_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.59, %rsi
	movabsq	$.L.str.60, %rax
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.61, %rdx
	movq	-16(%rbp), %rdi
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-512(%rbp), %r8         # 8-byte Reload
	movq	-512(%rbp), %r9         # 8-byte Reload
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-504(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.62, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.63, %rax
	movabsq	$.L.str.64, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.65, %rdi
	movabsq	$.L.str.66, %rsi
	movabsq	$.L.str.67, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movl	%r11d, -540(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.68, %rdi
	movabsq	$.L.str.69, %rsi
	movabsq	$.L.str.70, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movl	%r11d, -556(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.71, %rax
	movabsq	$.L.str.72, %rdx
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
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_get_tattoo_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.74, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.75, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-592(%rbp), %r8         # 8-byte Reload
	movq	-592(%rbp), %r9         # 8-byte Reload
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-584(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.77, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -620(%rbp)        # 4-byte Spill
	movl	-620(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -624(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.78, %rax
	movabsq	$.L.str.79, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -636(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_set_tattoo_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.80, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.80, %rsi
	movabsq	$.L.str.81, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.82, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-664(%rbp), %r8         # 8-byte Reload
	movq	-664(%rbp), %r9         # 8-byte Reload
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-656(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.83, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -692(%rbp)        # 4-byte Spill
	movl	-692(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -696(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.84, %rax
	movabsq	$.L.str.85, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rdi
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -708(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$get_path_by_tattoo_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.86, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.86, %rsi
	movabsq	$.L.str.87, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.88, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-736(%rbp), %r8         # 8-byte Reload
	movq	-736(%rbp), %r9         # 8-byte Reload
	movq	-736(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-728(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.78, %rax
	movabsq	$.L.str.89, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-16(%rbp), %rdi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -756(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.90, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -776(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -780(%rbp)        # 4-byte Spill
	movl	-780(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -784(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_get_locked_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.91, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.91, %rsi
	movabsq	$.L.str.92, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.93, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-808(%rbp), %r8         # 8-byte Reload
	movq	-808(%rbp), %r9         # 8-byte Reload
	movq	-808(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-800(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.94, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -836(%rbp)        # 4-byte Spill
	movl	-836(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -840(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.95, %rax
	movabsq	$.L.str.96, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_set_locked_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.97, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.97, %rsi
	movabsq	$.L.str.98, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.99, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-872(%rbp), %r8         # 8-byte Reload
	movq	-872(%rbp), %r9         # 8-byte Reload
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-864(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.100, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -900(%rbp)        # 4-byte Spill
	movl	-900(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -904(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.95, %rax
	movabsq	$.L.str.101, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_to_selection_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.102, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.102, %rsi
	movabsq	$.L.str.103, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.104, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-936(%rbp), %r8         # 8-byte Reload
	movq	-936(%rbp), %r9         # 8-byte Reload
	movq	-936(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-928(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.105, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -964(%rbp)        # 4-byte Spill
	movl	-964(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -968(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.106, %rdx
	movabsq	$.L.str.107, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -984(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-984(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.108, %rax
	movabsq	$.L.str.109, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.110, %rax
	movabsq	$.L.str.111, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1000(%rbp), %rdi       # 8-byte Reload
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
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1008(%rbp), %rdi       # 8-byte Reload
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
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$path_import_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.118, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.118, %rsi
	movabsq	$.L.str.119, %rax
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.120, %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-1040(%rbp), %r8        # 8-byte Reload
	movq	-1040(%rbp), %r9        # 8-byte Reload
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1032(%rbp), %r10       # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1048(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.121, %rax
	movabsq	$.L.str.122, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1064(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -1068(%rbp)       # 4-byte Spill
	movl	-1068(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1072(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.123, %rax
	movabsq	$.L.str.124, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.125, %rax
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdi
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1104, %rsp             # imm = 0x450
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_paths_procs, .Lfunc_end0-register_paths_procs
	.cfi_endproc

	.align	16, 0x90
	.type	path_list_invoker,@function
path_list_invoker:                      # @path_list_invoker
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
	subq	$112, %rsp
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_vectors
	leaq	-76(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_get_name_array
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
	movq	-88(%rbp), %rsi
	movslq	-76(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
.LBB1_7:                                # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	path_list_invoker, .Lfunc_end1-path_list_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_get_current_invoker,@function
path_get_current_invoker:               # @path_get_current_invoker
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
	subq	$112, %rsp
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB2_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.10
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB2_10:                               # %if.end.13
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	path_get_current_invoker, .Lfunc_end2-path_get_current_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_set_current_invoker,@function
path_set_current_invoker:               # @path_set_current_invoker
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
	cmpl	$0, -52(%rbp)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_get_vectors_by_name
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then.6
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_set_active_vectors
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB3_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	path_set_current_invoker, .Lfunc_end3-path_set_current_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_delete_invoker,@function
path_delete_invoker:                    # @path_delete_invoker
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
	cmpl	$0, -52(%rbp)
	je	.LBB4_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_get_vectors_by_name
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.6
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_remove_vectors
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB4_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_8:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	path_delete_invoker, .Lfunc_end4-path_delete_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_get_points_invoker,@function
path_get_points_invoker:                # @path_get_points_invoker
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
	subq	$176, %rsp
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
	cmpl	$0, -52(%rbp)
	je	.LBB5_12
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_get_vectors_by_name
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB5_10
# BB#2:                                 # %if.then.6
	leaq	-124(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movl	$1, -84(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_vectors_compat_get_points
	movq	%rax, -120(%rbp)
	imull	$3, -124(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB5_8
# BB#3:                                 # %if.then.9
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-92(%rbp), %rdi
	callq	g_malloc0_n
	movq	%rax, -104(%rbp)
	movl	$0, -140(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB5_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-140(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB5_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB5_4 Depth=1
	movslq	-140(%rbp), %rax
	movq	-120(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movsd	8(%rcx,%rax,8), %xmm0   # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movsd	%xmm0, (%rax)
	movslq	-140(%rbp), %rax
	movq	-120(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movsd	16(%rcx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movslq	-140(%rbp), %rax
	movq	-120(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	(%rcx,%rax,8), %edx
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	-136(%rbp), %rax
	movsd	%xmm0, 16(%rax)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	movq	-136(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -136(%rbp)
	jmp	.LBB5_4
.LBB5_7:                                # %for.end
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB5_9
.LBB5_8:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_9:                                # %if.end
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.21
	movl	$0, -52(%rbp)
.LBB5_11:                               # %if.end.22
	jmp	.LBB5_12
.LBB5_12:                               # %if.end.23
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB5_14
# BB#13:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB5_15
.LBB5_15:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_17
# BB#16:                                # %if.then.27
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
	movq	-104(%rbp), %rsi
	movslq	-92(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_floatarray
.LBB5_17:                               # %if.end.37
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	path_get_points_invoker, .Lfunc_end5-path_get_points_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_set_points_invoker,@function
path_set_points_invoker:                # @path_set_points_invoker
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
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_16
# BB#1:                                 # %if.then
	movl	$3, %eax
	movl	$0, -92(%rbp)
	movl	-76(%rbp), %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-132(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_3
# BB#2:                                 # %if.then.10
	movl	$1, -92(%rbp)
	jmp	.LBB6_6
.LBB6_3:                                # %if.else
	movl	$3, %eax
	movl	-76(%rbp), %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-136(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cltd
	idivl	%ecx
	cmpl	$2, %edx
	je	.LBB6_5
# BB#4:                                 # %if.then.14
	movl	$0, -52(%rbp)
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %if.end.15
	cmpl	$0, -52(%rbp)
	je	.LBB6_15
# BB#7:                                 # %if.then.17
	movl	$24, %eax
	movl	%eax, %esi
	movl	$3, %eax
	movl	-76(%rbp), %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -124(%rbp)
	movslq	-124(%rbp), %rdi
	callq	g_malloc0_n
	movq	%rax, -120(%rbp)
	movl	$0, -128(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB6_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB6_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB6_8 Depth=1
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movsd	%xmm0, 8(%rcx,%rax,8)
	movq	-112(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movslq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movsd	%xmm0, 16(%rcx,%rax,8)
	movq	-112(%rbp), %rax
	cvttsd2si	16(%rax), %rax
	movl	%eax, %edx
	movslq	-128(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-120(%rbp), %rax
	movl	%edx, (%rax)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB6_8 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	movq	-112(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -112(%rbp)
	jmp	.LBB6_8
.LBB6_11:                               # %for.end
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movl	-124(%rbp), %ecx
	movl	-92(%rbp), %r8d
	callq	gimp_vectors_compat_new
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	cmpq	$0, -104(%rbp)
	je	.LBB6_13
# BB#12:                                # %if.then.33
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_image_add_vectors
	movl	%eax, -52(%rbp)
	jmp	.LBB6_14
.LBB6_13:                               # %if.else.35
	movl	$0, -52(%rbp)
.LBB6_14:                               # %if.end.36
	jmp	.LBB6_15
.LBB6_15:                               # %if.end.37
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.38
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB6_18
# BB#17:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB6_19
.LBB6_18:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB6_19
.LBB6_19:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	path_set_points_invoker, .Lfunc_end6-path_set_points_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_stroke_current_invoker,@function
path_stroke_current_invoker:            # @path_stroke_current_invoker
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB7_6
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -80(%rbp)
	je	.LBB7_6
# BB#3:                                 # %land.lhs.true.5
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_writable
	cmpl	$0, %eax
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true.10
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB7_6
# BB#5:                                 # %if.then.15
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_stroke_options_new
	movabsq	$.L.str.127, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-24(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_item_stroke
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.26
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB7_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_11:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	path_stroke_current_invoker, .Lfunc_end7-path_stroke_current_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	path_get_point_at_dist_invoker,@function
path_get_point_at_dist_invoker:         # @path_get_point_at_dist_invoker
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
	subq	$240, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_16
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB8_14
# BB#2:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %esi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -112(%rbp)
.LBB8_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB8_13
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB8_3 Depth=1
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	callq	gimp_stroke_get_length
	movsd	%xmm0, -128(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-128(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_6
# BB#5:                                 # %if.then.10
                                        #   in Loop: Header=BB8_3 Depth=1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	jmp	.LBB8_12
.LBB8_6:                                # %if.else
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-120(%rbp), %xmm1
	movsd	%xmm1, -136(%rbp)
	ucomisd	-136(%rbp), %xmm0
	jbe	.LBB8_8
# BB#7:                                 # %cond.true
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB8_9
.LBB8_8:                                # %cond.false
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB8_9:                                # %cond.end
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	leaq	-200(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movsd	%xmm0, -136(%rbp)
	movq	-112(%rbp), %rdi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_stroke_get_point_at_dist
	cmpl	$0, %eax
	jne	.LBB8_11
# BB#10:                                # %if.then.15
	movl	$0, -52(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.else.16
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	$1, -52(%rbp)
	movaps	%xmm0, %xmm1
	addsd	-200(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -84(%rbp)
	addsd	-192(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB8_13
.LBB8_12:                               # %if.end
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -112(%rbp)
	jmp	.LBB8_3
.LBB8_13:                               # %while.end
	jmp	.LBB8_15
.LBB8_14:                               # %if.else.21
	movl	$0, -52(%rbp)
.LBB8_15:                               # %if.end.22
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.23
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movl	%esi, -220(%rbp)        # 4-byte Spill
	je	.LBB8_18
# BB#17:                                # %cond.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB8_19
.LBB8_18:                               # %cond.false.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB8_19
.LBB8_19:                               # %cond.end.27
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_21
# BB#20:                                # %if.then.31
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
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB8_21:                               # %if.end.38
	movq	-64(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	path_get_point_at_dist_invoker, .Lfunc_end8-path_get_point_at_dist_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_get_tattoo_invoker,@function
path_get_tattoo_invoker:                # @path_get_tattoo_invoker
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -84(%rbp)
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
	je	.LBB9_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_get_vectors_by_name
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movl	%eax, -84(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB9_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB9_8
.LBB9_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB9_8
.LBB9_8:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB9_10:                               # %if.end.17
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	path_get_tattoo_invoker, .Lfunc_end9-path_get_tattoo_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_set_tattoo_invoker,@function
path_set_tattoo_invoker:                # @path_set_tattoo_invoker
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
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_get_vectors_by_name
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then.9
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_tattoo
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB10_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB10_8
.LBB10_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB10_8
.LBB10_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	path_set_tattoo_invoker, .Lfunc_end10-path_set_tattoo_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	get_path_by_tattoo_invoker,@function
get_path_by_tattoo_invoker:             # @get_path_by_tattoo_invoker
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
	subq	$128, %rsp
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
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_image_get_vectors_by_tattoo
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB11_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.13
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB11_10:                              # %if.end.16
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	get_path_by_tattoo_invoker, .Lfunc_end11-get_path_by_tattoo_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_get_locked_invoker,@function
path_get_locked_invoker:                # @path_get_locked_invoker
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -84(%rbp)
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
	je	.LBB12_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_get_vectors_by_name
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	movl	%eax, -84(%rbp)
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB12_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB12_10:                              # %if.end.17
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	path_get_locked_invoker, .Lfunc_end12-path_get_locked_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_set_locked_invoker,@function
path_set_locked_invoker:                # @path_set_locked_invoker
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
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_get_vectors_by_name
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then.9
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_linked
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB13_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	path_set_locked_invoker, .Lfunc_end13-path_set_locked_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_to_selection_invoker,@function
path_to_selection_invoker:              # @path_to_selection_invoker
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
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_get_vectors_by_name
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then.21
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_item_to_selection
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %if.end.24
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB14_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_8:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	path_to_selection_invoker, .Lfunc_end14-path_to_selection_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	path_import_invoker,@function
path_import_invoker:                    # @path_import_invoker
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
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_vectors_import_file
	movl	%eax, -52(%rbp)
.LBB15_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB15_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB15_5
.LBB15_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	path_import_invoker, .Lfunc_end15-path_import_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-path-list"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Deprecated: Use 'gimp-image-get-vectors' instead."
	.size	.L.str.1, 50

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-image-get-vectors"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"image"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The image to list the paths from"
	.size	.L.str.5, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"num-paths"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"num paths"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The number of paths returned."
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"path-list"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"path list"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"List of the paths belonging to this image."
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-path-get-current"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Deprecated: Use 'gimp-image-get-active-vectors' instead."
	.size	.L.str.13, 57

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-image-get-active-vectors"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The image to get the current path from"
	.size	.L.str.15, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"name"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The name of the current path."
	.size	.L.str.17, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-path-set-current"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Deprecated: Use 'gimp-image-set-active-vectors' instead."
	.size	.L.str.19, 57

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-image-set-active-vectors"
	.size	.L.str.20, 30

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The image in which a path will become current"
	.size	.L.str.21, 46

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The name of the path to make current."
	.size	.L.str.22, 38

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-path-delete"
	.size	.L.str.23, 17

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Deprecated: Use 'gimp-image-remove-vectors' instead."
	.size	.L.str.24, 53

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-image-remove-vectors"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The image to delete the path from"
	.size	.L.str.26, 34

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"The name of the path to delete."
	.size	.L.str.27, 32

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-path-get-points"
	.size	.L.str.28, 21

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Deprecated: Use 'gimp-vectors-stroke-get-points' instead."
	.size	.L.str.29, 58

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-vectors-stroke-get-points"
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"The name of the path whose points should be listed."
	.size	.L.str.31, 52

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"path-type"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"path type"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"The type of the path. Currently only one type (1 = Bezier) is supported"
	.size	.L.str.34, 72

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"path-closed"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"path closed"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Return if the path is closed. (0 = path open, 1 = path closed)"
	.size	.L.str.37, 63

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"num-path-point-details"
	.size	.L.str.38, 23

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"num path point details"
	.size	.L.str.39, 23

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"The number of points returned. Each point is made up of (x, y, pnt_type) of floats."
	.size	.L.str.40, 84

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"points-pairs"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"points pairs"
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"The points in the path represented as 3 floats. The first is the x pos, next is the y pos, last is the type of the pnt. The type field is dependant on the path type. For beziers (type 1 paths) the type can either be (1.0 = BEZIER_ANCHOR, 2.0 = BEZIER_CONTROL, 3.0 = BEZIER_MOVE). Note all points are returned in pixel resolution."
	.size	.L.str.43, 330

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-path-set-points"
	.size	.L.str.44, 21

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Deprecated: Use 'gimp-vectors-stroke-new-from-points' instead."
	.size	.L.str.45, 63

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-vectors-stroke-new-from-points"
	.size	.L.str.46, 36

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The image to set the paths in"
	.size	.L.str.47, 30

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"The name of the path to create. If it exists then a unique name will be created - query the list of paths if you want to make sure that the name of the path you create is unique. This will be set as the current path."
	.size	.L.str.48, 217

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"ptype"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"The type of the path. Currently only one type (1 = Bezier) is supported."
	.size	.L.str.50, 73

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"num-path-points"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"num path points"
	.size	.L.str.52, 16

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"The number of elements in the array, i.e. the number of points in the path * 3. Each point is made up of (x, y, type) of floats. Currently only the creation of bezier curves is allowed. The type parameter must be set to (1) to indicate a BEZIER type curve. Note that for BEZIER curves, points must be given in the following order: ACCACCAC... If the path is not closed the last control point is missed off. Points consist of three control points (control/anchor/control) so for a curve that is not closed there must be at least two points passed (2 x,y pairs). If (num_path_points/3) % 3 = 0 then the path is assumed to be closed and the points are ACCACCACCACC."
	.size	.L.str.53, 663

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"The points in the path represented as 3 floats. The first is the x pos, next is the y pos, last is the type of the pnt. The type field is dependant on the path type. For beziers (type 1 paths) the type can either be (1.0 = BEZIER_ANCHOR, 2.0 = BEZIER_CONTROL, 3.0= BEZIER_MOVE). Note all points are returned in pixel resolution."
	.size	.L.str.54, 329

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-path-stroke-current"
	.size	.L.str.55, 25

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Deprecated: Use 'gimp-edit-stroke-vectors' instead."
	.size	.L.str.56, 52

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-edit-stroke-vectors"
	.size	.L.str.57, 25

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"The image which contains the path to stroke"
	.size	.L.str.58, 44

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-path-get-point-at-dist"
	.size	.L.str.59, 28

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Deprecated: Use 'gimp-vectors-stroke-get-point-at-dist' instead."
	.size	.L.str.60, 65

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-vectors-stroke-get-point-at-dist"
	.size	.L.str.61, 38

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"The image the paths belongs to"
	.size	.L.str.62, 31

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"distance"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"The distance along the path."
	.size	.L.str.64, 29

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"x-point"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"x point"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"The x position of the point."
	.size	.L.str.67, 29

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"y-point"
	.size	.L.str.68, 8

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"y point"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"The y position of the point."
	.size	.L.str.70, 29

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"slope"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"The slope (dy / dx) at the specified point."
	.size	.L.str.72, 44

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-path-get-tattoo"
	.size	.L.str.73, 21

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Deprecated: Use 'gimp-vectors-get-tattoo' instead."
	.size	.L.str.74, 51

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-vectors-get-tattoo"
	.size	.L.str.75, 24

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"The image"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"The name of the path whose tattoo should be obtained."
	.size	.L.str.77, 54

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"tattoo"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"The tattoo associated with the named path."
	.size	.L.str.79, 43

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gimp-path-set-tattoo"
	.size	.L.str.80, 21

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Deprecated: Use 'gimp-vectors-set-tattoo' instead."
	.size	.L.str.81, 51

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-vectors-set-tattoo"
	.size	.L.str.82, 24

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"the name of the path whose tattoo should be set"
	.size	.L.str.83, 48

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"tattovalue"
	.size	.L.str.84, 11

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"The tattoo associated with the name path. Only values returned from 'path_get_tattoo' should be used here"
	.size	.L.str.85, 106

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-get-path-by-tattoo"
	.size	.L.str.86, 24

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Deprecated: Use 'gimp-image-get-vectors-by-tattoo' instead."
	.size	.L.str.87, 60

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"gimp-image-get-vectors-by-tattoo"
	.size	.L.str.88, 33

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"The tattoo of the required path."
	.size	.L.str.89, 33

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"The name of the path with the specified tattoo."
	.size	.L.str.90, 48

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gimp-path-get-locked"
	.size	.L.str.91, 21

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Deprecated: Use 'gimp-vectors-get-linked' instead."
	.size	.L.str.92, 51

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-vectors-get-linked"
	.size	.L.str.93, 24

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"The name of the path whose locked status should be obtained."
	.size	.L.str.94, 61

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"locked"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"TRUE if the path is locked, FALSE otherwise"
	.size	.L.str.96, 44

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-path-set-locked"
	.size	.L.str.97, 21

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Deprecated: Use 'gimp-vectors-set-linked' instead."
	.size	.L.str.98, 51

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"gimp-vectors-set-linked"
	.size	.L.str.99, 24

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"the name of the path whose locked status should be set"
	.size	.L.str.100, 55

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Whether the path is locked"
	.size	.L.str.101, 27

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gimp-path-to-selection"
	.size	.L.str.102, 23

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Deprecated: Use 'gimp-vectors-to-selection' instead."
	.size	.L.str.103, 53

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimp-vectors-to-selection"
	.size	.L.str.104, 26

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"The name of the path which should be made into selection."
	.size	.L.str.105, 58

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"op"
	.size	.L.str.106, 3

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"The desired operation with current selection"
	.size	.L.str.107, 45

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"antialias"
	.size	.L.str.108, 10

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Antialias selection."
	.size	.L.str.109, 21

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"feather"
	.size	.L.str.110, 8

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Feather selection."
	.size	.L.str.111, 19

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"feather-radius-x"
	.size	.L.str.112, 17

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"feather radius x"
	.size	.L.str.113, 17

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Feather radius x."
	.size	.L.str.114, 18

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"feather-radius-y"
	.size	.L.str.115, 17

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"feather radius y"
	.size	.L.str.116, 17

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Feather radius y."
	.size	.L.str.117, 18

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"gimp-path-import"
	.size	.L.str.118, 17

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Deprecated: Use 'gimp-vectors-import-from-file' instead."
	.size	.L.str.119, 57

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"gimp-vectors-import-from-file"
	.size	.L.str.120, 30

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"filename"
	.size	.L.str.121, 9

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"The name of the SVG file to import."
	.size	.L.str.122, 36

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"merge"
	.size	.L.str.123, 6

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Merge paths into a single vectors object."
	.size	.L.str.124, 42

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"scale"
	.size	.L.str.125, 6

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Scale the SVG to image dimensions."
	.size	.L.str.126, 35

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"method"
	.size	.L.str.127, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
