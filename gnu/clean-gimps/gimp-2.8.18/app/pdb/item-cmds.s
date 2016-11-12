	.text
	.file	"item-cmds.bc"
	.globl	register_item_procs
	.align	16, 0x90
	.type	register_item_procs,@function
register_item_procs:                    # @register_item_procs
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
	subq	$1192, %rsp             # imm = 0x4A8
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$item_is_valid_invoker, %rax
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
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$16611, %r9d            # imm = 0x40E3
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_image_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
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
	movq	-24(%rbp), %rbx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -80(%rbp)         # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_delete_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -120(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_is_drawable_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	movabsq	$.L.str.24, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -152(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
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
	movabsq	$item_is_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -192(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rax
	movabsq	$.L.str.31, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
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
	movabsq	$item_is_text_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.33, %rdx
	movabsq	$.L.str.34, %rcx
	movabsq	$.L.str.35, %r8
	movabsq	$.L.str.36, %r9
	movabsq	$.L.str.37, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_is_channel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rdx
	movabsq	$.L.str.43, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -264(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.44, %rax
	movabsq	$.L.str.45, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_is_layer_mask_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.46, %rsi
	movabsq	$.L.str.47, %rdx
	movabsq	$.L.str.48, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -304(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.50, %rsi
	movabsq	$.L.str.51, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_is_selection_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
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
	movq	-24(%rbp), %rbx
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -344(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.55, %rax
	movabsq	$.L.str.56, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_is_vectors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.57, %rsi
	movabsq	$.L.str.58, %rdx
	movabsq	$.L.str.59, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -384(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.60, %rax
	movabsq	$.L.str.61, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_is_group_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.62, %rsi
	movabsq	$.L.str.63, %rdx
	movabsq	$.L.str.64, %rcx
	movabsq	$.L.str.35, %r8
	movabsq	$.L.str.36, %r9
	movabsq	$.L.str.37, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.65, %rax
	movabsq	$.L.str.66, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_parent_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.67, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.67, %rsi
	movabsq	$.L.str.68, %rdx
	movabsq	$.L.str.69, %rcx
	movabsq	$.L.str.35, %r8
	movabsq	$.L.str.36, %r9
	movabsq	$.L.str.37, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.70, %rax
	movabsq	$.L.str.71, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_children_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.72, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.72, %rsi
	movabsq	$.L.str.73, %rdx
	movabsq	$.L.str.74, %rcx
	movabsq	$.L.str.35, %r8
	movabsq	$.L.str.36, %r9
	movabsq	$.L.str.37, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.75, %rdi
	movabsq	$.L.str.76, %rsi
	movabsq	$.L.str.77, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -492(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-492(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movl	%r10d, -508(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.78, %rdi
	movabsq	$.L.str.79, %rsi
	movabsq	$.L.str.80, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_name_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.81, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rdx
	movabsq	$.L.str.83, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -544(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.84, %rax
	movabsq	$.L.str.85, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -572(%rbp)        # 4-byte Spill
	movl	-572(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -576(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_set_name_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
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
	movq	-24(%rbp), %rbx
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -600(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.84, %rax
	movabsq	$.L.str.89, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -628(%rbp)        # 4-byte Spill
	movl	-628(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -632(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_visible_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.90, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.90, %rsi
	movabsq	$.L.str.91, %rdx
	movabsq	$.L.str.92, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -656(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.93, %rax
	movabsq	$.L.str.94, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_set_visible_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.95, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.95, %rsi
	movabsq	$.L.str.96, %rdx
	movabsq	$.L.str.97, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -696(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.93, %rax
	movabsq	$.L.str.98, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_linked_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.99, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.99, %rsi
	movabsq	$.L.str.100, %rdx
	movabsq	$.L.str.101, %rcx
	movabsq	$.L.str.102, %rax
	movabsq	$.L.str.103, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-728(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -736(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.104, %rax
	movabsq	$.L.str.105, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_set_linked_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.106, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.106, %rsi
	movabsq	$.L.str.107, %rdx
	movabsq	$.L.str.108, %rcx
	movabsq	$.L.str.102, %rax
	movabsq	$.L.str.103, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -776(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.104, %rax
	movabsq	$.L.str.109, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_lock_content_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.110, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.110, %rsi
	movabsq	$.L.str.111, %rdx
	movabsq	$.L.str.112, %rcx
	movabsq	$.L.str.35, %r8
	movabsq	$.L.str.36, %r9
	movabsq	$.L.str.113, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.114, %rdi
	movabsq	$.L.str.115, %rsi
	movabsq	$.L.str.116, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_set_lock_content_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.117, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.117, %rsi
	movabsq	$.L.str.118, %rdx
	movabsq	$.L.str.119, %rcx
	movabsq	$.L.str.35, %r8
	movabsq	$.L.str.36, %r9
	movabsq	$.L.str.113, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.114, %rdi
	movabsq	$.L.str.115, %rsi
	movabsq	$.L.str.120, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_tattoo_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.121, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.121, %rsi
	movabsq	$.L.str.122, %rdx
	movabsq	$.L.str.123, %rcx
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.103, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -880(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.125, %rax
	movabsq	$.L.str.126, %rdx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -900(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-900(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movl	%r10d, -904(%rbp)       # 4-byte Spill
	callq	g_param_spec_uint
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_set_tattoo_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.127, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.127, %rsi
	movabsq	$.L.str.128, %rdx
	movabsq	$.L.str.129, %rcx
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.103, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-920(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -928(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.125, %rax
	movabsq	$.L.str.130, %rdx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -948(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-948(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movl	%r10d, -952(%rbp)       # 4-byte Spill
	callq	g_param_spec_uint
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_attach_parasite_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.131, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.131, %rsi
	movabsq	$.L.str.132, %rdx
	movabsq	$.L.str.133, %rcx
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.103, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-968(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -976(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -984(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.134, %rax
	movabsq	$.L.str.135, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_parasite
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_detach_parasite_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.136, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.136, %rsi
	movabsq	$.L.str.137, %rdx
	movabsq	$.L.str.138, %rcx
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.103, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1016(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.84, %rax
	movabsq	$.L.str.139, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -1044(%rbp)       # 4-byte Spill
	movl	-1044(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1048(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_parasite_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.140, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.140, %rsi
	movabsq	$.L.str.141, %rdx
	movabsq	$.L.str.142, %rcx
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.103, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1064(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1072(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.84, %rax
	movabsq	$.L.str.143, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -1100(%rbp)       # 4-byte Spill
	movl	-1100(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1104(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.134, %rax
	movabsq	$.L.str.144, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1112(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_parasite
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$item_get_parasite_list_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
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
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1136(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.150, %rdi
	movabsq	$.L.str.151, %rsi
	movabsq	$.L.str.152, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1148(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1148(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	movl	%r10d, -1164(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.153, %rax
	movabsq	$.L.str.154, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_string_array
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1192, %rsp             # imm = 0x4A8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_item_procs, .Lfunc_end0-register_item_procs
	.cfi_endproc

	.align	16, 0x90
	.type	item_is_valid_invoker,@function
item_is_valid_invoker:                  # @item_is_valid_invoker
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
	movl	$0, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	movb	%cl, -97(%rbp)          # 1-byte Spill
	je	.LBB1_9
# BB#8:                                 # %land.rhs
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_removed
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB1_9:                                # %land.end
	movb	-97(%rbp), %al          # 1-byte Reload
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -68(%rbp)
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
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	item_is_valid_invoker, .Lfunc_end1-item_is_valid_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_image_invoker,@function
item_get_image_invoker:                 # @item_get_image_invoker
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
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -80(%rbp)
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB2_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_5:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.7
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
.LBB2_7:                                # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	item_get_image_invoker, .Lfunc_end2-item_get_image_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_delete_invoker,@function
item_delete_invoker:                    # @item_delete_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_is_floating
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then.3
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movq	-64(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_object_unref
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB3_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_8
.LBB3_8:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	item_delete_invoker, .Lfunc_end3-item_delete_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_is_drawable_invoker,@function
item_is_drawable_invoker:               # @item_is_drawable_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_9
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then.3
	movl	$0, -100(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.6
	movl	$1, -100(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.7
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.9
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB4_9:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB4_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_12
.LBB4_12:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB4_14:                               # %if.end.17
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	item_is_drawable_invoker, .Lfunc_end4-item_is_drawable_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_is_layer_invoker,@function
item_is_layer_invoker:                  # @item_is_layer_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_9
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then.3
	movl	$0, -100(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.6
	movl	$1, -100(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.7
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.9
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB5_9:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB5_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB5_12
.LBB5_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB5_12
.LBB5_12:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_14
# BB#13:                                # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB5_14:                               # %if.end.17
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	item_is_layer_invoker, .Lfunc_end5-item_is_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_is_text_layer_invoker,@function
item_is_text_layer_invoker:             # @item_is_text_layer_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_item_is_text_layer
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
	.size	item_is_text_layer_invoker, .Lfunc_end6-item_is_text_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_is_channel_invoker,@function
item_is_channel_invoker:                # @item_is_channel_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_9
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then.3
	movl	$0, -100(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.6
	movl	$1, -100(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.7
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.9
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB7_9:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB7_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB7_12
.LBB7_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB7_12
.LBB7_12:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB7_14:                               # %if.end.17
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	item_is_channel_invoker, .Lfunc_end7-item_is_channel_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_is_layer_mask_invoker,@function
item_is_layer_mask_invoker:             # @item_is_layer_mask_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_9
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then.3
	movl	$0, -100(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.6
	movl	$1, -100(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.7
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.9
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB8_9:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB8_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_12:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_14
# BB#13:                                # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB8_14:                               # %if.end.17
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	item_is_layer_mask_invoker, .Lfunc_end8-item_is_layer_mask_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_is_selection_invoker,@function
item_is_selection_invoker:              # @item_is_selection_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_9
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then.3
	movl	$0, -100(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.6
	movl	$1, -100(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.7
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.9
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB9_9:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB9_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB9_12
.LBB9_12:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_14
# BB#13:                                # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB9_14:                               # %if.end.17
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	item_is_selection_invoker, .Lfunc_end9-item_is_selection_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_is_vectors_invoker,@function
item_is_vectors_invoker:                # @item_is_vectors_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_9
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then.3
	movl	$0, -100(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.6
	movl	$1, -100(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.7
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.9
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB10_9:                               # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB10_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB10_12
.LBB10_11:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB10_12
.LBB10_12:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_14
# BB#13:                                # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB10_14:                              # %if.end.17
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	item_is_vectors_invoker, .Lfunc_end10-item_is_vectors_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_is_group_invoker,@function
item_is_group_invoker:                  # @item_is_group_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -76(%rbp)
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB11_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_7
# BB#6:                                 # %if.then.7
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB11_7:                               # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	item_is_group_invoker, .Lfunc_end11-item_is_group_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_parent_invoker,@function
item_get_parent_invoker:                # @item_get_parent_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_parent
	movq	%rax, -80(%rbp)
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB12_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB12_5
.LBB12_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_item
.LBB12_7:                               # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	item_get_parent_invoker, .Lfunc_end12-item_get_parent_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_children_invoker,@function
item_get_children_invoker:              # @item_get_children_invoker
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
	movl	$0, -76(%rbp)
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_14
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB13_12
# BB#2:                                 # %if.then.5
	movq	-96(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB13_11
# BB#3:                                 # %if.then.8
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
.LBB13_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB13_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movslq	-108(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB13_4 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB13_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false
                                        #   in Loop: Header=BB13_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_9:                               # %cond.end
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movl	-108(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -108(%rbp)
	jmp	.LBB13_4
.LBB13_10:                              # %for.end
	jmp	.LBB13_11
.LBB13_11:                              # %if.end
	jmp	.LBB13_13
.LBB13_12:                              # %if.else
	movl	$0, -52(%rbp)
.LBB13_13:                              # %if.end.19
	jmp	.LBB13_14
.LBB13_14:                              # %if.end.20
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB13_16
# BB#15:                                # %cond.true.22
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB13_17
.LBB13_16:                              # %cond.false.23
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB13_17
.LBB13_17:                              # %cond.end.24
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_19
# BB#18:                                # %if.then.28
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
.LBB13_19:                              # %if.end.34
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	item_get_children_invoker, .Lfunc_end13-item_get_children_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_name_invoker,@function
item_get_name_invoker:                  # @item_get_name_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB14_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB14_5
.LBB14_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB14_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	item_get_name_invoker, .Lfunc_end14-item_get_name_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_set_name_invoker,@function
item_set_name_invoker:                  # @item_set_name_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_rename
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
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	item_set_name_invoker, .Lfunc_end15-item_set_name_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_visible_invoker,@function
item_get_visible_invoker:               # @item_get_visible_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	movl	%eax, -76(%rbp)
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB16_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB16_5
.LBB16_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB16_5
.LBB16_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_7
# BB#6:                                 # %if.then.7
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB16_7:                               # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	item_get_visible_invoker, .Lfunc_end16-item_get_visible_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_set_visible_invoker,@function
item_set_visible_invoker:               # @item_set_visible_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_visible
.LBB17_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB17_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_5
.LBB17_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	item_set_visible_invoker, .Lfunc_end17-item_set_visible_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_linked_invoker,@function
item_get_linked_invoker:                # @item_get_linked_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	movl	%eax, -76(%rbp)
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB18_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_5
.LBB18_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_7
# BB#6:                                 # %if.then.7
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB18_7:                               # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	item_get_linked_invoker, .Lfunc_end18-item_get_linked_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_set_linked_invoker,@function
item_set_linked_invoker:                # @item_set_linked_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_linked
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
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	item_set_linked_invoker, .Lfunc_end19-item_set_linked_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_lock_content_invoker,@function
item_get_lock_content_invoker:          # @item_get_lock_content_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_lock_content
	movl	%eax, -76(%rbp)
.LBB20_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB20_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB20_5
.LBB20_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB20_5
.LBB20_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_7
# BB#6:                                 # %if.then.7
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB20_7:                               # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	item_get_lock_content_invoker, .Lfunc_end20-item_get_lock_content_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_set_lock_content_invoker,@function
item_set_lock_content_invoker:          # @item_set_lock_content_invoker
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
	callq	gimp_value_get_item
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
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_can_lock_content
	cmpl	$0, %eax
	je	.LBB21_3
# BB#2:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_lock_content
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB21_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB21_8
.LBB21_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB21_8
.LBB21_8:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	item_set_lock_content_invoker, .Lfunc_end21-item_set_lock_content_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_tattoo_invoker,@function
item_get_tattoo_invoker:                # @item_get_tattoo_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movl	%eax, -76(%rbp)
.LBB22_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB22_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_7
# BB#6:                                 # %if.then.7
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_uint
.LBB22_7:                               # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	item_get_tattoo_invoker, .Lfunc_end22-item_get_tattoo_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_set_tattoo_invoker,@function
item_set_tattoo_invoker:                # @item_set_tattoo_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_uint
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_item_set_tattoo
.LBB23_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB23_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB23_5
.LBB23_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB23_5
.LBB23_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	item_set_tattoo_invoker, .Lfunc_end23-item_set_tattoo_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_attach_parasite_invoker,@function
item_attach_parasite_invoker:           # @item_attach_parasite_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boxed
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_item_parasite_attach
.LBB24_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB24_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB24_5
.LBB24_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB24_5
.LBB24_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	item_attach_parasite_invoker, .Lfunc_end24-item_attach_parasite_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_detach_parasite_invoker,@function
item_detach_parasite_invoker:           # @item_detach_parasite_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_item_parasite_detach
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB25_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB25_5
.LBB25_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB25_5
.LBB25_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	item_detach_parasite_invoker, .Lfunc_end25-item_detach_parasite_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_parasite_invoker,@function
item_get_parasite_invoker:              # @item_get_parasite_invoker
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
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB26_4
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_item_parasite_find
	movq	%rax, %rdi
	callq	gimp_parasite_copy
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then.7
	movl	$0, -52(%rbp)
.LBB26_3:                               # %if.end
	jmp	.LBB26_4
.LBB26_4:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB26_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB26_7
.LBB26_6:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB26_7
.LBB26_7:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB26_9
# BB#8:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_value_take_boxed
.LBB26_9:                               # %if.end.15
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	item_get_parasite_invoker, .Lfunc_end26-item_get_parasite_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	item_get_parasite_list_invoker,@function
item_get_parasite_list_invoker:         # @item_get_parasite_list_invoker
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
	callq	gimp_value_get_item
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB27_2
# BB#1:                                 # %if.then
	leaq	-76(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	gimp_item_parasite_list
	movq	%rax, -88(%rbp)
.LBB27_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB27_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB27_5
.LBB27_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB27_5
.LBB27_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB27_7
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
.LBB27_7:                               # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	item_get_parasite_list_invoker, .Lfunc_end27-item_get_parasite_list_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-item-is-valid"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Returns TRUE if the item is valid."
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure checks if the given item ID is valid and refers to an existing item."
	.size	.L.str.2, 84

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
	.asciz	"item"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The item to check"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"valid"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Whether the item ID is valid"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-item-get-image"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Returns the item's image."
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"This procedure returns the item's image."
	.size	.L.str.12, 41

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
	.asciz	"The item"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"image"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The item's image"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-item-delete"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Delete a item."
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"This procedure deletes the specified item. This must not be done if the image containing this item was already deleted or if the item was already removed from the image. The only case in which this procedure is useful is if you want to get rid of a item which has not yet been added to an image."
	.size	.L.str.20, 296

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The item to delete"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-item-is-drawable"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Returns whether the item is a drawable."
	.size	.L.str.23, 40

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"This procedure returns TRUE if the specified item is a drawable."
	.size	.L.str.24, 65

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"drawable"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"TRUE if the item is a drawable, FALSE otherwise"
	.size	.L.str.26, 48

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-item-is-layer"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Returns whether the item is a layer."
	.size	.L.str.28, 37

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"This procedure returns TRUE if the specified item is a layer."
	.size	.L.str.29, 62

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"layer"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"TRUE if the item is a layer, FALSE otherwise"
	.size	.L.str.31, 45

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-item-is-text-layer"
	.size	.L.str.32, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Returns whether the item is a text layer."
	.size	.L.str.33, 42

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"This procedure returns TRUE if the specified item is a text layer."
	.size	.L.str.34, 67

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.35, 34

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Michael Natterer"
	.size	.L.str.36, 17

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"2010"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"text-layer"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"text layer"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"TRUE if the item is a text layer, FALSE otherwise."
	.size	.L.str.40, 51

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-item-is-channel"
	.size	.L.str.41, 21

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Returns whether the item is a channel."
	.size	.L.str.42, 39

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"This procedure returns TRUE if the specified item is a channel."
	.size	.L.str.43, 64

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"channel"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"TRUE if the item is a channel, FALSE otherwise"
	.size	.L.str.45, 47

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-item-is-layer-mask"
	.size	.L.str.46, 24

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Returns whether the item is a layer mask."
	.size	.L.str.47, 42

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"This procedure returns TRUE if the specified item is a layer mask."
	.size	.L.str.48, 67

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"layer-mask"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"layer mask"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"TRUE if the item is a layer mask, FALSE otherwise"
	.size	.L.str.51, 50

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-item-is-selection"
	.size	.L.str.52, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Returns whether the item is a selection."
	.size	.L.str.53, 41

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"This procedure returns TRUE if the specified item is a selection."
	.size	.L.str.54, 66

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"selection"
	.size	.L.str.55, 10

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"TRUE if the item is a selection, FALSE otherwise"
	.size	.L.str.56, 49

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-item-is-vectors"
	.size	.L.str.57, 21

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Returns whether the item is a vectors."
	.size	.L.str.58, 39

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"This procedure returns TRUE if the specified item is a vectors."
	.size	.L.str.59, 64

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"vectors"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"TRUE if the item is a vectors, FALSE otherwise"
	.size	.L.str.61, 47

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gimp-item-is-group"
	.size	.L.str.62, 19

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Returns whether the item is a group item."
	.size	.L.str.63, 42

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"This procedure returns TRUE if the specified item is a group item which can have children."
	.size	.L.str.64, 91

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"group"
	.size	.L.str.65, 6

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"TRUE if the item is a group, FALSE otherwise"
	.size	.L.str.66, 45

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-item-get-parent"
	.size	.L.str.67, 21

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Returns the item's parent item."
	.size	.L.str.68, 32

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"This procedure returns the item's parent item, if any."
	.size	.L.str.69, 55

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"parent"
	.size	.L.str.70, 7

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"The item's parent item"
	.size	.L.str.71, 23

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-item-get-children"
	.size	.L.str.72, 23

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Returns the item's list of children."
	.size	.L.str.73, 37

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"This procedure returns the list of items which are children of the specified item. The order is topmost to bottommost."
	.size	.L.str.74, 119

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"num-children"
	.size	.L.str.75, 13

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"num children"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"The item's number of children"
	.size	.L.str.77, 30

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"child-ids"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"child ids"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"The item's list of children"
	.size	.L.str.80, 28

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-item-get-name"
	.size	.L.str.81, 19

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Get the name of the specified item."
	.size	.L.str.82, 36

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"This procedure returns the specified item's name."
	.size	.L.str.83, 50

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"name"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"The item name"
	.size	.L.str.85, 14

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-item-set-name"
	.size	.L.str.86, 19

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Set the name of the specified item."
	.size	.L.str.87, 36

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"This procedure sets the specified item's name."
	.size	.L.str.88, 47

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"The new item name"
	.size	.L.str.89, 18

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"gimp-item-get-visible"
	.size	.L.str.90, 22

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Get the visibility of the specified item."
	.size	.L.str.91, 42

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"This procedure returns the specified item's visibility."
	.size	.L.str.92, 56

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"visible"
	.size	.L.str.93, 8

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"The item visibility"
	.size	.L.str.94, 20

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gimp-item-set-visible"
	.size	.L.str.95, 22

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Set the visibility of the specified item."
	.size	.L.str.96, 42

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"This procedure sets the specified item's visibility."
	.size	.L.str.97, 53

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"The new item visibility"
	.size	.L.str.98, 24

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"gimp-item-get-linked"
	.size	.L.str.99, 21

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Get the linked state of the specified item."
	.size	.L.str.100, 44

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"This procedure returns the specified item's linked state."
	.size	.L.str.101, 58

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Wolfgang Hofer"
	.size	.L.str.102, 15

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"1998"
	.size	.L.str.103, 5

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"linked"
	.size	.L.str.104, 7

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"The item linked state (for moves)"
	.size	.L.str.105, 34

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"gimp-item-set-linked"
	.size	.L.str.106, 21

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Set the linked state of the specified item."
	.size	.L.str.107, 44

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"This procedure sets the specified item's linked state."
	.size	.L.str.108, 55

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"The new item linked state"
	.size	.L.str.109, 26

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gimp-item-get-lock-content"
	.size	.L.str.110, 27

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Get the 'lock content' state of the specified item."
	.size	.L.str.111, 52

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"This procedure returns the specified item's lock content state."
	.size	.L.str.112, 64

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"2009"
	.size	.L.str.113, 5

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"lock-content"
	.size	.L.str.114, 13

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"lock content"
	.size	.L.str.115, 13

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Whether the item's contents are locked"
	.size	.L.str.116, 39

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"gimp-item-set-lock-content"
	.size	.L.str.117, 27

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Set the 'lock content' state of the specified item."
	.size	.L.str.118, 52

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"This procedure sets the specified item's lock content state."
	.size	.L.str.119, 61

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"The new item 'lock content' state"
	.size	.L.str.120, 34

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"gimp-item-get-tattoo"
	.size	.L.str.121, 21

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Get the tattoo of the specified item."
	.size	.L.str.122, 38

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"This procedure returns the specified item's tattoo. A tattoo is a unique and permanent identifier attached to a item that can be used to uniquely identify a item within an image even between sessions."
	.size	.L.str.123, 201

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Jay Cox"
	.size	.L.str.124, 8

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"tattoo"
	.size	.L.str.125, 7

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"The item tattoo"
	.size	.L.str.126, 16

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"gimp-item-set-tattoo"
	.size	.L.str.127, 21

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Set the tattoo of the specified item."
	.size	.L.str.128, 38

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"This procedure sets the specified item's tattoo. A tattoo is a unique and permanent identifier attached to a item that can be used to uniquely identify a item within an image even between sessions."
	.size	.L.str.129, 198

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"The new item tattoo"
	.size	.L.str.130, 20

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"gimp-item-attach-parasite"
	.size	.L.str.131, 26

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Add a parasite to an item."
	.size	.L.str.132, 27

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"This procedure attaches a parasite to an item. It has no return values."
	.size	.L.str.133, 72

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"parasite"
	.size	.L.str.134, 9

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"The parasite to attach to the item"
	.size	.L.str.135, 35

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"gimp-item-detach-parasite"
	.size	.L.str.136, 26

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Removes a parasite from an item."
	.size	.L.str.137, 33

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"This procedure detaches a parasite from an item. It has no return values."
	.size	.L.str.138, 74

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"The name of the parasite to detach from the item."
	.size	.L.str.139, 50

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gimp-item-get-parasite"
	.size	.L.str.140, 23

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Look up a parasite in an item"
	.size	.L.str.141, 30

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Finds and returns the parasite that is attached to an item."
	.size	.L.str.142, 60

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"The name of the parasite to find"
	.size	.L.str.143, 33

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"The found parasite"
	.size	.L.str.144, 19

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"gimp-item-get-parasite-list"
	.size	.L.str.145, 28

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"List all parasites."
	.size	.L.str.146, 20

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Returns a list of all parasites currently attached the an item."
	.size	.L.str.147, 64

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Marc Lehmann"
	.size	.L.str.148, 13

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"1999"
	.size	.L.str.149, 5

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"num-parasites"
	.size	.L.str.150, 14

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"num parasites"
	.size	.L.str.151, 14

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"The number of attached parasites"
	.size	.L.str.152, 33

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"parasites"
	.size	.L.str.153, 10

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"The names of currently attached parasites"
	.size	.L.str.154, 42


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
