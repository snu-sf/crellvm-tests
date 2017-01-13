	.text
	.file	"procedural-db-cmds.bc"
	.globl	register_procedural_db_procs
	.align	16, 0x90
	.type	register_procedural_db_procs,@function
register_procedural_db_procs:           # @register_procedural_db_procs
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
	movabsq	$procedural_db_temp_name_invoker, %rax
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
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$procedural_db_dump_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %r8
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.13, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rdx
	movl	$1, %r11d
	xorl	%r8d, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$procedural_db_query_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rcx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.13, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -144(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	movl	$1, %ecx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -164(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.23, %rdx
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
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -216(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -240(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
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
	movabsq	$.L.str.30, %rax
	movabsq	$.L.str.31, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -288(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-32(%rbp), %r10
	movl	%r8d, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -296(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -304(%rbp)        # 8-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -320(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$procedural_db_proc_exists_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.46, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movl	%ebx, -372(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.50, %rax
	movabsq	$.L.str.51, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$procedural_db_proc_info_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.52, %rsi
	movabsq	$.L.str.53, %rdx
	movabsq	$.L.str.54, %rcx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.55, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -408(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movl	%ebx, -428(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.56, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -456(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.57, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	movl	-476(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -480(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.58, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -504(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	movl	-524(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -528(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.30, %rax
	movabsq	$.L.str.60, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	movl	-548(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -552(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-32(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	callq	gimp_pdb_proc_type_get_type
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.61, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.62, %rdi
	movabsq	$.L.str.63, %rsi
	movabsq	$.L.str.64, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movl	%r11d, -572(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.65, %rdi
	movabsq	$.L.str.66, %rsi
	movabsq	$.L.str.67, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movl	%r11d, -588(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$procedural_db_proc_arg_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.68, %rsi
	movabsq	$.L.str.69, %rdx
	movabsq	$.L.str.70, %rcx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.55, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -616(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movl	%ebx, -636(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$.L.str.73, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movl	%r11d, -652(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	callq	gimp_pdb_arg_type_get_type
	movabsq	$.L.str.74, %rdi
	movabsq	$.L.str.75, %rsi
	movabsq	$.L.str.76, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$22, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.77, %rdi
	movabsq	$.L.str.78, %rsi
	movabsq	$.L.str.79, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-32(%rbp), %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -684(%rbp)        # 4-byte Spill
	movl	-684(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -688(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.80, %rdi
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	movl	-700(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -704(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -712(%rbp)        # 8-byte Spill
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$procedural_db_proc_val_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.83, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.83, %rsi
	movabsq	$.L.str.84, %rdx
	movabsq	$.L.str.85, %rcx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.55, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-736(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -744(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movl	%ebx, -764(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.86, %rdi
	movabsq	$.L.str.87, %rsi
	movabsq	$.L.str.88, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -776(%rbp)        # 8-byte Spill
	movl	%r11d, -780(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	callq	gimp_pdb_arg_type_get_type
	movabsq	$.L.str.89, %rdi
	movabsq	$.L.str.90, %rsi
	movabsq	$.L.str.91, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	gimp_param_spec_enum
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$22, %esi
	movq	%rax, %rdi
	callq	gimp_param_spec_enum_exclude_value
	movabsq	$.L.str.92, %rdi
	movabsq	$.L.str.93, %rsi
	movabsq	$.L.str.94, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-32(%rbp), %rcx
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -812(%rbp)        # 4-byte Spill
	movl	-812(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -816(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.95, %rdi
	movabsq	$.L.str.96, %rsi
	movabsq	$.L.str.97, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -828(%rbp)        # 4-byte Spill
	movl	-828(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -832(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -840(%rbp)        # 8-byte Spill
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$procedural_db_get_data_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.98, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.98, %rsi
	movabsq	$.L.str.99, %rdx
	movabsq	$.L.str.100, %rcx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.55, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -872(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.101, %rax
	movabsq	$.L.str.102, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -892(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.103, %rax
	movabsq	$.L.str.104, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -904(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -908(%rbp)        # 4-byte Spill
	movl	-908(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -912(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.105, %rax
	movabsq	$.L.str.106, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_int8_array
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$procedural_db_get_data_size_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.107, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.107, %rsi
	movabsq	$.L.str.108, %rdx
	movabsq	$.L.str.109, %rcx
	movabsq	$.L.str.110, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-936(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -944(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.101, %rax
	movabsq	$.L.str.102, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -964(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.103, %rax
	movabsq	$.L.str.104, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -980(%rbp)        # 4-byte Spill
	movl	-980(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -984(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$procedural_db_set_data_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.111, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.111, %rsi
	movabsq	$.L.str.112, %rdx
	movabsq	$.L.str.113, %rcx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.55, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1008(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.101, %rax
	movabsq	$.L.str.102, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1028(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.103, %rax
	movabsq	$.L.str.104, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -1044(%rbp)       # 4-byte Spill
	movl	-1044(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1048(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.105, %rax
	movabsq	$.L.str.106, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_int8_array
	movq	-1056(%rbp), %rdi       # 8-byte Reload
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
	.size	register_procedural_db_procs, .Lfunc_end0-register_procedural_db_procs
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_temp_name_invoker,@function
procedural_db_temp_name_invoker:        # @procedural_db_temp_name_invoker
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
	subq	$64, %rsp
	movabsq	$.L.str.114, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -64(%rbp)
	movl	procedural_db_temp_name_invoker.proc_number, %r10d
	movl	%r10d, %r11d
	addl	$1, %r11d
	movl	%r11d, procedural_db_temp_name_invoker.proc_number
	movq	%rax, %rdi
	movl	%r10d, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	procedural_db_temp_name_invoker, .Lfunc_end1-procedural_db_temp_name_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_dump_invoker,@function
procedural_db_dump_invoker:             # @procedural_db_dump_invoker
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
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_pdb_dump
	movl	%eax, -52(%rbp)
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB2_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB2_5
.LBB2_5:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	procedural_db_dump_invoker, .Lfunc_end2-procedural_db_dump_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_query_invoker,@function
procedural_db_query_invoker:            # @procedural_db_query_invoker
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp14:
	.cfi_offset %rbx, -32
.Ltmp15:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$1, -68(%rbp)
	movl	$0, -140(%rbp)
	movq	$0, -152(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -136(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	leaq	-140(%rbp), %rax
	leaq	-152(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	520(%rdx), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %r8
	movq	-112(%rbp), %r9
	movq	-120(%rbp), %r10
	movq	-128(%rbp), %r11
	movq	-136(%rbp), %rbx
	movq	-64(%rbp), %r14
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	%r14, 32(%rsp)
	callq	gimp_pdb_query
	movl	%eax, -68(%rbp)
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB3_4
# BB#3:                                 # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -80(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.23
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-140(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-152(%rbp), %rsi
	movslq	-140(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_stringarray
.LBB3_7:                                # %if.end.28
	movq	-80(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	procedural_db_query_invoker, .Lfunc_end3-procedural_db_query_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_proc_exists_invoker,@function
procedural_db_proc_exists_invoker:      # @procedural_db_proc_exists_invoker
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
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_6
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_5
# BB#2:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_pdb_lookup_compat_proc_name
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB4_4
# BB#3:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -88(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.12
	movq	-96(%rbp), %rdi
	callq	g_free
	cmpq	$0, -88(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -76(%rbp)
.LBB4_6:                                # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB4_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_9
.LBB4_9:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_11
# BB#10:                                # %if.then.17
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB4_11:                               # %if.end.20
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	procedural_db_proc_exists_invoker, .Lfunc_end4-procedural_db_proc_exists_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_proc_info_invoker,@function
procedural_db_proc_info_invoker:        # @procedural_db_proc_info_invoker
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
	pushq	%r14
	pushq	%rbx
	subq	$224, %rsp
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$1, -68(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -88(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	leaq	-112(%rbp), %r8
	leaq	-120(%rbp), %r9
	leaq	-128(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	leaq	-136(%rbp), %r10
	leaq	-140(%rbp), %r11
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	520(%rax), %rax
	movq	-152(%rbp), %rbx
	movq	-64(%rbp), %r14
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%r14, 32(%rsp)
	callq	gimp_pdb_proc_info
	movl	%eax, -68(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-152(%rbp), %rdi
	callq	g_free
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movl	%esi, -180(%rbp)        # 4-byte Spill
	je	.LBB5_4
# BB#3:                                 # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -80(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.6
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movl	-132(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movl	-136(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movl	-140(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB5_7:                                # %if.end.23
	movq	-80(%rbp), %rax
	addq	$224, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	procedural_db_proc_info_invoker, .Lfunc_end5-procedural_db_proc_info_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_proc_arg_invoker,@function
procedural_db_proc_arg_invoker:         # @procedural_db_proc_arg_invoker
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_11
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-112(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB6_5
# BB#2:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-112(%rbp), %rsi
	callq	gimp_pdb_lookup_compat_proc_name
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -104(%rbp)
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %if.end.14
	movq	-112(%rbp), %rdi
	callq	g_free
	cmpq	$0, -104(%rbp)
	je	.LBB6_9
# BB#6:                                 # %land.lhs.true
	cmpl	$0, -76(%rbp)
	jl	.LBB6_9
# BB#7:                                 # %land.lhs.true.16
	movl	-76(%rbp), %eax
	movq	-104(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB6_9
# BB#8:                                 # %if.then.18
	movl	$76, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	104(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	24(%rax), %rdi
	callq	gimp_pdb_compat_arg_type_from_gtype
	movl	%eax, -80(%rbp)
	movq	-128(%rbp), %rdi
	callq	g_param_spec_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_param_spec_get_desc
	movq	%rax, -96(%rbp)
	jmp	.LBB6_10
.LBB6_9:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_10:                               # %if.end.26
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.27
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB6_13
# BB#12:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB6_14
.LBB6_13:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB6_14
.LBB6_14:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.31
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB6_16:                               # %if.end.38
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	procedural_db_proc_arg_invoker, .Lfunc_end6-procedural_db_proc_arg_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_proc_val_invoker,@function
procedural_db_proc_val_invoker:         # @procedural_db_proc_val_invoker
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_11
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-112(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB7_5
# BB#2:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-112(%rbp), %rsi
	callq	gimp_pdb_lookup_compat_proc_name
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -104(%rbp)
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end.14
	movq	-112(%rbp), %rdi
	callq	g_free
	cmpq	$0, -104(%rbp)
	je	.LBB7_9
# BB#6:                                 # %land.lhs.true
	cmpl	$0, -76(%rbp)
	jl	.LBB7_9
# BB#7:                                 # %land.lhs.true.16
	movl	-76(%rbp), %eax
	movq	-104(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jge	.LBB7_9
# BB#8:                                 # %if.then.18
	movl	$76, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	120(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	24(%rax), %rdi
	callq	gimp_pdb_compat_arg_type_from_gtype
	movl	%eax, -80(%rbp)
	movq	-128(%rbp), %rdi
	callq	g_param_spec_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_param_spec_get_desc
	movq	%rax, -96(%rbp)
	jmp	.LBB7_10
.LBB7_9:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_10:                               # %if.end.26
	jmp	.LBB7_11
.LBB7_11:                               # %if.end.27
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB7_13
# BB#12:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB7_14
.LBB7_13:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB7_14
.LBB7_14:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.31
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB7_16:                               # %if.end.38
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	procedural_db_proc_val_invoker, .Lfunc_end7-procedural_db_proc_val_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_get_data_invoker,@function
procedural_db_get_data_invoker:         # @procedural_db_get_data_invoker
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
	movl	$0, -76(%rbp)
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	leaq	-76(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_plug_in_manager_get_data
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_free
	cmpq	$0, -104(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then.4
	movq	-104(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	g_memdup
	movq	%rax, -88(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %if.end.6
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
# BB#9:                                 # %if.then.10
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
.LBB8_10:                               # %if.end.15
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	procedural_db_get_data_invoker, .Lfunc_end8-procedural_db_get_data_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_get_data_size_invoker,@function
procedural_db_get_data_size_invoker:    # @procedural_db_get_data_size_invoker
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
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_4
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_canonicalize_identifier
	leaq	-76(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_plug_in_manager_get_data
	cmpq	$0, %rax
	jne	.LBB9_3
# BB#2:                                 # %if.then.4
	movl	$0, -52(%rbp)
.LBB9_3:                                # %if.end
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB9_4:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB9_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB9_7
.LBB9_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB9_7
.LBB9_7:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB9_9:                                # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	procedural_db_get_data_size_invoker, .Lfunc_end9-procedural_db_get_data_size_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	procedural_db_set_data_invoker,@function
procedural_db_set_data_invoker:         # @procedural_db_set_data_invoker
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
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_int8array
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
	movl	-68(%rbp), %edx
	movq	-80(%rbp), %rcx
	callq	gimp_plug_in_manager_set_data
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
	.size	procedural_db_set_data_invoker, .Lfunc_end10-procedural_db_set_data_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-procedural-db-temp-name"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Generates a unique temporary PDB name."
	.size	.L.str.1, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure generates a temporary PDB entry name that is guaranteed to be unique."
	.size	.L.str.2, 85

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
	.asciz	"temp-name"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"temp name"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"A unique temporary name for a temporary PDB entry"
	.size	.L.str.7, 50

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-procedural-db-dump"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Dumps the current contents of the procedural database"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"This procedure dumps the contents of the procedural database to the specified file. The file will contain all of the information provided for each registered procedure."
	.size	.L.str.10, 169

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Spencer Kimball & Josh MacDonald"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Spencer Kimball & Josh MacDonald & Peter Mattis"
	.size	.L.str.12, 48

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1995-1996"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"filename"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The dump filename"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-procedural-db-query"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Queries the procedural database for its contents using regular expression matching."
	.size	.L.str.17, 84

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"This procedure queries the contents of the procedural database. It is supplied with seven arguments matching procedures on { name, blurb, help, author, copyright, date, procedure type}. This is accomplished using regular expression matching. For instance, to find all procedures with \"jpeg\" listed in the blurb, all seven arguments can be supplied as \".*\", except for the second, which can be supplied as \".*jpeg.*\". There are two return arguments for this procedure. The first is the number of procedures matching the query. The second is a concatenated list of procedure names corresponding to those matching the query. If no matching entries are found, then the returned string is NULL and the number of entries is 0."
	.size	.L.str.18, 721

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.19, 31

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"name"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The regex for procedure name"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"blurb"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"The regex for procedure blurb"
	.size	.L.str.23, 30

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"help"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"The regex for procedure help"
	.size	.L.str.25, 29

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"author"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"The regex for procedure author"
	.size	.L.str.27, 31

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"copyright"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The regex for procedure copyright"
	.size	.L.str.29, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"date"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"The regex for procedure date"
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"proc-type"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"proc type"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"The regex for procedure type: { 'Internal GIMP procedure', 'GIMP Plug-In', 'GIMP Extension', 'Temporary Procedure' }"
	.size	.L.str.34, 117

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"num-matches"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"num matches"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The number of matching procedures"
	.size	.L.str.37, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"procedure-names"
	.size	.L.str.38, 16

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"procedure names"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"The list of procedure names"
	.size	.L.str.40, 28

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-procedural-db-proc-exists"
	.size	.L.str.41, 31

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Checks if the specified procedure exists in the procedural database"
	.size	.L.str.42, 68

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"This procedure checks if the specified procedure is registered in the procedural database."
	.size	.L.str.43, 91

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.44, 29

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Sven Neumann"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"2008"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"procedure-name"
	.size	.L.str.47, 15

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"procedure name"
	.size	.L.str.48, 15

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"The procedure name"
	.size	.L.str.49, 19

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"exists"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Whether a procedure of that name is registered"
	.size	.L.str.51, 47

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-procedural-db-proc-info"
	.size	.L.str.52, 29

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Queries the procedural database for information on the specified procedure."
	.size	.L.str.53, 76

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"This procedure returns information on the specified procedure. A short blurb, detailed help, author(s), copyright information, procedure type, number of input, and number of return values are returned. For specific information on each input argument and return value, use the 'gimp-procedural-db-proc-arg' and 'gimp-procedural-db-proc-val' procedures."
	.size	.L.str.54, 352

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"1997"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"A short blurb"
	.size	.L.str.56, 14

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Detailed procedure help"
	.size	.L.str.57, 24

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Author(s) of the procedure"
	.size	.L.str.58, 27

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"The copyright"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Copyright date"
	.size	.L.str.60, 15

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"The procedure type"
	.size	.L.str.61, 19

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"num-args"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"num args"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"The number of input arguments"
	.size	.L.str.64, 30

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"num-values"
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"num values"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"The number of return values"
	.size	.L.str.67, 28

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-procedural-db-proc-arg"
	.size	.L.str.68, 28

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Queries the procedural database for information on the specified procedure's argument."
	.size	.L.str.69, 87

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"This procedure returns information on the specified procedure's argument. The argument type, name, and a description are retrieved."
	.size	.L.str.70, 132

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"arg-num"
	.size	.L.str.71, 8

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"arg num"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"The argument number"
	.size	.L.str.73, 20

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"arg-type"
	.size	.L.str.74, 9

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"arg type"
	.size	.L.str.75, 9

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"The type of argument"
	.size	.L.str.76, 21

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"arg-name"
	.size	.L.str.77, 9

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"arg name"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"The name of the argument"
	.size	.L.str.79, 25

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"arg-desc"
	.size	.L.str.80, 9

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"arg desc"
	.size	.L.str.81, 9

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"A description of the argument"
	.size	.L.str.82, 30

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-procedural-db-proc-val"
	.size	.L.str.83, 28

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Queries the procedural database for information on the specified procedure's return value."
	.size	.L.str.84, 91

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"This procedure returns information on the specified procedure's return value. The return value type, name, and a description are retrieved."
	.size	.L.str.85, 140

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"val-num"
	.size	.L.str.86, 8

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"val num"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"The return value number"
	.size	.L.str.88, 24

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"val-type"
	.size	.L.str.89, 9

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"val type"
	.size	.L.str.90, 9

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"The type of return value"
	.size	.L.str.91, 25

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"val-name"
	.size	.L.str.92, 9

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"val name"
	.size	.L.str.93, 9

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"The name of the return value"
	.size	.L.str.94, 29

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"val-desc"
	.size	.L.str.95, 9

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"val desc"
	.size	.L.str.96, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"A description of the return value"
	.size	.L.str.97, 34

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"gimp-procedural-db-get-data"
	.size	.L.str.98, 28

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Returns data associated with the specified identifier."
	.size	.L.str.99, 55

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"This procedure returns any data which may have been associated with the specified identifier. The data is a variable length array of bytes. If no data has been associated with the identifier, an error is returned."
	.size	.L.str.100, 214

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"identifier"
	.size	.L.str.101, 11

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"The identifier associated with data"
	.size	.L.str.102, 36

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"bytes"
	.size	.L.str.103, 6

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"The number of bytes in the data"
	.size	.L.str.104, 32

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"data"
	.size	.L.str.105, 5

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"A byte array containing data"
	.size	.L.str.106, 29

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"gimp-procedural-db-get-data-size"
	.size	.L.str.107, 33

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Returns size of data associated with the specified identifier."
	.size	.L.str.108, 63

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"This procedure returns the size of any data which may have been associated with the specified identifier. If no data has been associated with the identifier, an error is returned."
	.size	.L.str.109, 180

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Nick Lamb"
	.size	.L.str.110, 10

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gimp-procedural-db-set-data"
	.size	.L.str.111, 28

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Associates the specified identifier with the supplied data."
	.size	.L.str.112, 60

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"This procedure associates the supplied data with the provided identifier. The data may be subsequently retrieved by a call to 'procedural-db-get-data'."
	.size	.L.str.113, 152

	.type	procedural_db_temp_name_invoker.proc_number,@object # @procedural_db_temp_name_invoker.proc_number
	.local	procedural_db_temp_name_invoker.proc_number
	.comm	procedural_db_temp_name_invoker.proc_number,4,4
	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"temp-procedure-number-%d"
	.size	.L.str.114, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
