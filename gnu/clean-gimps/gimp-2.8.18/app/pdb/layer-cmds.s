	.text
	.file	"layer-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	register_layer_procs
	.align	16, 0x90
	.type	register_layer_procs,@function
register_layer_procs:                   # @register_layer_procs
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
	subq	$1608, %rsp             # imm = 0x648
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$layer_new_invoker, %rax
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
	movl	$1, %r8d
	movl	$262144, %r9d           # imm = 0x40000
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$227, (%rsp)
	movl	%r11d, -72(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %rdx
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_type_get_type
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-124(%rbp), %r9d        # 4-byte Reload
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%r11d, -128(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.16, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_new_from_visible_invoker, %rdi
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
	movabsq	$.L.str.24, %r8
	movabsq	$.L.str.25, %r9
	movabsq	$.L.str.26, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.27, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_image_id
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -220(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-220(%rbp), %r9d        # 4-byte Reload
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%r11d, -224(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_new_from_drawable_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -256(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.34, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_image_id
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_group_new_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	movabsq	$.L.str.41, %rcx
	movabsq	$.L.str.42, %r8
	movabsq	$.L.str.43, %r9
	movabsq	$.L.str.44, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.45, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.46, %rdi
	movabsq	$.L.str.47, %rsi
	movabsq	$.L.str.48, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_copy_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
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
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -336(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.52, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.53, %rdi
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.55, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r10
	movq	32(%r10), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_add_alpha_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.57, %rdx
	movabsq	$.L.str.58, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -384(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_flatten_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.60, %rsi
	movabsq	$.L.str.61, %rdx
	movabsq	$.L.str.62, %rcx
	movabsq	$.L.str.63, %r8
	movabsq	$.L.str.64, %r9
	movabsq	$.L.str.65, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_scale_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.66, %rsi
	movabsq	$.L.str.67, %rdx
	movabsq	$.L.str.68, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -440(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rdi
	movabsq	$.L.str.70, %rsi
	movabsq	$.L.str.71, %rdx
	movl	$1, %r8d
	movl	$262144, %r9d           # imm = 0x40000
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -452(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-452(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movl	%r11d, -468(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.72, %rdi
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.74, %rdx
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -472(%rbp)        # 4-byte Spill
	movl	-472(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -476(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.75, %rdi
	movabsq	$.L.str.76, %rsi
	movabsq	$.L.str.77, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_scale_full_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.78, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.78, %rsi
	movabsq	$.L.str.79, %rax
	movabsq	$.L.str.24, %r8
	movabsq	$.L.str.25, %r9
	movabsq	$.L.str.26, %rdx
	movabsq	$.L.str.66, %rdi
	movq	-24(%rbp), %r10
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-512(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rdi
	movabsq	$.L.str.70, %rsi
	movabsq	$.L.str.71, %rdx
	movl	$1, %r8d
	movl	$262144, %r9d           # imm = 0x40000
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -532(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-532(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movl	%r11d, -548(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.72, %rdi
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.74, %rdx
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -552(%rbp)        # 4-byte Spill
	movl	-552(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -556(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.75, %rdi
	movabsq	$.L.str.76, %rsi
	movabsq	$.L.str.77, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.80, %rdx
	movabsq	$.L.str.81, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-592(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_resize_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.82, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.82, %rsi
	movabsq	$.L.str.83, %rdx
	movabsq	$.L.str.84, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -616(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rdi
	movabsq	$.L.str.70, %rsi
	movabsq	$.L.str.71, %rdx
	movl	$1, %r8d
	movl	$262144, %r9d           # imm = 0x40000
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -628(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-628(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movl	%r11d, -644(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.72, %rdi
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.74, %rdx
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -648(%rbp)        # 4-byte Spill
	movl	-648(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -652(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.85, %rax
	movabsq	$.L.str.86, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -676(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.87, %rax
	movabsq	$.L.str.88, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -692(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_resize_to_image_size_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.89, %rsi
	movabsq	$.L.str.90, %rdx
	movabsq	$.L.str.91, %rcx
	movabsq	$.L.str.92, %rax
	movabsq	$.L.str.93, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -720(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.94, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_translate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
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
	movq	-24(%rbp), %rbx
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-744(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -752(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.85, %rax
	movabsq	$.L.str.98, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -772(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.87, %rax
	movabsq	$.L.str.99, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -788(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_set_offsets_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.100, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.100, %rsi
	movabsq	$.L.str.101, %rdx
	movabsq	$.L.str.102, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-808(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -816(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.85, %rax
	movabsq	$.L.str.98, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -836(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.87, %rax
	movabsq	$.L.str.99, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -852(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_create_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.103, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.103, %rsi
	movabsq	$.L.str.104, %rdx
	movabsq	$.L.str.105, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
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
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.106, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	callq	gimp_add_mask_type_get_type
	movabsq	$.L.str.107, %rdi
	movabsq	$.L.str.108, %rsi
	movabsq	$.L.str.109, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.110, %rax
	movabsq	$.L.str.111, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -904(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_mask_id
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_get_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.112, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.112, %rsi
	movabsq	$.L.str.113, %rdx
	movabsq	$.L.str.114, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-920(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -928(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.110, %rax
	movabsq	$.L.str.115, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_mask_id
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_from_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.116, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.116, %rsi
	movabsq	$.L.str.117, %rdx
	movabsq	$.L.str.118, %rcx
	movabsq	$.L.str.119, %rax
	movabsq	$.L.str.120, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -960(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-960(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -968(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.110, %rax
	movabsq	$.L.str.121, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_mask_id
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.122, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -984(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_add_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.123, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.123, %rsi
	movabsq	$.L.str.124, %rdx
	movabsq	$.L.str.125, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1008(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.126, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.110, %rax
	movabsq	$.L.str.127, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_mask_id
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_remove_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movabsq	$.L.str.130, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1048(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.131, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	callq	gimp_mask_apply_mode_get_type
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.132, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_is_floating_sel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.133, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.133, %rsi
	movabsq	$.L.str.134, %rdx
	movabsq	$.L.str.135, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1088(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.136, %rdi
	movabsq	$.L.str.137, %rsi
	movabsq	$.L.str.138, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_get_lock_alpha_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.139, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.139, %rsi
	movabsq	$.L.str.140, %rdx
	movabsq	$.L.str.141, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1128(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.142, %rdi
	movabsq	$.L.str.143, %rsi
	movabsq	$.L.str.144, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_set_lock_alpha_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.145, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.145, %rsi
	movabsq	$.L.str.146, %rdx
	movabsq	$.L.str.147, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1168(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.142, %rdi
	movabsq	$.L.str.143, %rsi
	movabsq	$.L.str.148, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_get_apply_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.149, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.149, %rsi
	movabsq	$.L.str.150, %rdx
	movabsq	$.L.str.151, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1208(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1216(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.152, %rdi
	movabsq	$.L.str.153, %rsi
	movabsq	$.L.str.154, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_set_apply_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
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
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1248(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1256(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.152, %rdi
	movabsq	$.L.str.153, %rsi
	movabsq	$.L.str.158, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_get_show_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.159, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.159, %rsi
	movabsq	$.L.str.160, %rdx
	movabsq	$.L.str.161, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1288(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.162, %rdi
	movabsq	$.L.str.163, %rsi
	movabsq	$.L.str.164, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_set_show_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.165, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.165, %rsi
	movabsq	$.L.str.166, %rdx
	movabsq	$.L.str.167, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1320(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1320(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1328(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1336(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.162, %rdi
	movabsq	$.L.str.163, %rsi
	movabsq	$.L.str.168, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_get_edit_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.169, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.169, %rsi
	movabsq	$.L.str.170, %rdx
	movabsq	$.L.str.171, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1360(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1360(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1368(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1376(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.172, %rdi
	movabsq	$.L.str.173, %rsi
	movabsq	$.L.str.174, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_set_edit_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.175, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.175, %rsi
	movabsq	$.L.str.176, %rdx
	movabsq	$.L.str.177, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1400(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1400(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1408(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1416(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.172, %rdi
	movabsq	$.L.str.173, %rsi
	movabsq	$.L.str.178, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_get_opacity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.179, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.179, %rsi
	movabsq	$.L.str.180, %rdx
	movabsq	$.L.str.181, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1440(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1440(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1448(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1456(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.16, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1464(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1472(%rbp)      # 8-byte Spill
	movsd	-1472(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_set_opacity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.182, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.182, %rsi
	movabsq	$.L.str.183, %rdx
	movabsq	$.L.str.184, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1488(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1488(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1496(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1504(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1504(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.185, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1512(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1520(%rbp)      # 8-byte Spill
	movsd	-1520(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_get_mode_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.186, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.186, %rsi
	movabsq	$.L.str.187, %rdx
	movabsq	$.L.str.188, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1536(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1536(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1544(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1552(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -1560(%rbp)       # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$layer_set_mode_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.189, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.189, %rsi
	movabsq	$.L.str.190, %rdx
	movabsq	$.L.str.191, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1576(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1576(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1584(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1592(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-1592(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -1600(%rbp)       # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.192, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1608, %rsp             # imm = 0x648
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_layer_procs, .Lfunc_end0-register_layer_procs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	layer_new_invoker,@function
layer_new_invoker:                      # @layer_new_invoker
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -120(%rbp)
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_string
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -108(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_4
# BB#1:                                 # %if.then
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	movq	-96(%rbp), %r8
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movl	-108(%rbp), %r9d
	movaps	%xmm1, %xmm0
	callq	gimp_layer_new
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then.21
	movl	$0, -52(%rbp)
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.22
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB1_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
.LBB1_7:                                # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.26
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB1_9:                                # %if.end.29
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	layer_new_invoker, .Lfunc_end1-layer_new_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	layer_new_from_visible_invoker,@function
layer_new_from_visible_invoker:         # @layer_new_from_visible_invoker
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
	callq	gimp_value_get_image
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_pickable_flush
	movq	-104(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_image_base_type_with_alpha
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_layer_new_from_tiles
	movq	%rax, -96(%rbp)
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB2_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_5:                                # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.16
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB2_7:                                # %if.end.19
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	layer_new_from_visible_invoker, .Lfunc_end2-layer_new_from_visible_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_new_from_drawable_invoker,@function
layer_new_from_drawable_invoker:        # @layer_new_from_drawable_invoker
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
	subq	$176, %rsp
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
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_image
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_15
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then.6
	movl	$0, -124(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.9
	movl	$1, -124(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.10
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.12
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.14
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.17
	callq	gimp_layer_get_type
	movq	%rax, -96(%rbp)
.LBB3_11:                               # %if.end.19
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_convert
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB3_13
# BB#12:                                # %if.then.24
	movq	-104(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.27
	movl	$0, -52(%rbp)
.LBB3_14:                               # %if.end.28
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.29
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB3_17
# BB#16:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB3_18
.LBB3_18:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.33
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB3_20:                               # %if.end.36
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	layer_new_from_drawable_invoker, .Lfunc_end3-layer_new_from_drawable_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_group_new_invoker,@function
layer_group_new_invoker:                # @layer_group_new_invoker
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
	callq	gimp_group_layer_new
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
	callq	gimp_value_set_layer
.LBB4_9:                                # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	layer_group_new_invoker, .Lfunc_end4-layer_group_new_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_copy_invoker,@function
layer_copy_invoker:                     # @layer_copy_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_7
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_item_duplicate
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB5_5
# BB#2:                                 # %if.then.10
	cmpl	$0, -76(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then.12
	movq	-88(%rbp), %rdi
	callq	gimp_layer_add_alpha
.LBB5_4:                                # %if.end
	jmp	.LBB5_6
.LBB5_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_6:                                # %if.end.13
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.14
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB5_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB5_10
.LBB5_10:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.18
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB5_12:                               # %if.end.21
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	layer_copy_invoker, .Lfunc_end5-layer_copy_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_add_alpha_invoker,@function
layer_add_alpha_invoker:                # @layer_add_alpha_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_6
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_writable
	cmpl	$0, %eax
	je	.LBB6_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.9
	movq	-64(%rbp), %rdi
	callq	gimp_layer_add_alpha
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB6_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_9
.LBB6_9:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	layer_add_alpha_invoker, .Lfunc_end6-layer_add_alpha_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_flatten_invoker,@function
layer_flatten_invoker:                  # @layer_flatten_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_6
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_writable
	cmpl	$0, %eax
	je	.LBB7_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.9
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_layer_flatten
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB7_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_9
.LBB7_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_9
.LBB7_9:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	layer_flatten_invoker, .Lfunc_end7-layer_flatten_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_scale_invoker,@function
layer_scale_invoker:                    # @layer_scale_invoker
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
	callq	gimp_value_get_layer
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
	callq	g_value_get_boolean
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_9
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB8_7
# BB#2:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_4
# BB#3:                                 # %if.then.18
	movabsq	$.L.str.193, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB8_4:                                # %if.end
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	-88(%rbp), %rdi
	movl	388(%rdi), %ecx
	movq	-32(%rbp), %r8
	movl	-76(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_item_scale_by_origin
	cmpq	$0, -32(%rbp)
	je	.LBB8_6
# BB#5:                                 # %if.then.24
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB8_6:                                # %if.end.25
	jmp	.LBB8_8
.LBB8_7:                                # %if.else
	movl	$0, -52(%rbp)
.LBB8_8:                                # %if.end.26
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.27
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB8_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_12:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	layer_scale_invoker, .Lfunc_end8-layer_scale_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_scale_full_invoker,@function
layer_scale_full_invoker:               # @layer_scale_full_invoker
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
	callq	gimp_value_get_layer
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
	callq	g_value_get_boolean
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_9
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
	je	.LBB9_7
# BB#2:                                 # %if.then.17
	cmpq	$0, -32(%rbp)
	je	.LBB9_4
# BB#3:                                 # %if.then.19
	movabsq	$.L.str.193, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB9_4:                                # %if.end
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-80(%rbp), %ecx
	movq	-32(%rbp), %r8
	movl	-76(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_item_scale_by_origin
	cmpq	$0, -32(%rbp)
	je	.LBB9_6
# BB#5:                                 # %if.then.25
	movq	-32(%rbp), %rdi
	callq	gimp_progress_end
.LBB9_6:                                # %if.end.26
	jmp	.LBB9_8
.LBB9_7:                                # %if.else
	movl	$0, -52(%rbp)
.LBB9_8:                                # %if.end.27
	jmp	.LBB9_9
.LBB9_9:                                # %if.end.28
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB9_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB9_12
.LBB9_12:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	layer_scale_full_invoker, .Lfunc_end9-layer_scale_full_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_resize_invoker,@function
layer_resize_invoker:                   # @layer_resize_invoker
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
	callq	gimp_value_get_layer
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
	je	.LBB10_5
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
	je	.LBB10_3
# BB#2:                                 # %if.then.17
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_item_resize
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %if.end.20
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
	.size	layer_resize_invoker, .Lfunc_end10-layer_resize_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_resize_to_image_size_invoker,@function
layer_resize_to_image_size_invoker:     # @layer_resize_to_image_size_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB11_3
# BB#2:                                 # %if.then.5
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_layer_resize_to_image
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB11_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	layer_resize_to_image_size_invoker, .Lfunc_end11-layer_resize_to_image_size_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_translate_invoker,@function
layer_translate_invoker:                # @layer_translate_invoker
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
	callq	gimp_value_get_layer
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
	je	.LBB12_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB12_3
# BB#2:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_linked_translate
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_translate
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.16
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB12_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	layer_translate_invoker, .Lfunc_end12-layer_translate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_set_offsets_invoker,@function
layer_set_offsets_invoker:              # @layer_set_offsets_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_layer
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
	je	.LBB13_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-76(%rbp), %ecx
	movl	-68(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -68(%rbp)
	movl	-80(%rbp), %ecx
	movl	-72(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB13_3
# BB#2:                                 # %if.then.14
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_linked_translate
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_translate
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %if.end.19
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
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	layer_set_offsets_invoker, .Lfunc_end13-layer_set_offsets_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_create_mask_invoker,@function
layer_create_mask_invoker:              # @layer_create_mask_invoker
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
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_10
# BB#1:                                 # %if.then
	movq	$0, -96(%rbp)
	cmpl	$6, -76(%rbp)
	jne	.LBB14_5
# BB#2:                                 # %if.then.4
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB14_4
# BB#3:                                 # %if.then.10
	movl	$0, -52(%rbp)
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %if.end.11
	cmpl	$0, -52(%rbp)
	je	.LBB14_9
# BB#6:                                 # %if.then.13
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	movq	-96(%rbp), %rdx
	callq	gimp_layer_create_mask
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB14_8
# BB#7:                                 # %if.then.16
	movl	$0, -52(%rbp)
.LBB14_8:                               # %if.end.17
	jmp	.LBB14_9
.LBB14_9:                               # %if.end.18
	jmp	.LBB14_10
.LBB14_10:                              # %if.end.19
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB14_12
# BB#11:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB14_13
.LBB14_13:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_15
# BB#14:                                # %if.then.23
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer_mask
.LBB14_15:                              # %if.end.26
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	layer_create_mask_invoker, .Lfunc_end14-layer_create_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_get_mask_invoker,@function
layer_get_mask_invoker:                 # @layer_get_mask_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -80(%rbp)
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
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer_mask
.LBB15_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	layer_get_mask_invoker, .Lfunc_end15-layer_get_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_from_mask_invoker,@function
layer_from_mask_invoker:                # @layer_from_mask_invoker
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
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_layer_mask
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_layer_mask_get_layer
	movq	%rax, -80(%rbp)
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
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB16_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	layer_from_mask_invoker, .Lfunc_end16-layer_from_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_add_mask_invoker,@function
layer_add_mask_invoker:                 # @layer_add_mask_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_layer_mask
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_6
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pdb_item_is_floating
	cmpl	$0, %eax
	je	.LBB17_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB17_4
# BB#3:                                 # %if.then.15
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_layer_add_mask
	cmpq	-72(%rbp), %rax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB17_5
.LBB17_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB17_5:                               # %if.end
	jmp	.LBB17_6
.LBB17_6:                               # %if.end.17
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB17_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB17_9
.LBB17_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB17_9
.LBB17_9:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	layer_add_mask_invoker, .Lfunc_end17-layer_add_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_remove_mask_invoker,@function
layer_remove_mask_invoker:              # @layer_remove_mask_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_6
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	cmpl	$0, -68(%rbp)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB18_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB18_4
# BB#3:                                 # %if.then.10
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_layer_apply_mask
	jmp	.LBB18_5
.LBB18_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB18_5:                               # %if.end
	jmp	.LBB18_6
.LBB18_6:                               # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB18_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB18_9
.LBB18_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB18_9
.LBB18_9:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	layer_remove_mask_invoker, .Lfunc_end18-layer_remove_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_is_floating_sel_invoker,@function
layer_is_floating_sel_invoker:          # @layer_is_floating_sel_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	movl	%eax, -76(%rbp)
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB19_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB19_5
.LBB19_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB19_5
.LBB19_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB19_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	layer_is_floating_sel_invoker, .Lfunc_end19-layer_is_floating_sel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_get_lock_alpha_invoker,@function
layer_get_lock_alpha_invoker:           # @layer_get_lock_alpha_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_layer_get_lock_alpha
	movl	%eax, -76(%rbp)
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
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB20_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	layer_get_lock_alpha_invoker, .Lfunc_end20-layer_get_lock_alpha_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_set_lock_alpha_invoker,@function
layer_set_lock_alpha_invoker:           # @layer_set_lock_alpha_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB21_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_layer_can_lock_alpha
	cmpl	$0, %eax
	je	.LBB21_3
# BB#2:                                 # %if.then.6
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_layer_set_lock_alpha
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB21_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB21_8
.LBB21_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB21_8
.LBB21_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	layer_set_lock_alpha_invoker, .Lfunc_end21-layer_set_lock_alpha_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_get_apply_mask_invoker,@function
layer_get_apply_mask_invoker:           # @layer_get_apply_mask_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB22_3
# BB#2:                                 # %if.then.2
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_layer_mask_get_apply
	movl	%eax, -76(%rbp)
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movl	$0, -76(%rbp)
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB22_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB22_8
.LBB22_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB22_8
.LBB22_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB22_10:                              # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	layer_get_apply_mask_invoker, .Lfunc_end22-layer_get_apply_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_set_apply_mask_invoker,@function
layer_set_apply_mask_invoker:           # @layer_set_apply_mask_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB23_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB23_3
# BB#2:                                 # %if.then.5
	movl	$1, %edx
	movq	-64(%rbp), %rax
	movq	56(%rax), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_layer_mask_set_apply
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB23_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB23_8
.LBB23_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB23_8
.LBB23_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	layer_set_apply_mask_invoker, .Lfunc_end23-layer_set_apply_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_get_show_mask_invoker,@function
layer_get_show_mask_invoker:            # @layer_get_show_mask_invoker
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
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB24_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB24_3
# BB#2:                                 # %if.then.2
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_layer_mask_get_show
	movl	%eax, -76(%rbp)
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	movl	$0, -76(%rbp)
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB24_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB24_8
.LBB24_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB24_8
.LBB24_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB24_10:                              # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	layer_get_show_mask_invoker, .Lfunc_end24-layer_get_show_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_set_show_mask_invoker,@function
layer_set_show_mask_invoker:            # @layer_set_show_mask_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
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
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB25_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB25_3
# BB#2:                                 # %if.then.5
	movl	$1, %edx
	movq	-64(%rbp), %rax
	movq	56(%rax), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_layer_mask_set_show
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB25_4:                               # %if.end
	jmp	.LBB25_5
.LBB25_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB25_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB25_8
.LBB25_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB25_8
.LBB25_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	layer_set_show_mask_invoker, .Lfunc_end25-layer_set_show_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_get_edit_mask_invoker,@function
layer_get_edit_mask_invoker:            # @layer_get_edit_mask_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
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
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB26_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB26_3
# BB#2:                                 # %if.then.2
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_layer_mask_get_edit
	movl	%eax, -76(%rbp)
	jmp	.LBB26_4
.LBB26_3:                               # %if.else
	movl	$0, -76(%rbp)
.LBB26_4:                               # %if.end
	jmp	.LBB26_5
.LBB26_5:                               # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB26_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB26_8
.LBB26_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB26_8
.LBB26_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB26_10:                              # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	layer_get_edit_mask_invoker, .Lfunc_end26-layer_get_edit_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_set_edit_mask_invoker,@function
layer_set_edit_mask_invoker:            # @layer_set_edit_mask_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
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
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB27_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB27_3
# BB#2:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	56(%rax), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_layer_mask_set_edit
	jmp	.LBB27_4
.LBB27_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB27_4:                               # %if.end
	jmp	.LBB27_5
.LBB27_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB27_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB27_8
.LBB27_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB27_8
.LBB27_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	layer_set_edit_mask_invoker, .Lfunc_end27-layer_set_edit_mask_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	layer_get_opacity_invoker,@function
layer_get_opacity_invoker:              # @layer_get_opacity_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_layer_get_opacity
	movsd	.LCPI28_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB28_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB28_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB28_5
.LBB28_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB28_5
.LBB28_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB28_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB28_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	layer_get_opacity_invoker, .Lfunc_end28-layer_get_opacity_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	layer_set_opacity_invoker,@function
layer_set_opacity_invoker:              # @layer_set_opacity_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
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
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_layer_set_opacity
.LBB29_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB29_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB29_5
.LBB29_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB29_5
.LBB29_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	layer_set_opacity_invoker, .Lfunc_end29-layer_set_opacity_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_get_mode_invoker,@function
layer_get_mode_invoker:                 # @layer_get_mode_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
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
	callq	gimp_value_get_layer
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_layer_get_mode
	movl	%eax, -76(%rbp)
.LBB30_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB30_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB30_5
.LBB30_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB30_5
.LBB30_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB30_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB30_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	layer_get_mode_invoker, .Lfunc_end30-layer_get_mode_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	layer_set_mode_invoker,@function
layer_set_mode_invoker:                 # @layer_set_mode_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
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
	callq	gimp_value_get_layer
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_layer_set_mode
.LBB31_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB31_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB31_5
.LBB31_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB31_5
.LBB31_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	layer_set_mode_invoker, .Lfunc_end31-layer_set_mode_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-layer-new"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Create a new layer."
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure creates a new layer with the specified width, height, and type. Name, opacity, and mode are also supplied parameters. The new layer still needs to be added to the image, as this is not automatic. Add the new layer with the 'gimp-image-insert-layer' command. Other attributes such as layer mask modes, and offsets should be set with explicit procedure calls."
	.size	.L.str.2, 373

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
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The image to which to add the layer"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"width"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The layer width"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"height"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The layer height"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"type"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"The layer type"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"name"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The layer name"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"opacity"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"The layer opacity"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"mode"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The layer combination mode"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"layer"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The newly created layer"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-layer-new-from-visible"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Create a new layer from what is visible in an image."
	.size	.L.str.22, 53

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"This procedure creates a new layer from what is visible in the given image. The new layer still needs to be added to the destination image, as this is not automatic. Add the new layer with the 'gimp-image-insert-layer' command. Other attributes such as layer mask modes, and offsets should be set with explicit procedure calls."
	.size	.L.str.23, 328

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.24, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Sven Neumann"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"2008"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"The source image from where the content is copied"
	.size	.L.str.27, 50

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"dest-image"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"dest image"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"The destination image to which to add the layer"
	.size	.L.str.30, 48

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-layer-new-from-drawable"
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Create a new layer by copying an existing drawable."
	.size	.L.str.32, 52

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"This procedure creates a new layer as a copy of the specified drawable. The new layer still needs to be added to the image, as this is not automatic. Add the new layer with the 'gimp-image-insert-layer' command. Other attributes such as layer mask modes, and offsets should be set with explicit procedure calls."
	.size	.L.str.33, 312

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"drawable"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"The source drawable from where the new layer is copied"
	.size	.L.str.35, 55

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"layer-copy"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"layer copy"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"The newly copied layer"
	.size	.L.str.38, 23

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-layer-group-new"
	.size	.L.str.39, 21

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Create a new layer group."
	.size	.L.str.40, 26

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"This procedure creates a new layer group. Attributes such as layer mode and opacity should be set with explicit procedure calls. Add the new layer group (which is a kind of layer) with the 'gimp-image-insert-layer' command. Other procedures useful with layer groups: 'gimp-image-reorder-item', 'gimp-item-get-parent', 'gimp-item-get-children', 'gimp-item-is-group'."
	.size	.L.str.41, 366

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Barak Itkin <lightningismyname@gmail.com>"
	.size	.L.str.42, 42

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Barak Itkin"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"2010"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"The image to which to add the layer group"
	.size	.L.str.45, 42

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"layer-group"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"layer group"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"The newly created layer group"
	.size	.L.str.48, 30

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-layer-copy"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Copy a layer."
	.size	.L.str.50, 14

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"This procedure copies the specified layer and returns the copy. The newly copied layer is for use within the original layer's image. It should not be subsequently added to any other image. The copied layer can optionally have an added alpha channel. This is useful if the background layer in an image is being copied and added to the same image."
	.size	.L.str.51, 346

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"The layer to copy"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"add-alpha"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"add alpha"
	.size	.L.str.54, 10

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Add an alpha channel to the copied layer"
	.size	.L.str.55, 41

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-layer-add-alpha"
	.size	.L.str.56, 21

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Add an alpha channel to the layer if it doesn't already have one."
	.size	.L.str.57, 66

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"This procedure adds an additional component to the specified layer if it does not already possess an alpha channel. An alpha channel makes it possible to clear and erase to transparency, instead of the background color. This transforms layers of type RGB to RGBA, GRAY to GRAYA, and INDEXED to INDEXEDA."
	.size	.L.str.58, 304

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"The layer"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-layer-flatten"
	.size	.L.str.60, 19

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Remove the alpha channel from the layer if it has one."
	.size	.L.str.61, 55

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"This procedure removes the alpha channel from a layer, blending all (partially) transparent pixels in the layer against the background color. This transforms layers of type RGBA to RGB, GRAYA to GRAY, and INDEXEDA to INDEXED."
	.size	.L.str.62, 226

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.63, 34

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Michael Natterer"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"2007"
	.size	.L.str.65, 5

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-layer-scale"
	.size	.L.str.66, 17

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Scale the layer using the default interpolation method."
	.size	.L.str.67, 56

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"This procedure scales the layer so that its new width and height are equal to the supplied parameters. The 'local-origin' parameter specifies whether to scale from the center of the layer, or from the image origin. This operation only works if the layer has been added to an image. The interpolation method used can be set with 'gimp-context-set-interpolation'."
	.size	.L.str.68, 362

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"new-width"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"new width"
	.size	.L.str.70, 10

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"New layer width"
	.size	.L.str.71, 16

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"new-height"
	.size	.L.str.72, 11

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"new height"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"New layer height"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"local-origin"
	.size	.L.str.75, 13

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"local origin"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Use a local origin (as opposed to the image origin)"
	.size	.L.str.77, 52

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-layer-scale-full"
	.size	.L.str.78, 22

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Deprecated: Use 'gimp-layer-scale' instead."
	.size	.L.str.79, 44

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"interpolation"
	.size	.L.str.80, 14

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Type of interpolation"
	.size	.L.str.81, 22

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-layer-resize"
	.size	.L.str.82, 18

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Resize the layer to the specified extents."
	.size	.L.str.83, 43

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"This procedure resizes the layer so that its new width and height are equal to the supplied parameters. Offsets are also provided which describe the position of the previous layer's content. This operation only works if the layer has been added to an image."
	.size	.L.str.84, 258

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"offx"
	.size	.L.str.85, 5

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"x offset between upper left corner of old and new layers: (old - new)"
	.size	.L.str.86, 70

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"offy"
	.size	.L.str.87, 5

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"y offset between upper left corner of old and new layers: (old - new)"
	.size	.L.str.88, 70

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gimp-layer-resize-to-image-size"
	.size	.L.str.89, 32

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Resize a layer to the image size."
	.size	.L.str.90, 34

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"This procedure resizes the layer so that it's new width and height are equal to the width and height of its image container."
	.size	.L.str.91, 125

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Manish Singh"
	.size	.L.str.92, 13

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"2003"
	.size	.L.str.93, 5

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"The layer to resize"
	.size	.L.str.94, 20

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gimp-layer-translate"
	.size	.L.str.95, 21

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Translate the layer by the specified offsets."
	.size	.L.str.96, 46

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"This procedure translates the layer by the amounts specified in the x and y arguments. These can be negative, and are considered offsets from the current position. This command only works if the layer has been added to an image. All additional layers contained in the image which have the linked flag set to TRUE w ill also be translated by the specified offsets."
	.size	.L.str.97, 364

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Offset in x direction"
	.size	.L.str.98, 22

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Offset in y direction"
	.size	.L.str.99, 22

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-layer-set-offsets"
	.size	.L.str.100, 23

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Set the layer offsets."
	.size	.L.str.101, 23

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"This procedure sets the offsets for the specified layer. The offsets are relative to the image origin and can be any values. This operation is valid only on layers which have been added to an image."
	.size	.L.str.102, 199

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-layer-create-mask"
	.size	.L.str.103, 23

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Create a layer mask for the specified specified layer."
	.size	.L.str.104, 55

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"This procedure creates a layer mask for the specified layer. Layer masks serve as an additional alpha channel for a layer. A number of different types of masks are allowed for initialisation: completely white masks (which will leave the layer fully visible), completely black masks (which will give the layer complete transparency, the layer's already existing alpha channel (which will leave the layer fully visible, but which may be more useful than a white mask), the current selection or a grayscale copy of the layer. The layer mask still needs to be added to the layer. This can be done with a call to 'gimp-layer-add-mask'."
	.size	.L.str.105, 631

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"The layer to which to add the mask"
	.size	.L.str.106, 35

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"mask-type"
	.size	.L.str.107, 10

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"mask type"
	.size	.L.str.108, 10

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"The type of mask"
	.size	.L.str.109, 17

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"mask"
	.size	.L.str.110, 5

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"The newly created mask"
	.size	.L.str.111, 23

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gimp-layer-get-mask"
	.size	.L.str.112, 20

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Get the specified layer's mask if it exists."
	.size	.L.str.113, 45

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"This procedure returns the specified layer's mask, or -1 if none exists."
	.size	.L.str.114, 73

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"The layer mask"
	.size	.L.str.115, 15

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-layer-from-mask"
	.size	.L.str.116, 21

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Get the specified mask's layer."
	.size	.L.str.117, 32

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"This procedure returns the specified mask's layer , or -1 if none exists."
	.size	.L.str.118, 74

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Geert Jordaens"
	.size	.L.str.119, 15

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"2004"
	.size	.L.str.120, 5

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Mask for which to return the layer"
	.size	.L.str.121, 35

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"The mask's layer"
	.size	.L.str.122, 17

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"gimp-layer-add-mask"
	.size	.L.str.123, 20

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Add a layer mask to the specified layer."
	.size	.L.str.124, 41

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"This procedure adds a layer mask to the specified layer. Layer masks serve as an additional alpha channel for a layer. This procedure will fail if a number of prerequisites aren't met. The layer cannot already have a layer mask. The specified mask must exist and have the same dimensions as the layer. The layer must have been created for use with the specified image and the mask must have been created with the procedure 'gimp-layer-create-mask'."
	.size	.L.str.125, 449

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"The layer to receive the mask"
	.size	.L.str.126, 30

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"The mask to add to the layer"
	.size	.L.str.127, 29

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"gimp-layer-remove-mask"
	.size	.L.str.128, 23

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Remove the specified layer mask from the layer."
	.size	.L.str.129, 48

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"This procedure removes the specified layer mask from the layer. If the mask doesn't exist, an error is returned."
	.size	.L.str.130, 113

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"The layer from which to remove mask"
	.size	.L.str.131, 36

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Removal mode"
	.size	.L.str.132, 13

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"gimp-layer-is-floating-sel"
	.size	.L.str.133, 27

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Is the specified layer a floating selection?"
	.size	.L.str.134, 45

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"This procedure returns whether the layer is a floating selection. Floating selections are special cases of layers which are attached to a specific drawable."
	.size	.L.str.135, 157

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"is-floating-sel"
	.size	.L.str.136, 16

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"is floating sel"
	.size	.L.str.137, 16

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"TRUE if the layer is a floating selection"
	.size	.L.str.138, 42

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"gimp-layer-get-lock-alpha"
	.size	.L.str.139, 26

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Get the lock alpha channel setting of the specified layer."
	.size	.L.str.140, 59

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"This procedure returns the specified layer's lock alpha channel setting."
	.size	.L.str.141, 73

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"lock-alpha"
	.size	.L.str.142, 11

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"lock alpha"
	.size	.L.str.143, 11

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"The layer's lock alpha channel setting"
	.size	.L.str.144, 39

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"gimp-layer-set-lock-alpha"
	.size	.L.str.145, 26

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Set the lock alpha channel setting of the specified layer."
	.size	.L.str.146, 59

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"This procedure sets the specified layer's lock alpha channel setting."
	.size	.L.str.147, 70

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"The new layer's lock alpha channel setting"
	.size	.L.str.148, 43

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"gimp-layer-get-apply-mask"
	.size	.L.str.149, 26

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Get the apply mask setting of the specified layer."
	.size	.L.str.150, 51

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"This procedure returns the specified layer's apply mask setting. If the value is TRUE, then the layer mask for this layer is currently being composited with the layer's alpha channel."
	.size	.L.str.151, 184

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"apply-mask"
	.size	.L.str.152, 11

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"apply mask"
	.size	.L.str.153, 11

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"The layer's apply mask setting"
	.size	.L.str.154, 31

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"gimp-layer-set-apply-mask"
	.size	.L.str.155, 26

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"Set the apply mask setting of the specified layer."
	.size	.L.str.156, 51

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"This procedure sets the specified layer's apply mask setting. This controls whether the layer's mask is currently affecting the alpha channel. If there is no layer mask, this function will return an error."
	.size	.L.str.157, 206

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"The new layer's apply mask setting"
	.size	.L.str.158, 35

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"gimp-layer-get-show-mask"
	.size	.L.str.159, 25

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"Get the show mask setting of the specified layer."
	.size	.L.str.160, 50

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"This procedure returns the specified layer's show mask setting. This controls whether the layer or its mask is visible. TRUE indicates that the mask should be visible. If the layer has no mask, then this function returns an error."
	.size	.L.str.161, 231

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"show-mask"
	.size	.L.str.162, 10

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"show mask"
	.size	.L.str.163, 10

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"The layer's show mask setting"
	.size	.L.str.164, 30

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"gimp-layer-set-show-mask"
	.size	.L.str.165, 25

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"Set the show mask setting of the specified layer."
	.size	.L.str.166, 50

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"This procedure sets the specified layer's show mask setting. This controls whether the layer or its mask is visible. TRUE indicates that the mask should be visible. If there is no layer mask, this function will return an error."
	.size	.L.str.167, 228

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"The new layer's show mask setting"
	.size	.L.str.168, 34

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"gimp-layer-get-edit-mask"
	.size	.L.str.169, 25

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"Get the edit mask setting of the specified layer."
	.size	.L.str.170, 50

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"This procedure returns the specified layer's edit mask setting. If the value is TRUE, then the layer mask for this layer is currently active, and not the layer."
	.size	.L.str.171, 161

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"edit-mask"
	.size	.L.str.172, 10

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"edit mask"
	.size	.L.str.173, 10

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"The layer's edit mask setting"
	.size	.L.str.174, 30

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"gimp-layer-set-edit-mask"
	.size	.L.str.175, 25

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"Set the edit mask setting of the specified layer."
	.size	.L.str.176, 50

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"This procedure sets the specified layer's edit mask setting. This controls whether the layer or it's mask is currently active for editing. If the specified layer has no layer mask, then this procedure will return an error."
	.size	.L.str.177, 223

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"The new layer's edit mask setting"
	.size	.L.str.178, 34

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"gimp-layer-get-opacity"
	.size	.L.str.179, 23

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"Get the opacity of the specified layer."
	.size	.L.str.180, 40

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"This procedure returns the specified layer's opacity."
	.size	.L.str.181, 54

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"gimp-layer-set-opacity"
	.size	.L.str.182, 23

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"Set the opacity of the specified layer."
	.size	.L.str.183, 40

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"This procedure sets the specified layer's opacity."
	.size	.L.str.184, 51

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"The new layer opacity"
	.size	.L.str.185, 22

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"gimp-layer-get-mode"
	.size	.L.str.186, 20

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"Get the combination mode of the specified layer."
	.size	.L.str.187, 49

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"This procedure returns the specified layer's combination mode."
	.size	.L.str.188, 63

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"gimp-layer-set-mode"
	.size	.L.str.189, 20

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"Set the combination mode of the specified layer."
	.size	.L.str.190, 49

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"This procedure sets the specified layer's combination mode."
	.size	.L.str.191, 60

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"The new layer combination mode"
	.size	.L.str.192, 31

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"Scaling"
	.size	.L.str.193, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
