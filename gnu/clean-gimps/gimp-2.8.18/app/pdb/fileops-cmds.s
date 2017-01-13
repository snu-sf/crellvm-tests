	.text
	.file	"fileops-cmds.bc"
	.globl	register_fileops_procs
	.align	16, 0x90
	.type	register_fileops_procs,@function
register_fileops_procs:                 # @register_fileops_procs
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
	subq	$1056, %rsp             # imm = 0x420
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$file_load_invoker, %rax
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
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_run_mode_get_type
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdx
	movl	$1, %ecx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -96(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-32(%rbp), %r10
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$file_load_layer_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
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
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.20, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_run_mode_get_type
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
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
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.23, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_layer_id
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$file_load_layers_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	movabsq	$.L.str.26, %rcx
	movabsq	$.L.str.27, %r8
	movabsq	$.L.str.28, %r9
	movabsq	$.L.str.29, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_run_mode_get_type
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -264(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -272(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.33, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$.L.str.35, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$file_save_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rdx
	movabsq	$.L.str.38, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %rbx
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -312(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gimp_run_mode_get_type
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.39, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.40, %rax
	movabsq	$.L.str.41, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.42, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -360(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-32(%rbp), %r10
	movl	%r8d, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -368(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -376(%rbp)        # 8-byte Spill
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$file_load_thumbnail_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movabsq	$.L.str.45, %rcx
	movabsq	$.L.str.46, %rax
	movabsq	$.L.str.47, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %rbx
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -408(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.48, %rdx
	movl	$1, %ecx
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	movl	%r14d, %esi
	movl	$227, %r14d
	movq	-32(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%r14d, -428(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.49, %rax
	movabsq	$.L.str.50, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -444(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.51, %rax
	movabsq	$.L.str.52, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -460(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.53, %rdi
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.55, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -464(%rbp)        # 4-byte Spill
	movl	-464(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -468(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.56, %rdi
	movabsq	$.L.str.57, %rsi
	movabsq	$.L.str.58, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$file_save_thumbnail_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.59, %rsi
	movabsq	$.L.str.60, %rdx
	movabsq	$.L.str.61, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %rbx
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -512(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.62, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.63, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -540(%rbp)        # 4-byte Spill
	movl	-540(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -544(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$temp_name_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
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
	movq	-32(%rbp), %rbx
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -568(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.67, %rax
	movabsq	$.L.str.68, %rdx
	movl	$1, %r11d
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movl	$227, %r14d
	movq	-32(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%r14d, -588(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movl	-612(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -616(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$register_magic_load_handler_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.71, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.71, %rsi
	movabsq	$.L.str.72, %rdx
	movabsq	$.L.str.73, %rcx
	movabsq	$.L.str.74, %rax
	movabsq	$.L.str.75, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %rbx
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -640(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movabsq	$.L.str.78, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%r14d, %r14d
	movl	%r14d, %eax
	movl	$227, %r14d
	movq	-32(%rbp), %rcx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -656(%rbp)        # 8-byte Spill
	movl	%r14d, -660(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.79, %rax
	movabsq	$.L.str.80, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$16611, %r8d            # imm = 0x40E3
	movq	-32(%rbp), %rdi
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	movl	-684(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -688(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$16611, 8(%rsp)         # imm = 0x40E3
	callq	gimp_param_spec_string
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.81, %rax
	movabsq	$.L.str.82, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$16611, %r8d            # imm = 0x40E3
	movq	-32(%rbp), %rdi
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	movl	-708(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -712(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$16611, 8(%rsp)         # imm = 0x40E3
	callq	gimp_param_spec_string
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.83, %rax
	movabsq	$.L.str.84, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$16611, %r8d            # imm = 0x40E3
	movq	-32(%rbp), %rdi
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -732(%rbp)        # 4-byte Spill
	movl	-732(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -736(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$16611, 8(%rsp)         # imm = 0x40E3
	callq	gimp_param_spec_string
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$register_load_handler_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.85, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.85, %rsi
	movabsq	$.L.str.72, %rdx
	movabsq	$.L.str.86, %rcx
	movabsq	$.L.str.74, %rax
	movabsq	$.L.str.75, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %rbx
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-752(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -760(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movabsq	$.L.str.78, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%r14d, %r14d
	movl	%r14d, %eax
	movl	$227, %r14d
	movq	-32(%rbp), %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -776(%rbp)        # 8-byte Spill
	movl	%r14d, -780(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.79, %rax
	movabsq	$.L.str.80, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$16611, %r8d            # imm = 0x40E3
	movq	-32(%rbp), %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -800(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -804(%rbp)        # 4-byte Spill
	movl	-804(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -808(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$16611, 8(%rsp)         # imm = 0x40E3
	callq	gimp_param_spec_string
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.81, %rax
	movabsq	$.L.str.82, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$16611, %r8d            # imm = 0x40E3
	movq	-32(%rbp), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -828(%rbp)        # 4-byte Spill
	movl	-828(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -832(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$16611, 8(%rsp)         # imm = 0x40E3
	callq	gimp_param_spec_string
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$register_save_handler_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.87, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.87, %rsi
	movabsq	$.L.str.88, %rdx
	movabsq	$.L.str.89, %rcx
	movabsq	$.L.str.74, %rax
	movabsq	$.L.str.75, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %rbx
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -856(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movabsq	$.L.str.90, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%r14d, %r14d
	movl	%r14d, %eax
	movl	$227, %r14d
	movq	-32(%rbp), %rcx
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -872(%rbp)        # 8-byte Spill
	movl	%r14d, -876(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.79, %rax
	movabsq	$.L.str.91, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$16611, %r8d            # imm = 0x40E3
	movq	-32(%rbp), %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -896(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -900(%rbp)        # 4-byte Spill
	movl	-900(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -904(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$16611, 8(%rsp)         # imm = 0x40E3
	callq	gimp_param_spec_string
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.81, %rax
	movabsq	$.L.str.92, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$16611, %r8d            # imm = 0x40E3
	movq	-32(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -924(%rbp)        # 4-byte Spill
	movl	-924(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -928(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$16611, 8(%rsp)         # imm = 0x40E3
	callq	gimp_param_spec_string
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$register_file_handler_mime_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.93, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.93, %rsi
	movabsq	$.L.str.94, %rdx
	movabsq	$.L.str.95, %rcx
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.96, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movabsq	$.L.str.97, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%r14d, %r14d
	movl	%r14d, %eax
	movl	$227, %r14d
	movq	-32(%rbp), %rcx
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -960(%rbp)        # 8-byte Spill
	movl	%r14d, -964(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.98, %rdi
	movabsq	$.L.str.99, %rsi
	movabsq	$.L.str.100, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -968(%rbp)        # 4-byte Spill
	movl	-968(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -972(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -984(%rbp)        # 8-byte Spill
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$register_thumbnail_loader_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.101, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.101, %rsi
	movabsq	$.L.str.102, %rdx
	movabsq	$.L.str.103, %rcx
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.96, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.104, %rdi
	movabsq	$.L.str.105, %rsi
	movabsq	$.L.str.106, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%r14d, %r14d
	movl	%r14d, %eax
	movl	$227, %r14d
	movq	-32(%rbp), %rcx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	movl	%r14d, -1028(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.107, %rdi
	movabsq	$.L.str.108, %rsi
	movabsq	$.L.str.109, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -1032(%rbp)       # 4-byte Spill
	movl	-1032(%rbp), %r11d      # 4-byte Reload
	movl	%r8d, -1036(%rbp)       # 4-byte Spill
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -1048(%rbp)       # 8-byte Spill
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_fileops_procs, .Lfunc_end0-register_fileops_procs
	.cfi_endproc

	.align	16, 0x90
	.type	file_load_invoker,@function
file_load_invoker:                      # @file_load_invoker
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_value_get_string
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	file_utils_filename_to_uri
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB1_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	je	.LBB1_3
# BB#2:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_4
.LBB1_3:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_4
.LBB1_4:                                # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	xorl	%esi, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -8(%rbp)
	jmp	.LBB1_39
.LBB1_5:                                # %if.end
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	64(%rax), %rdi
	movq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	file_procedure_find
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_free
	cmpq	$0, -80(%rbp)
	jne	.LBB1_10
# BB#6:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	je	.LBB1_8
# BB#7:                                 # %cond.true.8
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_9:                                # %cond.end.10
	movq	-200(%rbp), %rax        # 8-byte Reload
	xorl	%esi, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -8(%rbp)
	jmp	.LBB1_39
.LBB1_10:                               # %if.end.13
	movq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_procedure_get_arguments
	movq	%rax, -64(%rbp)
	movl	$0, -100(%rbp)
.LBB1_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -100(%rbp)
	jge	.LBB1_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB1_11 Depth=1
	movslq	-100(%rbp), %rax
	movq	-48(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movslq	-100(%rbp), %rcx
	movq	-64(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	8(%rdx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_value_transform
	movl	%eax, -212(%rbp)        # 4-byte Spill
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB1_11
.LBB1_14:                               # %for.end
	movl	$3, -100(%rbp)
.LBB1_15:                               # %for.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB1_27
# BB#16:                                # %for.body.25
                                        #   in Loop: Header=BB1_15 Depth=1
	movslq	-100(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -112(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	$0, -124(%rbp)
	jmp	.LBB1_23
.LBB1_18:                               # %if.else
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB1_21
# BB#20:                                # %if.then.35
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	$1, -124(%rbp)
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.36
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB1_22:                               # %if.end.38
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.39
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.41
                                        #   in Loop: Header=BB1_15 Depth=1
	movabsq	$.L.str.110, %rsi
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	%rax, %rdi
	callq	g_value_set_static_string
.LBB1_25:                               # %if.end.45
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_26
.LBB1_26:                               # %for.inc.46
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB1_15
.LBB1_27:                               # %for.end.48
	movq	-24(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-64(%rbp), %r9
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	gimp_pdb_execute_procedure_by_name_args
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_get_enum
	cmpl	$3, %eax
	jne	.LBB1_38
# BB#28:                                # %if.then.54
	movq	-72(%rbp), %rax
	cmpl	$1, (%rax)
	jbe	.LBB1_37
# BB#29:                                # %land.lhs.true.56
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, -136(%rbp)
	callq	gimp_image_id_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.65
	movl	$0, -148(%rbp)
	jmp	.LBB1_35
.LBB1_31:                               # %if.else.66
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB1_33
# BB#32:                                # %if.then.69
	movl	$1, -148(%rbp)
	jmp	.LBB1_34
.LBB1_33:                               # %if.else.70
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -148(%rbp)
.LBB1_34:                               # %if.end.72
	jmp	.LBB1_35
.LBB1_35:                               # %if.end.73
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB1_37
# BB#36:                                # %if.then.76
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_image
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_image_set_load_proc
.LBB1_37:                               # %if.end.81
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.82
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_39:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_load_invoker, .Lfunc_end1-file_load_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	file_load_layer_invoker,@function
file_load_layer_invoker:                # @file_load_layer_invoker
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp11:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	$0, -104(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gimp_value_get_image
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -96(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB2_8
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	file_utils_filename_to_uri
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB2_6
# BB#2:                                 # %if.then.9
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-124(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %r9
	movq	-88(%rbp), %r10
	movq	-112(%rbp), %r11
	movl	-76(%rbp), %eax
	movq	-56(%rbp), %rbx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	%r11, %r9
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	file_open_layers
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.12
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movl	$0, -60(%rbp)
.LBB2_5:                                # %if.end
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.13
	movl	$0, -60(%rbp)
.LBB2_7:                                # %if.end.14
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.15
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB2_10
# BB#9:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_11
.LBB2_11:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -72(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB2_13
# BB#12:                                # %if.then.19
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB2_13:                               # %if.end.22
	movq	-72(%rbp), %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_load_layer_invoker, .Lfunc_end2-file_load_layer_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	file_load_layers_invoker,@function
file_load_layers_invoker:               # @file_load_layers_invoker
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
	pushq	%rbx
	subq	$232, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movl	$0, -100(%rbp)
	movq	$0, -112(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gimp_value_get_image
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -96(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB3_15
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	file_utils_filename_to_uri
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB3_13
# BB#2:                                 # %if.then.9
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-132(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %r9
	movq	-88(%rbp), %r10
	movq	-120(%rbp), %r11
	movl	-76(%rbp), %eax
	movq	-56(%rbp), %rbx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	%r11, %r9
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	file_open_layers
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB3_11
# BB#3:                                 # %if.then.12
	movq	-128(%rbp), %rdi
	callq	g_list_length
	movl	$4, %ecx
	movl	%ecx, %esi
	movl	%eax, -100(%rbp)
	movslq	-100(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -112(%rbp)
	movl	$0, -148(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB3_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movslq	-148(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB3_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_9
.LBB3_9:                                # %cond.end
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	jmp	.LBB3_4
.LBB3_10:                               # %for.end
	movq	-128(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB3_12
.LBB3_11:                               # %if.else
	movl	$0, -60(%rbp)
.LBB3_12:                               # %if.end
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.21
	movl	$0, -60(%rbp)
.LBB3_14:                               # %if.end.22
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.23
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movl	%esi, -196(%rbp)        # 4-byte Spill
	je	.LBB3_17
# BB#16:                                # %cond.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB3_18
.LBB3_18:                               # %cond.end.27
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -72(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.31
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-112(%rbp), %rsi
	movslq	-100(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int32array
.LBB3_20:                               # %if.end.37
	movq	-72(%rbp), %rax
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_load_layers_invoker, .Lfunc_end3-file_load_layers_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_invoker,@function
file_save_invoker:                      # @file_save_invoker
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_value_get_string
	movq	-56(%rbp), %rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	file_utils_filename_to_uri
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB4_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	je	.LBB4_3
# BB#2:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB4_4
.LBB4_3:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB4_4
.LBB4_4:                                # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	xorl	%esi, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -8(%rbp)
	jmp	.LBB4_30
.LBB4_5:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	72(%rcx), %rdi
	movq	-96(%rbp), %rsi
	callq	file_procedure_find
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rdi
	movq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	file_procedure_find
	movq	%rax, -80(%rbp)
.LBB4_7:                                # %if.end.9
	movq	-96(%rbp), %rdi
	callq	g_free
	cmpq	$0, -80(%rbp)
	jne	.LBB4_12
# BB#8:                                 # %if.then.11
	movq	-16(%rbp), %rdi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	je	.LBB4_10
# BB#9:                                 # %cond.true.13
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB4_11
.LBB4_11:                               # %cond.end.15
	movq	-168(%rbp), %rax        # 8-byte Reload
	xorl	%esi, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -8(%rbp)
	jmp	.LBB4_30
.LBB4_12:                               # %if.end.18
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_procedure_get_arguments
	movq	%rax, -64(%rbp)
	movl	$0, -100(%rbp)
.LBB4_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -100(%rbp)
	jge	.LBB4_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB4_13 Depth=1
	movslq	-100(%rbp), %rax
	movq	-48(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movslq	-100(%rbp), %rcx
	movq	-64(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	8(%rdx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_value_transform
	movl	%eax, -180(%rbp)        # 4-byte Spill
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB4_13
.LBB4_16:                               # %for.end
	movl	$5, -100(%rbp)
.LBB4_17:                               # %for.cond.28
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB4_29
# BB#18:                                # %for.body.30
                                        #   in Loop: Header=BB4_17 Depth=1
	movslq	-100(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -112(%rbp)
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB4_20
# BB#19:                                # %if.then.36
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	$0, -124(%rbp)
	jmp	.LBB4_25
.LBB4_20:                               # %if.else
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_23
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_23
# BB#22:                                # %if.then.40
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	$1, -124(%rbp)
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.41
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB4_24:                               # %if.end.43
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.44
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_27
# BB#26:                                # %if.then.46
                                        #   in Loop: Header=BB4_17 Depth=1
	movabsq	$.L.str.110, %rsi
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	8(%rcx), %rax
	movq	%rax, %rdi
	callq	g_value_set_static_string
.LBB4_27:                               # %if.end.50
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_28
.LBB4_28:                               # %for.inc.51
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB4_17
.LBB4_29:                               # %for.end.53
	movq	-24(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-64(%rbp), %r9
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	gimp_pdb_execute_procedure_by_name_args
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_value_array_free
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	file_save_invoker, .Lfunc_end4-file_save_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	file_load_thumbnail_invoker,@function
file_load_thumbnail_invoker:            # @file_load_thumbnail_invoker
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
	subq	$128, %rsp
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
	movq	$0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	file_utils_load_thumbnail
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then.3
	movq	-104(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -76(%rbp)
	movq	-104(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	movl	%eax, -80(%rbp)
	imull	$3, -76(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-104(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %if.end.9
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
# BB#9:                                 # %if.then.13
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
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	-96(%rbp), %rsi
	movslq	-84(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int8array
.LBB5_10:                               # %if.end.22
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	file_load_thumbnail_invoker, .Lfunc_end5-file_load_thumbnail_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_thumbnail_invoker,@function
file_save_thumbnail_invoker:            # @file_save_thumbnail_invoker
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
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	file_utils_save_thumbnail
	movl	%eax, -52(%rbp)
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB6_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	file_save_thumbnail_invoker, .Lfunc_end6-file_save_thumbnail_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	temp_name_invoker,@function
temp_name_invoker:                      # @temp_name_invoker
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
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_get_temp_filename
	movq	%rax, -80(%rbp)
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
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB7_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	temp_name_invoker, .Lfunc_end7-temp_name_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	register_magic_load_handler_invoker,@function
register_magic_load_handler_invoker:    # @register_magic_load_handler_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
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
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	callq	gimp_plug_in_manager_register_load_handler
	movl	%eax, -52(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_free
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB8_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_5:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	register_magic_load_handler_invoker, .Lfunc_end8-register_magic_load_handler_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	register_load_handler_invoker,@function
register_load_handler_invoker:          # @register_load_handler_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
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
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	callq	gimp_plug_in_manager_register_load_handler
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
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
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	register_load_handler_invoker, .Lfunc_end9-register_load_handler_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	register_save_handler_invoker,@function
register_save_handler_invoker:          # @register_save_handler_invoker
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
	callq	g_value_get_string
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
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	callq	gimp_plug_in_manager_register_save_handler
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
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
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	register_save_handler_invoker, .Lfunc_end10-register_save_handler_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	register_file_handler_mime_invoker,@function
register_file_handler_mime_invoker:     # @register_file_handler_mime_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_plug_in_manager_register_mime_type
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB11_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	register_file_handler_mime_invoker, .Lfunc_end11-register_file_handler_mime_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	register_thumbnail_loader_invoker,@function
register_thumbnail_loader_invoker:      # @register_thumbnail_loader_invoker
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
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	gimp_plug_in_manager_register_thumb_loader
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB12_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB12_5
.LBB12_5:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	register_thumbnail_loader_invoker, .Lfunc_end12-register_thumbnail_loader_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-file-load"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Loads an image file by invoking the right load handler."
	.size	.L.str.1, 56

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure invokes the correct file load handler using magic if possible, and falling back on the file's extension and/or prefix if not. The name of the file to load is typically a full pathname, and the name entered is what the user actually typed before prepending a directory path. The reason for this is that if the user types http://www.xcf/~gimp/ he wants to fetch a URL, and the full pathname will not look like a URL.\""
	.size	.L.str.2, 431

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Josh MacDonald"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1997"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"run-mode"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"run mode"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The run mode"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"filename"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The name of the file to load"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"raw-filename"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"raw filename"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"The name as entered by the user"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"image"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The output image"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-file-load-layer"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Loads an image file as a layer for an existing image."
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"This procedure behaves like the file-load procedure but opens the specified image as a layer for an existing image. The returned layer needs to be added to the existing image with 'gimp-image-insert-layer'."
	.size	.L.str.17, 207

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.18, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Sven Neumann"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"2005"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Destination image"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"layer"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"The layer created when loading the image file"
	.size	.L.str.23, 46

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-file-load-layers"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Loads an image file as layers for an existing image."
	.size	.L.str.25, 53

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"This procedure behaves like the file-load procedure but opens the specified image as layers for an existing image. The returned layers needs to be added to the existing image with 'gimp-image-insert-layer'."
	.size	.L.str.26, 207

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.27, 34

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Michael Natterer"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"2006"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"num-layers"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"num layers"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The number of loaded layers"
	.size	.L.str.32, 28

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"layer-ids"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"layer ids"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"The list of loaded layers"
	.size	.L.str.35, 26

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-file-save"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Saves a file by extension."
	.size	.L.str.37, 27

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"This procedure invokes the correct file save handler according to the file's extension and/or prefix. The name of the file to save is typically a full pathname, and the name entered is what the user actually typed before prepending a directory path. The reason for this is that if the user types http://www.xcf/~gimp/ she wants to fetch a URL, and the full pathname will not look like a URL."
	.size	.L.str.38, 392

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Input image"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"drawable"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Drawable to save"
	.size	.L.str.41, 17

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.42, 42

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-file-load-thumbnail"
	.size	.L.str.43, 25

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Loads the thumbnail for a file."
	.size	.L.str.44, 32

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"This procedure tries to load a thumbnail that belongs to the file with the given filename. This name is a full pathname. The returned data is an array of colordepth 3 (RGB), regardless of the image type. Width and height of the thumbnail are also returned. Don't use this function if you need a thumbnail of an already opened image, use 'gimp-image-thumbnail' instead."
	.size	.L.str.45, 369

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Adam D. Moss, Sven Neumann"
	.size	.L.str.46, 27

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"1999-2003"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"The name of the file that owns the thumbnail to load"
	.size	.L.str.48, 53

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"width"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"The width of the thumbnail"
	.size	.L.str.50, 27

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"height"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"The height of the thumbnail"
	.size	.L.str.52, 28

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"thumb-data-count"
	.size	.L.str.53, 17

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"thumb data count"
	.size	.L.str.54, 17

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"The number of bytes in thumbnail data"
	.size	.L.str.55, 38

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"thumb-data"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"thumb data"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"The thumbnail data"
	.size	.L.str.58, 19

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-file-save-thumbnail"
	.size	.L.str.59, 25

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Saves a thumbnail for the given image"
	.size	.L.str.60, 38

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"This procedure saves a thumbnail for the given image according to the Free Desktop Thumbnail Managing Standard. The thumbnail is saved so that it belongs to the file with the given filename. This means you have to save the image under this name first, otherwise this procedure will fail. This procedure may become useful if you want to explicitely save a thumbnail with a file."
	.size	.L.str.61, 378

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"The image"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"The name of the file the thumbnail belongs to"
	.size	.L.str.63, 46

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-temp-name"
	.size	.L.str.64, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Generates a unique filename."
	.size	.L.str.65, 29

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Generates a unique filename using the temp path supplied in the user's gimprc."
	.size	.L.str.66, 79

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"extension"
	.size	.L.str.67, 10

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"The extension the file will have"
	.size	.L.str.68, 33

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"name"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"The new temp filename"
	.size	.L.str.70, 22

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-register-magic-load-handler"
	.size	.L.str.71, 33

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Registers a file load handler procedure."
	.size	.L.str.72, 41

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Registers a procedural database procedure to be called to load files of a particular file format using magic file information."
	.size	.L.str.73, 127

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.74, 31

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"1995-1996"
	.size	.L.str.75, 10

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"procedure-name"
	.size	.L.str.76, 15

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"procedure name"
	.size	.L.str.77, 15

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"The name of the procedure to be used for loading"
	.size	.L.str.78, 49

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"extensions"
	.size	.L.str.79, 11

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"comma separated list of extensions this handler can load (i.e. \"jpg,jpeg\")"
	.size	.L.str.80, 75

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"prefixes"
	.size	.L.str.81, 9

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"comma separated list of prefixes this handler can load (i.e. \"http:,ftp:\")"
	.size	.L.str.82, 75

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"magics"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"comma separated list of magic file information this handler can load (i.e. \"0,string,GIF\")"
	.size	.L.str.84, 91

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"gimp-register-load-handler"
	.size	.L.str.85, 27

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Registers a procedural database procedure to be called to load files of a particular file format."
	.size	.L.str.86, 98

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"gimp-register-save-handler"
	.size	.L.str.87, 27

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Registers a file save handler procedure."
	.size	.L.str.88, 41

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Registers a procedural database procedure to be called to save files in a particular file format."
	.size	.L.str.89, 98

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"The name of the procedure to be used for saving"
	.size	.L.str.90, 48

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"comma separated list of extensions this handler can save (i.e. \"jpg,jpeg\")"
	.size	.L.str.91, 75

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"comma separated list of prefixes this handler can save (i.e. \"http:,ftp:\")"
	.size	.L.str.92, 75

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-register-file-handler-mime"
	.size	.L.str.93, 32

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Associates a MIME type with a file handler procedure."
	.size	.L.str.94, 54

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Registers a MIME type for a file handler procedure. This allows GIMP to determine the MIME type of the file opened or saved using this procedure."
	.size	.L.str.95, 146

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"2004"
	.size	.L.str.96, 5

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"The name of the procedure to associate a MIME type with."
	.size	.L.str.97, 57

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"mime-type"
	.size	.L.str.98, 10

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"mime type"
	.size	.L.str.99, 10

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"A single MIME type, like for example \"image/jpeg\"."
	.size	.L.str.100, 51

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"gimp-register-thumbnail-loader"
	.size	.L.str.101, 31

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Associates a thumbnail loader with a file load procedure."
	.size	.L.str.102, 58

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Some file formats allow for embedded thumbnails, other file formats contain a scalable image or provide the image data in different resolutions. A file plug-in for such a format may register a special procedure that allows GIMP to load a thumbnail preview of the image. This procedure is then associated with the standard load procedure using this function."
	.size	.L.str.103, 358

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"load-proc"
	.size	.L.str.104, 10

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"load proc"
	.size	.L.str.105, 10

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"The name of the procedure the thumbnail loader with."
	.size	.L.str.106, 53

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"thumb-proc"
	.size	.L.str.107, 11

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"thumb proc"
	.size	.L.str.108, 11

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"The name of the thumbnail load procedure."
	.size	.L.str.109, 42

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.zero	1
	.size	.L.str.110, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
