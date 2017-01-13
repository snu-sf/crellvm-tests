	.text
	.file	"plug-in-cmds.bc"
	.globl	register_plug_in_procs
	.align	16, 0x90
	.type	register_plug_in_procs,@function
register_plug_in_procs:                 # @register_plug_in_procs
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
	subq	$616, %rsp              # imm = 0x268
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$plugins_query_invoker, %rax
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
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$16611, %ebx            # imm = 0x40E3
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$16611, 8(%rsp)         # imm = 0x40E3
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	-72(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -128(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -152(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -176(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32_array
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -200(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$plugin_domain_register_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.32, %r8
	movabsq	$.L.str.33, %r9
	movabsq	$.L.str.34, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-24(%rbp), %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movl	%ebx, -252(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$16611, %r8d            # imm = 0x40E3
	movq	-24(%rbp), %r10
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	-256(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$16611, 8(%rsp)         # imm = 0x40E3
	movq	%r10, -272(%rbp)        # 8-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$plugin_help_register_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rdx
	movabsq	$.L.str.43, %rcx
	movabsq	$.L.str.44, %r8
	movabsq	$.L.str.45, %r9
	movabsq	$.L.str.34, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.46, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-24(%rbp), %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movl	%ebx, -316(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r10
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	movl	-320(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -324(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -336(%rbp)        # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$plugin_menu_register_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.50, %rsi
	movabsq	$.L.str.51, %rdx
	movabsq	$.L.str.52, %rcx
	movabsq	$.L.str.44, %r8
	movabsq	$.L.str.45, %r9
	movabsq	$.L.str.53, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.54, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.56, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-24(%rbp), %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movl	%ebx, -380(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.57, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r10
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	movl	-384(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -388(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -400(%rbp)        # 8-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$plugin_menu_branch_register_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.58, %rsi
	movabsq	$.L.str.59, %rdx
	movabsq	$.L.str.60, %rcx
	movabsq	$.L.str.44, %r8
	movabsq	$.L.str.45, %r9
	movabsq	$.L.str.61, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.62, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-24(%rbp), %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movl	%ebx, -444(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.63, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.65, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r10
	movl	%ecx, -448(%rbp)        # 4-byte Spill
	movl	-448(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -452(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -464(%rbp)        # 8-byte Spill
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$plugin_icon_register_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.66, %rsi
	movabsq	$.L.str.67, %rdx
	movabsq	$.L.str.68, %rcx
	movabsq	$.L.str.44, %r8
	movabsq	$.L.str.45, %r9
	movabsq	$.L.str.53, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.54, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.69, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-24(%rbp), %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movl	%ebx, -508(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	callq	gimp_icon_type_get_type
	movabsq	$.L.str.70, %rdi
	movabsq	$.L.str.71, %rsi
	movabsq	$.L.str.72, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.73, %rdi
	movabsq	$.L.str.74, %rsi
	movabsq	$.L.str.75, %rdx
	movl	$1, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -524(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-524(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movl	%r11d, -540(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movabsq	$.L.str.78, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$plugin_set_pdb_error_handler_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.79, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.79, %rsi
	movabsq	$.L.str.80, %rdx
	movabsq	$.L.str.81, %rcx
	movabsq	$.L.str.32, %r8
	movabsq	$.L.str.33, %r9
	movabsq	$.L.str.82, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-24(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_handler_get_type
	movabsq	$.L.str.83, %rcx
	movabsq	$.L.str.84, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$plugin_get_pdb_error_handler_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.85, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.85, %rsi
	movabsq	$.L.str.86, %rdx
	movabsq	$.L.str.87, %rcx
	movabsq	$.L.str.32, %r8
	movabsq	$.L.str.33, %r9
	movabsq	$.L.str.82, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-24(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	callq	gimp_pdb_error_handler_get_type
	movabsq	$.L.str.83, %rcx
	movabsq	$.L.str.84, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_plug_in_procs, .Lfunc_end0-register_plug_in_procs
	.cfi_endproc

	.align	16, 0x90
	.type	plugins_query_invoker,@function
plugins_query_invoker:                  # @plugins_query_invoker
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-96(%rbp), %r8
	leaq	-104(%rbp), %r9
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	-64(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_plug_in_manager_query
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-80(%rbp), %rsi
	movslq	-68(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	-88(%rbp), %rsi
	movslq	-68(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	-96(%rbp), %rsi
	movslq	-68(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movq	-104(%rbp), %rsi
	movslq	-68(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$216, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$240, %rax
	movq	-112(%rbp), %rsi
	movslq	-68(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int32array
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$264, %rax              # imm = 0x108
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$288, %rax              # imm = 0x120
	movq	-120(%rbp), %rsi
	movslq	-68(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
	movq	-56(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plugins_query_invoker, .Lfunc_end1-plugins_query_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_domain_register_invoker,@function
plugin_domain_register_invoker:         # @plugin_domain_register_invoker
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
	je	.LBB2_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB2_4
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	cmpl	$2, 48(%rax)
	jne	.LBB2_4
# BB#3:                                 # %if.then.5
	movq	-80(%rbp), %rax
	movq	736(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_plug_in_def_set_locale_domain
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB2_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_9:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	plugin_domain_register_invoker, .Lfunc_end2-plugin_domain_register_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_help_register_invoker,@function
plugin_help_register_invoker:           # @plugin_help_register_invoker
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
	je	.LBB3_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB3_4
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	cmpl	$2, 48(%rax)
	jne	.LBB3_4
# BB#3:                                 # %if.then.5
	movq	-80(%rbp), %rax
	movq	736(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_plug_in_def_set_help_domain
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movl	$0, -52(%rbp)
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB3_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_9
.LBB3_9:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	plugin_help_register_invoker, .Lfunc_end3-plugin_help_register_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_menu_register_invoker,@function
plugin_menu_register_invoker:           # @plugin_menu_register_invoker
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
	je	.LBB4_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.5
	movq	-64(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_plug_in_menu_register
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB4_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	plugin_menu_register_invoker, .Lfunc_end4-plugin_menu_register_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_menu_branch_register_invoker,@function
plugin_menu_branch_register_invoker:    # @plugin_menu_branch_register_invoker
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
	je	.LBB5_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	gimp_plug_in_manager_add_menu_branch
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB5_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	plugin_menu_branch_register_invoker, .Lfunc_end5-plugin_menu_branch_register_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_icon_register_invoker,@function
plugin_icon_register_invoker:           # @plugin_icon_register_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_int8array
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_9
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB6_7
# BB#2:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	cmpl	$2, 48(%rax)
	jne	.LBB6_7
# BB#3:                                 # %if.then.11
	movq	-64(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	736(%rax), %rax
	movq	40(%rax), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_plug_in_procedure_find
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free
	cmpq	$0, -96(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.15
	movq	-96(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-80(%rbp), %rdx
	movl	-72(%rbp), %ecx
	callq	gimp_plug_in_procedure_set_icon
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.16
	movl	$0, -52(%rbp)
.LBB6_8:                                # %if.end.17
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.18
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB6_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_12:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	plugin_icon_register_invoker, .Lfunc_end6-plugin_icon_register_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_set_pdb_error_handler_invoker,@function
plugin_set_pdb_error_handler_invoker:   # @plugin_set_pdb_error_handler_invoker
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
	callq	g_value_get_enum
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then.2
	movq	-64(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	gimp_plug_in_set_error_handler
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end.3
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB7_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_8
.LBB7_8:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	plugin_set_pdb_error_handler_invoker, .Lfunc_end7-plugin_set_pdb_error_handler_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_get_pdb_error_handler_invoker,@function
plugin_get_pdb_error_handler_invoker:   # @plugin_get_pdb_error_handler_invoker
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
	movl	$0, -68(%rbp)
	movq	-16(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rdi
	callq	gimp_plug_in_get_error_handler
	movl	%eax, -68(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	$0, -52(%rbp)
.LBB8_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB8_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_6
.LBB8_5:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_6
.LBB8_6:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then.4
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB8_8:                                # %if.end.5
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	plugin_get_pdb_error_handler_invoker, .Lfunc_end8-plugin_get_pdb_error_handler_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-plugins-query"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Queries the plugin database for its contents."
	.size	.L.str.1, 46

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure queries the contents of the plugin database."
	.size	.L.str.2, 60

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Andy Thomas"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1998"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"search-string"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"search string"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"If not an empty string then use this as a search pattern"
	.size	.L.str.7, 57

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"num-plugins"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"num plugins"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The number of plugins"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"menu-path"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"menu path"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The menu path of the plugin"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plugin-accelerator"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"plugin accelerator"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"String representing keyboard accelerator (could be empty string)"
	.size	.L.str.16, 65

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"plugin-location"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plugin location"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Location of the plugin program"
	.size	.L.str.19, 31

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"plugin-image-type"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"plugin image type"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Type of image that this plugin will work on"
	.size	.L.str.22, 44

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"plugin-install-time"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"plugin install time"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Time that the plugin was installed"
	.size	.L.str.25, 35

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"plugin-real-name"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"plugin real name"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"The internal name of the plugin"
	.size	.L.str.28, 32

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-plugin-domain-register"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Registers a textdomain for localisation."
	.size	.L.str.30, 41

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"This procedure adds a textdomain to the list of domains Gimp searches for strings when translating its menu entries. There is no need to call this function for plug-ins that have their strings included in the 'gimp-std-plugins' domain as that is used by default. If the compiled message catalog is not in the standard location, you may specify an absolute path to another location. This procedure can only be called in the query function of a plug-in and it has to be called before any procedure is installed."
	.size	.L.str.31, 510

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.32, 29

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Sven Neumann"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"2000"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"domain-name"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"domain name"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The name of the textdomain (must be unique)"
	.size	.L.str.37, 44

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"domain-path"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"domain path"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"The absolute path to the compiled message catalog (may be NULL)"
	.size	.L.str.40, 64

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-plugin-help-register"
	.size	.L.str.41, 26

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Register a help path for a plug-in."
	.size	.L.str.42, 36

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"This procedure registers user documentation for the calling plug-in with the GIMP help system. The domain_uri parameter points to the root directory where the plug-in help is installed. For each supported language there should be a file called 'gimp-help.xml' that maps the help IDs to the actual help files."
	.size	.L.str.43, 309

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.44, 34

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Michael Natterer"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The XML namespace of the plug-in's help pages"
	.size	.L.str.46, 46

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"domain-uri"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"domain uri"
	.size	.L.str.48, 11

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"The root URI of the plug-in's help pages"
	.size	.L.str.49, 41

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-plugin-menu-register"
	.size	.L.str.50, 26

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Register an additional menu path for a plug-in procedure."
	.size	.L.str.51, 58

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"This procedure installs an additional menu entry for the given procedure."
	.size	.L.str.52, 74

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"2004"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"procedure-name"
	.size	.L.str.54, 15

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"procedure name"
	.size	.L.str.55, 15

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"The procedure for which to install the menu path"
	.size	.L.str.56, 49

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"The procedure's additional menu path"
	.size	.L.str.57, 37

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-plugin-menu-branch-register"
	.size	.L.str.58, 33

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Register a sub-menu."
	.size	.L.str.59, 21

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"This procedure installs a sub-menu which does not belong to any procedure. The menu-name should be the untranslated menu label. GIMP will look up the translation in the textdomain registered for the plug-in."
	.size	.L.str.60, 208

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"2005"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"The sub-menu's menu path"
	.size	.L.str.62, 25

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"menu-name"
	.size	.L.str.63, 10

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"menu name"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"The name of the sub-menu"
	.size	.L.str.65, 25

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-plugin-icon-register"
	.size	.L.str.66, 26

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Register an icon for a plug-in procedure."
	.size	.L.str.67, 42

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"This procedure installs an icon for the given procedure."
	.size	.L.str.68, 57

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"The procedure for which to install the icon"
	.size	.L.str.69, 44

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"icon-type"
	.size	.L.str.70, 10

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"icon type"
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"The type of the icon"
	.size	.L.str.72, 21

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"icon-data-length"
	.size	.L.str.73, 17

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"icon data length"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"The length of 'icon-data'"
	.size	.L.str.75, 26

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"icon-data"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"icon data"
	.size	.L.str.77, 10

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"The procedure's icon. The format depends on the 'icon_type' parameter"
	.size	.L.str.78, 70

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-plugin-set-pdb-error-handler"
	.size	.L.str.79, 34

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Sets an error handler for procedure calls."
	.size	.L.str.80, 43

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"This procedure changes the way that errors in procedure calls are handled. By default GIMP will raise an error dialog if a procedure call made by a plug-in fails. Using this procedure the plug-in can change this behavior. If the error handler is set to %GIMP_PDB_ERROR_HANDLER_PLUGIN, then the plug-in is responsible for calling 'gimp-get-pdb-error' and handling the error whenever one if its procedure calls fails. It can do this by displaying the error message or by forwarding it in its own return values."
	.size	.L.str.81, 509

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"2008"
	.size	.L.str.82, 5

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"handler"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Who is responsible for handling procedure call errors"
	.size	.L.str.84, 54

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"gimp-plugin-get-pdb-error-handler"
	.size	.L.str.85, 34

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Retrieves the active error handler for procedure calls."
	.size	.L.str.86, 56

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"This procedure retrieves the currently active error handler for procedure calls made by the calling plug-in. See 'gimp-plugin-set-pdb-error-handler' for details."
	.size	.L.str.87, 162


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
