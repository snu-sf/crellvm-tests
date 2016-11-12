	.text
	.file	"edit-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI0_2:
	.quad	4616189618054758400     # double 4
.LCPI0_3:
	.quad	4636737291354636288     # double 100
.LCPI0_4:
	.quad	4643176031446892544     # double 255
	.text
	.globl	register_edit_procs
	.align	16, 0x90
	.type	register_edit_procs,@function
register_edit_procs:                    # @register_edit_procs
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
	subq	$1104, %rsp             # imm = 0x450
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$edit_cut_invoker, %rax
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
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-32(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_copy_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r11
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.13, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_copy_visible_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.22, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_paste_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.25, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r11
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -168(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.26, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %r10
	movq	32(%r10), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_paste_as_new_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.35, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.36, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.37, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_named_cut_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movabsq	$.L.str.40, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.36, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.43, %rdx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%ebx, -260(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movl	-264(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -268(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -280(%rbp)        # 8-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_named_copy_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.47, %rsi
	movabsq	$.L.str.48, %rdx
	movabsq	$.L.str.49, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.36, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.13, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.43, %rdx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movl	%ebx, -332(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.50, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	movl	-336(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -340(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_named_copy_visible_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	movabsq	$.L.str.53, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.36, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
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
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.43, %rdx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movl	%ebx, -404(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.50, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	movl	-408(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -412(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -424(%rbp)        # 8-byte Spill
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_named_paste_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
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
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.36, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.26, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.57, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-32(%rbp), %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -468(%rbp)        # 4-byte Spill
	movl	-468(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -472(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %r10
	movq	32(%r10), %rcx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_named_paste_as_new_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.58, %rsi
	movabsq	$.L.str.59, %rdx
	movabsq	$.L.str.60, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.36, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.57, %rdx
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %eax
	movl	$227, %r14d
	movq	-32(%rbp), %rcx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	movl	%ebx, %r8d
	movl	%ebx, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movl	%r14d, -532(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.37, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_clear_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.62, %rdx
	movabsq	$.L.str.63, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r11
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -568(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.64, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_fill_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.65, %rsi
	movabsq	$.L.str.66, %rdx
	movabsq	$.L.str.67, %rcx
	movabsq	$.L.str.68, %r8
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.69, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	callq	gimp_fill_type_get_type
	movabsq	$.L.str.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$.L.str.73, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_bucket_fill_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.74, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.74, %rsi
	movabsq	$.L.str.75, %rdx
	movabsq	$.L.str.76, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r11
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -632(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.77, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	callq	gimp_bucket_fill_mode_get_type
	movabsq	$.L.str.78, %rdi
	movabsq	$.L.str.79, %rsi
	movabsq	$.L.str.73, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.80, %rdi
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.83, %rax
	movabsq	$.L.str.84, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
	movsd	-672(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.85, %rax
	movabsq	$.L.str.86, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_4, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	movsd	-688(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.87, %rdi
	movabsq	$.L.str.88, %rsi
	movabsq	$.L.str.89, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.90, %rax
	movabsq	$.L.str.91, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.92, %rax
	movabsq	$.L.str.93, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_bucket_fill_full_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.94, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.94, %rsi
	movabsq	$.L.str.75, %rdx
	movabsq	$.L.str.76, %rcx
	movabsq	$.L.str.95, %rax
	movabsq	$.L.str.96, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r11
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-728(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -736(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.77, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	callq	gimp_bucket_fill_mode_get_type
	movabsq	$.L.str.78, %rdi
	movabsq	$.L.str.79, %rsi
	movabsq	$.L.str.73, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.80, %rdi
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.83, %rax
	movabsq	$.L.str.84, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	movsd	-776(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.85, %rax
	movabsq	$.L.str.86, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_4, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
	movsd	-792(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.87, %rdi
	movabsq	$.L.str.88, %rsi
	movabsq	$.L.str.89, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.97, %rdi
	movabsq	$.L.str.98, %rsi
	movabsq	$.L.str.99, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	callq	gimp_select_criterion_get_type
	movabsq	$.L.str.100, %rdi
	movabsq	$.L.str.101, %rsi
	movabsq	$.L.str.102, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.90, %rax
	movabsq	$.L.str.91, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.92, %rax
	movabsq	$.L.str.93, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_blend_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
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
	movq	-32(%rbp), %r11
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -856(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.77, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	callq	gimp_blend_mode_get_type
	movabsq	$.L.str.106, %rdi
	movabsq	$.L.str.107, %rsi
	movabsq	$.L.str.108, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.80, %rdi
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	callq	gimp_gradient_type_get_type
	movabsq	$.L.str.109, %rdi
	movabsq	$.L.str.110, %rsi
	movabsq	$.L.str.111, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.83, %rax
	movabsq	$.L.str.112, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -904(%rbp)       # 8-byte Spill
	movsd	-904(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.113, %rax
	movabsq	$.L.str.114, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -920(%rbp)       # 8-byte Spill
	movsd	-920(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	callq	gimp_repeat_mode_get_type
	movabsq	$.L.str.115, %rdx
	movabsq	$.L.str.116, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -936(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-936(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.117, %rax
	movabsq	$.L.str.118, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.119, %rax
	movabsq	$.L.str.120, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.121, %rdi
	movabsq	$.L.str.122, %rsi
	movabsq	$.L.str.123, %rdx
	movl	$1, %ecx
	movl	$9, %r8d
	movl	$16611, %r9d            # imm = 0x40E3
	movq	-32(%rbp), %rax
	movl	%ecx, -956(%rbp)        # 4-byte Spill
	movl	-956(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -960(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$16611, (%rsp)          # imm = 0x40E3
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.85, %rax
	movabsq	$.L.str.124, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$16611, %ecx            # imm = 0x40E3
	movq	-32(%rbp), %rdi
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -984(%rbp)       # 8-byte Spill
	movsd	-984(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.125, %rax
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rax
	movabsq	$.L.str.128, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.129, %rax
	movabsq	$.L.str.130, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.131, %rax
	movabsq	$.L.str.132, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.133, %rax
	movabsq	$.L.str.134, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_stroke_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.135, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.135, %rsi
	movabsq	$.L.str.136, %rdx
	movabsq	$.L.str.137, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r11
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1048(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.138, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$edit_stroke_vectors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.139, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.139, %rsi
	movabsq	$.L.str.140, %rdx
	movabsq	$.L.str.141, %rcx
	movabsq	$.L.str.142, %rax
	movabsq	$.L.str.96, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r11
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1080(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.138, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.143, %rax
	movabsq	$.L.str.144, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_vectors_id
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1104, %rsp             # imm = 0x450
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_edit_procs, .Lfunc_end0-register_edit_procs
	.cfi_endproc

	.align	16, 0x90
	.type	edit_cut_invoker,@function
edit_cut_invoker:                       # @edit_cut_invoker
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
	subq	$160, %rsp
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
	je	.LBB1_8
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_6
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB1_6
# BB#3:                                 # %if.then.9
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	leaq	-96(%rbp), %rcx
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_edit_cut
	cmpq	$0, %rax
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	movl	%r9d, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB1_5
# BB#4:                                 # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-96(%rbp), %rdi
	callq	g_clear_error
.LBB1_5:                                # %if.end
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
	movl	$0, -52(%rbp)
.LBB1_7:                                # %if.end.17
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.18
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB1_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_11:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_13
# BB#12:                                # %if.then.22
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB1_13:                               # %if.end.25
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	edit_cut_invoker, .Lfunc_end1-edit_cut_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_copy_invoker,@function
edit_copy_invoker:                      # @edit_copy_invoker
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
	subq	$144, %rsp
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
	je	.LBB2_7
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
	je	.LBB2_5
# BB#2:                                 # %if.then.5
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	leaq	-96(%rbp), %rcx
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_edit_copy
	cmpq	$0, %rax
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	movl	%r9d, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-96(%rbp), %rdi
	callq	g_clear_error
.LBB2_4:                                # %if.end
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_6:                                # %if.end.13
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.14
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB2_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB2_10
.LBB2_10:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.18
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB2_12:                               # %if.end.21
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	edit_copy_invoker, .Lfunc_end2-edit_copy_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_copy_visible_invoker,@function
edit_copy_visible_invoker:              # @edit_copy_visible_invoker
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
	subq	$128, %rsp
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
	je	.LBB3_4
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %rdx
	movq	$0, -88(%rbp)
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_edit_copy_visible
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	movl	%r8d, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then.3
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-88(%rbp), %rdi
	callq	g_clear_error
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.5
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
# BB#8:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB3_9:                                # %if.end.12
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	edit_copy_visible_invoker, .Lfunc_end3-edit_copy_visible_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_paste_invoker,@function
edit_paste_invoker:                     # @edit_paste_invoker
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
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_9
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB4_7
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
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
	je	.LBB4_7
# BB#3:                                 # %land.lhs.true.9
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB4_7
# BB#4:                                 # %if.then.14
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	440(%rdi), %rdx
	movl	-76(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movl	-116(%rbp), %r9d        # 4-byte Reload
	movl	$-1, (%rsp)
	movl	$-1, 8(%rsp)
	callq	gimp_edit_paste
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_6
# BB#5:                                 # %if.then.21
	movl	$0, -52(%rbp)
.LBB4_6:                                # %if.end
	jmp	.LBB4_8
.LBB4_7:                                # %if.else
	movl	$0, -52(%rbp)
.LBB4_8:                                # %if.end.22
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.23
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB4_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB4_12
.LBB4_12:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.27
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB4_14:                               # %if.end.30
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	edit_paste_invoker, .Lfunc_end4-edit_paste_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_paste_as_new_invoker,@function
edit_paste_as_new_invoker:              # @edit_paste_as_new_invoker
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
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 440(%rcx)
	je	.LBB5_4
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	440(%rcx), %rdx
	callq	gimp_image_new_from_buffer
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then.3
	movl	$0, -52(%rbp)
.LBB5_3:                                # %if.end
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movq	$0, -72(%rbp)
.LBB5_5:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB5_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
.LBB5_10:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	edit_paste_as_new_invoker, .Lfunc_end5-edit_paste_as_new_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_named_cut_invoker,@function
edit_named_cut_invoker:                 # @edit_named_cut_invoker
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
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_9
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
	cmpl	$0, %eax
	je	.LBB6_7
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB6_7
# BB#3:                                 # %if.then.12
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	leaq	-104(%rbp), %r8
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	gimp_edit_named_cut
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.18
	movq	-88(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-104(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-104(%rbp), %rdi
	callq	g_clear_error
.LBB6_6:                                # %if.end
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.21
	movl	$0, -52(%rbp)
.LBB6_8:                                # %if.end.22
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.23
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	je	.LBB6_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_12:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_14
# BB#13:                                # %if.then.27
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB6_14:                               # %if.end.30
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	edit_named_cut_invoker, .Lfunc_end6-edit_named_cut_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_named_copy_invoker,@function
edit_named_copy_invoker:                # @edit_named_copy_invoker
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
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_8
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB7_6
# BB#2:                                 # %if.then.8
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	leaq	-104(%rbp), %r8
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	gimp_edit_named_copy
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.14
	movq	-88(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-104(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-104(%rbp), %rdi
	callq	g_clear_error
.LBB7_5:                                # %if.end
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.17
	movl	$0, -52(%rbp)
.LBB7_7:                                # %if.end.18
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.19
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB7_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_11:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_13
# BB#12:                                # %if.then.23
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB7_13:                               # %if.end.26
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	edit_named_copy_invoker, .Lfunc_end7-edit_named_copy_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_named_copy_visible_invoker,@function
edit_named_copy_visible_invoker:        # @edit_named_copy_visible_invoker
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
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_5
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %rcx
	movq	$0, -96(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_edit_named_copy_visible
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then.6
	movq	-88(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-96(%rbp), %rdi
	callq	g_clear_error
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB8_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB8_8
.LBB8_8:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.13
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB8_10:                               # %if.end.16
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	edit_named_copy_visible_invoker, .Lfunc_end8-edit_named_copy_visible_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_named_paste_invoker,@function
edit_named_paste_invoker:               # @edit_named_paste_invoker
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
	subq	$176, %rsp
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
	callq	gimp_value_get_drawable
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
	cmpl	$0, -52(%rbp)
	je	.LBB9_9
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_buffer
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_7
# BB#2:                                 # %land.lhs.true
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
	cmpl	$0, %eax
	je	.LBB9_7
# BB#3:                                 # %land.lhs.true.13
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB9_7
# BB#4:                                 # %if.then.18
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-84(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	-132(%rbp), %r9d        # 4-byte Reload
	movl	$-1, (%rsp)
	movl	$-1, 8(%rsp)
	callq	gimp_edit_paste
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB9_6
# BB#5:                                 # %if.then.24
	movl	$0, -52(%rbp)
.LBB9_6:                                # %if.end
	jmp	.LBB9_8
.LBB9_7:                                # %if.else
	movl	$0, -52(%rbp)
.LBB9_8:                                # %if.end.25
	jmp	.LBB9_9
.LBB9_9:                                # %if.end.26
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	je	.LBB9_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_12
.LBB9_12:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_14
# BB#13:                                # %if.then.30
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB9_14:                               # %if.end.33
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	edit_named_paste_invoker, .Lfunc_end9-edit_named_paste_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_named_paste_as_new_invoker,@function
edit_named_paste_as_new_invoker:        # @edit_named_paste_as_new_invoker
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
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_7
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_buffer
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB10_5
# BB#2:                                 # %if.then.3
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rdx
	callq	gimp_image_new_from_buffer
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.6
	movl	$0, -52(%rbp)
.LBB10_4:                               # %if.end
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB10_6:                               # %if.end.7
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB10_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_10
.LBB10_10:                              # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_12
# BB#11:                                # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
.LBB10_12:                              # %if.end.15
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	edit_named_paste_as_new_invoker, .Lfunc_end10-edit_named_paste_as_new_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_clear_invoker,@function
edit_clear_invoker:                     # @edit_clear_invoker
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
	cmpl	$0, -52(%rbp)
	je	.LBB11_6
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB11_4
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
	je	.LBB11_4
# BB#3:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_edit_clear
	movl	%eax, -52(%rbp)
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB11_5:                               # %if.end
	jmp	.LBB11_6
.LBB11_6:                               # %if.end.14
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB11_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_9
.LBB11_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_9
.LBB11_9:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	edit_clear_invoker, .Lfunc_end11-edit_clear_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_fill_invoker,@function
edit_fill_invoker:                      # @edit_fill_invoker
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
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_6
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
	je	.LBB12_4
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
	je	.LBB12_4
# BB#3:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-68(%rbp), %ecx
	callq	gimp_edit_fill
	movl	%eax, -52(%rbp)
	jmp	.LBB12_5
.LBB12_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB12_5:                               # %if.end
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.17
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
	.size	edit_fill_invoker, .Lfunc_end12-edit_fill_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	edit_bucket_fill_invoker,@function
edit_bucket_fill_invoker:               # @edit_bucket_fill_invoker
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
	callq	g_value_get_enum
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
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
	callq	g_value_get_boolean
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_6
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB13_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB13_4
# BB#3:                                 # %if.then.30
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	xorl	%r9d, %r9d
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -124(%rbp)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movl	-124(%rbp), %r8d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-92(%rbp), %eax
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	-48(%rbp), %r10
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	$0, (%rsp)
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, 8(%rsp)
	movq	%r10, 16(%rsp)
	callq	gimp_drawable_bucket_fill
	movl	%eax, -52(%rbp)
	jmp	.LBB13_5
.LBB13_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB13_5:                               # %if.end
	jmp	.LBB13_6
.LBB13_6:                               # %if.end.37
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB13_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_9:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	edit_bucket_fill_invoker, .Lfunc_end13-edit_bucket_fill_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	edit_bucket_fill_full_invoker,@function
edit_bucket_fill_full_invoker:          # @edit_bucket_fill_full_invoker
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
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
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
	callq	g_value_get_boolean
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$192, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$216, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_6
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB14_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB14_4
# BB#3:                                 # %if.then.36
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -132(%rbp)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movl	-132(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-100(%rbp), %eax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-92(%rbp), %r10d
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-120(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	-48(%rbp), %r11
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, (%rsp)
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%r10d, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	gimp_drawable_bucket_fill
	movl	%eax, -52(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB14_5:                               # %if.end
	jmp	.LBB14_6
.LBB14_6:                               # %if.end.43
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movl	%esi, -180(%rbp)        # 4-byte Spill
	je	.LBB14_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB14_9
.LBB14_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB14_9
.LBB14_9:                               # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	edit_bucket_fill_full_invoker, .Lfunc_end14-edit_bucket_fill_full_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4616189618054758400     # double 4
.LCPI15_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	edit_blend_invoker,@function
edit_blend_invoker:                     # @edit_blend_invoker
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
	pushq	%r14
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
.Ltmp50:
	.cfi_offset %rbx, -32
.Ltmp51:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$1, -68(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -84(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -88(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -92(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -116(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -120(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$192, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -124(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$216, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -128(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$240, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -136(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$264, %rcx              # imm = 0x108
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -140(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$288, %rcx              # imm = 0x120
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -152(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$312, %rcx              # imm = 0x138
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -160(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$336, %rcx              # imm = 0x150
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -168(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$360, %rcx              # imm = 0x168
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -176(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB15_19
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	xorl	%edx, %edx
	movb	%dl, %r8b
	cmpl	$0, %eax
	movb	%r8b, -185(%rbp)        # 1-byte Spill
	je	.LBB15_3
# BB#2:                                 # %land.rhs
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -185(%rbp)         # 1-byte Spill
.LBB15_3:                               # %land.end
	movb	-185(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB15_12
# BB#4:                                 # %land.lhs.true
	cmpl	$0, -124(%rbp)
	je	.LBB15_12
# BB#5:                                 # %if.then.56
	cmpl	$1, -128(%rbp)
	jl	.LBB15_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$9, -128(%rbp)
	jle	.LBB15_8
.LBB15_7:                               # %if.then.58
	movl	$0, -68(%rbp)
.LBB15_8:                               # %if.end
	xorps	%xmm0, %xmm0
	ucomisd	-136(%rbp), %xmm0
	ja	.LBB15_10
# BB#9:                                 # %lor.lhs.false.60
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_11
.LBB15_10:                              # %if.then.62
	movl	$0, -68(%rbp)
.LBB15_11:                              # %if.end.63
	jmp	.LBB15_12
.LBB15_12:                              # %if.end.64
	cmpl	$0, -68(%rbp)
	je	.LBB15_18
# BB#13:                                # %if.then.66
	cmpq	$0, -48(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.68
	movabsq	$.L.str.145, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB15_15:                              # %if.end.71
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %r8d
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-116(%rbp), %r9d
	movl	-120(%rbp), %eax
	movl	-124(%rbp), %r10d
	movl	-128(%rbp), %r11d
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	movl	-140(%rbp), %ebx
	movsd	-152(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-160(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-168(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-176(%rbp), %xmm6       # xmm6 = mem[0],zero
	movq	-48(%rbp), %r14
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movq	%r14, 32(%rsp)
	callq	gimp_drawable_blend
	cmpq	$0, -48(%rbp)
	je	.LBB15_17
# BB#16:                                # %if.then.73
	movq	-48(%rbp), %rdi
	callq	gimp_progress_end
.LBB15_17:                              # %if.end.74
	jmp	.LBB15_18
.LBB15_18:                              # %if.end.75
	jmp	.LBB15_19
.LBB15_19:                              # %if.end.76
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movl	%esi, -236(%rbp)        # 4-byte Spill
	je	.LBB15_21
# BB#20:                                # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB15_22
.LBB15_21:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB15_22
.LBB15_22:                              # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	-236(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	edit_blend_invoker, .Lfunc_end15-edit_blend_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_stroke_invoker,@function
edit_stroke_invoker:                    # @edit_stroke_invoker
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
	cmpl	$0, -52(%rbp)
	je	.LBB16_6
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
	je	.LBB16_4
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
	je	.LBB16_4
# BB#3:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movl	$1, %edx
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_stroke_options_new
	movl	$1, %edx
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_stroke_options_new
	movabsq	$.L.str.146, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
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
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_item_stroke
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	jmp	.LBB16_5
.LBB16_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB16_5:                               # %if.end
	jmp	.LBB16_6
.LBB16_6:                               # %if.end.25
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB16_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB16_9
.LBB16_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB16_9
.LBB16_9:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	edit_stroke_invoker, .Lfunc_end16-edit_stroke_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	edit_stroke_vectors_invoker,@function
edit_stroke_vectors_invoker:            # @edit_stroke_vectors_invoker
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
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_vectors
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_7
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
	je	.LBB17_5
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
	je	.LBB17_5
# BB#3:                                 # %land.lhs.true.12
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%edx, %edx
	movq	-48(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB17_5
# BB#4:                                 # %if.then.20
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_stroke_options_new
	movabsq	$.L.str.146, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-24(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_item_stroke
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	jmp	.LBB17_6
.LBB17_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB17_6:                               # %if.end
	jmp	.LBB17_7
.LBB17_7:                               # %if.end.31
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB17_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB17_10
.LBB17_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB17_10
.LBB17_10:                              # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	edit_stroke_vectors_invoker, .Lfunc_end17-edit_stroke_vectors_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-edit-cut"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Cut from the specified drawable."
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"If there is a selection in the image, then the area specified by the selection is cut from the specified drawable and placed in an internal GIMP edit buffer. It can subsequently be retrieved using the 'gimp-edit-paste' command. If there is no selection, then the specified drawable will be removed and its contents stored in the internal GIMP edit buffer. This procedure will fail if the selected area lies completely outside the bounds of the current drawable and there is nothing to copy from."
	.size	.L.str.2, 496

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
	.asciz	"The drawable to cut from"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"non-empty"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"non empty"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"TRUE if the cut was successful, FALSE if there was nothing to copy from"
	.size	.L.str.9, 72

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-edit-copy"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Copy from the specified drawable."
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"If there is a selection in the image, then the area specified by the selection is copied from the specified drawable and placed in an internal GIMP edit buffer. It can subsequently be retrieved using the 'gimp-edit-paste' command. If there is no selection, then the specified drawable's contents will be stored in the internal GIMP edit buffer. This procedure will fail if the selected area lies completely outside the bounds of the current drawable and there is nothing to copy from."
	.size	.L.str.12, 485

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The drawable to copy from"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-edit-copy-visible"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Copy from the projection."
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"If there is a selection in the image, then the area specified by the selection is copied from the projection and placed in an internal GIMP edit buffer. It can subsequently be retrieved using the 'gimp-edit-paste' command. If there is no selection, then the projection's contents will be stored in the internal GIMP edit buffer."
	.size	.L.str.16, 329

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.17, 34

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Michael Natterer"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"2004"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"image"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The image to copy from"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"TRUE if the copy was successful"
	.size	.L.str.22, 32

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-edit-paste"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Paste buffer to the specified drawable."
	.size	.L.str.24, 40

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"This procedure pastes a copy of the internal GIMP edit buffer to the specified drawable. The GIMP edit buffer will be empty unless a call was previously made to either 'gimp-edit-cut' or 'gimp-edit-copy'. The \"paste_into\" option specifies whether to clear the current image selection, or to paste the buffer \"behind\" the selection. This allows the selection to act as a mask for the pasted buffer. Anywhere that the selection mask is non-zero, the pasted buffer will show through. The pasted buffer will be a new layer in the image which is designated as the image floating selection. If the image has a floating selection at the time of pasting, the old floating selection will be anchored to it's drawable before the new floating selection is added. This procedure returns the new floating layer. The resulting floating selection will already be attached to the specified drawable, and a subsequent call to floating_sel_attach is not needed."
	.size	.L.str.25, 944

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The drawable to paste to"
	.size	.L.str.26, 25

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"paste-into"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"paste into"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Clear selection, or paste behind it?"
	.size	.L.str.29, 37

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"floating-sel"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"floating sel"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The new floating selection"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-edit-paste-as-new"
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Paste buffer to a new image."
	.size	.L.str.34, 29

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"This procedure pastes a copy of the internal GIMP edit buffer to a new image. The GIMP edit buffer will be empty unless a call was previously made to either 'gimp-edit-cut' or 'gimp-edit-copy'. This procedure returns the new image or -1 if the edit buffer was empty."
	.size	.L.str.35, 267

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"2005"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The new image"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-edit-named-cut"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Cut into a named buffer."
	.size	.L.str.39, 25

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"This procedure works like 'gimp-edit-cut', but additionally stores the cut buffer into a named buffer that will stay available for later pasting, regardless of any intermediate copy or cut operations."
	.size	.L.str.40, 201

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"buffer-name"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"buffer name"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"The name of the buffer to create"
	.size	.L.str.43, 33

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"real-name"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"real name"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The real name given to the buffer, or NULL if the cut failed"
	.size	.L.str.46, 61

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-edit-named-copy"
	.size	.L.str.47, 21

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Copy into a named buffer."
	.size	.L.str.48, 26

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"This procedure works like 'gimp-edit-copy', but additionally stores the copied buffer into a named buffer that will stay available for later pasting, regardless of any intermediate copy or cut operations."
	.size	.L.str.49, 205

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"The real name given to the buffer, or NULL if the copy failed"
	.size	.L.str.50, 62

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-edit-named-copy-visible"
	.size	.L.str.51, 29

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Copy from the projection into a named buffer."
	.size	.L.str.52, 46

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"This procedure works like 'gimp-edit-copy-visible', but additionally stores the copied buffer into a named buffer that will stay available for later pasting, regardless of any intermediate copy or cut operations."
	.size	.L.str.53, 213

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-edit-named-paste"
	.size	.L.str.54, 22

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Paste named buffer to the specified drawable."
	.size	.L.str.55, 46

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"This procedure works like 'gimp-edit-paste' but pastes a named buffer instead of the global buffer."
	.size	.L.str.56, 100

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"The name of the buffer to paste"
	.size	.L.str.57, 32

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-edit-named-paste-as-new"
	.size	.L.str.58, 29

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Paste named buffer to a new image."
	.size	.L.str.59, 35

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"This procedure works like 'gimp-edit-paste-as-new' but pastes a named buffer instead of the global buffer."
	.size	.L.str.60, 107

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-edit-clear"
	.size	.L.str.61, 16

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Clear selected area of drawable."
	.size	.L.str.62, 33

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"This procedure clears the specified drawable. If the drawable has an alpha channel, the cleared pixels will become transparent. If the drawable does not have an alpha channel, cleared pixels will be set to the background color. This procedure only affects regions within a selection if there is a selection active."
	.size	.L.str.63, 315

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"The drawable to clear from"
	.size	.L.str.64, 27

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp-edit-fill"
	.size	.L.str.65, 15

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Fill selected area of drawable."
	.size	.L.str.66, 32

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"This procedure fills the specified drawable with the fill mode. If the fill mode is foreground, the current foreground color is used. If the fill mode is background, the current background color is used. Other fill modes should not be used. This procedure only affects regions within a selection if there is a selection active. If you want to fill the whole drawable, regardless of the selection, use 'gimp-drawable-fill'."
	.size	.L.str.67, 423

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Spencer Kimball & Peter Mattis & Raphael Quinet"
	.size	.L.str.68, 48

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"1995-2000"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"The drawable to fill to"
	.size	.L.str.70, 24

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"fill-type"
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"fill type"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"The type of fill"
	.size	.L.str.73, 17

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimp-edit-bucket-fill"
	.size	.L.str.74, 22

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Fill the area specified either by the current selection if there is one, or by a seed fill starting at the specified coordinates."
	.size	.L.str.75, 130

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"This tool requires information on the paint application mode, and the fill mode, which can either be in the foreground color, or in the currently active pattern. If there is no selection, a seed fill is executed at the specified coordinates and extends outward in keeping with the threshold parameter. If there is a selection in the target image, the threshold, sample merged, x, and y arguments are unused. If the sample_merged parameter is TRUE, the data of the composite image will be used instead of that for the specified drawable. This is equivalent to sampling for colors after merging all visible layers. In the case of merged sampling, the x and y coordinates are relative to the image's origin; otherwise, they are relative to the drawable's origin."
	.size	.L.str.76, 760

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"The affected drawable"
	.size	.L.str.77, 22

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"fill-mode"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"fill mode"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"paint-mode"
	.size	.L.str.80, 11

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"paint mode"
	.size	.L.str.81, 11

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"The paint application mode"
	.size	.L.str.82, 27

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"opacity"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"The opacity of the final bucket fill"
	.size	.L.str.84, 37

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"threshold"
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"The threshold determines how extensive the seed fill will be. It's value is specified in terms of intensity levels. This parameter is only valid when there is no selection in the specified image."
	.size	.L.str.86, 196

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"sample-merged"
	.size	.L.str.87, 14

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"sample merged"
	.size	.L.str.88, 14

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Use the composite image, not the drawable"
	.size	.L.str.89, 42

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"x"
	.size	.L.str.90, 2

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"The x coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image."
	.size	.L.str.91, 132

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"y"
	.size	.L.str.92, 2

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"The y coordinate of this bucket fill's application. This parameter is only valid when there is no selection in the specified image."
	.size	.L.str.93, 132

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"gimp-edit-bucket-fill-full"
	.size	.L.str.94, 27

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"David Gowers"
	.size	.L.str.95, 13

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"2006"
	.size	.L.str.96, 5

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"fill-transparent"
	.size	.L.str.97, 17

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"fill transparent"
	.size	.L.str.98, 17

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Whether to consider transparent pixels for filling. If TRUE, transparency is considered as a unique fillable color."
	.size	.L.str.99, 116

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"select-criterion"
	.size	.L.str.100, 17

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"select criterion"
	.size	.L.str.101, 17

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"The criterion used to determine color similarity. SELECT_CRITERION_COMPOSITE is the standard choice."
	.size	.L.str.102, 101

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-edit-blend"
	.size	.L.str.103, 16

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Blend between the starting and ending coordinates with the specified blend mode and gradient type."
	.size	.L.str.104, 99

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"This tool requires information on the paint application mode, the blend mode, and the gradient type. It creates the specified variety of blend using the starting and ending coordinates as defined for each gradient type."
	.size	.L.str.105, 220

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"blend-mode"
	.size	.L.str.106, 11

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"blend mode"
	.size	.L.str.107, 11

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"The type of blend"
	.size	.L.str.108, 18

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gradient-type"
	.size	.L.str.109, 14

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gradient type"
	.size	.L.str.110, 14

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"The type of gradient"
	.size	.L.str.111, 21

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"The opacity of the final blend"
	.size	.L.str.112, 31

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"offset"
	.size	.L.str.113, 7

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Offset relates to the starting and ending coordinates specified for the blend. This parameter is mode dependent."
	.size	.L.str.114, 113

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"repeat"
	.size	.L.str.115, 7

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Repeat mode"
	.size	.L.str.116, 12

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"reverse"
	.size	.L.str.117, 8

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Use the reverse gradient"
	.size	.L.str.118, 25

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"supersample"
	.size	.L.str.119, 12

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Do adaptive supersampling"
	.size	.L.str.120, 26

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"max-depth"
	.size	.L.str.121, 10

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"max depth"
	.size	.L.str.122, 10

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Maximum recursion levels for supersampling"
	.size	.L.str.123, 43

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Supersampling threshold"
	.size	.L.str.124, 24

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"dither"
	.size	.L.str.125, 7

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Use dithering to reduce banding"
	.size	.L.str.126, 32

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"x1"
	.size	.L.str.127, 3

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"The x coordinate of this blend's starting point"
	.size	.L.str.128, 48

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"y1"
	.size	.L.str.129, 3

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"The y coordinate of this blend's starting point"
	.size	.L.str.130, 48

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"x2"
	.size	.L.str.131, 3

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"The x coordinate of this blend's ending point"
	.size	.L.str.132, 46

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"y2"
	.size	.L.str.133, 3

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"The y coordinate of this blend's ending point"
	.size	.L.str.134, 46

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"gimp-edit-stroke"
	.size	.L.str.135, 17

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Stroke the current selection"
	.size	.L.str.136, 29

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"This procedure strokes the current selection, painting along the selection boundary with the active brush and foreground color. The paint is applied to the specified drawable regardless of the active selection."
	.size	.L.str.137, 211

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"The drawable to stroke to"
	.size	.L.str.138, 26

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"gimp-edit-stroke-vectors"
	.size	.L.str.139, 25

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Stroke the specified vectors object"
	.size	.L.str.140, 36

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"This procedure strokes the specified vectors object, painting along the path with the active brush and foreground color."
	.size	.L.str.141, 121

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Simon Budig"
	.size	.L.str.142, 12

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"vectors"
	.size	.L.str.143, 8

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"The vectors object"
	.size	.L.str.144, 19

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Blending"
	.size	.L.str.145, 9

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"method"
	.size	.L.str.146, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
