	.text
	.file	"image-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_image_procs
	.align	16, 0x90
	.type	register_image_procs,@function
register_image_procs:                   # @register_image_procs
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
	pushq	%r14
	pushq	%rbx
	subq	$4416, %rsp             # imm = 0x1140
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$image_is_valid_invoker, %rax
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
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
	movq	-32(%rbp), %r11
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$16611, %r9d            # imm = 0x40E3
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_list_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -88(%rbp)         # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%r10d, %r10d
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r14d
	movq	-32(%rbp), %rax
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r14d, -100(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_new_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -136(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %rdx
	movl	$1, %r10d
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r14d
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movl	%r14d, -148(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -168(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_image_base_type_get_type
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.30, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_duplicate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.34, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -216(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_image_id
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_delete_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	movabsq	$.L.str.41, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -256(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_base_type_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.43, %rdx
	movabsq	$.L.str.44, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -288(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	callq	gimp_image_base_type_get_type
	movabsq	$.L.str.45, %rdi
	movabsq	$.L.str.46, %rsi
	movabsq	$.L.str.47, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_width_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rdx
	movabsq	$.L.str.50, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -328(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.51, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -348(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_height_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.52, %rsi
	movabsq	$.L.str.53, %rdx
	movabsq	$.L.str.54, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -376(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.55, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -396(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_free_shadow_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.57, %rax
	movabsq	$.L.str.58, %rdx
	movabsq	$.L.str.59, %rdi
	movq	-32(%rbp), %r11
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	-424(%rbp), %r9         # 8-byte Reload
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-416(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_resize_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.60, %rsi
	movabsq	$.L.str.61, %rdx
	movabsq	$.L.str.62, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -456(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.63, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.65, %rdx
	movl	$1, %r8d
	movl	$262144, %r9d           # imm = 0x40000
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -468(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-468(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movl	%r10d, -484(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.66, %rdi
	movabsq	$.L.str.67, %rsi
	movabsq	$.L.str.68, %rdx
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -488(%rbp)        # 4-byte Spill
	movl	-488(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -492(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -516(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rax
	movabsq	$.L.str.72, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -532(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_resize_to_layers_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.74, %rdx
	movabsq	$.L.str.75, %rcx
	movabsq	$.L.str.76, %rax
	movabsq	$.L.str.77, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -560(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_scale_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.78, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.78, %rsi
	movabsq	$.L.str.79, %rdx
	movabsq	$.L.str.80, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -592(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.63, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.65, %rdx
	movl	$1, %r8d
	movl	$262144, %r9d           # imm = 0x40000
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -604(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-604(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movl	%r10d, -620(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.66, %rdi
	movabsq	$.L.str.67, %rsi
	movabsq	$.L.str.68, %rdx
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -624(%rbp)        # 4-byte Spill
	movl	-624(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -628(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_scale_full_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.81, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rax
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.83, %rdx
	movabsq	$.L.str.78, %rdi
	movq	-32(%rbp), %r11
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-656(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.63, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.65, %rdx
	movl	$1, %r8d
	movl	$262144, %r9d           # imm = 0x40000
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -676(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-676(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -688(%rbp)        # 8-byte Spill
	movl	%r10d, -692(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.66, %rdi
	movabsq	$.L.str.67, %rsi
	movabsq	$.L.str.68, %rdx
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -696(%rbp)        # 4-byte Spill
	movl	-696(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -700(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.84, %rdx
	movabsq	$.L.str.85, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-728(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_crop_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.86, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.86, %rsi
	movabsq	$.L.str.87, %rdx
	movabsq	$.L.str.88, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-744(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -752(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.63, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.89, %rdx
	movl	$1, %r8d
	movl	$262144, %r9d           # imm = 0x40000
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -764(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-764(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -776(%rbp)        # 8-byte Spill
	movl	%r10d, -780(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.66, %rdi
	movabsq	$.L.str.67, %rsi
	movabsq	$.L.str.90, %rdx
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -784(%rbp)        # 4-byte Spill
	movl	-784(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -788(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.91, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -812(%rbp)        # 4-byte Spill
	movl	-812(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -816(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rax
	movabsq	$.L.str.92, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -828(%rbp)        # 4-byte Spill
	movl	-828(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -832(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_flip_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.93, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.93, %rsi
	movabsq	$.L.str.94, %rdx
	movabsq	$.L.str.95, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -856(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	callq	gimp_orientation_type_get_type
	movabsq	$.L.str.96, %rdi
	movabsq	$.L.str.97, %rsi
	movabsq	$.L.str.98, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_rotate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.99, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.99, %rsi
	movabsq	$.L.str.100, %rdx
	movabsq	$.L.str.101, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.104, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -904(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	callq	gimp_rotation_type_get_type
	movabsq	$.L.str.105, %rdi
	movabsq	$.L.str.106, %rsi
	movabsq	$.L.str.107, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_layers_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.108, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.108, %rsi
	movabsq	$.L.str.109, %rdx
	movabsq	$.L.str.110, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-928(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -936(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.111, %rdi
	movabsq	$.L.str.112, %rsi
	movabsq	$.L.str.113, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -948(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-948(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -960(%rbp)        # 8-byte Spill
	movl	%r10d, -964(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.114, %rdi
	movabsq	$.L.str.115, %rsi
	movabsq	$.L.str.116, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_channels_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.117, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.117, %rsi
	movabsq	$.L.str.118, %rdx
	movabsq	$.L.str.119, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-992(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1000(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.120, %rdi
	movabsq	$.L.str.121, %rsi
	movabsq	$.L.str.122, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1012(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1012(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	movl	%r10d, -1028(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.123, %rdi
	movabsq	$.L.str.124, %rsi
	movabsq	$.L.str.125, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_vectors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.126, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.126, %rsi
	movabsq	$.L.str.127, %rdx
	movabsq	$.L.str.128, %rcx
	movabsq	$.L.str.76, %rax
	movabsq	$.L.str.129, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1064(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.130, %rdi
	movabsq	$.L.str.131, %rsi
	movabsq	$.L.str.132, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1076(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1076(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	movl	%r10d, -1092(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.133, %rdi
	movabsq	$.L.str.134, %rsi
	movabsq	$.L.str.135, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_active_drawable_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.136, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.136, %rsi
	movabsq	$.L.str.137, %rdx
	movabsq	$.L.str.138, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1128(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.139, %rax
	movabsq	$.L.str.140, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_unset_active_channel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.141, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.141, %rsi
	movabsq	$.L.str.142, %rdx
	movabsq	$.L.str.143, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1168(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_floating_sel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.144, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.144, %rsi
	movabsq	$.L.str.145, %rdx
	movabsq	$.L.str.146, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1192(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1192(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1200(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.147, %rdi
	movabsq	$.L.str.148, %rsi
	movabsq	$.L.str.149, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_floating_sel_attached_to_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.150, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.150, %rsi
	movabsq	$.L.str.151, %rdx
	movabsq	$.L.str.152, %rcx
	movabsq	$.L.str.153, %rax
	movabsq	$.L.str.154, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1232(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1232(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1240(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1248(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.139, %rax
	movabsq	$.L.str.155, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1256(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_pick_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.156, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.156, %rsi
	movabsq	$.L.str.157, %rdx
	movabsq	$.L.str.158, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1272(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1272(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1280(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1288(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.139, %rax
	movabsq	$.L.str.159, %rdx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.160, %rax
	movabsq	$.L.str.161, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1304(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.162, %rax
	movabsq	$.L.str.163, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.164, %rdi
	movabsq	$.L.str.165, %rsi
	movabsq	$.L.str.166, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.167, %rdi
	movabsq	$.L.str.168, %rsi
	movabsq	$.L.str.169, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.170, %rdi
	movabsq	$.L.str.171, %rsi
	movabsq	$.L.str.172, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$16611, %ecx            # imm = 0x40E3
	movq	-32(%rbp), %rax
	movsd	%xmm0, -1336(%rbp)      # 8-byte Spill
	movsd	-1336(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.173, %rax
	movabsq	$.L.str.174, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1352(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_pick_correlate_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.175, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.175, %rsi
	movabsq	$.L.str.176, %rdx
	movabsq	$.L.str.177, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-32(%rbp), %r11
	movq	%rdi, -1368(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%r8, -1376(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1368(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1384(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.160, %rax
	movabsq	$.L.str.178, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1392(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1396(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.162, %rax
	movabsq	$.L.str.179, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1408(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1412(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.181, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -1424(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_add_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.182, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.182, %rsi
	movabsq	$.L.str.183, %rax
	movabsq	$.L.str.58, %rcx
	movabsq	$.L.str.184, %rdx
	movq	-32(%rbp), %rdi
	movq	%rdx, -1440(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1448(%rbp), %r8        # 8-byte Reload
	movq	-1448(%rbp), %r9        # 8-byte Reload
	movq	-1448(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1440(%rbp), %r11       # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1456(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.185, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1464(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.186, %rax
	movabsq	$.L.str.187, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1472(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1476(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_insert_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.184, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.184, %rsi
	movabsq	$.L.str.188, %rdx
	movabsq	$.L.str.189, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1496(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1496(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1504(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1512(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.185, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1520(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.190, %rax
	movabsq	$.L.str.191, %rdx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1528(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.186, %rax
	movabsq	$.L.str.187, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1536(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1540(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_remove_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.192, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.192, %rsi
	movabsq	$.L.str.193, %rdx
	movabsq	$.L.str.194, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1560(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1560(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1568(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1576(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1576(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.185, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1584(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_add_channel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1592(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.195, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.195, %rsi
	movabsq	$.L.str.196, %rax
	movabsq	$.L.str.58, %rcx
	movabsq	$.L.str.197, %rdx
	movq	-32(%rbp), %rdi
	movq	%rdx, -1600(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1608(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1608(%rbp), %r8        # 8-byte Reload
	movq	-1608(%rbp), %r9        # 8-byte Reload
	movq	-1608(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1600(%rbp), %r11       # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1616(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.198, %rax
	movabsq	$.L.str.199, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1624(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_channel_id
	movq	-1624(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.186, %rax
	movabsq	$.L.str.200, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1632(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1636(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_insert_channel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.197, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.197, %rsi
	movabsq	$.L.str.201, %rdx
	movabsq	$.L.str.202, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1656(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1656(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1664(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1672(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1672(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.198, %rax
	movabsq	$.L.str.199, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1680(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_channel_id
	movq	-1680(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.190, %rax
	movabsq	$.L.str.203, %rdx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1688(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_channel_id
	movq	-1688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.186, %rax
	movabsq	$.L.str.200, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1696(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1700(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1696(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_remove_channel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1712(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.204, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.204, %rsi
	movabsq	$.L.str.205, %rdx
	movabsq	$.L.str.206, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1720(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1720(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1728(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1736(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1736(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.198, %rax
	movabsq	$.L.str.199, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1744(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_channel_id
	movq	-1744(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_add_vectors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.207, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.207, %rsi
	movabsq	$.L.str.208, %rax
	movabsq	$.L.str.58, %rcx
	movabsq	$.L.str.209, %rdx
	movq	-32(%rbp), %rdi
	movq	%rdx, -1760(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -1768(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1768(%rbp), %r8        # 8-byte Reload
	movq	-1768(%rbp), %r9        # 8-byte Reload
	movq	-1768(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-1760(%rbp), %r11       # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1776(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1776(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.210, %rax
	movabsq	$.L.str.211, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1784(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1784(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.186, %rax
	movabsq	$.L.str.212, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1792(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1796(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1792(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_insert_vectors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1808(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.209, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.209, %rsi
	movabsq	$.L.str.213, %rdx
	movabsq	$.L.str.214, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1816(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1816(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1824(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1832(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1832(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.210, %rax
	movabsq	$.L.str.215, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1840(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.190, %rax
	movabsq	$.L.str.216, %rdx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1848(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.186, %rax
	movabsq	$.L.str.217, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1856(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1860(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_remove_vectors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1872(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.218, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.218, %rsi
	movabsq	$.L.str.219, %rdx
	movabsq	$.L.str.220, %rcx
	movabsq	$.L.str.76, %rax
	movabsq	$.L.str.129, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -1880(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1880(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1888(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1896(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.210, %rax
	movabsq	$.L.str.211, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1904(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1904(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_item_position_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1912(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.221, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.221, %rsi
	movabsq	$.L.str.222, %rdx
	movabsq	$.L.str.223, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.224, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1920(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1928(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1928(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.225, %rax
	movabsq	$.L.str.226, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1936(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-1936(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.186, %rax
	movabsq	$.L.str.227, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1944(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1948(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1944(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_raise_item_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1960(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1960(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.228, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.228, %rsi
	movabsq	$.L.str.229, %rdx
	movabsq	$.L.str.230, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.224, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1968(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1976(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-1976(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.225, %rax
	movabsq	$.L.str.231, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1984(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-1984(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_lower_item_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1992(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1992(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.232, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.232, %rsi
	movabsq	$.L.str.233, %rdx
	movabsq	$.L.str.234, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.224, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -2000(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2008(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.225, %rax
	movabsq	$.L.str.235, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-2016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_raise_item_to_top_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2024(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.236, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.236, %rsi
	movabsq	$.L.str.237, %rdx
	movabsq	$.L.str.238, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.224, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -2032(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.225, %rax
	movabsq	$.L.str.239, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2048(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-2048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_lower_item_to_bottom_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2056(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.240, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.240, %rsi
	movabsq	$.L.str.241, %rdx
	movabsq	$.L.str.242, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.224, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -2064(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2072(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.225, %rax
	movabsq	$.L.str.243, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2080(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-2080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_reorder_item_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.244, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.244, %rsi
	movabsq	$.L.str.245, %rdx
	movabsq	$.L.str.246, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.224, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -2096(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2104(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.225, %rax
	movabsq	$.L.str.247, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2112(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-2112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.190, %rax
	movabsq	$.L.str.248, %rdx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2120(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-2120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.186, %rax
	movabsq	$.L.str.249, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -2128(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -2132(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_flatten_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2144(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.250, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.250, %rsi
	movabsq	$.L.str.251, %rdx
	movabsq	$.L.str.252, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2152(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2152(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2160(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2168(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.253, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-2176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_merge_visible_layers_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2184(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.254, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.254, %rsi
	movabsq	$.L.str.255, %rdx
	movabsq	$.L.str.256, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2192(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2192(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2200(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2208(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -2216(%rbp)       # 8-byte Spill
	callq	gimp_merge_type_get_type
	movabsq	$.L.str.257, %rdi
	movabsq	$.L.str.258, %rsi
	movabsq	$.L.str.259, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-2216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -2224(%rbp)       # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-2224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.253, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2232(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-2232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_merge_down_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2240(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.260, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.260, %rsi
	movabsq	$.L.str.261, %rdx
	movabsq	$.L.str.262, %rcx
	movabsq	$.L.str.263, %rax
	movabsq	$.L.str.154, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2248(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2248(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2256(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.264, %rdi
	movabsq	$.L.str.265, %rsi
	movabsq	$.L.str.266, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -2272(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-2272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -2280(%rbp)       # 8-byte Spill
	callq	gimp_merge_type_get_type
	movabsq	$.L.str.257, %rdi
	movabsq	$.L.str.258, %rsi
	movabsq	$.L.str.259, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-2280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-2288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.253, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-2296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_add_layer_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.267, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.267, %rsi
	movabsq	$.L.str.268, %rax
	movabsq	$.L.str.58, %rcx
	movabsq	$.L.str.269, %rdx
	movq	-32(%rbp), %rdi
	movq	%rdx, -2312(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -2320(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-2320(%rbp), %r8        # 8-byte Reload
	movq	-2320(%rbp), %r9        # 8-byte Reload
	movq	-2320(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-2312(%rbp), %r11       # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2328(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.270, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2336(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-2336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.271, %rax
	movabsq	$.L.str.272, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2344(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_mask_id
	movq	-2344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_remove_layer_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2352(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.273, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.273, %rsi
	movabsq	$.L.str.274, %rax
	movabsq	$.L.str.58, %rcx
	movabsq	$.L.str.275, %rdx
	movq	-32(%rbp), %rdi
	movq	%rdx, -2360(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -2368(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-2368(%rbp), %r8        # 8-byte Reload
	movq	-2368(%rbp), %r9        # 8-byte Reload
	movq	-2368(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-2360(%rbp), %r11       # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2376(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.276, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2384(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-2384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -2392(%rbp)       # 8-byte Spill
	callq	gimp_mask_apply_mode_get_type
	movabsq	$.L.str.277, %rcx
	movabsq	$.L.str.278, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-2392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_colormap_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2400(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2400(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.279, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.279, %rsi
	movabsq	$.L.str.280, %rdx
	movabsq	$.L.str.281, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2408(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2408(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2416(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2424(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2424(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.282, %rdi
	movabsq	$.L.str.283, %rsi
	movabsq	$.L.str.284, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -2428(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-2428(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -2440(%rbp)       # 8-byte Spill
	movl	%r10d, -2444(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.285, %rax
	movabsq	$.L.str.286, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2456(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_int8_array
	movq	-2456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_colormap_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2464(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.287, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.287, %rsi
	movabsq	$.L.str.288, %rdx
	movabsq	$.L.str.289, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2472(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2472(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2480(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2488(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.282, %rdi
	movabsq	$.L.str.283, %rsi
	movabsq	$.L.str.284, %rdx
	xorl	%r8d, %r8d
	movl	$768, %r9d              # imm = 0x300
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -2492(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-2492(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -2504(%rbp)       # 8-byte Spill
	movl	%r10d, -2508(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2504(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.285, %rax
	movabsq	$.L.str.290, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2520(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_int8_array
	movq	-2520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_clean_all_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2528(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.291, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.291, %rsi
	movabsq	$.L.str.292, %rdx
	movabsq	$.L.str.293, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2536(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2536(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2544(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2552(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_is_dirty_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2560(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.294, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.294, %rsi
	movabsq	$.L.str.295, %rdx
	movabsq	$.L.str.296, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2568(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2568(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2576(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2584(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.297, %rax
	movabsq	$.L.str.298, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -2592(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-2592(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_thumbnail_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2600(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.299, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.299, %rsi
	movabsq	$.L.str.300, %rdx
	movabsq	$.L.str.301, %rcx
	movabsq	$.L.str.302, %rax
	movabsq	$.L.str.303, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2608(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2608(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2616(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2624(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2624(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.304, %rdx
	movl	$1, %r8d
	movl	$1024, %r9d             # imm = 0x400
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -2632(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -2636(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-2636(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movl	%r10d, -2640(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.305, %rdx
	movl	$1, %ecx
	movl	$1024, %r8d             # imm = 0x400
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -2648(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -2652(%rbp)       # 4-byte Spill
	movl	-2652(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -2656(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-2648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.306, %rdi
	movabsq	$.L.str.307, %rsi
	movabsq	$.L.str.308, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -2664(%rbp)       # 8-byte Spill
	movl	%r10d, -2668(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2664(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.309, %rdi
	movabsq	$.L.str.310, %rsi
	movabsq	$.L.str.311, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -2680(%rbp)       # 8-byte Spill
	movl	%r10d, -2684(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2680(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.312, %rax
	movabsq	$.L.str.313, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -2696(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -2700(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2696(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.314, %rdi
	movabsq	$.L.str.315, %rsi
	movabsq	$.L.str.316, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -2704(%rbp)       # 4-byte Spill
	movl	-2704(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -2708(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -2720(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-2720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.317, %rdi
	movabsq	$.L.str.318, %rsi
	movabsq	$.L.str.319, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -2728(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-2728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_active_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2736(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2736(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.320, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.320, %rsi
	movabsq	$.L.str.321, %rdx
	movabsq	$.L.str.322, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2744(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2744(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2752(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2760(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2760(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.323, %rdi
	movabsq	$.L.str.324, %rsi
	movabsq	$.L.str.325, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -2768(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-2768(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_active_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2776(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2776(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.326, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.326, %rsi
	movabsq	$.L.str.327, %rdx
	movabsq	$.L.str.328, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2784(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2784(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2792(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2800(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.323, %rdi
	movabsq	$.L.str.324, %rsi
	movabsq	$.L.str.329, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -2808(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-2808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_active_channel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2816(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2816(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.330, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.330, %rsi
	movabsq	$.L.str.331, %rdx
	movabsq	$.L.str.332, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2824(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2824(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2832(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2840(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.333, %rdi
	movabsq	$.L.str.334, %rsi
	movabsq	$.L.str.335, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -2848(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_channel_id
	movq	-2848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_active_channel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2856(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.336, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.336, %rsi
	movabsq	$.L.str.337, %rdx
	movabsq	$.L.str.338, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2864(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2864(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2872(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2880(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2880(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.333, %rdi
	movabsq	$.L.str.334, %rsi
	movabsq	$.L.str.339, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -2888(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_channel_id
	movq	-2888(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_active_vectors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2896(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.340, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.340, %rsi
	movabsq	$.L.str.341, %rdx
	movabsq	$.L.str.342, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2904(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2904(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2912(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2920(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2920(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.343, %rdi
	movabsq	$.L.str.344, %rsi
	movabsq	$.L.str.345, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -2928(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_vectors_id
	movq	-2928(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_active_vectors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2936(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2936(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.346, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.346, %rsi
	movabsq	$.L.str.347, %rdx
	movabsq	$.L.str.348, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2944(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2944(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2952(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -2960(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-2960(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.343, %rdi
	movabsq	$.L.str.344, %rsi
	movabsq	$.L.str.349, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -2968(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_vectors_id
	movq	-2968(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_selection_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2976(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2976(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.350, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.350, %rsi
	movabsq	$.L.str.351, %rdx
	movabsq	$.L.str.352, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -2984(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2984(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2992(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3000(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.353, %rax
	movabsq	$.L.str.354, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3008(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_selection_id
	movq	-3008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_component_active_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3016(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.355, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.355, %rsi
	movabsq	$.L.str.356, %rdx
	movabsq	$.L.str.357, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3024(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3024(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3032(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -3048(%rbp)       # 8-byte Spill
	callq	gimp_channel_type_get_type
	movabsq	$.L.str.358, %rcx
	movabsq	$.L.str.359, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-3048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.360, %rax
	movabsq	$.L.str.361, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-3056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_component_active_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3064(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.362, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.362, %rsi
	movabsq	$.L.str.363, %rdx
	movabsq	$.L.str.364, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3072(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3072(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3080(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -3096(%rbp)       # 8-byte Spill
	callq	gimp_channel_type_get_type
	movabsq	$.L.str.358, %rcx
	movabsq	$.L.str.359, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-3096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.360, %rax
	movabsq	$.L.str.361, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3104(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-3104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_component_visible_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3112(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.365, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.365, %rsi
	movabsq	$.L.str.366, %rdx
	movabsq	$.L.str.367, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3120(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3120(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3128(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -3144(%rbp)       # 8-byte Spill
	callq	gimp_channel_type_get_type
	movabsq	$.L.str.358, %rcx
	movabsq	$.L.str.359, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-3144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.368, %rax
	movabsq	$.L.str.369, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-3152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_component_visible_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3160(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.370, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.370, %rsi
	movabsq	$.L.str.371, %rdx
	movabsq	$.L.str.372, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3168(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3168(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3176(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3184(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -3192(%rbp)       # 8-byte Spill
	callq	gimp_channel_type_get_type
	movabsq	$.L.str.358, %rcx
	movabsq	$.L.str.359, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-3192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.368, %rax
	movabsq	$.L.str.369, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3200(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-3200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_filename_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3208(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.373, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.373, %rsi
	movabsq	$.L.str.374, %rdx
	movabsq	$.L.str.375, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3216(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3216(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3224(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3232(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.376, %rax
	movabsq	$.L.str.377, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3240(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -3248(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -3252(%rbp)       # 4-byte Spill
	movl	-3252(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -3256(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-3240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_filename_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3264(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.378, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.378, %rsi
	movabsq	$.L.str.379, %rdx
	movabsq	$.L.str.380, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3272(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3272(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3280(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3288(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.376, %rax
	movabsq	$.L.str.381, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -3304(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -3308(%rbp)       # 4-byte Spill
	movl	-3308(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -3312(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-3296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_uri_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3320(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.382, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.382, %rsi
	movabsq	$.L.str.383, %rdx
	movabsq	$.L.str.384, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.385, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -3328(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3336(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.386, %rax
	movabsq	$.L.str.387, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3344(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -3352(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -3356(%rbp)       # 4-byte Spill
	movl	-3356(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -3360(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-3344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_xcf_uri_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3368(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.388, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.388, %rsi
	movabsq	$.L.str.389, %rdx
	movabsq	$.L.str.390, %rcx
	movabsq	$.L.str.391, %r8
	movabsq	$.L.str.392, %r9
	movabsq	$.L.str.393, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -3376(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3384(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.386, %rax
	movabsq	$.L.str.394, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3392(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -3400(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -3404(%rbp)       # 4-byte Spill
	movl	-3404(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -3408(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-3392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_imported_uri_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3416(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.395, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.395, %rsi
	movabsq	$.L.str.396, %rdx
	movabsq	$.L.str.397, %rcx
	movabsq	$.L.str.391, %r8
	movabsq	$.L.str.392, %r9
	movabsq	$.L.str.393, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -3424(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3432(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.386, %rax
	movabsq	$.L.str.394, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3440(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -3448(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -3452(%rbp)       # 4-byte Spill
	movl	-3452(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -3456(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-3440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_exported_uri_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3464(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.398, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.398, %rsi
	movabsq	$.L.str.399, %rdx
	movabsq	$.L.str.400, %rcx
	movabsq	$.L.str.391, %r8
	movabsq	$.L.str.392, %r9
	movabsq	$.L.str.393, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -3472(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3480(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.386, %rax
	movabsq	$.L.str.401, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3488(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -3496(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -3500(%rbp)       # 4-byte Spill
	movl	-3500(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -3504(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-3488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_name_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3512(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.402, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.402, %rsi
	movabsq	$.L.str.403, %rdx
	movabsq	$.L.str.404, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3520(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3520(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3528(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3536(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.405, %rax
	movabsq	$.L.str.406, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3544(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -3552(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -3556(%rbp)       # 4-byte Spill
	movl	-3556(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -3560(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-3544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_resolution_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3568(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.407, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.407, %rsi
	movabsq	$.L.str.408, %rdx
	movabsq	$.L.str.409, %rcx
	movabsq	$.L.str.410, %rax
	movabsq	$.L.str.154, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3576(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3576(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3584(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3592(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3592(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.411, %rax
	movabsq	$.L.str.412, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -3600(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-3600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.413, %rax
	movabsq	$.L.str.414, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -3608(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-3608(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_resolution_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3616(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.415, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.415, %rsi
	movabsq	$.L.str.416, %rdx
	movabsq	$.L.str.417, %rcx
	movabsq	$.L.str.410, %rax
	movabsq	$.L.str.154, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3624(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3624(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3632(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3640(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.411, %rax
	movabsq	$.L.str.418, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -3648(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-3648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.413, %rax
	movabsq	$.L.str.419, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -3656(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-3656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_unit_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3664(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3664(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.420, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.420, %rsi
	movabsq	$.L.str.421, %rdx
	movabsq	$.L.str.422, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.154, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -3672(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3680(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3680(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.423, %rax
	movabsq	$.L.str.424, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3688(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, -3692(%rbp)       # 4-byte Spill
	movl	-3692(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -3696(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_unit
	movq	-3688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_unit_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3704(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3704(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.425, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.425, %rsi
	movabsq	$.L.str.426, %rdx
	movabsq	$.L.str.427, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.154, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -3712(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3720(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.423, %rax
	movabsq	$.L.str.428, %rdx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3728(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	$227, (%rsp)
	movl	%r10d, -3732(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-3728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_tattoo_state_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3744(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3744(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.429, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.429, %rsi
	movabsq	$.L.str.430, %rdx
	movabsq	$.L.str.431, %rcx
	movabsq	$.L.str.302, %rax
	movabsq	$.L.str.432, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3752(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3752(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3760(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3768(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3768(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.433, %rdi
	movabsq	$.L.str.434, %rsi
	movabsq	$.L.str.435, %rdx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -3772(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-3772(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -3784(%rbp)       # 8-byte Spill
	movl	%r10d, -3788(%rbp)      # 4-byte Spill
	callq	g_param_spec_uint
	movq	-3784(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_set_tattoo_state_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3800(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.436, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.436, %rsi
	movabsq	$.L.str.437, %rdx
	movabsq	$.L.str.438, %rcx
	movabsq	$.L.str.302, %rax
	movabsq	$.L.str.432, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3808(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3808(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3816(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3824(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3824(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.433, %rdi
	movabsq	$.L.str.434, %rsi
	movabsq	$.L.str.439, %rdx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -3828(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-3828(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -3840(%rbp)       # 8-byte Spill
	movl	%r10d, -3844(%rbp)      # 4-byte Spill
	callq	g_param_spec_uint
	movq	-3840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_layer_by_tattoo_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3856(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.440, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.440, %rsi
	movabsq	$.L.str.441, %rdx
	movabsq	$.L.str.442, %rcx
	movabsq	$.L.str.443, %rax
	movabsq	$.L.str.154, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3864(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3864(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3872(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3880(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3880(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.444, %rax
	movabsq	$.L.str.445, %rdx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3888(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -3892(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-3892(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movl	%r10d, -3896(%rbp)      # 4-byte Spill
	callq	g_param_spec_uint
	movq	-3888(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.446, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -3904(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-3904(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_channel_by_tattoo_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3912(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3912(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.447, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.447, %rsi
	movabsq	$.L.str.448, %rdx
	movabsq	$.L.str.449, %rcx
	movabsq	$.L.str.443, %rax
	movabsq	$.L.str.154, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3920(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3920(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3928(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3936(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3936(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.444, %rax
	movabsq	$.L.str.450, %rdx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -3944(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -3948(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-3948(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movl	%r10d, -3952(%rbp)      # 4-byte Spill
	callq	g_param_spec_uint
	movq	-3944(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.198, %rax
	movabsq	$.L.str.451, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -3960(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_channel_id
	movq	-3960(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_vectors_by_tattoo_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -3968(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-3968(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.452, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.452, %rsi
	movabsq	$.L.str.453, %rdx
	movabsq	$.L.str.454, %rcx
	movabsq	$.L.str.76, %rax
	movabsq	$.L.str.129, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -3976(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-3976(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -3984(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -3992(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-3992(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.444, %rax
	movabsq	$.L.str.455, %rdx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -4000(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -4004(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-4004(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movl	%r10d, -4008(%rbp)      # 4-byte Spill
	callq	g_param_spec_uint
	movq	-4000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.210, %rax
	movabsq	$.L.str.456, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -4016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-4016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_layer_by_name_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -4024(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-4024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.457, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.457, %rsi
	movabsq	$.L.str.458, %rdx
	movabsq	$.L.str.459, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.393, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -4032(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -4040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-4040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.405, %rax
	movabsq	$.L.str.460, %rdx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -4048(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -4056(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%r10d, -4060(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-4048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.180, %rax
	movabsq	$.L.str.461, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -4072(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-4072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_channel_by_name_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -4080(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-4080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.462, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.462, %rsi
	movabsq	$.L.str.463, %rdx
	movabsq	$.L.str.464, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.393, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -4088(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -4096(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-4096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.405, %rax
	movabsq	$.L.str.465, %rdx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -4104(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -4112(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%r10d, -4116(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-4104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.198, %rax
	movabsq	$.L.str.466, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -4128(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_channel_id
	movq	-4128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_vectors_by_name_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -4136(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-4136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.467, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.467, %rsi
	movabsq	$.L.str.468, %rdx
	movabsq	$.L.str.469, %rcx
	movabsq	$.L.str.102, %r8
	movabsq	$.L.str.103, %r9
	movabsq	$.L.str.393, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -4144(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -4152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-4152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.405, %rax
	movabsq	$.L.str.470, %rdx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -4160(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -4168(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%r10d, -4172(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-4160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.210, %rax
	movabsq	$.L.str.471, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -4184(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-4184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_attach_parasite_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -4192(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-4192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.472, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.472, %rsi
	movabsq	$.L.str.473, %rdx
	movabsq	$.L.str.474, %rcx
	movabsq	$.L.str.443, %rax
	movabsq	$.L.str.154, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -4200(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-4200(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -4208(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -4216(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-4216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.475, %rax
	movabsq	$.L.str.476, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -4224(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_parasite
	movq	-4224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_detach_parasite_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -4232(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-4232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.477, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.477, %rsi
	movabsq	$.L.str.478, %rdx
	movabsq	$.L.str.479, %rcx
	movabsq	$.L.str.443, %rax
	movabsq	$.L.str.154, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -4240(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-4240(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -4248(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -4256(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-4256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.405, %rax
	movabsq	$.L.str.480, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -4264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -4272(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -4276(%rbp)       # 4-byte Spill
	movl	-4276(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -4280(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-4264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_parasite_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -4288(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-4288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.481, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.481, %rsi
	movabsq	$.L.str.482, %rdx
	movabsq	$.L.str.483, %rcx
	movabsq	$.L.str.443, %rax
	movabsq	$.L.str.154, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -4296(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-4296(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -4304(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -4312(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-4312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.405, %rax
	movabsq	$.L.str.484, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -4320(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -4328(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -4332(%rbp)       # 4-byte Spill
	movl	-4332(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -4336(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-4320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.475, %rax
	movabsq	$.L.str.485, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -4344(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_parasite
	movq	-4344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_get_parasite_list_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -4352(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-4352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.486, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.486, %rsi
	movabsq	$.L.str.487, %rdx
	movabsq	$.L.str.488, %rcx
	movabsq	$.L.str.489, %rax
	movabsq	$.L.str.303, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %rbx
	movq	%rdi, -4360(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-4360(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -4368(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -4376(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-4376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.490, %rdi
	movabsq	$.L.str.491, %rsi
	movabsq	$.L.str.492, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -4380(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-4380(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -4392(%rbp)       # 8-byte Spill
	movl	%r10d, -4396(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-4392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.493, %rax
	movabsq	$.L.str.494, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -4408(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_string_array
	movq	-4408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$4416, %rsp             # imm = 0x1140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_image_procs, .Lfunc_end0-register_image_procs
	.cfi_endproc

	.align	16, 0x90
	.type	image_is_valid_invoker,@function
image_is_valid_invoker:                 # @image_is_valid_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB1_7
.LBB1_2:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB1_5
# BB#4:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.7
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
	movq	-56(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	image_is_valid_invoker, .Lfunc_end1-image_is_valid_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_list_invoker,@function
image_list_invoker:                     # @image_list_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_image_iter
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB2_9
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-60(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB2_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_get_ID
	movslq	-84(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB2_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_7
.LBB2_6:                                # %cond.false
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_7
.LBB2_7:                                # %cond.end
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB2_2
.LBB2_8:                                # %for.end
	jmp	.LBB2_9
.LBB2_9:                                # %if.end
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-72(%rbp), %rsi
	movslq	-60(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int32array
	movq	-56(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_list_invoker, .Lfunc_end2-image_list_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_new_invoker,@function
image_new_invoker:                      # @image_new_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
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
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_4
# BB#1:                                 # %if.then
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	callq	gimp_create_image
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then.9
	movl	$0, -52(%rbp)
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB3_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_7
.LBB3_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_7
.LBB3_7:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
.LBB3_9:                                # %if.end.17
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_new_invoker, .Lfunc_end3-image_new_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_duplicate_invoker,@function
image_duplicate_invoker:                # @image_duplicate_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
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
	je	.LBB4_4
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_duplicate
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then.3
	movl	$0, -52(%rbp)
.LBB4_3:                                # %if.end
	jmp	.LBB4_4
.LBB4_4:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB4_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_7
.LBB4_7:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
.LBB4_9:                                # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	image_duplicate_invoker, .Lfunc_end4-image_duplicate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_delete_invoker,@function
image_delete_invoker:                   # @image_delete_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_display_count
	cmpl	$0, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then.2
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %if.end.3
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB5_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	image_delete_invoker, .Lfunc_end5-image_delete_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_base_type_invoker,@function
image_base_type_invoker:                # @image_base_type_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_base_type
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
	callq	g_value_set_enum
.LBB6_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	image_base_type_invoker, .Lfunc_end6-image_base_type_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_width_invoker,@function
image_width_invoker:                    # @image_width_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_width
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
	.size	image_width_invoker, .Lfunc_end7-image_width_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_height_invoker,@function
image_height_invoker:                   # @image_height_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -76(%rbp)
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB8_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB8_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	image_height_invoker, .Lfunc_end8-image_height_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_free_shadow_invoker,@function
image_free_shadow_invoker:              # @image_free_shadow_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_2
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB9_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB9_5
.LBB9_5:                                # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	image_free_shadow_invoker, .Lfunc_end9-image_free_shadow_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_resize_invoker,@function
image_resize_invoker:                   # @image_resize_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
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
	je	.LBB10_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %eax
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	$0, (%rsp)
	callq	gimp_image_resize
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
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	image_resize_invoker, .Lfunc_end10-image_resize_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_resize_to_layers_invoker,@function
image_resize_to_layers_invoker:         # @image_resize_to_layers_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_resize_to_layers
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB11_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_5
.LBB11_5:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	image_resize_to_layers_invoker, .Lfunc_end11-image_resize_to_layers_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_scale_invoker,@function
image_scale_invoker:                    # @image_scale_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
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
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then.10
	movabsq	$.L.str.495, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB12_3:                               # %if.end
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	388(%rax), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_image_scale
	cmpq	$0, -32(%rbp)
	je	.LBB12_5
# BB#4:                                 # %if.then.14
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB12_5:                               # %if.end.15
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.16
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB12_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB12_9
.LBB12_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB12_9
.LBB12_9:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	image_scale_invoker, .Lfunc_end12-image_scale_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_scale_full_invoker,@function
image_scale_full_invoker:               # @image_scale_full_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
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
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_6
# BB#1:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then.11
	movabsq	$.L.str.495, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB13_3:                               # %if.end
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_image_scale
	cmpq	$0, -32(%rbp)
	je	.LBB13_5
# BB#4:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB13_5:                               # %if.end.16
	jmp	.LBB13_6
.LBB13_6:                               # %if.end.17
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB13_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_9:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	image_scale_full_invoker, .Lfunc_end13-image_scale_full_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_crop_invoker,@function
image_crop_invoker:                     # @image_crop_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
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
	je	.LBB14_8
# BB#1:                                 # %if.then
	movl	-68(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB14_5
# BB#2:                                 # %lor.lhs.false
	movl	-72(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-88(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB14_5
# BB#3:                                 # %lor.lhs.false.16
	movl	-76(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	subl	-68(%rbp), %eax
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB14_5
# BB#4:                                 # %lor.lhs.false.19
	movl	-80(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	subl	-72(%rbp), %eax
	movl	-96(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB14_6
.LBB14_5:                               # %if.then.23
	movl	$0, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %r8d
	movl	-76(%rbp), %r9d
	addl	-68(%rbp), %r9d
	movl	-80(%rbp), %r10d
	addl	-72(%rbp), %r10d
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_image_crop
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.25
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB14_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB14_11
.LBB14_11:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	image_crop_invoker, .Lfunc_end14-image_crop_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_flip_invoker,@function
image_flip_invoker:                     # @image_flip_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	callq	gimp_image_flip
.LBB15_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB15_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB15_5
.LBB15_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	image_flip_invoker, .Lfunc_end15-image_flip_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_rotate_invoker,@function
image_rotate_invoker:                   # @image_rotate_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
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
	callq	g_value_get_enum
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_6
# BB#1:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.496, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB16_3:                               # %if.end
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_image_rotate
	cmpq	$0, -32(%rbp)
	je	.LBB16_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB16_5:                               # %if.end.10
	jmp	.LBB16_6
.LBB16_6:                               # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB16_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB16_9
.LBB16_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB16_9
.LBB16_9:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	image_rotate_invoker, .Lfunc_end16-image_rotate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_layers_invoker,@function
image_get_layers_invoker:               # @image_get_layers_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
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
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_11
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_layer_iter
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB17_10
# BB#2:                                 # %if.then.4
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movl	$0, -100(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB17_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movslq	-100(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB17_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB17_8
.LBB17_7:                               # %cond.false
                                        #   in Loop: Header=BB17_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB17_8
.LBB17_8:                               # %cond.end
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB17_3
.LBB17_9:                               # %for.end
	jmp	.LBB17_10
.LBB17_10:                              # %if.end
	jmp	.LBB17_11
.LBB17_11:                              # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB17_13
# BB#12:                                # %cond.true.14
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB17_14
.LBB17_13:                              # %cond.false.15
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB17_14
.LBB17_14:                              # %cond.end.16
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_16
# BB#15:                                # %if.then.20
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
.LBB17_16:                              # %if.end.26
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	image_get_layers_invoker, .Lfunc_end17-image_get_layers_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_channels_invoker,@function
image_get_channels_invoker:             # @image_get_channels_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
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
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_11
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_channel_iter
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB18_10
# BB#2:                                 # %if.then.4
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movl	$0, -100(%rbp)
.LBB18_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB18_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movslq	-100(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB18_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB18_8
.LBB18_7:                               # %cond.false
                                        #   in Loop: Header=BB18_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB18_8
.LBB18_8:                               # %cond.end
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB18_3
.LBB18_9:                               # %for.end
	jmp	.LBB18_10
.LBB18_10:                              # %if.end
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB18_13
# BB#12:                                # %cond.true.14
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB18_14
.LBB18_13:                              # %cond.false.15
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB18_14
.LBB18_14:                              # %cond.end.16
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_16
# BB#15:                                # %if.then.20
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
.LBB18_16:                              # %if.end.26
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	image_get_channels_invoker, .Lfunc_end18-image_get_channels_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_vectors_invoker,@function
image_get_vectors_invoker:              # @image_get_vectors_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
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
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_11
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB19_10
# BB#2:                                 # %if.then.4
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movl	$0, -100(%rbp)
.LBB19_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB19_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movslq	-100(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB19_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB19_8
.LBB19_7:                               # %cond.false
                                        #   in Loop: Header=BB19_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB19_8
.LBB19_8:                               # %cond.end
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB19_3
.LBB19_9:                               # %for.end
	jmp	.LBB19_10
.LBB19_10:                              # %if.end
	jmp	.LBB19_11
.LBB19_11:                              # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB19_13
# BB#12:                                # %cond.true.14
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB19_14
.LBB19_13:                              # %cond.false.15
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB19_14
.LBB19_14:                              # %cond.end.16
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_16
# BB#15:                                # %if.then.20
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
.LBB19_16:                              # %if.end.26
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	image_get_vectors_invoker, .Lfunc_end19-image_get_vectors_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_active_drawable_invoker,@function
image_get_active_drawable_invoker:      # @image_get_active_drawable_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
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
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -80(%rbp)
.LBB20_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB20_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB20_5
.LBB20_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB20_5
.LBB20_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB20_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	image_get_active_drawable_invoker, .Lfunc_end20-image_get_active_drawable_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_unset_active_channel_invoker,@function
image_unset_active_channel_invoker:     # @image_unset_active_channel_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_unset_active_channel
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB21_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB21_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB21_5
.LBB21_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB21_5
.LBB21_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	image_unset_active_channel_invoker, .Lfunc_end21-image_unset_active_channel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_floating_sel_invoker,@function
image_get_floating_sel_invoker:         # @image_get_floating_sel_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
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
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -80(%rbp)
.LBB22_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB22_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB22_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	image_get_floating_sel_invoker, .Lfunc_end22-image_get_floating_sel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_floating_sel_attached_to_invoker,@function
image_floating_sel_attached_to_invoker: # @image_floating_sel_attached_to_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
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
	je	.LBB23_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB23_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -80(%rbp)
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	movq	$0, -80(%rbp)
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %if.end.5
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
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_drawable
.LBB23_10:                              # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	image_floating_sel_attached_to_invoker, .Lfunc_end23-image_floating_sel_attached_to_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_pick_color_invoker,@function
image_pick_color_invoker:               # @image_pick_color_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	.Limage_pick_color_invoker.color, %rcx
	movq	%rcx, -144(%rbp)
	movq	.Limage_pick_color_invoker.color+8, %rcx
	movq	%rcx, -136(%rbp)
	movq	.Limage_pick_color_invoker.color+16, %rcx
	movq	%rcx, -128(%rbp)
	movq	.Limage_pick_color_invoker.color+24, %rcx
	movq	%rcx, -120(%rbp)
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
	callq	gimp_value_get_drawable
	movq	%rax, -80(%rbp)
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
	callq	g_value_get_boolean
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB24_17
# BB#1:                                 # %if.then
	cmpl	$0, -100(%rbp)
	jne	.LBB24_6
# BB#2:                                 # %if.then.20
	cmpq	$0, -80(%rbp)
	je	.LBB24_4
# BB#3:                                 # %lor.lhs.false
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-72(%rbp), %rax
	je	.LBB24_5
.LBB24_4:                               # %if.then.25
	movl	$0, -52(%rbp)
.LBB24_5:                               # %if.end
	jmp	.LBB24_6
.LBB24_6:                               # %if.end.26
	cmpl	$0, -52(%rbp)
	je	.LBB24_11
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -104(%rbp)
	je	.LBB24_11
# BB#8:                                 # %if.then.29
	xorps	%xmm0, %xmm0
	ucomisd	-112(%rbp), %xmm0
	jb	.LBB24_10
# BB#9:                                 # %if.then.31
	movl	$0, -52(%rbp)
.LBB24_10:                              # %if.end.32
	jmp	.LBB24_11
.LBB24_11:                              # %if.end.33
	cmpl	$0, -52(%rbp)
	je	.LBB24_16
# BB#12:                                # %if.then.35
	cmpl	$0, -100(%rbp)
	je	.LBB24_14
# BB#13:                                # %if.then.37
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_flush
	jmp	.LBB24_15
.LBB24_14:                              # %if.else
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_flush
.LBB24_15:                              # %if.end.43
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-144(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	cvttsd2si	-88(%rbp), %eax
	cvttsd2si	-96(%rbp), %r8d
	movl	-100(%rbp), %r9d
	movl	-104(%rbp), %r10d
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gimp_image_pick_color
	movl	%eax, -52(%rbp)
.LBB24_16:                              # %if.end.46
	jmp	.LBB24_17
.LBB24_17:                              # %if.end.47
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movl	%esi, -196(%rbp)        # 4-byte Spill
	je	.LBB24_19
# BB#18:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB24_20
.LBB24_19:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB24_20
.LBB24_20:                              # %cond.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB24_22
# BB#21:                                # %if.then.51
	leaq	-144(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	gimp_value_set_rgb
.LBB24_22:                              # %if.end.54
	movq	-64(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	image_pick_color_invoker, .Lfunc_end24-image_pick_color_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_pick_correlate_layer_invoker,@function
image_pick_correlate_layer_invoker:     # @image_pick_correlate_layer_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	callq	gimp_image_pick_layer
	movq	%rax, -88(%rbp)
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB25_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB25_5
.LBB25_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB25_5
.LBB25_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB25_7
# BB#6:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB25_7:                               # %if.end.14
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	image_pick_correlate_layer_invoker, .Lfunc_end25-image_pick_correlate_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_add_layer_invoker,@function
image_add_layer_invoker:                # @image_add_layer_invoker
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB26_19
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_floating
	cmpl	$0, %eax
	je	.LBB26_17
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB26_4
# BB#3:                                 # %lor.lhs.false
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB26_5
.LBB26_4:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB26_12
.LBB26_5:                               # %cond.false
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB26_7
# BB#6:                                 # %lor.lhs.false.22
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB26_8
.LBB26_7:                               # %cond.true.27
	movl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB26_11
.LBB26_8:                               # %cond.false.28
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB26_10
# BB#9:                                 # %lor.rhs
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB26_10:                              # %lor.end
	movb	-153(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB26_11:                              # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB26_12:                              # %cond.end.38
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_pdb_image_is_base_type
	cmpl	$0, %eax
	je	.LBB26_17
# BB#13:                                # %if.then.42
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	cmpl	$-1, -76(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	jle	.LBB26_15
# BB#14:                                # %cond.true.44
	movl	-76(%rbp), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB26_16
.LBB26_15:                              # %cond.false.45
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB26_16
.LBB26_16:                              # %cond.end.46
	movl	-188(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r8d
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_layer
	movl	%eax, -52(%rbp)
	jmp	.LBB26_18
.LBB26_17:                              # %if.else
	movl	$0, -52(%rbp)
.LBB26_18:                              # %if.end
	jmp	.LBB26_19
.LBB26_19:                              # %if.end.49
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movl	%esi, -204(%rbp)        # 4-byte Spill
	je	.LBB26_21
# BB#20:                                # %cond.true.51
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB26_22
.LBB26_21:                              # %cond.false.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB26_22
.LBB26_22:                              # %cond.end.53
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	image_add_layer_invoker, .Lfunc_end26-image_add_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_insert_layer_invoker,@function
image_insert_layer_invoker:             # @image_insert_layer_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB27_25
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_floating
	cmpl	$0, %eax
	je	.LBB27_23
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB27_4
# BB#3:                                 # %lor.lhs.false
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB27_5
.LBB27_4:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB27_12
.LBB27_5:                               # %cond.false
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB27_7
# BB#6:                                 # %lor.lhs.false.25
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB27_8
.LBB27_7:                               # %cond.true.30
	movl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB27_11
.LBB27_8:                               # %cond.false.31
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -161(%rbp)         # 1-byte Spill
	je	.LBB27_10
# BB#9:                                 # %lor.rhs
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -161(%rbp)         # 1-byte Spill
.LBB27_10:                              # %lor.end
	movb	-161(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
.LBB27_11:                              # %cond.end
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB27_12:                              # %cond.end.41
	movl	-124(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_pdb_image_is_base_type
	cmpl	$0, %eax
	je	.LBB27_23
# BB#13:                                # %land.lhs.true.45
	cmpq	$0, -80(%rbp)
	je	.LBB27_16
# BB#14:                                # %lor.lhs.false.47
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB27_23
# BB#15:                                # %land.lhs.true.52
	movq	-80(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_group
	cmpl	$0, %eax
	je	.LBB27_23
.LBB27_16:                              # %if.then.57
	cmpl	$-1, -84(%rbp)
	jne	.LBB27_19
# BB#17:                                # %land.lhs.true.59
	cmpq	$0, -80(%rbp)
	jne	.LBB27_19
# BB#18:                                # %if.then.61
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)
.LBB27_19:                              # %if.end
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	cmpl	$-1, -84(%rbp)
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	jle	.LBB27_21
# BB#20:                                # %cond.true.63
	movl	-84(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB27_22
.LBB27_21:                              # %cond.false.64
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB27_22
.LBB27_22:                              # %cond.end.65
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	$1, %r8d
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_layer
	movl	%eax, -52(%rbp)
	jmp	.LBB27_24
.LBB27_23:                              # %if.else
	movl	$0, -52(%rbp)
.LBB27_24:                              # %if.end.68
	jmp	.LBB27_25
.LBB27_25:                              # %if.end.69
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movl	%esi, -236(%rbp)        # 4-byte Spill
	je	.LBB27_27
# BB#26:                                # %cond.true.71
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB27_28
.LBB27_27:                              # %cond.false.72
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB27_28
.LBB27_28:                              # %cond.end.73
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	-236(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end27:
	.size	image_insert_layer_invoker, .Lfunc_end27-image_insert_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_remove_layer_invoker,@function
image_remove_layer_invoker:             # @image_remove_layer_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB28_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB28_3
# BB#2:                                 # %if.then.8
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_remove_layer
	jmp	.LBB28_4
.LBB28_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB28_4:                               # %if.end
	jmp	.LBB28_5
.LBB28_5:                               # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB28_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB28_8
.LBB28_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB28_8
.LBB28_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	image_remove_layer_invoker, .Lfunc_end28-image_remove_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_add_channel_invoker,@function
image_add_channel_invoker:              # @image_add_channel_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_channel
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB29_8
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_floating
	cmpl	$0, %eax
	je	.LBB29_6
# BB#2:                                 # %if.then.11
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	cmpl	$-1, -76(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	jle	.LBB29_4
# BB#3:                                 # %cond.true
	movl	-76(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB29_5
.LBB29_4:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB29_5
.LBB29_5:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r8d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_channel
	movl	%eax, -52(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else
	movl	$0, -52(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB29_10
# BB#9:                                 # %cond.true.15
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB29_11
.LBB29_10:                              # %cond.false.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB29_11
.LBB29_11:                              # %cond.end.17
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	image_add_channel_invoker, .Lfunc_end29-image_add_channel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_insert_channel_invoker,@function
image_insert_channel_invoker:           # @image_insert_channel_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_channel
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_channel
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB30_14
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_floating
	cmpl	$0, %eax
	je	.LBB30_12
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -80(%rbp)
	je	.LBB30_5
# BB#3:                                 # %lor.lhs.false
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB30_12
# BB#4:                                 # %land.lhs.true.18
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_group
	cmpl	$0, %eax
	je	.LBB30_12
.LBB30_5:                               # %if.then.23
	cmpl	$-1, -84(%rbp)
	jne	.LBB30_8
# BB#6:                                 # %land.lhs.true.25
	cmpq	$0, -80(%rbp)
	jne	.LBB30_8
# BB#7:                                 # %if.then.27
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)
.LBB30_8:                               # %if.end
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	cmpl	$-1, -84(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	jle	.LBB30_10
# BB#9:                                 # %cond.true
	movl	-84(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB30_11
.LBB30_10:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB30_11
.LBB30_11:                              # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	$1, %r8d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_channel
	movl	%eax, -52(%rbp)
	jmp	.LBB30_13
.LBB30_12:                              # %if.else
	movl	$0, -52(%rbp)
.LBB30_13:                              # %if.end.30
	jmp	.LBB30_14
.LBB30_14:                              # %if.end.31
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB30_16
# BB#15:                                # %cond.true.33
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB30_17
.LBB30_16:                              # %cond.false.34
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB30_17
.LBB30_17:                              # %cond.end.35
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	image_insert_channel_invoker, .Lfunc_end30-image_insert_channel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_remove_channel_invoker,@function
image_remove_channel_invoker:           # @image_remove_channel_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_channel
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB31_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB31_3
# BB#2:                                 # %if.then.8
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_remove_channel
	jmp	.LBB31_4
.LBB31_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB31_4:                               # %if.end
	jmp	.LBB31_5
.LBB31_5:                               # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB31_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB31_8
.LBB31_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB31_8
.LBB31_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	image_remove_channel_invoker, .Lfunc_end31-image_remove_channel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_add_vectors_invoker,@function
image_add_vectors_invoker:              # @image_add_vectors_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_vectors
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB32_8
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_floating
	cmpl	$0, %eax
	je	.LBB32_6
# BB#2:                                 # %if.then.11
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	cmpl	$-1, -76(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	jle	.LBB32_4
# BB#3:                                 # %cond.true
	movl	-76(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB32_5
.LBB32_4:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB32_5
.LBB32_5:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r8d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_vectors
	movl	%eax, -52(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else
	movl	$0, -52(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB32_10
# BB#9:                                 # %cond.true.15
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB32_11
.LBB32_10:                              # %cond.false.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB32_11
.LBB32_11:                              # %cond.end.17
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	image_add_vectors_invoker, .Lfunc_end32-image_add_vectors_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_insert_vectors_invoker,@function
image_insert_vectors_invoker:           # @image_insert_vectors_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_vectors
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_vectors
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB33_14
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_floating
	cmpl	$0, %eax
	je	.LBB33_12
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -80(%rbp)
	je	.LBB33_5
# BB#3:                                 # %lor.lhs.false
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB33_12
# BB#4:                                 # %land.lhs.true.18
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_group
	cmpl	$0, %eax
	je	.LBB33_12
.LBB33_5:                               # %if.then.23
	cmpl	$-1, -84(%rbp)
	jne	.LBB33_8
# BB#6:                                 # %land.lhs.true.25
	cmpq	$0, -80(%rbp)
	jne	.LBB33_8
# BB#7:                                 # %if.then.27
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)
.LBB33_8:                               # %if.end
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	cmpl	$-1, -84(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	jle	.LBB33_10
# BB#9:                                 # %cond.true
	movl	-84(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB33_11
.LBB33_10:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB33_11
.LBB33_11:                              # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	$1, %r8d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_image_add_vectors
	movl	%eax, -52(%rbp)
	jmp	.LBB33_13
.LBB33_12:                              # %if.else
	movl	$0, -52(%rbp)
.LBB33_13:                              # %if.end.30
	jmp	.LBB33_14
.LBB33_14:                              # %if.end.31
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB33_16
# BB#15:                                # %cond.true.33
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB33_17
.LBB33_16:                              # %cond.false.34
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB33_17
.LBB33_17:                              # %cond.end.35
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	image_insert_vectors_invoker, .Lfunc_end33-image_insert_vectors_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_remove_vectors_invoker,@function
image_remove_vectors_invoker:           # @image_remove_vectors_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_vectors
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB34_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB34_3
# BB#2:                                 # %if.then.8
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_remove_vectors
	jmp	.LBB34_4
.LBB34_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB34_4:                               # %if.end
	jmp	.LBB34_5
.LBB34_5:                               # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB34_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB34_8
.LBB34_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB34_8
.LBB34_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	image_remove_vectors_invoker, .Lfunc_end34-image_remove_vectors_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_item_position_invoker,@function
image_get_item_position_invoker:        # @image_get_item_position_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_item
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB35_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB35_3
# BB#2:                                 # %if.then.6
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_index
	movl	%eax, -84(%rbp)
	jmp	.LBB35_4
.LBB35_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB35_4:                               # %if.end
	jmp	.LBB35_5
.LBB35_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB35_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB35_8
.LBB35_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB35_8
.LBB35_8:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB35_10:                              # %if.end.15
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	image_get_item_position_invoker, .Lfunc_end35-image_get_item_position_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_raise_item_invoker,@function
image_raise_item_invoker:               # @image_raise_item_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB36_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB36_3
# BB#2:                                 # %if.then.6
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_image_raise_item
	movl	%eax, -52(%rbp)
	jmp	.LBB36_4
.LBB36_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB36_4:                               # %if.end
	jmp	.LBB36_5
.LBB36_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB36_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB36_8
.LBB36_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB36_8
.LBB36_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	image_raise_item_invoker, .Lfunc_end36-image_raise_item_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_lower_item_invoker,@function
image_lower_item_invoker:               # @image_lower_item_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB37_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB37_3
# BB#2:                                 # %if.then.6
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_image_lower_item
	movl	%eax, -52(%rbp)
	jmp	.LBB37_4
.LBB37_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB37_4:                               # %if.end
	jmp	.LBB37_5
.LBB37_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB37_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB37_8
.LBB37_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB37_8
.LBB37_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	image_lower_item_invoker, .Lfunc_end37-image_lower_item_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_raise_item_to_top_invoker,@function
image_raise_item_to_top_invoker:        # @image_raise_item_to_top_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB38_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB38_3
# BB#2:                                 # %if.then.6
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_raise_item_to_top
	movl	%eax, -52(%rbp)
	jmp	.LBB38_4
.LBB38_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB38_4:                               # %if.end
	jmp	.LBB38_5
.LBB38_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB38_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB38_8
.LBB38_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB38_8
.LBB38_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	image_raise_item_to_top_invoker, .Lfunc_end38-image_raise_item_to_top_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_lower_item_to_bottom_invoker,@function
image_lower_item_to_bottom_invoker:     # @image_lower_item_to_bottom_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB39_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB39_3
# BB#2:                                 # %if.then.6
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_lower_item_to_bottom
	movl	%eax, -52(%rbp)
	jmp	.LBB39_4
.LBB39_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB39_4:                               # %if.end
	jmp	.LBB39_5
.LBB39_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB39_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB39_8
.LBB39_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB39_8
.LBB39_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	image_lower_item_to_bottom_invoker, .Lfunc_end39-image_lower_item_to_bottom_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_reorder_item_invoker,@function
image_reorder_item_invoker:             # @image_reorder_item_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_item
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB40_9
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_in_tree
	cmpl	$0, %eax
	je	.LBB40_7
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -80(%rbp)
	je	.LBB40_6
# BB#3:                                 # %lor.lhs.false
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_in_same_tree
	cmpl	$0, %eax
	je	.LBB40_7
# BB#4:                                 # %land.lhs.true.14
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_pdb_item_is_group
	cmpl	$0, %eax
	je	.LBB40_7
# BB#5:                                 # %land.lhs.true.17
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_item_is_not_ancestor
	cmpl	$0, %eax
	je	.LBB40_7
.LBB40_6:                               # %if.then.20
	movl	$1, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	-84(%rbp), %ecx
	callq	gimp_image_reorder_item
	movl	%eax, -52(%rbp)
	jmp	.LBB40_8
.LBB40_7:                               # %if.else
	movl	$0, -52(%rbp)
.LBB40_8:                               # %if.end
	jmp	.LBB40_9
.LBB40_9:                               # %if.end.22
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB40_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB40_12
.LBB40_11:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB40_12
.LBB40_12:                              # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	image_reorder_item_invoker, .Lfunc_end40-image_reorder_item_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_flatten_invoker,@function
image_flatten_invoker:                  # @image_flatten_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
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
	je	.LBB41_4
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_image_flatten
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then.3
	movl	$0, -52(%rbp)
.LBB41_3:                               # %if.end
	jmp	.LBB41_4
.LBB41_4:                               # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB41_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB41_7
.LBB41_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB41_7
.LBB41_7:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB41_9
# BB#8:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB41_9:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	image_flatten_invoker, .Lfunc_end41-image_flatten_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_merge_visible_layers_invoker,@function
image_merge_visible_layers_invoker:     # @image_merge_visible_layers_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
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
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB42_4
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_image_merge_visible_layers
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB42_3
# BB#2:                                 # %if.then.6
	movl	$0, -52(%rbp)
.LBB42_3:                               # %if.end
	jmp	.LBB42_4
.LBB42_4:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB42_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB42_7
.LBB42_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB42_7
.LBB42_7:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB42_9
# BB#8:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB42_9:                               # %if.end.14
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	image_merge_visible_layers_invoker, .Lfunc_end42-image_merge_visible_layers_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_merge_down_invoker,@function
image_merge_down_invoker:               # @image_merge_down_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -96(%rbp)
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -84(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB43_7
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB43_5
# BB#2:                                 # %if.then.11
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-84(%rbp), %ecx
	movq	-48(%rbp), %r8
	callq	gimp_image_merge_down
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB43_4
# BB#3:                                 # %if.then.14
	movl	$0, -52(%rbp)
.LBB43_4:                               # %if.end
	jmp	.LBB43_6
.LBB43_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB43_6:                               # %if.end.15
	jmp	.LBB43_7
.LBB43_7:                               # %if.end.16
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB43_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB43_10
.LBB43_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB43_10
.LBB43_10:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB43_12
# BB#11:                                # %if.then.20
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB43_12:                              # %if.end.23
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	image_merge_down_invoker, .Lfunc_end43-image_merge_down_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_add_layer_mask_invoker,@function
image_add_layer_mask_invoker:           # @image_add_layer_mask_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer_mask
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB44_6
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_floating
	cmpl	$0, %eax
	je	.LBB44_4
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB44_4
# BB#3:                                 # %if.then.15
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_layer_add_mask
	cmpq	-80(%rbp), %rax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB44_5
.LBB44_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB44_5:                               # %if.end
	jmp	.LBB44_6
.LBB44_6:                               # %if.end.17
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB44_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB44_9
.LBB44_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB44_9
.LBB44_9:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	image_add_layer_mask_invoker, .Lfunc_end44-image_add_layer_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_remove_layer_mask_invoker,@function
image_remove_layer_mask_invoker:        # @image_remove_layer_mask_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
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
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB45_6
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	cmpl	$0, -76(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB45_4
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB45_4
# BB#3:                                 # %if.then.13
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_layer_apply_mask
	jmp	.LBB45_5
.LBB45_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB45_5:                               # %if.end
	jmp	.LBB45_6
.LBB45_6:                               # %if.end.14
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB45_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB45_9
.LBB45_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB45_9
.LBB45_9:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	image_remove_layer_mask_invoker, .Lfunc_end45-image_remove_layer_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_colormap_invoker,@function
image_get_colormap_invoker:             # @image_get_colormap_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
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
	je	.LBB46_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	imull	$3, %eax, %eax
	movl	%eax, -76(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_colormap
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -88(%rbp)
.LBB46_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB46_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB46_5
.LBB46_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB46_5
.LBB46_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB46_7
# BB#6:                                 # %if.then.7
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
	callq	gimp_value_take_int8array
.LBB46_7:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	image_get_colormap_invoker, .Lfunc_end46-image_get_colormap_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_set_colormap_invoker,@function
image_set_colormap_invoker:             # @image_set_colormap_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
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
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_int8array
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB47_2
# BB#1:                                 # %if.then
	movl	$1, %ecx
	movl	$3, %eax
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-84(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	movl	%eax, %edx
	callq	gimp_image_set_colormap
.LBB47_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB47_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB47_5
.LBB47_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB47_5
.LBB47_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	image_set_colormap_invoker, .Lfunc_end47-image_set_colormap_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_clean_all_invoker,@function
image_clean_all_invoker:                # @image_clean_all_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB48_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_clean_all
.LBB48_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB48_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB48_5
.LBB48_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB48_5
.LBB48_5:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	image_clean_all_invoker, .Lfunc_end48-image_clean_all_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_is_dirty_invoker,@function
image_is_dirty_invoker:                 # @image_is_dirty_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB49_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_is_dirty
	movl	%eax, -76(%rbp)
.LBB49_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB49_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB49_5
.LBB49_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB49_5
.LBB49_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB49_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB49_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	image_is_dirty_invoker, .Lfunc_end49-image_is_dirty_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_thumbnail_invoker,@function
image_thumbnail_invoker:                # @image_thumbnail_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
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
	movl	$0, -96(%rbp)
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
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB50_16
# BB#1:                                 # %if.then
	jmp	.LBB50_2
.LBB50_2:                               # %do.body
	jmp	.LBB50_3
.LBB50_3:                               # %do.end
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -116(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -120(%rbp)
	movl	-116(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jle	.LBB50_8
# BB#4:                                 # %if.then.9
	movl	$1, %eax
	movl	-76(%rbp), %ecx
	imull	-120(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-116(%rbp)
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB50_6
# BB#5:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB50_7
.LBB50_6:                               # %cond.false
	movl	-76(%rbp), %eax
	imull	-120(%rbp), %eax
	cltd
	idivl	-116(%rbp)
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB50_7:                               # %cond.end
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	jmp	.LBB50_12
.LBB50_8:                               # %if.else
	movl	$1, %eax
	movl	-80(%rbp), %ecx
	imull	-116(%rbp), %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-120(%rbp)
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB50_10
# BB#9:                                 # %cond.true.16
	movl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB50_11
.LBB50_10:                              # %cond.false.17
	movl	-80(%rbp), %eax
	imull	-116(%rbp), %eax
	cltd
	idivl	-120(%rbp)
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB50_11:                              # %cond.end.20
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
.LBB50_12:                              # %if.end
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_flush
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_viewable_get_new_preview
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB50_14
# BB#13:                                # %if.then.29
	movq	-112(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-112(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movl	-84(%rbp), %ecx
	imull	-88(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movq	-112(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rdi
	callq	temp_buf_free
	jmp	.LBB50_15
.LBB50_14:                              # %if.else.36
	movl	$0, -52(%rbp)
.LBB50_15:                              # %if.end.37
	jmp	.LBB50_16
.LBB50_16:                              # %if.end.38
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB50_18
# BB#17:                                # %cond.true.40
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB50_19
.LBB50_18:                              # %cond.false.41
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB50_19
.LBB50_19:                              # %cond.end.42
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB50_21
# BB#20:                                # %if.then.46
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
.LBB50_21:                              # %if.end.57
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	image_thumbnail_invoker, .Lfunc_end50-image_thumbnail_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_active_layer_invoker,@function
image_get_active_layer_invoker:         # @image_get_active_layer_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
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
	je	.LBB51_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -80(%rbp)
.LBB51_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB51_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB51_5
.LBB51_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB51_5
.LBB51_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB51_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB51_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	image_get_active_layer_invoker, .Lfunc_end51-image_get_active_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_set_active_layer_invoker,@function
image_set_active_layer_invoker:         # @image_set_active_layer_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB52_4
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_set_active_layer
	cmpq	-72(%rbp), %rax
	je	.LBB52_3
# BB#2:                                 # %if.then.5
	movl	$0, -52(%rbp)
.LBB52_3:                               # %if.end
	jmp	.LBB52_4
.LBB52_4:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB52_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB52_7
.LBB52_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB52_7
.LBB52_7:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	image_set_active_layer_invoker, .Lfunc_end52-image_set_active_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_active_channel_invoker,@function
image_get_active_channel_invoker:       # @image_get_active_channel_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
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
	je	.LBB53_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -80(%rbp)
.LBB53_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB53_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB53_5
.LBB53_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB53_5
.LBB53_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB53_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_channel
.LBB53_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	image_get_active_channel_invoker, .Lfunc_end53-image_get_active_channel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_set_active_channel_invoker,@function
image_set_active_channel_invoker:       # @image_set_active_channel_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_channel
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB54_4
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_set_active_channel
	cmpq	-72(%rbp), %rax
	je	.LBB54_3
# BB#2:                                 # %if.then.5
	movl	$0, -52(%rbp)
.LBB54_3:                               # %if.end
	jmp	.LBB54_4
.LBB54_4:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB54_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB54_7
.LBB54_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB54_7
.LBB54_7:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	image_set_active_channel_invoker, .Lfunc_end54-image_set_active_channel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_active_vectors_invoker,@function
image_get_active_vectors_invoker:       # @image_get_active_vectors_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
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
	je	.LBB55_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -80(%rbp)
.LBB55_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB55_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB55_5
.LBB55_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB55_5
.LBB55_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB55_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_vectors
.LBB55_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	image_get_active_vectors_invoker, .Lfunc_end55-image_get_active_vectors_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_set_active_vectors_invoker,@function
image_set_active_vectors_invoker:       # @image_set_active_vectors_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_vectors
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB56_4
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_set_active_vectors
	cmpq	-72(%rbp), %rax
	je	.LBB56_3
# BB#2:                                 # %if.then.5
	movl	$0, -52(%rbp)
.LBB56_3:                               # %if.end
	jmp	.LBB56_4
.LBB56_4:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB56_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB56_7
.LBB56_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB56_7
.LBB56_7:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	image_set_active_vectors_invoker, .Lfunc_end56-image_set_active_vectors_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_selection_invoker,@function
image_get_selection_invoker:            # @image_get_selection_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
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
	je	.LBB57_4
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB57_3
# BB#2:                                 # %if.then.5
	movl	$0, -52(%rbp)
.LBB57_3:                               # %if.end
	jmp	.LBB57_4
.LBB57_4:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB57_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB57_7
.LBB57_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB57_7
.LBB57_7:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB57_9
# BB#8:                                 # %if.then.10
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_selection
.LBB57_9:                               # %if.end.13
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	image_get_selection_invoker, .Lfunc_end57-image_get_selection_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_component_active_invoker,@function
image_get_component_active_invoker:     # @image_get_component_active_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB58_10
# BB#1:                                 # %if.then
	cmpl	$3, -76(%rbp)
	jne	.LBB58_3
# BB#2:                                 # %if.then.4
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
	jmp	.LBB58_7
.LBB58_3:                               # %if.else
	cmpl	$4, -76(%rbp)
	jne	.LBB58_5
# BB#4:                                 # %if.then.7
	movl	$2, %esi
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
	jmp	.LBB58_6
.LBB58_5:                               # %if.else.9
	xorl	%esi, %esi
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
.LBB58_6:                               # %if.end
	jmp	.LBB58_7
.LBB58_7:                               # %if.end.11
	cmpl	$0, -52(%rbp)
	je	.LBB58_9
# BB#8:                                 # %if.then.13
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_image_get_component_active
	movl	%eax, -80(%rbp)
.LBB58_9:                               # %if.end.15
	jmp	.LBB58_10
.LBB58_10:                              # %if.end.16
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB58_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB58_13
.LBB58_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB58_13
.LBB58_13:                              # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB58_15
# BB#14:                                # %if.then.20
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB58_15:                              # %if.end.23
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	image_get_component_active_invoker, .Lfunc_end58-image_get_component_active_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_set_component_active_invoker,@function
image_set_component_active_invoker:     # @image_set_component_active_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
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
	callq	gimp_value_get_image
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
	cmpl	$0, -52(%rbp)
	je	.LBB59_10
# BB#1:                                 # %if.then
	cmpl	$3, -68(%rbp)
	jne	.LBB59_3
# BB#2:                                 # %if.then.7
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
	jmp	.LBB59_7
.LBB59_3:                               # %if.else
	cmpl	$4, -68(%rbp)
	jne	.LBB59_5
# BB#4:                                 # %if.then.10
	movl	$2, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
	jmp	.LBB59_6
.LBB59_5:                               # %if.else.12
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
.LBB59_6:                               # %if.end
	jmp	.LBB59_7
.LBB59_7:                               # %if.end.14
	cmpl	$0, -52(%rbp)
	je	.LBB59_9
# BB#8:                                 # %if.then.16
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	gimp_image_set_component_active
.LBB59_9:                               # %if.end.17
	jmp	.LBB59_10
.LBB59_10:                              # %if.end.18
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB59_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB59_13
.LBB59_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB59_13
.LBB59_13:                              # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	image_set_component_active_invoker, .Lfunc_end59-image_set_component_active_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_component_visible_invoker,@function
image_get_component_visible_invoker:    # @image_get_component_visible_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB60_10
# BB#1:                                 # %if.then
	cmpl	$3, -76(%rbp)
	jne	.LBB60_3
# BB#2:                                 # %if.then.4
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
	jmp	.LBB60_7
.LBB60_3:                               # %if.else
	cmpl	$4, -76(%rbp)
	jne	.LBB60_5
# BB#4:                                 # %if.then.7
	movl	$2, %esi
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
	jmp	.LBB60_6
.LBB60_5:                               # %if.else.9
	xorl	%esi, %esi
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
.LBB60_6:                               # %if.end
	jmp	.LBB60_7
.LBB60_7:                               # %if.end.11
	cmpl	$0, -52(%rbp)
	je	.LBB60_9
# BB#8:                                 # %if.then.13
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_image_get_component_visible
	movl	%eax, -80(%rbp)
.LBB60_9:                               # %if.end.15
	jmp	.LBB60_10
.LBB60_10:                              # %if.end.16
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB60_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB60_13
.LBB60_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB60_13
.LBB60_13:                              # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB60_15
# BB#14:                                # %if.then.20
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB60_15:                              # %if.end.23
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	image_get_component_visible_invoker, .Lfunc_end60-image_get_component_visible_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_set_component_visible_invoker,@function
image_set_component_visible_invoker:    # @image_set_component_visible_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
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
	callq	gimp_value_get_image
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
	cmpl	$0, -52(%rbp)
	je	.LBB61_10
# BB#1:                                 # %if.then
	cmpl	$3, -68(%rbp)
	jne	.LBB61_3
# BB#2:                                 # %if.then.7
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
	jmp	.LBB61_7
.LBB61_3:                               # %if.else
	cmpl	$4, -68(%rbp)
	jne	.LBB61_5
# BB#4:                                 # %if.then.10
	movl	$2, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
	jmp	.LBB61_6
.LBB61_5:                               # %if.else.12
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_image_is_base_type
	movl	%eax, -52(%rbp)
.LBB61_6:                               # %if.end
	jmp	.LBB61_7
.LBB61_7:                               # %if.end.14
	cmpl	$0, -52(%rbp)
	je	.LBB61_9
# BB#8:                                 # %if.then.16
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	gimp_image_set_component_visible
.LBB61_9:                               # %if.end.17
	jmp	.LBB61_10
.LBB61_10:                              # %if.end.18
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB61_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB61_13
.LBB61_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB61_13
.LBB61_13:                              # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	image_set_component_visible_invoker, .Lfunc_end61-image_set_component_visible_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_filename_invoker,@function
image_get_filename_invoker:             # @image_get_filename_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp190:
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
	je	.LBB62_4
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_any_uri
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB62_3
# BB#2:                                 # %if.then.3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_from_uri
	movq	%rax, -80(%rbp)
.LBB62_3:                               # %if.end
	jmp	.LBB62_4
.LBB62_4:                               # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB62_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB62_7
.LBB62_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB62_7
.LBB62_7:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB62_9
# BB#8:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB62_9:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	image_get_filename_invoker, .Lfunc_end62-image_get_filename_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_set_filename_invoker,@function
image_set_filename_invoker:             # @image_set_filename_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
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
	je	.LBB63_10
# BB#1:                                 # %if.then
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%rcx, %rdx
	callq	g_filename_to_utf8
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB63_6
# BB#2:                                 # %if.then.6
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%rcx, %rdx
	callq	g_filename_from_utf8
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB63_4
# BB#3:                                 # %if.then.9
	movq	-88(%rbp), %rdi
	callq	g_free
	jmp	.LBB63_5
.LBB63_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB63_5:                               # %if.end
	movq	-80(%rbp), %rdi
	callq	g_free
	jmp	.LBB63_7
.LBB63_6:                               # %if.else.10
	movl	$0, -52(%rbp)
.LBB63_7:                               # %if.end.11
	cmpl	$0, -52(%rbp)
	je	.LBB63_9
# BB#8:                                 # %if.then.13
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_set_filename
.LBB63_9:                               # %if.end.14
	jmp	.LBB63_10
.LBB63_10:                              # %if.end.15
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB63_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB63_13
.LBB63_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB63_13
.LBB63_13:                              # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	image_set_filename_invoker, .Lfunc_end63-image_set_filename_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_uri_invoker,@function
image_get_uri_invoker:                  # @image_get_uri_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp196:
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
	je	.LBB64_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_any_uri
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB64_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB64_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB64_5
.LBB64_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB64_5
.LBB64_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB64_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB64_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	image_get_uri_invoker, .Lfunc_end64-image_get_uri_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_xcf_uri_invoker,@function
image_get_xcf_uri_invoker:              # @image_get_xcf_uri_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
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
	je	.LBB65_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB65_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB65_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB65_5
.LBB65_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB65_5
.LBB65_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB65_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB65_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	image_get_xcf_uri_invoker, .Lfunc_end65-image_get_xcf_uri_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_imported_uri_invoker,@function
image_get_imported_uri_invoker:         # @image_get_imported_uri_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
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
	je	.LBB66_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB66_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB66_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB66_5
.LBB66_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB66_5
.LBB66_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB66_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB66_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	image_get_imported_uri_invoker, .Lfunc_end66-image_get_imported_uri_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_exported_uri_invoker,@function
image_get_exported_uri_invoker:         # @image_get_exported_uri_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
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
	je	.LBB67_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB67_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB67_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB67_5
.LBB67_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB67_5
.LBB67_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB67_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB67_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	image_get_exported_uri_invoker, .Lfunc_end67-image_get_exported_uri_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_name_invoker,@function
image_get_name_invoker:                 # @image_get_name_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
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
	je	.LBB68_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_display_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB68_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB68_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB68_5
.LBB68_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB68_5
.LBB68_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB68_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB68_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	image_get_name_invoker, .Lfunc_end68-image_get_name_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_resolution_invoker,@function
image_get_resolution_invoker:           # @image_get_resolution_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp211:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB69_2
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_resolution
.LBB69_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB69_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB69_5
.LBB69_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB69_5
.LBB69_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB69_7
# BB#6:                                 # %if.then.4
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB69_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	image_get_resolution_invoker, .Lfunc_end69-image_get_resolution_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI70_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI70_1:
	.quad	4679240012837945344     # double 65536
	.text
	.align	16, 0x90
	.type	image_set_resolution_invoker,@function
image_set_resolution_invoker:           # @image_set_resolution_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp214:
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
	callq	g_value_get_double
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB70_10
# BB#1:                                 # %if.then
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB70_7
# BB#2:                                 # %lor.lhs.false
	movsd	.LCPI70_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	ja	.LBB70_7
# BB#3:                                 # %lor.lhs.false.9
	movsd	.LCPI70_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB70_7
# BB#4:                                 # %lor.lhs.false.11
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	finite
	cmpl	$0, %eax
	je	.LBB70_7
# BB#5:                                 # %lor.lhs.false.14
	movsd	.LCPI70_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	ja	.LBB70_7
# BB#6:                                 # %lor.lhs.false.16
	movsd	.LCPI70_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB70_8
.LBB70_7:                               # %if.then.18
	movq	-48(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_error_quark
	movabsq	$.L.str.497, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -52(%rbp)
	jmp	.LBB70_9
.LBB70_8:                               # %if.else
	movq	-64(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_image_set_resolution
.LBB70_9:                               # %if.end
	jmp	.LBB70_10
.LBB70_10:                              # %if.end.21
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB70_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB70_13
.LBB70_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB70_13
.LBB70_13:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	image_set_resolution_invoker, .Lfunc_end70-image_set_resolution_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_unit_invoker,@function
image_get_unit_invoker:                 # @image_get_unit_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
.Ltmp216:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp217:
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB71_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_unit
	movl	%eax, -76(%rbp)
.LBB71_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB71_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB71_5
.LBB71_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB71_5
.LBB71_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB71_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB71_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	image_get_unit_invoker, .Lfunc_end71-image_get_unit_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_set_unit_invoker,@function
image_set_unit_invoker:                 # @image_set_unit_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp220:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB72_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_image_set_unit
.LBB72_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB72_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB72_5
.LBB72_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB72_5
.LBB72_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	image_set_unit_invoker, .Lfunc_end72-image_set_unit_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_tattoo_state_invoker,@function
image_get_tattoo_state_invoker:         # @image_get_tattoo_state_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
.Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp223:
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB73_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_tattoo_state
	movl	%eax, -76(%rbp)
.LBB73_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB73_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB73_5
.LBB73_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB73_5
.LBB73_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB73_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_uint
.LBB73_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	image_get_tattoo_state_invoker, .Lfunc_end73-image_get_tattoo_state_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_set_tattoo_state_invoker,@function
image_set_tattoo_state_invoker:         # @image_set_tattoo_state_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp226:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_uint
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB74_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_image_set_tattoo_state
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB74_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB74_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB74_5
.LBB74_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB74_5
.LBB74_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	image_set_tattoo_state_invoker, .Lfunc_end74-image_set_tattoo_state_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_layer_by_tattoo_invoker,@function
image_get_layer_by_tattoo_invoker:      # @image_get_layer_by_tattoo_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp229:
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
	callq	g_value_get_uint
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB75_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_image_get_layer_by_tattoo
	movq	%rax, -88(%rbp)
.LBB75_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB75_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB75_5
.LBB75_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB75_5
.LBB75_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB75_7
# BB#6:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB75_7:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	image_get_layer_by_tattoo_invoker, .Lfunc_end75-image_get_layer_by_tattoo_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_channel_by_tattoo_invoker,@function
image_get_channel_by_tattoo_invoker:    # @image_get_channel_by_tattoo_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
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
	callq	g_value_get_uint
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB76_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_image_get_channel_by_tattoo
	movq	%rax, -88(%rbp)
.LBB76_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB76_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB76_5
.LBB76_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB76_5
.LBB76_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB76_7
# BB#6:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_channel
.LBB76_7:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	image_get_channel_by_tattoo_invoker, .Lfunc_end76-image_get_channel_by_tattoo_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_vectors_by_tattoo_invoker,@function
image_get_vectors_by_tattoo_invoker:    # @image_get_vectors_by_tattoo_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
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
	callq	g_value_get_uint
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB77_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_image_get_vectors_by_tattoo
	movq	%rax, -88(%rbp)
.LBB77_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB77_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB77_5
.LBB77_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB77_5
.LBB77_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB77_7
# BB#6:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_vectors
.LBB77_7:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	image_get_vectors_by_tattoo_invoker, .Lfunc_end77-image_get_vectors_by_tattoo_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_layer_by_name_invoker,@function
image_get_layer_by_name_invoker:        # @image_get_layer_by_name_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
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
	je	.LBB78_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_get_layer_by_name
	movq	%rax, -88(%rbp)
.LBB78_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB78_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB78_5
.LBB78_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB78_5
.LBB78_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB78_7
# BB#6:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB78_7:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	image_get_layer_by_name_invoker, .Lfunc_end78-image_get_layer_by_name_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_channel_by_name_invoker,@function
image_get_channel_by_name_invoker:      # @image_get_channel_by_name_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp241:
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
	je	.LBB79_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_get_channel_by_name
	movq	%rax, -88(%rbp)
.LBB79_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB79_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB79_5
.LBB79_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB79_5
.LBB79_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB79_7
# BB#6:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_channel
.LBB79_7:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	image_get_channel_by_name_invoker, .Lfunc_end79-image_get_channel_by_name_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_vectors_by_name_invoker,@function
image_get_vectors_by_name_invoker:      # @image_get_vectors_by_name_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp244:
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
	je	.LBB80_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_get_vectors_by_name
	movq	%rax, -88(%rbp)
.LBB80_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB80_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB80_5
.LBB80_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB80_5
.LBB80_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB80_7
# BB#6:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_vectors
.LBB80_7:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	image_get_vectors_by_name_invoker, .Lfunc_end80-image_get_vectors_by_name_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_attach_parasite_invoker,@function
image_attach_parasite_invoker:          # @image_attach_parasite_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
.Ltmp246:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp247:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boxed
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB81_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_parasite_attach
.LBB81_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB81_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB81_5
.LBB81_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB81_5
.LBB81_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	image_attach_parasite_invoker, .Lfunc_end81-image_attach_parasite_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_detach_parasite_invoker,@function
image_detach_parasite_invoker:          # @image_detach_parasite_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
.Ltmp249:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp250:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB82_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_parasite_detach
.LBB82_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB82_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB82_5
.LBB82_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB82_5
.LBB82_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	image_detach_parasite_invoker, .Lfunc_end82-image_detach_parasite_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_parasite_invoker,@function
image_get_parasite_invoker:             # @image_get_parasite_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp251:
	.cfi_def_cfa_offset 16
.Ltmp252:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp253:
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
	je	.LBB83_4
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_parasite_find
	movq	%rax, %rdi
	callq	gimp_parasite_copy
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB83_3
# BB#2:                                 # %if.then.7
	movl	$0, -52(%rbp)
.LBB83_3:                               # %if.end
	jmp	.LBB83_4
.LBB83_4:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB83_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB83_7
.LBB83_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB83_7
.LBB83_7:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB83_9
# BB#8:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_value_take_boxed
.LBB83_9:                               # %if.end.15
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	image_get_parasite_invoker, .Lfunc_end83-image_get_parasite_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_parasite_list_invoker,@function
image_get_parasite_list_invoker:        # @image_get_parasite_list_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp256:
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
	je	.LBB84_2
# BB#1:                                 # %if.then
	leaq	-76(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	gimp_image_parasite_list
	movq	%rax, -88(%rbp)
.LBB84_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB84_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB84_5
.LBB84_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB84_5
.LBB84_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB84_7
# BB#6:                                 # %if.then.5
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
.LBB84_7:                               # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	image_get_parasite_list_invoker, .Lfunc_end84-image_get_parasite_list_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-image-is-valid"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Returns TRUE if the image is valid."
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure checks if the given image ID is valid and refers to an existing image."
	.size	.L.str.2, 86

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Sven Neumann"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2007"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The image to check"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"valid"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Whether the image ID is valid"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-image-list"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Returns the list of images currently open."
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"This procedure returns the list of images currently open in GIMP."
	.size	.L.str.12, 66

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1995-1996"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"num-images"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"num images"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The number of images currently open"
	.size	.L.str.17, 36

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"image-ids"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"image ids"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The list of images currently open"
	.size	.L.str.20, 34

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-image-new"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Creates a new image with the specified width, height, and type."
	.size	.L.str.22, 64

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Creates a new image, undisplayed with the specified extents and type. A layer should be created and added before this image is displayed, or subsequent calls to 'gimp-display-new' with this image as an argument will fail. Layers can be created using the 'gimp-layer-new' commands. They can be added to an image using the 'gimp-image-insert-layer' command."
	.size	.L.str.23, 356

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"width"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"The width of the image"
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"height"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"The height of the image"
	.size	.L.str.27, 24

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"type"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The type of image"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"The ID of the newly created image"
	.size	.L.str.30, 34

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-image-duplicate"
	.size	.L.str.31, 21

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Duplicate the specified image"
	.size	.L.str.32, 30

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"This procedure duplicates the specified image, copying all layers, channels, and image information."
	.size	.L.str.33, 100

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"1997"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"The image"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"new-image"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"new image"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"The new, duplicated image"
	.size	.L.str.38, 26

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-image-delete"
	.size	.L.str.39, 18

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Delete the specified image."
	.size	.L.str.40, 28

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"If there are no displays associated with this image it will be deleted. This means that you can not delete an image through the PDB that was created by the user. If the associated display was however created through the PDB and you know the display ID, you may delete the display. Removal of the last associated display will then delete the image."
	.size	.L.str.41, 348

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-image-base-type"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Get the base type of the image."
	.size	.L.str.43, 32

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"This procedure returns the image's base type. Layers in the image must be of this subtype, but can have an optional alpha channel."
	.size	.L.str.44, 131

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"base-type"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"base type"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The image's base type"
	.size	.L.str.47, 22

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-image-width"
	.size	.L.str.48, 17

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Return the width of the image"
	.size	.L.str.49, 30

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"This procedure returns the image's width. This value is independent of any of the layers in this image. This is the \"canvas\" width."
	.size	.L.str.50, 132

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"The image's width"
	.size	.L.str.51, 18

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-image-height"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Return the height of the image"
	.size	.L.str.53, 31

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"This procedure returns the image's height. This value is independent of any of the layers in this image. This is the \"canvas\" height."
	.size	.L.str.54, 134

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"The image's height"
	.size	.L.str.55, 19

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-image-free-shadow"
	.size	.L.str.56, 23

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Deprecated: Use 'gimp-drawable-free-shadow' instead."
	.size	.L.str.57, 53

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.zero	1
	.size	.L.str.58, 1

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-drawable-free-shadow"
	.size	.L.str.59, 26

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-image-resize"
	.size	.L.str.60, 18

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Resize the image to the specified extents."
	.size	.L.str.61, 43

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"This procedure resizes the image so that it's new width and height are equal to the supplied parameters. Offsets are also provided which describe the position of the previous image's content. All channels within the image are resized according to the specified parameters; this includes the image selection mask. All layers within the image are repositioned according to the specified offsets."
	.size	.L.str.62, 394

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"new-width"
	.size	.L.str.63, 10

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"new width"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"New image width"
	.size	.L.str.65, 16

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"new-height"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"new height"
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"New image height"
	.size	.L.str.68, 17

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"offx"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"x offset between upper left corner of old and new images: (new - old)"
	.size	.L.str.70, 70

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"offy"
	.size	.L.str.71, 5

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"y offset between upper left corner of old and new images: (new - old)"
	.size	.L.str.72, 70

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-image-resize-to-layers"
	.size	.L.str.73, 28

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Resize the image to fit all layers."
	.size	.L.str.74, 36

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"This procedure resizes the image to the bounding box of all layers of the image. All channels within the image are resized to the new size; this includes the image selection mask. All layers within the image are repositioned to the new image area."
	.size	.L.str.75, 248

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Simon Budig"
	.size	.L.str.76, 12

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"2004"
	.size	.L.str.77, 5

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-image-scale"
	.size	.L.str.78, 17

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Scale the image using the default interpolation method."
	.size	.L.str.79, 56

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"This procedure scales the image so that its new width and height are equal to the supplied parameters. All layers and channels within the image are scaled according to the specified parameters; this includes the image selection mask. The interpolation method used can be set with 'gimp-context-set-interpolation'."
	.size	.L.str.80, 314

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-image-scale-full"
	.size	.L.str.81, 22

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Deprecated: Use 'gimp-image-scale' instead."
	.size	.L.str.82, 44

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"2008"
	.size	.L.str.83, 5

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"interpolation"
	.size	.L.str.84, 14

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Type of interpolation"
	.size	.L.str.85, 22

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-image-crop"
	.size	.L.str.86, 16

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Crop the image to the specified extents."
	.size	.L.str.87, 41

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"This procedure crops the image so that it's new width and height are equal to the supplied parameters. Offsets are also provided which describe the position of the previous image's content. All channels and layers within the image are cropped to the new image extents; this includes the image selection mask. If any parameters are out of range, an error is returned."
	.size	.L.str.88, 367

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"New image width: (0 < new_width <= width)"
	.size	.L.str.89, 42

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"New image height: (0 < new_height <= height)"
	.size	.L.str.90, 45

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"X offset: (0 <= offx <= (width - new_width))"
	.size	.L.str.91, 45

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Y offset: (0 <= offy <= (height - new_height))"
	.size	.L.str.92, 47

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-image-flip"
	.size	.L.str.93, 16

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Flips the image horizontally or vertically."
	.size	.L.str.94, 44

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"This procedure flips (mirrors) the image."
	.size	.L.str.95, 42

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"flip-type"
	.size	.L.str.96, 10

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"flip type"
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Type of flip"
	.size	.L.str.98, 13

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"gimp-image-rotate"
	.size	.L.str.99, 18

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Rotates the image by the specified degrees."
	.size	.L.str.100, 44

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"This procedure rotates the image."
	.size	.L.str.101, 34

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.102, 34

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Michael Natterer"
	.size	.L.str.103, 17

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"2003"
	.size	.L.str.104, 5

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"rotate-type"
	.size	.L.str.105, 12

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"rotate type"
	.size	.L.str.106, 12

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Angle of rotation"
	.size	.L.str.107, 18

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-image-get-layers"
	.size	.L.str.108, 22

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Returns the list of layers contained in the specified image."
	.size	.L.str.109, 61

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"This procedure returns the list of layers contained in the specified image. The order of layers is from topmost to bottommost."
	.size	.L.str.110, 127

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"num-layers"
	.size	.L.str.111, 11

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"num layers"
	.size	.L.str.112, 11

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"The number of layers contained in the image"
	.size	.L.str.113, 44

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"layer-ids"
	.size	.L.str.114, 10

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"layer ids"
	.size	.L.str.115, 10

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"The list of layers contained in the image"
	.size	.L.str.116, 42

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"gimp-image-get-channels"
	.size	.L.str.117, 24

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Returns the list of channels contained in the specified image."
	.size	.L.str.118, 63

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"This procedure returns the list of channels contained in the specified image. This does not include the selection mask, or layer masks. The order is from topmost to bottommost."
	.size	.L.str.119, 177

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"num-channels"
	.size	.L.str.120, 13

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"num channels"
	.size	.L.str.121, 13

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"The number of channels contained in the image"
	.size	.L.str.122, 46

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"channel-ids"
	.size	.L.str.123, 12

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"channel ids"
	.size	.L.str.124, 12

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"The list of channels contained in the image"
	.size	.L.str.125, 44

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"gimp-image-get-vectors"
	.size	.L.str.126, 23

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Returns the list of vectors contained in the specified image."
	.size	.L.str.127, 62

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"This procedure returns the list of vectors contained in the specified image."
	.size	.L.str.128, 77

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"2005"
	.size	.L.str.129, 5

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"num-vectors"
	.size	.L.str.130, 12

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"num vectors"
	.size	.L.str.131, 12

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"The number of vectors contained in the image"
	.size	.L.str.132, 45

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"vector-ids"
	.size	.L.str.133, 11

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"vector ids"
	.size	.L.str.134, 11

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"The list of vectors contained in the image"
	.size	.L.str.135, 43

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"gimp-image-get-active-drawable"
	.size	.L.str.136, 31

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Get the image's active drawable"
	.size	.L.str.137, 32

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"This procedure returns the ID of the image's active drawable. This can be either a layer, a channel, or a layer mask. The active drawable is specified by the active image channel. If that is -1, then by the active image layer. If the active image layer has a layer mask and the layer mask is in edit mode, then the layer mask is the active drawable."
	.size	.L.str.138, 350

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"drawable"
	.size	.L.str.139, 9

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"The active drawable"
	.size	.L.str.140, 20

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"gimp-image-unset-active-channel"
	.size	.L.str.141, 32

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Unsets the active channel in the specified image."
	.size	.L.str.142, 50

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"If an active channel exists, it is unset. There then exists no active channel, and if desired, one can be set through a call to 'Set Active Channel'. No error is returned in the case of no existing active channel."
	.size	.L.str.143, 214

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gimp-image-get-floating-sel"
	.size	.L.str.144, 28

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Return the floating selection of the image."
	.size	.L.str.145, 44

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"This procedure returns the image's floating selection, if it exists. If it doesn't exist, -1 is returned as the layer ID."
	.size	.L.str.146, 122

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"floating-sel"
	.size	.L.str.147, 13

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"floating sel"
	.size	.L.str.148, 13

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"The image's floating selection"
	.size	.L.str.149, 31

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"gimp-image-floating-sel-attached-to"
	.size	.L.str.150, 36

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Return the drawable the floating selection is attached to."
	.size	.L.str.151, 59

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"This procedure returns the drawable the image's floating selection is attached to, if it exists. If it doesn't exist, -1 is returned as the drawable ID."
	.size	.L.str.152, 153

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"Wolfgang Hofer"
	.size	.L.str.153, 15

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"1998"
	.size	.L.str.154, 5

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"The drawable the floating selection is attached to"
	.size	.L.str.155, 51

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"gimp-image-pick-color"
	.size	.L.str.156, 22

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"Determine the color at the given drawable coordinates"
	.size	.L.str.157, 54

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"This tool determines the color at the specified coordinates. The returned color is an RGB triplet even for grayscale and indexed drawables. If the coordinates lie outside of the extents of the specified drawable, then an error is returned. If the drawable has an alpha channel, the algorithm examines the alpha value of the drawable at the coordinates. If the alpha value is completely transparent (0), then an error is returned. If the sample_merged parameter is TRUE, the data of the composite image will be used instead of that for the specified drawable. This is equivalent to sampling for colors after merging all visible layers. In the case of a merged sampling, the supplied drawable is ignored."
	.size	.L.str.158, 703

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"The drawable to pick from"
	.size	.L.str.159, 26

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"x"
	.size	.L.str.160, 2

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"x coordinate of upper-left corner of rectangle"
	.size	.L.str.161, 47

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"y"
	.size	.L.str.162, 2

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"y coordinate of upper-left corner of rectangle"
	.size	.L.str.163, 47

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"sample-merged"
	.size	.L.str.164, 14

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"sample merged"
	.size	.L.str.165, 14

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"Use the composite image, not the drawable"
	.size	.L.str.166, 42

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"sample-average"
	.size	.L.str.167, 15

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"sample average"
	.size	.L.str.168, 15

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"Average the color of all the pixels in a specified radius"
	.size	.L.str.169, 58

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"average-radius"
	.size	.L.str.170, 15

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"average radius"
	.size	.L.str.171, 15

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"The radius of pixels to average"
	.size	.L.str.172, 32

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"color"
	.size	.L.str.173, 6

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"The return color"
	.size	.L.str.174, 17

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"gimp-image-pick-correlate-layer"
	.size	.L.str.175, 32

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"Find the layer visible at the specified coordinates."
	.size	.L.str.176, 53

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"This procedure finds the layer which is visible at the specified coordinates. Layers which do not qualify are those whose extents do not pass within the specified coordinates, or which are transparent at the specified coordinates. This procedure will return -1 if no layer is found."
	.size	.L.str.177, 283

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"The x coordinate for the pick"
	.size	.L.str.178, 30

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"The y coordinate for the pick"
	.size	.L.str.179, 30

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"layer"
	.size	.L.str.180, 6

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"The layer found at the specified coordinates"
	.size	.L.str.181, 45

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"gimp-image-add-layer"
	.size	.L.str.182, 21

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"Deprecated: Use 'gimp-image-insert-layer' instead."
	.size	.L.str.183, 51

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"gimp-image-insert-layer"
	.size	.L.str.184, 24

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"The layer"
	.size	.L.str.185, 10

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"position"
	.size	.L.str.186, 9

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"The layer position"
	.size	.L.str.187, 19

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Add the specified layer to the image."
	.size	.L.str.188, 38

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"This procedure adds the specified layer to the image at the given position. If the specified parent is a valid layer group (See 'gimp-item-is-group' and 'gimp-layer-group-new') then the layer is added inside the group. If the parent is 0, the layer is added inside the main stack, outside of any group. The position argument specifies the location of the layer inside the stack (or the group, if a valid parent was supplied), starting from the top (0) and increasing. If the position is specified as -1 and the parent is specified as 0, then the layer is inserted above the active layer, or inside the group if the active layer is a layer group. The layer type must be compatible with the image base type."
	.size	.L.str.189, 706

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"parent"
	.size	.L.str.190, 7

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"The parent layer"
	.size	.L.str.191, 17

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"gimp-image-remove-layer"
	.size	.L.str.192, 24

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"Remove the specified layer from the image."
	.size	.L.str.193, 43

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"This procedure removes the specified layer from the image. If the layer doesn't exist, an error is returned. If there are no layers left in the image, this call will fail. If this layer is the last layer remaining, the image will become empty and have no active layer."
	.size	.L.str.194, 269

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"gimp-image-add-channel"
	.size	.L.str.195, 23

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"Deprecated: Use 'gimp-image-insert-channel' instead."
	.size	.L.str.196, 53

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"gimp-image-insert-channel"
	.size	.L.str.197, 26

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"channel"
	.size	.L.str.198, 8

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"The channel"
	.size	.L.str.199, 12

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"The channel position"
	.size	.L.str.200, 21

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"Add the specified channel to the image."
	.size	.L.str.201, 40

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"This procedure adds the specified channel to the image at the given position. Since channel groups are not currently supported, the parent argument must always be 0. The position argument specifies the location of the channel inside the stack, starting from the top (0) and increasing. If the position is specified as -1, then the channel is inserted above the active channel."
	.size	.L.str.202, 377

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"The parent channel"
	.size	.L.str.203, 19

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"gimp-image-remove-channel"
	.size	.L.str.204, 26

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"Remove the specified channel from the image."
	.size	.L.str.205, 45

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"This procedure removes the specified channel from the image. If the channel doesn't exist, an error is returned."
	.size	.L.str.206, 113

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"gimp-image-add-vectors"
	.size	.L.str.207, 23

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"Deprecated: Use 'gimp-image-insert-vectors' instead."
	.size	.L.str.208, 53

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"gimp-image-insert-vectors"
	.size	.L.str.209, 26

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"vectors"
	.size	.L.str.210, 8

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"The vectors object"
	.size	.L.str.211, 19

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"The vectors objects position"
	.size	.L.str.212, 29

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"Add the specified vectors to the image."
	.size	.L.str.213, 40

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"This procedure adds the specified vectors to the image at the given position. Since vectors groups are not currently supported, the parent argument must always be 0. The position argument specifies the location of the vectors inside the stack, starting from the top (0) and increasing. If the position is specified as -1, then the vectors is inserted above the active vectors."
	.size	.L.str.214, 377

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"The vectors"
	.size	.L.str.215, 12

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"The parent vectors"
	.size	.L.str.216, 19

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"The vectors position"
	.size	.L.str.217, 21

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"gimp-image-remove-vectors"
	.size	.L.str.218, 26

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"Remove the specified path from the image."
	.size	.L.str.219, 42

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"This procedure removes the specified path from the image. If the path doesn't exist, an error is returned."
	.size	.L.str.220, 107

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"gimp-image-get-item-position"
	.size	.L.str.221, 29

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"Returns the position of the item in its level of its item tree."
	.size	.L.str.222, 64

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"This procedure determines the position of the specified item in its level in its item tree in the image. If the item doesn't exist in the image, or the item is not part of an item tree, an error is returned."
	.size	.L.str.223, 208

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"2010"
	.size	.L.str.224, 5

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"item"
	.size	.L.str.225, 5

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"The item"
	.size	.L.str.226, 9

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"The position of the item in its level in the item tree"
	.size	.L.str.227, 55

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"gimp-image-raise-item"
	.size	.L.str.228, 22

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"Raise the specified item in its level in its item tree"
	.size	.L.str.229, 55

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"This procedure raises the specified item one step in the item tree. The procecure call will fail if there is no item above it."
	.size	.L.str.230, 127

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"The item to raise"
	.size	.L.str.231, 18

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"gimp-image-lower-item"
	.size	.L.str.232, 22

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"Lower the specified item in its level in its item tree"
	.size	.L.str.233, 55

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"This procedure lowers the specified item one step in the item tree. The procecure call will fail if there is no item below it."
	.size	.L.str.234, 127

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"The item to lower"
	.size	.L.str.235, 18

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"gimp-image-raise-item-to-top"
	.size	.L.str.236, 29

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"Raise the specified item to the top of its level in its item tree"
	.size	.L.str.237, 66

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"This procedure raises the specified item to top of its level in the item tree. It will not move the item if there is no item above it."
	.size	.L.str.238, 135

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"The item to raise to top"
	.size	.L.str.239, 25

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"gimp-image-lower-item-to-bottom"
	.size	.L.str.240, 32

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"Lower the specified item to the bottom of its level in its item tree"
	.size	.L.str.241, 69

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"This procedure lowers the specified item to bottom of its level in the item tree. It will not move the layer if there is no layer below it."
	.size	.L.str.242, 140

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"The item to lower to bottom"
	.size	.L.str.243, 28

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"gimp-image-reorder-item"
	.size	.L.str.244, 24

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"Reorder the specified item within its item tree"
	.size	.L.str.245, 48

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"This procedure reorders the specified item within its item tree."
	.size	.L.str.246, 65

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"The item to reorder"
	.size	.L.str.247, 20

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"The new parent item"
	.size	.L.str.248, 20

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"The new position of the item"
	.size	.L.str.249, 29

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"gimp-image-flatten"
	.size	.L.str.250, 19

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"Flatten all visible layers into a single layer. Discard all invisible layers."
	.size	.L.str.251, 78

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"This procedure combines the visible layers in a manner analogous to merging with the CLIP_TO_IMAGE merge type. Non-visible layers are discarded, and the resulting image is stripped of its alpha channel."
	.size	.L.str.252, 203

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"The resulting layer"
	.size	.L.str.253, 20

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"gimp-image-merge-visible-layers"
	.size	.L.str.254, 32

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"Merge the visible image layers into one."
	.size	.L.str.255, 41

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"This procedure combines the visible layers into a single layer using the specified merge type. A merge type of EXPAND_AS_NECESSARY expands the final layer to encompass the areas of the visible layers. A merge type of CLIP_TO_IMAGE clips the final layer to the extents of the image. A merge type of CLIP_TO_BOTTOM_LAYER clips the final layer to the size of the bottommost layer."
	.size	.L.str.256, 378

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"merge-type"
	.size	.L.str.257, 11

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"merge type"
	.size	.L.str.258, 11

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"The type of merge"
	.size	.L.str.259, 18

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"gimp-image-merge-down"
	.size	.L.str.260, 22

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"Merge the layer passed and the first visible layer below."
	.size	.L.str.261, 58

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"This procedure combines the passed layer and the first visible layer below it using the specified merge type. A merge type of EXPAND_AS_NECESSARY expands the final layer to encompass the areas of the visible layers. A merge type of CLIP_TO_IMAGE clips the final layer to the extents of the image. A merge type of CLIP_TO_BOTTOM_LAYER clips the final layer to the size of the bottommost layer."
	.size	.L.str.262, 393

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"Larry Ewing"
	.size	.L.str.263, 12

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"merge-layer"
	.size	.L.str.264, 12

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"merge layer"
	.size	.L.str.265, 12

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"The layer to merge down from"
	.size	.L.str.266, 29

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"gimp-image-add-layer-mask"
	.size	.L.str.267, 26

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"Deprecated: Use 'gimp-layer-add-mask' instead."
	.size	.L.str.268, 47

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"gimp-layer-add-mask"
	.size	.L.str.269, 20

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"The layer to receive the mask"
	.size	.L.str.270, 30

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"mask"
	.size	.L.str.271, 5

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"The mask to add to the layer"
	.size	.L.str.272, 29

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"gimp-image-remove-layer-mask"
	.size	.L.str.273, 29

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"Deprecated: Use 'gimp-layer-remove-mask' instead."
	.size	.L.str.274, 50

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"gimp-layer-remove-mask"
	.size	.L.str.275, 23

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"The layer from which to remove mask"
	.size	.L.str.276, 36

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"mode"
	.size	.L.str.277, 5

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"Removal mode"
	.size	.L.str.278, 13

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"gimp-image-get-colormap"
	.size	.L.str.279, 24

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"Returns the image's colormap"
	.size	.L.str.280, 29

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"This procedure returns an actual pointer to the image's colormap, as well as the number of bytes contained in the colormap. The actual number of colors in the transmitted colormap will be 'num-bytes' / 3. If the image is not in Indexed color mode, no colormap is returned."
	.size	.L.str.281, 273

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"num-bytes"
	.size	.L.str.282, 10

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"num bytes"
	.size	.L.str.283, 10

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"Number of bytes in the colormap array"
	.size	.L.str.284, 38

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"colormap"
	.size	.L.str.285, 9

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"The image's colormap"
	.size	.L.str.286, 21

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"gimp-image-set-colormap"
	.size	.L.str.287, 24

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"Sets the entries in the image's colormap."
	.size	.L.str.288, 42

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"This procedure sets the entries in the specified image's colormap. The number of entries is specified by the 'num-bytes' parameter and corresponds to the number of INT8 triples that must be contained in the 'colormap' array. The actual number of colors in the transmitted colormap is 'num-bytes' / 3."
	.size	.L.str.289, 301

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"The new colormap values"
	.size	.L.str.290, 24

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"gimp-image-clean-all"
	.size	.L.str.291, 21

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"Set the image dirty count to 0."
	.size	.L.str.292, 32

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"This procedure sets the specified image's dirty count to 0, allowing operations to occur without having a 'dirtied' image. This is especially useful for creating and loading images which should not initially be considered dirty, even though layers must be created, filled, and installed in the image. Note that save plug-ins must NOT call this function themselves after saving the image."
	.size	.L.str.293, 388

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"gimp-image-is-dirty"
	.size	.L.str.294, 20

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"Checks if the image has unsaved changes."
	.size	.L.str.295, 41

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"This procedure checks the specified image's dirty count to see if it needs to be saved. Note that saving the image does not automatically set the dirty count to 0, you need to call 'gimp-image-clean-all' after calling a save procedure to make the image clean."
	.size	.L.str.296, 260

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"dirty"
	.size	.L.str.297, 6

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"TRUE if the image has unsaved changes."
	.size	.L.str.298, 39

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"gimp-image-thumbnail"
	.size	.L.str.299, 21

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"Get a thumbnail of an image."
	.size	.L.str.300, 29

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"This function gets data from which a thumbnail of an image preview can be created. Maximum x or y dimension is 1024 pixels. The pixels are returned in RGB[A] or GRAY[A] format. The bpp return value gives the number of bits per pixel in the image."
	.size	.L.str.301, 247

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"Andy Thomas"
	.size	.L.str.302, 12

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"1999"
	.size	.L.str.303, 5

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"The requested thumbnail width"
	.size	.L.str.304, 30

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"The requested thumbnail height"
	.size	.L.str.305, 31

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"actual-width"
	.size	.L.str.306, 13

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"actual width"
	.size	.L.str.307, 13

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"The previews width"
	.size	.L.str.308, 19

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"actual-height"
	.size	.L.str.309, 14

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"actual height"
	.size	.L.str.310, 14

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"The previews height"
	.size	.L.str.311, 20

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"bpp"
	.size	.L.str.312, 4

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"The previews bpp"
	.size	.L.str.313, 17

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"thumbnail-data-count"
	.size	.L.str.314, 21

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"thumbnail data count"
	.size	.L.str.315, 21

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"The number of bytes in thumbnail data"
	.size	.L.str.316, 38

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"thumbnail-data"
	.size	.L.str.317, 15

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"thumbnail data"
	.size	.L.str.318, 15

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"The thumbnail data"
	.size	.L.str.319, 19

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"gimp-image-get-active-layer"
	.size	.L.str.320, 28

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"Returns the specified image's active layer."
	.size	.L.str.321, 44

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"If there is an active layer, its ID will be returned, otherwise, -1. If a channel is currently active, then no layer will be. If a layer mask is active, then this will return the associated layer."
	.size	.L.str.322, 197

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"active-layer"
	.size	.L.str.323, 13

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"active layer"
	.size	.L.str.324, 13

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"The active layer"
	.size	.L.str.325, 17

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"gimp-image-set-active-layer"
	.size	.L.str.326, 28

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"Sets the specified image's active layer."
	.size	.L.str.327, 41

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"If the layer exists, it is set as the active layer in the image. Any previous active layer or channel is set to inactive. An exception is a previously existing floating selection, in which case this procedure will return an execution error."
	.size	.L.str.328, 241

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"The new image active layer"
	.size	.L.str.329, 27

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"gimp-image-get-active-channel"
	.size	.L.str.330, 30

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"Returns the specified image's active channel."
	.size	.L.str.331, 46

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"If there is an active channel, this will return the channel ID, otherwise, -1."
	.size	.L.str.332, 79

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"active-channel"
	.size	.L.str.333, 15

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"active channel"
	.size	.L.str.334, 15

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"The active channel"
	.size	.L.str.335, 19

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"gimp-image-set-active-channel"
	.size	.L.str.336, 30

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"Sets the specified image's active channel."
	.size	.L.str.337, 43

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"If the channel exists, it is set as the active channel in the image. Any previous active channel or channel is set to inactive. An exception is a previously existing floating selection, in which case this procedure will return an execution error."
	.size	.L.str.338, 247

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"The new image active channel"
	.size	.L.str.339, 29

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"gimp-image-get-active-vectors"
	.size	.L.str.340, 30

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"Returns the specified image's active vectors."
	.size	.L.str.341, 46

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"If there is an active path, its ID will be returned, otherwise, -1."
	.size	.L.str.342, 68

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"active-vectors"
	.size	.L.str.343, 15

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"active vectors"
	.size	.L.str.344, 15

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"The active vectors"
	.size	.L.str.345, 19

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"gimp-image-set-active-vectors"
	.size	.L.str.346, 30

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"Sets the specified image's active vectors."
	.size	.L.str.347, 43

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"If the path exists, it is set as the active path in the image."
	.size	.L.str.348, 63

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"The new image active vectors"
	.size	.L.str.349, 29

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"gimp-image-get-selection"
	.size	.L.str.350, 25

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"Returns the specified image's selection."
	.size	.L.str.351, 41

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"This will always return a valid ID for a selection -- which is represented as a channel internally."
	.size	.L.str.352, 100

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"selection"
	.size	.L.str.353, 10

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"The selection channel"
	.size	.L.str.354, 22

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"gimp-image-get-component-active"
	.size	.L.str.355, 32

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"Returns if the specified image's image component is active."
	.size	.L.str.356, 60

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"This procedure returns if the specified image's image component (i.e. Red, Green, Blue intensity channels in an RGB image) is active or inactive -- whether or not it can be modified. If the specified component is not valid for the image type, an error is returned."
	.size	.L.str.357, 265

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"component"
	.size	.L.str.358, 10

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"The image component"
	.size	.L.str.359, 20

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"active"
	.size	.L.str.360, 7

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"Component is active"
	.size	.L.str.361, 20

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"gimp-image-set-component-active"
	.size	.L.str.362, 32

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"Sets if the specified image's image component is active."
	.size	.L.str.363, 57

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"This procedure sets if the specified image's image component (i.e. Red, Green, Blue intensity channels in an RGB image) is active or inactive -- whether or not it can be modified. If the specified component is not valid for the image type, an error is returned."
	.size	.L.str.364, 262

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"gimp-image-get-component-visible"
	.size	.L.str.365, 33

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"Returns if the specified image's image component is visible."
	.size	.L.str.366, 61

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"This procedure returns if the specified image's image component (i.e. Red, Green, Blue intensity channels in an RGB image) is visible or invisible -- whether or not it can be seen. If the specified component is not valid for the image type, an error is returned."
	.size	.L.str.367, 263

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"visible"
	.size	.L.str.368, 8

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"Component is visible"
	.size	.L.str.369, 21

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"gimp-image-set-component-visible"
	.size	.L.str.370, 33

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"Sets if the specified image's image component is visible."
	.size	.L.str.371, 58

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"This procedure sets if the specified image's image component (i.e. Red, Green, Blue intensity channels in an RGB image) is visible or invisible -- whether or not it can be seen. If the specified component is not valid for the image type, an error is returned."
	.size	.L.str.372, 260

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"gimp-image-get-filename"
	.size	.L.str.373, 24

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"Returns the specified image's filename."
	.size	.L.str.374, 40

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"This procedure returns the specified image's filename in the filesystem encoding. The image has a filename only if it was loaded or imported from a file or has since been saved or exported. Otherwise, this function returns %NULL. See also 'gimp-image-get-uri'."
	.size	.L.str.375, 261

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"filename"
	.size	.L.str.376, 9

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"The filename"
	.size	.L.str.377, 13

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	"gimp-image-set-filename"
	.size	.L.str.378, 24

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"Sets the specified image's filename."
	.size	.L.str.379, 37

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"This procedure sets the specified image's filename. The filename should be in the filesystem encoding."
	.size	.L.str.380, 103

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"The new image filename"
	.size	.L.str.381, 23

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"gimp-image-get-uri"
	.size	.L.str.382, 19

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"Returns the URI for the specified image."
	.size	.L.str.383, 41

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	"This procedure returns the URI associated with the specified image. The image has an URI only if it was loaded or imported from a file or has since been saved or exported. Otherwise, this function returns %NULL. See also gimp-image-get-imported-uri to get the URI of the current file if it was imported from a non-GIMP file format and not yet saved, or gimp-image-get-exported-uri if the image has been exported to a non-GIMP file format."
	.size	.L.str.384, 439

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"2009"
	.size	.L.str.385, 5

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"uri"
	.size	.L.str.386, 4

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"The URI"
	.size	.L.str.387, 8

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"gimp-image-get-xcf-uri"
	.size	.L.str.388, 23

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"Returns the XCF URI for the specified image."
	.size	.L.str.389, 45

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"This procedure returns the XCF URI associated with the image. If there is no such URI, this procedure returns %NULL."
	.size	.L.str.390, 117

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"Eric Grivel <gimp@lumenssolutions.com>"
	.size	.L.str.391, 39

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"Eric Grivel"
	.size	.L.str.392, 12

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"2011"
	.size	.L.str.393, 5

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	"The imported URI"
	.size	.L.str.394, 17

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"gimp-image-get-imported-uri"
	.size	.L.str.395, 28

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"Returns the imported URI for the specified image."
	.size	.L.str.396, 50

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"This procedure returns the URI associated with the specified image if the image was imported from a non-native Gimp format. If the image was not imported, or has since been saved in the native Gimp format, this procedure returns %NULL."
	.size	.L.str.397, 236

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"gimp-image-get-exported-uri"
	.size	.L.str.398, 28

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"Returns the exported URI for the specified image."
	.size	.L.str.399, 50

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"This procedure returns the URI associated with the specified image if the image was exported a non-native GIMP format. If the image was not exported, this procedure returns %NULL."
	.size	.L.str.400, 180

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	"The exported URI"
	.size	.L.str.401, 17

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	"gimp-image-get-name"
	.size	.L.str.402, 20

	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	"Returns the specified image's name."
	.size	.L.str.403, 36

	.type	.L.str.404,@object      # @.str.404
.L.str.404:
	.asciz	"This procedure returns the image's name. If the image has a filename or an URI, then the returned name contains the filename's or URI's base name (the last component of the path). Otherwise it is the translated string \"Untitled\". The returned name is formatted like the image name in the image window title, it may contain '[]', '(imported)' etc. and should only be used to label user interface elements. Never use it to construct filenames."
	.size	.L.str.404, 442

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"name"
	.size	.L.str.405, 5

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"The name"
	.size	.L.str.406, 9

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"gimp-image-get-resolution"
	.size	.L.str.407, 26

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"Returns the specified image's resolution."
	.size	.L.str.408, 42

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"This procedure returns the specified image's resolution in dots per inch. This value is independent of any of the layers in this image."
	.size	.L.str.409, 136

	.type	.L.str.410,@object      # @.str.410
.L.str.410:
	.asciz	"Austin Donnelly"
	.size	.L.str.410, 16

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"xresolution"
	.size	.L.str.411, 12

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"The resolution in the x-axis, in dots per inch"
	.size	.L.str.412, 47

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"yresolution"
	.size	.L.str.413, 12

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"The resolution in the y-axis, in dots per inch"
	.size	.L.str.414, 47

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"gimp-image-set-resolution"
	.size	.L.str.415, 26

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"Sets the specified image's resolution."
	.size	.L.str.416, 39

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"This procedure sets the specified image's resolution in dots per inch. This value is independent of any of the layers in this image. No scaling or resizing is performed."
	.size	.L.str.417, 170

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"The new image resolution in the x-axis, in dots per inch"
	.size	.L.str.418, 57

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"The new image resolution in the y-axis, in dots per inch"
	.size	.L.str.419, 57

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"gimp-image-get-unit"
	.size	.L.str.420, 20

	.type	.L.str.421,@object      # @.str.421
.L.str.421:
	.asciz	"Returns the specified image's unit."
	.size	.L.str.421, 36

	.type	.L.str.422,@object      # @.str.422
.L.str.422:
	.asciz	"This procedure returns the specified image's unit. This value is independent of any of the layers in this image. See the gimp_unit_*() procedure definitions for the valid range of unit IDs and a description of the unit system."
	.size	.L.str.422, 227

	.type	.L.str.423,@object      # @.str.423
.L.str.423:
	.asciz	"unit"
	.size	.L.str.423, 5

	.type	.L.str.424,@object      # @.str.424
.L.str.424:
	.asciz	"The unit"
	.size	.L.str.424, 9

	.type	.L.str.425,@object      # @.str.425
.L.str.425:
	.asciz	"gimp-image-set-unit"
	.size	.L.str.425, 20

	.type	.L.str.426,@object      # @.str.426
.L.str.426:
	.asciz	"Sets the specified image's unit."
	.size	.L.str.426, 33

	.type	.L.str.427,@object      # @.str.427
.L.str.427:
	.asciz	"This procedure sets the specified image's unit. No scaling or resizing is performed. This value is independent of any of the layers in this image. See the gimp_unit_*() procedure definitions for the valid range of unit IDs and a description of the unit system."
	.size	.L.str.427, 261

	.type	.L.str.428,@object      # @.str.428
.L.str.428:
	.asciz	"The new image unit"
	.size	.L.str.428, 19

	.type	.L.str.429,@object      # @.str.429
.L.str.429:
	.asciz	"gimp-image-get-tattoo-state"
	.size	.L.str.429, 28

	.type	.L.str.430,@object      # @.str.430
.L.str.430:
	.asciz	"Returns the tattoo state associated with the image."
	.size	.L.str.430, 52

	.type	.L.str.431,@object      # @.str.431
.L.str.431:
	.asciz	"This procedure returns the tattoo state of the image. Use only by save/load plugins that wish to preserve an images tattoo state. Using this function at other times will produce unexpected results."
	.size	.L.str.431, 198

	.type	.L.str.432,@object      # @.str.432
.L.str.432:
	.asciz	"2000"
	.size	.L.str.432, 5

	.type	.L.str.433,@object      # @.str.433
.L.str.433:
	.asciz	"tattoo-state"
	.size	.L.str.433, 13

	.type	.L.str.434,@object      # @.str.434
.L.str.434:
	.asciz	"tattoo state"
	.size	.L.str.434, 13

	.type	.L.str.435,@object      # @.str.435
.L.str.435:
	.asciz	"The tattoo state"
	.size	.L.str.435, 17

	.type	.L.str.436,@object      # @.str.436
.L.str.436:
	.asciz	"gimp-image-set-tattoo-state"
	.size	.L.str.436, 28

	.type	.L.str.437,@object      # @.str.437
.L.str.437:
	.asciz	"Set the tattoo state associated with the image."
	.size	.L.str.437, 48

	.type	.L.str.438,@object      # @.str.438
.L.str.438:
	.asciz	"This procedure sets the tattoo state of the image. Use only by save/load plugins that wish to preserve an images tattoo state. Using this function at other times will produce unexpected results. A full check of uniqueness of states in layers, channels and paths will be performed by this procedure and a execution failure will be returned if this fails. A failure will also be returned if the new tattoo state value is less than the maximum tattoo value from all of the tattoos from the paths, layers and channels. After the image data has been loaded and all the tattoos have been set then this is the last procedure that should be called. If effectively does a status check on the tattoo values that have been set to make sure that all is OK."
	.size	.L.str.438, 745

	.type	.L.str.439,@object      # @.str.439
.L.str.439:
	.asciz	"The new image tattoo state"
	.size	.L.str.439, 27

	.type	.L.str.440,@object      # @.str.440
.L.str.440:
	.asciz	"gimp-image-get-layer-by-tattoo"
	.size	.L.str.440, 31

	.type	.L.str.441,@object      # @.str.441
.L.str.441:
	.asciz	"Find a layer with a given tattoo in an image."
	.size	.L.str.441, 46

	.type	.L.str.442,@object      # @.str.442
.L.str.442:
	.asciz	"This procedure returns the layer with the given tattoo in the specified image."
	.size	.L.str.442, 79

	.type	.L.str.443,@object      # @.str.443
.L.str.443:
	.asciz	"Jay Cox"
	.size	.L.str.443, 8

	.type	.L.str.444,@object      # @.str.444
.L.str.444:
	.asciz	"tattoo"
	.size	.L.str.444, 7

	.type	.L.str.445,@object      # @.str.445
.L.str.445:
	.asciz	"The tattoo of the layer to find"
	.size	.L.str.445, 32

	.type	.L.str.446,@object      # @.str.446
.L.str.446:
	.asciz	"The layer with the specified tattoo"
	.size	.L.str.446, 36

	.type	.L.str.447,@object      # @.str.447
.L.str.447:
	.asciz	"gimp-image-get-channel-by-tattoo"
	.size	.L.str.447, 33

	.type	.L.str.448,@object      # @.str.448
.L.str.448:
	.asciz	"Find a channel with a given tattoo in an image."
	.size	.L.str.448, 48

	.type	.L.str.449,@object      # @.str.449
.L.str.449:
	.asciz	"This procedure returns the channel with the given tattoo in the specified image."
	.size	.L.str.449, 81

	.type	.L.str.450,@object      # @.str.450
.L.str.450:
	.asciz	"The tattoo of the channel to find"
	.size	.L.str.450, 34

	.type	.L.str.451,@object      # @.str.451
.L.str.451:
	.asciz	"The channel with the specified tattoo"
	.size	.L.str.451, 38

	.type	.L.str.452,@object      # @.str.452
.L.str.452:
	.asciz	"gimp-image-get-vectors-by-tattoo"
	.size	.L.str.452, 33

	.type	.L.str.453,@object      # @.str.453
.L.str.453:
	.asciz	"Find a vectors with a given tattoo in an image."
	.size	.L.str.453, 48

	.type	.L.str.454,@object      # @.str.454
.L.str.454:
	.asciz	"This procedure returns the vectors with the given tattoo in the specified image."
	.size	.L.str.454, 81

	.type	.L.str.455,@object      # @.str.455
.L.str.455:
	.asciz	"The tattoo of the vectors to find"
	.size	.L.str.455, 34

	.type	.L.str.456,@object      # @.str.456
.L.str.456:
	.asciz	"The vectors with the specified tattoo"
	.size	.L.str.456, 38

	.type	.L.str.457,@object      # @.str.457
.L.str.457:
	.asciz	"gimp-image-get-layer-by-name"
	.size	.L.str.457, 29

	.type	.L.str.458,@object      # @.str.458
.L.str.458:
	.asciz	"Find a layer with a given name in an image."
	.size	.L.str.458, 44

	.type	.L.str.459,@object      # @.str.459
.L.str.459:
	.asciz	"This procedure returns the layer with the given name in the specified image."
	.size	.L.str.459, 77

	.type	.L.str.460,@object      # @.str.460
.L.str.460:
	.asciz	"The name of the layer to find"
	.size	.L.str.460, 30

	.type	.L.str.461,@object      # @.str.461
.L.str.461:
	.asciz	"The layer with the specified name"
	.size	.L.str.461, 34

	.type	.L.str.462,@object      # @.str.462
.L.str.462:
	.asciz	"gimp-image-get-channel-by-name"
	.size	.L.str.462, 31

	.type	.L.str.463,@object      # @.str.463
.L.str.463:
	.asciz	"Find a channel with a given name in an image."
	.size	.L.str.463, 46

	.type	.L.str.464,@object      # @.str.464
.L.str.464:
	.asciz	"This procedure returns the channel with the given name in the specified image."
	.size	.L.str.464, 79

	.type	.L.str.465,@object      # @.str.465
.L.str.465:
	.asciz	"The name of the channel to find"
	.size	.L.str.465, 32

	.type	.L.str.466,@object      # @.str.466
.L.str.466:
	.asciz	"The channel with the specified name"
	.size	.L.str.466, 36

	.type	.L.str.467,@object      # @.str.467
.L.str.467:
	.asciz	"gimp-image-get-vectors-by-name"
	.size	.L.str.467, 31

	.type	.L.str.468,@object      # @.str.468
.L.str.468:
	.asciz	"Find a vectors with a given name in an image."
	.size	.L.str.468, 46

	.type	.L.str.469,@object      # @.str.469
.L.str.469:
	.asciz	"This procedure returns the vectors with the given name in the specified image."
	.size	.L.str.469, 79

	.type	.L.str.470,@object      # @.str.470
.L.str.470:
	.asciz	"The name of the vectors to find"
	.size	.L.str.470, 32

	.type	.L.str.471,@object      # @.str.471
.L.str.471:
	.asciz	"The vectors with the specified name"
	.size	.L.str.471, 36

	.type	.L.str.472,@object      # @.str.472
.L.str.472:
	.asciz	"gimp-image-attach-parasite"
	.size	.L.str.472, 27

	.type	.L.str.473,@object      # @.str.473
.L.str.473:
	.asciz	"Add a parasite to an image."
	.size	.L.str.473, 28

	.type	.L.str.474,@object      # @.str.474
.L.str.474:
	.asciz	"This procedure attaches a parasite to an image. It has no return values."
	.size	.L.str.474, 73

	.type	.L.str.475,@object      # @.str.475
.L.str.475:
	.asciz	"parasite"
	.size	.L.str.475, 9

	.type	.L.str.476,@object      # @.str.476
.L.str.476:
	.asciz	"The parasite to attach to an image"
	.size	.L.str.476, 35

	.type	.L.str.477,@object      # @.str.477
.L.str.477:
	.asciz	"gimp-image-detach-parasite"
	.size	.L.str.477, 27

	.type	.L.str.478,@object      # @.str.478
.L.str.478:
	.asciz	"Removes a parasite from an image."
	.size	.L.str.478, 34

	.type	.L.str.479,@object      # @.str.479
.L.str.479:
	.asciz	"This procedure detaches a parasite from an image. It has no return values."
	.size	.L.str.479, 75

	.type	.L.str.480,@object      # @.str.480
.L.str.480:
	.asciz	"The name of the parasite to detach from an image."
	.size	.L.str.480, 50

	.type	.L.str.481,@object      # @.str.481
.L.str.481:
	.asciz	"gimp-image-get-parasite"
	.size	.L.str.481, 24

	.type	.L.str.482,@object      # @.str.482
.L.str.482:
	.asciz	"Look up a parasite in an image"
	.size	.L.str.482, 31

	.type	.L.str.483,@object      # @.str.483
.L.str.483:
	.asciz	"Finds and returns the parasite that was previously attached to an image."
	.size	.L.str.483, 73

	.type	.L.str.484,@object      # @.str.484
.L.str.484:
	.asciz	"The name of the parasite to find"
	.size	.L.str.484, 33

	.type	.L.str.485,@object      # @.str.485
.L.str.485:
	.asciz	"The found parasite"
	.size	.L.str.485, 19

	.type	.L.str.486,@object      # @.str.486
.L.str.486:
	.asciz	"gimp-image-get-parasite-list"
	.size	.L.str.486, 29

	.type	.L.str.487,@object      # @.str.487
.L.str.487:
	.asciz	"List all parasites."
	.size	.L.str.487, 20

	.type	.L.str.488,@object      # @.str.488
.L.str.488:
	.asciz	"Returns a list of all currently attached parasites."
	.size	.L.str.488, 52

	.type	.L.str.489,@object      # @.str.489
.L.str.489:
	.asciz	"Marc Lehmann"
	.size	.L.str.489, 13

	.type	.L.str.490,@object      # @.str.490
.L.str.490:
	.asciz	"num-parasites"
	.size	.L.str.490, 14

	.type	.L.str.491,@object      # @.str.491
.L.str.491:
	.asciz	"num parasites"
	.size	.L.str.491, 14

	.type	.L.str.492,@object      # @.str.492
.L.str.492:
	.asciz	"The number of attached parasites"
	.size	.L.str.492, 33

	.type	.L.str.493,@object      # @.str.493
.L.str.493:
	.asciz	"parasites"
	.size	.L.str.493, 10

	.type	.L.str.494,@object      # @.str.494
.L.str.494:
	.asciz	"The names of currently attached parasites"
	.size	.L.str.494, 42

	.type	.L.str.495,@object      # @.str.495
.L.str.495:
	.asciz	"Scaling"
	.size	.L.str.495, 8

	.type	.L.str.496,@object      # @.str.496
.L.str.496:
	.asciz	"Rotating"
	.size	.L.str.496, 9

	.type	.Limage_pick_color_invoker.color,@object # @image_pick_color_invoker.color
	.section	.rodata,"a",@progbits
	.align	8
.Limage_pick_color_invoker.color:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Limage_pick_color_invoker.color, 32

	.type	.L.str.497,@object      # @.str.497
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.497:
	.asciz	"Image resolution is out of bounds, using the default resolution instead."
	.size	.L.str.497, 73


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
