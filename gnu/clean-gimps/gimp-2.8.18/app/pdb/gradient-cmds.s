	.text
	.file	"gradient-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI0_2:
	.quad	-4616189618054758400    # double -1
.LCPI0_3:
	.quad	4607182418800017408     # double 1
.LCPI0_4:
	.quad	4636737291354636288     # double 100
	.text
	.globl	register_gradient_procs
	.align	16, 0x90
	.type	register_gradient_procs,@function
register_gradient_procs:                # @register_gradient_procs
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
	subq	$2336, %rsp             # imm = 0x920
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$gradient_new_invoker, %rax
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
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r11
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_duplicate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r11
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	movl	-136(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_is_editable_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.23, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -196(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_rename_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	movabsq	$.L.str.28, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -244(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r11
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	movl	-248(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -252(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.32, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r11
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -280(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -288(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_delete_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.35, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -332(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_get_number_of_segments_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rdx
	movabsq	$.L.str.38, %rcx
	movabsq	$.L.str.39, %r8
	movabsq	$.L.str.40, %r9
	movabsq	$.L.str.41, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -372(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movl	%r10d, -388(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_get_uniform_samples_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	movabsq	$.L.str.47, %rcx
	movabsq	$.L.str.48, %rax
	movabsq	$.L.str.49, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %r14
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -416(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -436(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.50, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	movl	$2, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	movl	-440(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -444(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.53, %rax
	movabsq	$.L.str.54, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.55, %rdi
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.57, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	-468(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -472(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.58, %rdi
	movabsq	$.L.str.59, %rsi
	movabsq	$.L.str.60, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_float_array
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_get_custom_samples_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.62, %rdx
	movabsq	$.L.str.63, %rcx
	movabsq	$.L.str.48, %rax
	movabsq	$.L.str.49, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %r14
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -512(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -532(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.50, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	movl	$1, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -536(%rbp)        # 4-byte Spill
	movl	-536(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -540(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.64, %rax
	movabsq	$.L.str.65, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.53, %rax
	movabsq	$.L.str.54, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.55, %rdi
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.57, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	movl	-572(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -576(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.58, %rdi
	movabsq	$.L.str.59, %rsi
	movabsq	$.L.str.60, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_float_array
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_get_left_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.66, %rsi
	movabsq	$.L.str.67, %rdx
	movabsq	$.L.str.68, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -628(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	movl	-644(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -648(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rax
	movabsq	$.L.str.72, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.73, %rax
	movabsq	$.L.str.74, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_set_left_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.75, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.75, %rsi
	movabsq	$.L.str.76, %rdx
	movabsq	$.L.str.77, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -700(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	movl	-716(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -720(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rax
	movabsq	$.L.str.78, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.73, %rax
	movabsq	$.L.str.79, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_4, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -744(%rbp)       # 8-byte Spill
	movsd	-744(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_get_right_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -780(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -796(%rbp)        # 4-byte Spill
	movl	-796(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -800(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rax
	movabsq	$.L.str.72, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.73, %rax
	movabsq	$.L.str.74, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_set_right_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.83, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.83, %rsi
	movabsq	$.L.str.84, %rdx
	movabsq	$.L.str.85, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -852(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -868(%rbp)        # 4-byte Spill
	movl	-868(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -872(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.71, %rax
	movabsq	$.L.str.78, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.73, %rax
	movabsq	$.L.str.79, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_4, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
	movsd	-896(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_get_left_pos_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.86, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.86, %rsi
	movabsq	$.L.str.87, %rdx
	movabsq	$.L.str.88, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -932(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -948(%rbp)        # 4-byte Spill
	movl	-948(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -952(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.90, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -960(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_set_left_pos_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.91, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.91, %rsi
	movabsq	$.L.str.92, %rdx
	movabsq	$.L.str.93, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -984(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -996(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -1012(%rbp)       # 4-byte Spill
	movl	-1012(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1016(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.94, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1032(%rbp)      # 8-byte Spill
	movsd	-1032(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.95, %rdi
	movabsq	$.L.str.96, %rsi
	movabsq	$.L.str.90, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_get_middle_pos_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.97, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.97, %rsi
	movabsq	$.L.str.98, %rdx
	movabsq	$.L.str.99, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1076(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -1092(%rbp)       # 4-byte Spill
	movl	-1092(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1096(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.90, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_set_middle_pos_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.100, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.100, %rsi
	movabsq	$.L.str.101, %rdx
	movabsq	$.L.str.102, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1140(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -1156(%rbp)       # 4-byte Spill
	movl	-1156(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1160(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.94, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1176(%rbp)      # 8-byte Spill
	movsd	-1176(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.95, %rdi
	movabsq	$.L.str.96, %rsi
	movabsq	$.L.str.90, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_get_right_pos_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.103, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.103, %rsi
	movabsq	$.L.str.104, %rdx
	movabsq	$.L.str.105, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1216(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1220(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1232(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -1236(%rbp)       # 4-byte Spill
	movl	-1236(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1240(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.90, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1248(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_set_right_pos_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.106, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.106, %rsi
	movabsq	$.L.str.107, %rdx
	movabsq	$.L.str.108, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1264(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1272(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1284(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -1300(%rbp)       # 4-byte Spill
	movl	-1300(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1304(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.94, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1320(%rbp)      # 8-byte Spill
	movsd	-1320(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.95, %rdi
	movabsq	$.L.str.96, %rsi
	movabsq	$.L.str.90, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_get_blending_function_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.109, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.109, %rsi
	movabsq	$.L.str.110, %rdx
	movabsq	$.L.str.111, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1344(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1352(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1364(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1376(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -1380(%rbp)       # 4-byte Spill
	movl	-1380(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1384(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -1392(%rbp)       # 8-byte Spill
	callq	gimp_gradient_segment_type_get_type
	movabsq	$.L.str.112, %rdi
	movabsq	$.L.str.113, %rsi
	movabsq	$.L.str.114, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_get_coloring_type_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1400(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.115, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.115, %rsi
	movabsq	$.L.str.116, %rdx
	movabsq	$.L.str.117, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1408(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1416(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1424(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1428(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1440(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -1444(%rbp)       # 4-byte Spill
	movl	-1444(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1448(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-1440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -1456(%rbp)       # 8-byte Spill
	callq	gimp_gradient_segment_color_get_type
	movabsq	$.L.str.118, %rdi
	movabsq	$.L.str.119, %rsi
	movabsq	$.L.str.120, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_set_blending_function_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.121, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.121, %rsi
	movabsq	$.L.str.122, %rdx
	movabsq	$.L.str.123, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1472(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1480(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1488(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1492(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -1496(%rbp)       # 4-byte Spill
	movl	-1496(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1500(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	movl	%r10d, -1524(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -1536(%rbp)       # 8-byte Spill
	callq	gimp_gradient_segment_type_get_type
	movabsq	$.L.str.130, %rdi
	movabsq	$.L.str.131, %rsi
	movabsq	$.L.str.132, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_set_coloring_type_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.133, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.133, %rsi
	movabsq	$.L.str.134, %rdx
	movabsq	$.L.str.135, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1552(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1560(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1568(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1572(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -1576(%rbp)       # 4-byte Spill
	movl	-1576(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1580(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1592(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	movl	%r10d, -1604(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -1616(%rbp)       # 8-byte Spill
	callq	gimp_gradient_segment_color_get_type
	movabsq	$.L.str.118, %rdi
	movabsq	$.L.str.119, %rsi
	movabsq	$.L.str.136, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_flip_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1624(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.137, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.137, %rsi
	movabsq	$.L.str.138, %rdx
	movabsq	$.L.str.139, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1632(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1640(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1648(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1652(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -1656(%rbp)       # 4-byte Spill
	movl	-1656(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1660(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1672(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1680(%rbp)       # 8-byte Spill
	movl	%r10d, -1684(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1680(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_replicate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1696(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.140, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.140, %rsi
	movabsq	$.L.str.141, %rdx
	movabsq	$.L.str.142, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1704(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1712(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1720(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1724(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1712(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -1728(%rbp)       # 4-byte Spill
	movl	-1728(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1732(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1744(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	movl	%r10d, -1756(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.143, %rdi
	movabsq	$.L.str.144, %rsi
	movabsq	$.L.str.145, %rdx
	movl	$2, %ecx
	movl	$20, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -1760(%rbp)       # 4-byte Spill
	movl	-1760(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1764(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1776(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1776(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_split_midpoint_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1784(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.146, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.146, %rsi
	movabsq	$.L.str.147, %rdx
	movabsq	$.L.str.148, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1792(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1800(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1808(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1812(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -1816(%rbp)       # 4-byte Spill
	movl	-1816(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1820(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1832(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1832(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1840(%rbp)       # 8-byte Spill
	movl	%r10d, -1844(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_split_uniform_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.149, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.149, %rsi
	movabsq	$.L.str.150, %rdx
	movabsq	$.L.str.151, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1864(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1872(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1880(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1884(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -1888(%rbp)       # 4-byte Spill
	movl	-1888(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1892(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1904(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	movl	%r10d, -1916(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1912(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.152, %rdi
	movabsq	$.L.str.153, %rsi
	movabsq	$.L.str.154, %rdx
	movl	$2, %ecx
	movl	$1024, %r8d             # imm = 0x400
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -1920(%rbp)       # 4-byte Spill
	movl	-1920(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1924(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1936(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_delete_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1944(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.155, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.155, %rsi
	movabsq	$.L.str.156, %rdx
	movabsq	$.L.str.157, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1952(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1960(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1968(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1972(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1960(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -1976(%rbp)       # 4-byte Spill
	movl	-1976(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -1980(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1992(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1992(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -2000(%rbp)       # 8-byte Spill
	movl	%r10d, -2004(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_redistribute_handles_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2016(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.158, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.158, %rsi
	movabsq	$.L.str.159, %rdx
	movabsq	$.L.str.160, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -2024(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2032(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -2040(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -2044(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-2032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -2048(%rbp)       # 4-byte Spill
	movl	-2048(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -2052(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -2064(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-2064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -2072(%rbp)       # 8-byte Spill
	movl	%r10d, -2076(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_blend_colors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.161, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.161, %rsi
	movabsq	$.L.str.162, %rdx
	movabsq	$.L.str.163, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -2096(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2104(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -2112(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -2116(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-2104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -2120(%rbp)       # 4-byte Spill
	movl	-2120(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -2124(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -2136(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-2136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -2144(%rbp)       # 8-byte Spill
	movl	%r10d, -2148(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_blend_opacity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2160(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.164, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.164, %rsi
	movabsq	$.L.str.165, %rdx
	movabsq	$.L.str.166, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -2168(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -2184(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -2188(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-2176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -2192(%rbp)       # 4-byte Spill
	movl	-2192(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -2196(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -2208(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-2208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -2216(%rbp)       # 8-byte Spill
	movl	%r10d, -2220(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradient_segment_range_move_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.167, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.167, %rsi
	movabsq	$.L.str.168, %rdx
	movabsq	$.L.str.169, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -2240(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2248(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -2256(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -2260(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-2248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -2264(%rbp)       # 4-byte Spill
	movl	-2264(%rbp), %r10d      # 4-byte Reload
	movl	%r9d, -2268(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -2280(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-2280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	movl	%r10d, -2292(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-2288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.170, %rax
	movabsq	$.L.str.171, %rdx
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2304(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2312(%rbp)      # 8-byte Spill
	movsd	-2312(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.172, %rdi
	movabsq	$.L.str.173, %rsi
	movabsq	$.L.str.174, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -2320(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-2320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.175, %rdi
	movabsq	$.L.str.176, %rsi
	movabsq	$.L.str.177, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -2328(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-2328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$2336, %rsp             # imm = 0x920
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_gradient_procs, .Lfunc_end0-register_gradient_procs
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_new_invoker,@function
gradient_new_invoker:                   # @gradient_new_invoker
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
	je	.LBB1_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	488(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_data_factory_data_new
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB1_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.10
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB1_10:                               # %if.end.13
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gradient_new_invoker, .Lfunc_end1-gradient_new_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_duplicate_invoker,@function
gradient_duplicate_invoker:             # @gradient_duplicate_invoker
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
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_8
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB2_6
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	488(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_factory_data_duplicate
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.8
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_5:                                # %if.end
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.11
	movl	$0, -52(%rbp)
.LBB2_7:                                # %if.end.12
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB2_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_11
.LBB2_11:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_13
# BB#12:                                # %if.then.17
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB2_13:                               # %if.end.20
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gradient_duplicate_invoker, .Lfunc_end2-gradient_duplicate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_is_editable_invoker,@function
gradient_is_editable_invoker:           # @gradient_is_editable_invoker
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
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	movl	%eax, -76(%rbp)
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB3_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_8:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB3_10:                               # %if.end.14
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gradient_is_editable_invoker, .Lfunc_end3-gradient_is_editable_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_rename_invoker,@function
gradient_rename_invoker:                # @gradient_rename_invoker
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
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB4_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_8:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.15
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB4_10:                               # %if.end.18
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gradient_rename_invoker, .Lfunc_end4-gradient_rename_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_delete_invoker,@function
gradient_delete_invoker:                # @gradient_delete_invoker
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
	cmpl	$0, -52(%rbp)
	je	.LBB5_6
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB5_4
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_deletable
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	488(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_factory_data_delete
	movl	%eax, -52(%rbp)
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB5_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB5_9
.LBB5_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB5_9
.LBB5_9:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gradient_delete_invoker, .Lfunc_end5-gradient_delete_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_get_number_of_segments_invoker,@function
gradient_get_number_of_segments_invoker: # @gradient_get_number_of_segments_invoker
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
	je	.LBB6_9
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB6_7
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB6_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-96(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
	jmp	.LBB6_8
.LBB6_7:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_8:                                # %if.end
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB6_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_12:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_14
# BB#13:                                # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB6_14:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gradient_get_number_of_segments_invoker, .Lfunc_end6-gradient_get_number_of_segments_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_get_uniform_samples_invoker,@function
gradient_get_uniform_samples_invoker:   # @gradient_get_uniform_samples_invoker
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -84(%rbp)
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_8
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB7_6
# BB#2:                                 # %if.then.9
	movl	$8, %eax
	movl	%eax, %esi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	$0, -112(%rbp)
	movsd	%xmm1, -120(%rbp)
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movl	-76(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -84(%rbp)
	movslq	-84(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -96(%rbp)
	movq	%rax, -136(%rbp)
.LBB7_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB7_3 Depth=1
	leaq	-168(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-80(%rbp), %ecx
	callq	gimp_gradient_get_color_at
	movq	%rax, -112(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -136(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -136(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -136(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -136(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	jmp	.LBB7_3
.LBB7_5:                                # %while.end
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.17
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movl	%esi, -180(%rbp)        # 4-byte Spill
	je	.LBB7_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_11:                               # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_13
# BB#12:                                # %if.then.21
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-96(%rbp), %rsi
	movslq	-84(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_floatarray
.LBB7_13:                               # %if.end.27
	movq	-64(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gradient_get_uniform_samples_invoker, .Lfunc_end7-gradient_get_uniform_samples_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_get_custom_samples_invoker,@function
gradient_get_custom_samples_invoker:    # @gradient_get_custom_samples_invoker
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -104(%rbp)
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -92(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_8
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB8_6
# BB#2:                                 # %if.then.12
	movl	$8, %eax
	movl	%eax, %esi
	movq	$0, -120(%rbp)
	movl	-76(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -96(%rbp)
	movslq	-96(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -104(%rbp)
	movq	%rax, -128(%rbp)
.LBB8_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB8_3 Depth=1
	leaq	-160(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-92(%rbp), %ecx
	callq	gimp_gradient_get_color_at
	movq	%rax, -120(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -128(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -128(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -128(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -128(%rbp)
	movsd	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB8_3
.LBB8_5:                                # %while.end
	jmp	.LBB8_7
.LBB8_6:                                # %if.else
	movl	$0, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.20
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB8_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB8_11
.LBB8_11:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_13
# BB#12:                                # %if.then.24
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-104(%rbp), %rsi
	movslq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_floatarray
.LBB8_13:                               # %if.end.30
	movq	-64(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gradient_get_custom_samples_invoker, .Lfunc_end8-gradient_get_custom_samples_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gradient_segment_get_left_color_invoker,@function
gradient_segment_get_left_color_invoker: # @gradient_segment_get_left_color_invoker
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
	subq	$160, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	.Lgradient_segment_get_left_color_invoker.color, %rcx
	movq	%rcx, -112(%rbp)
	movq	.Lgradient_segment_get_left_color_invoker.color+8, %rcx
	movq	%rcx, -104(%rbp)
	movq	.Lgradient_segment_get_left_color_invoker.color+16, %rcx
	movq	%rcx, -96(%rbp)
	movq	.Lgradient_segment_get_left_color_invoker.color+24, %rcx
	movq	%rcx, -88(%rbp)
	movsd	%xmm0, -120(%rbp)
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
	je	.LBB9_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	leaq	-136(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -128(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then.6
	leaq	-112(%rbp), %rdx
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	gimp_gradient_segment_get_left_color
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	je	.LBB9_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_8
.LBB9_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_8
.LBB9_8:                                # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.11
	leaq	-112(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	gimp_value_set_rgb
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB9_10:                               # %if.end.16
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gradient_segment_get_left_color_invoker, .Lfunc_end9-gradient_segment_get_left_color_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gradient_segment_set_left_color_invoker,@function
gradient_segment_set_left_color_invoker: # @gradient_segment_set_left_color_invoker
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
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	leaq	-104(%rbp), %rsi
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_rgb
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	leaq	-128(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -120(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then.11
	leaq	-104(%rbp), %rdx
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	gimp_gradient_segment_set_left_color
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB10_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB10_8
.LBB10_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB10_8
.LBB10_8:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gradient_segment_set_left_color_invoker, .Lfunc_end10-gradient_segment_set_left_color_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gradient_segment_get_right_color_invoker,@function
gradient_segment_get_right_color_invoker: # @gradient_segment_get_right_color_invoker
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
	subq	$160, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	.Lgradient_segment_get_right_color_invoker.color, %rcx
	movq	%rcx, -112(%rbp)
	movq	.Lgradient_segment_get_right_color_invoker.color+8, %rcx
	movq	%rcx, -104(%rbp)
	movq	.Lgradient_segment_get_right_color_invoker.color+16, %rcx
	movq	%rcx, -96(%rbp)
	movq	.Lgradient_segment_get_right_color_invoker.color+24, %rcx
	movq	%rcx, -88(%rbp)
	movsd	%xmm0, -120(%rbp)
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
	je	.LBB11_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	leaq	-136(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -128(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then.6
	leaq	-112(%rbp), %rdx
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	gimp_gradient_segment_get_right_color
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	je	.LBB11_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.11
	leaq	-112(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	gimp_value_set_rgb
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB11_10:                              # %if.end.16
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gradient_segment_get_right_color_invoker, .Lfunc_end11-gradient_segment_get_right_color_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gradient_segment_set_right_color_invoker,@function
gradient_segment_set_right_color_invoker: # @gradient_segment_set_right_color_invoker
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
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	leaq	-104(%rbp), %rsi
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_rgb
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	leaq	-128(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -120(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then.11
	leaq	-104(%rbp), %rdx
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	gimp_gradient_segment_set_right_color
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB12_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_8:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gradient_segment_set_right_color_invoker, .Lfunc_end12-gradient_segment_set_right_color_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_get_left_pos_invoker,@function
gradient_segment_get_left_pos_invoker:  # @gradient_segment_get_left_pos_invoker
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -88(%rbp)
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
	je	.LBB13_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	leaq	-104(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -96(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_gradient_segment_get_left_pos
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB13_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB13_10:                              # %if.end.15
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gradient_segment_get_left_pos_invoker, .Lfunc_end13-gradient_segment_get_left_pos_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_set_left_pos_invoker,@function
gradient_segment_set_left_pos_invoker:  # @gradient_segment_set_left_pos_invoker
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
	callq	g_value_get_string
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
	je	.LBB14_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	leaq	-112(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -104(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then.9
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_segment_set_left_pos
	movsd	%xmm0, -96(%rbp)
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB14_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_8:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.15
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB14_10:                              # %if.end.18
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gradient_segment_set_left_pos_invoker, .Lfunc_end14-gradient_segment_set_left_pos_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_get_middle_pos_invoker,@function
gradient_segment_get_middle_pos_invoker: # @gradient_segment_get_middle_pos_invoker
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
	subq	$128, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -88(%rbp)
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
	je	.LBB15_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	leaq	-104(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -96(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_gradient_segment_get_middle_pos
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB15_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB15_8
.LBB15_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB15_8
.LBB15_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB15_10:                              # %if.end.15
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gradient_segment_get_middle_pos_invoker, .Lfunc_end15-gradient_segment_get_middle_pos_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_set_middle_pos_invoker,@function
gradient_segment_set_middle_pos_invoker: # @gradient_segment_set_middle_pos_invoker
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
	subq	$144, %rsp
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
	callq	g_value_get_string
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
	je	.LBB16_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	leaq	-112(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -104(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then.9
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_segment_set_middle_pos
	movsd	%xmm0, -96(%rbp)
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB16_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB16_8
.LBB16_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB16_8
.LBB16_8:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.15
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB16_10:                              # %if.end.18
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gradient_segment_set_middle_pos_invoker, .Lfunc_end16-gradient_segment_set_middle_pos_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_get_right_pos_invoker,@function
gradient_segment_get_right_pos_invoker: # @gradient_segment_get_right_pos_invoker
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
	subq	$128, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -88(%rbp)
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
	je	.LBB17_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	leaq	-104(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -96(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_gradient_segment_get_right_pos
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB17_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB17_8
.LBB17_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB17_8
.LBB17_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB17_10:                              # %if.end.15
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gradient_segment_get_right_pos_invoker, .Lfunc_end17-gradient_segment_get_right_pos_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_set_right_pos_invoker,@function
gradient_segment_set_right_pos_invoker: # @gradient_segment_set_right_pos_invoker
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
	callq	g_value_get_string
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
	je	.LBB18_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	leaq	-112(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -104(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then.9
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_segment_set_right_pos
	movsd	%xmm0, -96(%rbp)
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB18_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB18_8
.LBB18_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB18_8
.LBB18_8:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.15
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB18_10:                              # %if.end.18
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gradient_segment_set_right_pos_invoker, .Lfunc_end18-gradient_segment_set_right_pos_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_get_blending_function_invoker,@function
gradient_segment_get_blending_function_invoker: # @gradient_segment_get_blending_function_invoker
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
	subq	$128, %rsp
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
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	leaq	-96(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -88(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then.6
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_gradient_segment_get_blending_function
	movl	%eax, -80(%rbp)
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB19_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB19_8
.LBB19_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB19_8
.LBB19_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB19_10:                              # %if.end.15
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gradient_segment_get_blending_function_invoker, .Lfunc_end19-gradient_segment_get_blending_function_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_get_coloring_type_invoker,@function
gradient_segment_get_coloring_type_invoker: # @gradient_segment_get_coloring_type_invoker
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
	subq	$128, %rsp
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
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	leaq	-96(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %r9
	callq	gradient_get
	movq	%rax, -88(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB20_3
# BB#2:                                 # %if.then.6
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_gradient_segment_get_coloring_type
	movl	%eax, -80(%rbp)
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB20_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB20_8
.LBB20_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB20_8
.LBB20_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB20_10:                              # %if.end.15
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gradient_segment_get_coloring_type_invoker, .Lfunc_end20-gradient_segment_get_coloring_type_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_set_blending_function_invoker,@function
gradient_segment_range_set_blending_function_invoker: # @gradient_segment_range_set_blending_function_invoker
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB21_5
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %r8
	leaq	-104(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -88(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB21_3
# BB#2:                                 # %if.then.12
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-76(%rbp), %ecx
	callq	gimp_gradient_segment_range_set_blending_function
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB21_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB21_8
.LBB21_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB21_8
.LBB21_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gradient_segment_range_set_blending_function_invoker, .Lfunc_end21-gradient_segment_range_set_blending_function_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_set_coloring_type_invoker,@function
gradient_segment_range_set_coloring_type_invoker: # @gradient_segment_range_set_coloring_type_invoker
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_5
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %r8
	leaq	-104(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -88(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB22_3
# BB#2:                                 # %if.then.12
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-76(%rbp), %ecx
	callq	gimp_gradient_segment_range_set_coloring_type
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB22_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB22_8
.LBB22_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB22_8
.LBB22_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gradient_segment_range_set_coloring_type_invoker, .Lfunc_end22-gradient_segment_range_set_coloring_type_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_flip_invoker,@function
gradient_segment_range_flip_invoker:    # @gradient_segment_range_flip_invoker
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB23_5
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB23_3
# BB#2:                                 # %if.then.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gimp_gradient_segment_range_flip
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB23_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB23_8
.LBB23_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB23_8
.LBB23_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gradient_segment_range_flip_invoker, .Lfunc_end23-gradient_segment_range_flip_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_replicate_invoker,@function
gradient_segment_range_replicate_invoker: # @gradient_segment_range_replicate_invoker
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB24_6
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %r8
	leaq	-104(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -88(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB24_4
# BB#2:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB24_4
# BB#3:                                 # %if.then.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-76(%rbp), %eax
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	callq	gimp_gradient_segment_range_replicate
	jmp	.LBB24_5
.LBB24_4:                               # %if.else
	movl	$0, -52(%rbp)
.LBB24_5:                               # %if.end
	jmp	.LBB24_6
.LBB24_6:                               # %if.end.17
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB24_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB24_9
.LBB24_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB24_9
.LBB24_9:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gradient_segment_range_replicate_invoker, .Lfunc_end24-gradient_segment_range_replicate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_split_midpoint_invoker,@function
gradient_segment_range_split_midpoint_invoker: # @gradient_segment_range_split_midpoint_invoker
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB25_5
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB25_3
# BB#2:                                 # %if.then.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	callq	gimp_gradient_segment_range_split_midpoint
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB25_4:                               # %if.end
	jmp	.LBB25_5
.LBB25_5:                               # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB25_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB25_8
.LBB25_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB25_8
.LBB25_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gradient_segment_range_split_midpoint_invoker, .Lfunc_end25-gradient_segment_range_split_midpoint_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_split_uniform_invoker,@function
gradient_segment_range_split_uniform_invoker: # @gradient_segment_range_split_uniform_invoker
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB26_5
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %r8
	leaq	-104(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -88(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB26_3
# BB#2:                                 # %if.then.12
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movl	-76(%rbp), %r8d
	movq	$0, (%rsp)
	callq	gimp_gradient_segment_range_split_uniform
	jmp	.LBB26_4
.LBB26_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB26_4:                               # %if.end
	jmp	.LBB26_5
.LBB26_5:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB26_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB26_8
.LBB26_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB26_8
.LBB26_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gradient_segment_range_split_uniform_invoker, .Lfunc_end26-gradient_segment_range_split_uniform_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_delete_invoker,@function
gradient_segment_range_delete_invoker:  # @gradient_segment_range_delete_invoker
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB27_5
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB27_3
# BB#2:                                 # %if.then.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gimp_gradient_segment_range_delete
	jmp	.LBB27_4
.LBB27_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB27_4:                               # %if.end
	jmp	.LBB27_5
.LBB27_5:                               # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB27_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB27_8
.LBB27_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB27_8
.LBB27_8:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gradient_segment_range_delete_invoker, .Lfunc_end27-gradient_segment_range_delete_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_redistribute_handles_invoker,@function
gradient_segment_range_redistribute_handles_invoker: # @gradient_segment_range_redistribute_handles_invoker
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
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB28_5
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB28_3
# BB#2:                                 # %if.then.9
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	gimp_gradient_segment_range_redistribute_handles
	jmp	.LBB28_4
.LBB28_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB28_4:                               # %if.end
	jmp	.LBB28_5
.LBB28_5:                               # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB28_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB28_8
.LBB28_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB28_8
.LBB28_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gradient_segment_range_redistribute_handles_invoker, .Lfunc_end28-gradient_segment_range_redistribute_handles_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_blend_colors_invoker,@function
gradient_segment_range_blend_colors_invoker: # @gradient_segment_range_blend_colors_invoker
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB29_7
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB29_5
# BB#2:                                 # %if.then.9
	cmpq	$0, -96(%rbp)
	jne	.LBB29_4
# BB#3:                                 # %if.then.11
	movq	-88(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -96(%rbp)
.LBB29_4:                               # %if.end
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	addq	$32, %rcx
	movq	-96(%rbp), %r8
	addq	$72, %r8
	movl	$0, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_gradient_segment_range_blend
	jmp	.LBB29_6
.LBB29_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB29_6:                               # %if.end.13
	jmp	.LBB29_7
.LBB29_7:                               # %if.end.14
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB29_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB29_10
.LBB29_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB29_10
.LBB29_10:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gradient_segment_range_blend_colors_invoker, .Lfunc_end29-gradient_segment_range_blend_colors_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_blend_opacity_invoker,@function
gradient_segment_range_blend_opacity_invoker: # @gradient_segment_range_blend_opacity_invoker
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
	callq	g_value_get_int
	movl	%eax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB30_7
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB30_5
# BB#2:                                 # %if.then.9
	cmpq	$0, -96(%rbp)
	jne	.LBB30_4
# BB#3:                                 # %if.then.11
	movq	-88(%rbp), %rdi
	callq	gimp_gradient_segment_get_last
	movq	%rax, -96(%rbp)
.LBB30_4:                               # %if.end
	xorl	%r9d, %r9d
	movl	$1, %eax
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	addq	$32, %rcx
	movq	-96(%rbp), %r8
	addq	$72, %r8
	movl	$1, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_gradient_segment_range_blend
	jmp	.LBB30_6
.LBB30_5:                               # %if.else
	movl	$0, -52(%rbp)
.LBB30_6:                               # %if.end.13
	jmp	.LBB30_7
.LBB30_7:                               # %if.end.14
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB30_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB30_10
.LBB30_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB30_10
.LBB30_10:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gradient_segment_range_blend_opacity_invoker, .Lfunc_end30-gradient_segment_range_blend_opacity_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_segment_range_move_invoker,@function
gradient_segment_range_move_invoker:    # @gradient_segment_range_move_invoker
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
	subq	$160, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -104(%rbp)
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
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -92(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB31_5
# BB#1:                                 # %if.then
	leaq	-120(%rbp), %r8
	leaq	-128(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gradient_get_range
	movq	%rax, -112(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB31_3
# BB#2:                                 # %if.then.15
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-128(%rbp), %rdx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-92(%rbp), %ecx
	callq	gimp_gradient_segment_range_move
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB31_4
.LBB31_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB31_4:                               # %if.end
	jmp	.LBB31_5
.LBB31_5:                               # %if.end.17
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB31_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB31_8
.LBB31_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB31_8
.LBB31_8:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.21
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB31_10:                              # %if.end.24
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gradient_segment_range_move_invoker, .Lfunc_end31-gradient_segment_range_move_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_get,@function
gradient_get:                           # @gradient_get
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -48(%rbp)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-24(%rbp), %esi
	callq	gimp_gradient_segment_get_nth
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB32_2:                               # %if.end
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gradient_get, .Lfunc_end32-gradient_get
	.cfi_endproc

	.align	16, 0x90
	.type	gradient_get_range,@function
gradient_get_range:                     # @gradient_get_range
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
	subq	$64, %rsp
	movq	16(%rbp), %rax
	movl	$1, %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movl	%r10d, %edx
	callq	gimp_pdb_get_gradient
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	cmpl	$0, -32(%rbp)
	jl	.LBB33_3
# BB#1:                                 # %land.lhs.true
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB33_3
# BB#2:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB33_9
.LBB33_3:                               # %if.end
	cmpq	$0, -64(%rbp)
	je	.LBB33_8
# BB#4:                                 # %if.then.2
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_gradient_segment_get_nth
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_7
# BB#5:                                 # %land.lhs.true.5
	cmpl	$0, -32(%rbp)
	jl	.LBB33_7
# BB#6:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	-32(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, %esi
	callq	gimp_gradient_segment_get_nth
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB33_7:                               # %if.end.9
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.10
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB33_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gradient_get_range, .Lfunc_end33-gradient_get_range
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-gradient-new"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Creates a new gradient"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure creates a new, uninitialized gradient"
	.size	.L.str.2, 53

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Shlomi Fish <shlomif@iglu.org.il>"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Shlomi Fish"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2003"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"name"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The requested name of the new gradient"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"actual-name"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"actual name"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The actual new gradient name"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-gradient-duplicate"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Duplicates a gradient"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"This procedure creates an identical gradient by a different name"
	.size	.L.str.13, 65

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The gradient name"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"copy-name"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"copy name"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The name of the gradient's copy"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-gradient-is-editable"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Tests if gradient can be edited"
	.size	.L.str.19, 32

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Returns TRUE if you have permission to change the gradient"
	.size	.L.str.20, 59

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Bill Skaggs <weskaggs@primate.ucdavis.edu>"
	.size	.L.str.21, 43

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Bill Skaggs"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"2004"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"editable"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"TRUE if the gradient can be edited"
	.size	.L.str.25, 35

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-gradient-rename"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Rename a gradient"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"This procedure renames a gradient"
	.size	.L.str.28, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"new-name"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"new name"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"The new name of the gradient"
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The actual new name of the gradient"
	.size	.L.str.32, 36

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-gradient-delete"
	.size	.L.str.33, 21

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Deletes a gradient"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"This procedure deletes a gradient"
	.size	.L.str.35, 34

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-gradient-get-number-of-segments"
	.size	.L.str.36, 37

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Returns the number of segments of the specified gradient"
	.size	.L.str.37, 57

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"This procedure returns the number of segments of the specified gradient."
	.size	.L.str.38, 73

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Lars-Peter Clausen <lars@metafoo.de>"
	.size	.L.str.39, 37

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Lars-Peter Clausen"
	.size	.L.str.40, 19

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"2008"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"num-segments"
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"num segments"
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Number of segments"
	.size	.L.str.44, 19

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-gradient-get-uniform-samples"
	.size	.L.str.45, 34

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Sample the specified in uniform parts."
	.size	.L.str.46, 39

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"This procedure samples the active gradient in the specified number of uniform parts. It returns a list of floating-point values which correspond to the RGBA values for each sample. The minimum number of samples to take is 2, in which case the returned colors will correspond to the { 0.0, 1.0 } positions in the gradient. For example, if the number of samples is 3, the procedure will return the colors at positions { 0.0, 0.5, 1.0 }."
	.size	.L.str.47, 435

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Federico Mena Quintero"
	.size	.L.str.48, 23

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"1997"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"num-samples"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"num samples"
	.size	.L.str.51, 12

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"The number of samples to take"
	.size	.L.str.52, 30

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"reverse"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Use the reverse gradient"
	.size	.L.str.54, 25

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"num-color-samples"
	.size	.L.str.55, 18

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"num color samples"
	.size	.L.str.56, 18

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Length of the color_samples array (4 * num_samples)"
	.size	.L.str.57, 52

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"color-samples"
	.size	.L.str.58, 14

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"color samples"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Color samples: { R1, G1, B1, A1, ..., Rn, Gn, Bn, An }"
	.size	.L.str.60, 55

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-gradient-get-custom-samples"
	.size	.L.str.61, 33

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Sample the spacified gradient in custom positions."
	.size	.L.str.62, 51

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"This procedure samples the active gradient in the specified number of points. The procedure will sample the gradient in the specified positions from the list. The left endpoint of the gradient corresponds to position 0.0, and the right endpoint corresponds to 1.0. The procedure returns a list of floating-point values which correspond to the RGBA values for each sample."
	.size	.L.str.63, 372

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"positions"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"The list of positions to sample along the gradient"
	.size	.L.str.65, 51

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-gradient-segment-get-left-color"
	.size	.L.str.66, 37

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Retrieves the left endpoint color of the specified segment"
	.size	.L.str.67, 59

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"This procedure retrieves the left endpoint color of the specified segment of the specified gradient."
	.size	.L.str.68, 101

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"segment"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"The index of the segment within the gradient"
	.size	.L.str.70, 45

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"color"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"The return color"
	.size	.L.str.72, 17

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"opacity"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"The opacity of the endpoint"
	.size	.L.str.74, 28

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-gradient-segment-set-left-color"
	.size	.L.str.75, 37

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Sets the left endpoint color of the specified segment"
	.size	.L.str.76, 54

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"This procedure sets the left endpoint color of the specified segment of the specified gradient."
	.size	.L.str.77, 96

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"The color to set"
	.size	.L.str.78, 17

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"The opacity to set for the endpoint"
	.size	.L.str.79, 36

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gimp-gradient-segment-get-right-color"
	.size	.L.str.80, 38

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Retrieves the right endpoint color of the specified segment"
	.size	.L.str.81, 60

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"This procedure retrieves the right endpoint color of the specified segment of the specified gradient."
	.size	.L.str.82, 102

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-gradient-segment-set-right-color"
	.size	.L.str.83, 38

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Sets the right endpoint color of the specified segment"
	.size	.L.str.84, 55

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"This procedure sets the right endpoint color of the specified segment of the specified gradient."
	.size	.L.str.85, 97

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-gradient-segment-get-left-pos"
	.size	.L.str.86, 35

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Retrieves the left endpoint position of the specified segment"
	.size	.L.str.87, 62

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"This procedure retrieves the left endpoint position of the specified segment of the specified gradient."
	.size	.L.str.88, 104

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"pos"
	.size	.L.str.89, 4

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"The return position"
	.size	.L.str.90, 20

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gimp-gradient-segment-set-left-pos"
	.size	.L.str.91, 35

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Sets the left endpoint position of the specified segment"
	.size	.L.str.92, 57

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"This procedure sets the left endpoint position of the specified segment of the specified gradient. The final position will be between the position of the middle point to the left to the middle point of the current segement. This procedure returns the final position."
	.size	.L.str.93, 267

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"The position to set the guidepoint to"
	.size	.L.str.94, 38

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"final-pos"
	.size	.L.str.95, 10

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"final pos"
	.size	.L.str.96, 10

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-gradient-segment-get-middle-pos"
	.size	.L.str.97, 37

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Retrieves the middle point position of the specified segment"
	.size	.L.str.98, 61

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"This procedure retrieves the middle point position of the specified segment of the specified gradient."
	.size	.L.str.99, 103

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gimp-gradient-segment-set-middle-pos"
	.size	.L.str.100, 37

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Sets the middle point position of the specified segment"
	.size	.L.str.101, 56

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"This procedure sets the middle point position of the specified segment of the specified gradient. The final position will be between the two endpoints of the segment. This procedure returns the final position."
	.size	.L.str.102, 210

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-gradient-segment-get-right-pos"
	.size	.L.str.103, 36

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Retrieves the right endpoint position of the specified segment"
	.size	.L.str.104, 63

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"This procedure retrieves the right endpoint position of the specified segment of the specified gradient."
	.size	.L.str.105, 105

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"gimp-gradient-segment-set-right-pos"
	.size	.L.str.106, 36

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Sets the right endpoint position of the specified segment"
	.size	.L.str.107, 58

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"This procedure sets the right endpoint position of the specified segment of the specified gradient. The final position will be between the position of the middle point of the current segment and the middle point of the segment to the right. This procedure returns the final position."
	.size	.L.str.108, 284

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gimp-gradient-segment-get-blending-function"
	.size	.L.str.109, 44

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Retrieves the gradient segment's blending function"
	.size	.L.str.110, 51

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"This procedure retrieves the blending function of the segment at the specified gradient name and segment index."
	.size	.L.str.111, 112

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"blend-func"
	.size	.L.str.112, 11

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"blend func"
	.size	.L.str.113, 11

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"The blending function of the segment"
	.size	.L.str.114, 37

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"gimp-gradient-segment-get-coloring-type"
	.size	.L.str.115, 40

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Retrieves the gradient segment's coloring type"
	.size	.L.str.116, 47

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"This procedure retrieves the coloring type of the segment at the specified gradient name and segment index."
	.size	.L.str.117, 108

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"coloring-type"
	.size	.L.str.118, 14

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"coloring type"
	.size	.L.str.119, 14

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"The coloring type of the segment"
	.size	.L.str.120, 33

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"gimp-gradient-segment-range-set-blending-function"
	.size	.L.str.121, 50

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Change the blending function of a segments range"
	.size	.L.str.122, 49

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"This function changes the blending function of a segment range to the specified blending function."
	.size	.L.str.123, 99

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"start-segment"
	.size	.L.str.124, 14

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"start segment"
	.size	.L.str.125, 14

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"The index of the first segment to operate on"
	.size	.L.str.126, 45

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"end-segment"
	.size	.L.str.127, 12

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"end segment"
	.size	.L.str.128, 12

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"The index of the last segment to operate on. If negative, the selection will extend to the end of the string."
	.size	.L.str.129, 110

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"blending-function"
	.size	.L.str.130, 18

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"blending function"
	.size	.L.str.131, 18

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"The blending function"
	.size	.L.str.132, 22

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"gimp-gradient-segment-range-set-coloring-type"
	.size	.L.str.133, 46

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Change the coloring type of a segments range"
	.size	.L.str.134, 45

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"This function changes the coloring type of a segment range to the specified coloring type."
	.size	.L.str.135, 91

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"The coloring type"
	.size	.L.str.136, 18

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"gimp-gradient-segment-range-flip"
	.size	.L.str.137, 33

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Flip the segment range"
	.size	.L.str.138, 23

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"This function flips a segment range."
	.size	.L.str.139, 37

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gimp-gradient-segment-range-replicate"
	.size	.L.str.140, 38

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Replicate the segment range"
	.size	.L.str.141, 28

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"This function replicates a segment range a given number of times. Instead of the original segment range, several smaller scaled copies of it will appear in equal widths."
	.size	.L.str.142, 170

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"replicate-times"
	.size	.L.str.143, 16

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"replicate times"
	.size	.L.str.144, 16

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"The number of times to replicate"
	.size	.L.str.145, 33

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"gimp-gradient-segment-range-split-midpoint"
	.size	.L.str.146, 43

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Splits each segment in the segment range at midpoint"
	.size	.L.str.147, 53

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"This function splits each segment in the segment range at its midpoint."
	.size	.L.str.148, 72

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"gimp-gradient-segment-range-split-uniform"
	.size	.L.str.149, 42

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Splits each segment in the segment range uniformly"
	.size	.L.str.150, 51

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"This function splits each segment in the segment range uniformly according to the number of times specified by the parameter."
	.size	.L.str.151, 126

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"split-parts"
	.size	.L.str.152, 12

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"split parts"
	.size	.L.str.153, 12

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"The number of uniform divisions to split each segment to"
	.size	.L.str.154, 57

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"gimp-gradient-segment-range-delete"
	.size	.L.str.155, 35

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"Delete the segment range"
	.size	.L.str.156, 25

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"This function deletes a segment range."
	.size	.L.str.157, 39

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"gimp-gradient-segment-range-redistribute-handles"
	.size	.L.str.158, 49

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Uniformly redistribute the segment range's handles"
	.size	.L.str.159, 51

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"This function redistributes the handles of the specified segment range of the specified gradient, so they'll be evenly spaced."
	.size	.L.str.160, 127

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"gimp-gradient-segment-range-blend-colors"
	.size	.L.str.161, 41

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"Blend the colors of the segment range."
	.size	.L.str.162, 39

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"This function blends the colors (but not the opacity) of the segments' range of the gradient. Using it, the colors' transition will be uniform across the range."
	.size	.L.str.163, 161

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"gimp-gradient-segment-range-blend-opacity"
	.size	.L.str.164, 42

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"Blend the opacity of the segment range."
	.size	.L.str.165, 40

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"This function blends the opacity (but not the colors) of the segments' range of the gradient. Using it, the opacity's transition will be uniform across the range."
	.size	.L.str.166, 163

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"gimp-gradient-segment-range-move"
	.size	.L.str.167, 33

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"Move the position of an entire segment range by a delta."
	.size	.L.str.168, 57

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"This funtions moves the position of an entire segment range by a delta. The actual delta (which is returned) will be limited by the control points of the neighboring segments."
	.size	.L.str.169, 176

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"delta"
	.size	.L.str.170, 6

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"The delta to move the segment range"
	.size	.L.str.171, 36

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"control-compress"
	.size	.L.str.172, 17

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"control compress"
	.size	.L.str.173, 17

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"Whether or not to compress the neighboring segments"
	.size	.L.str.174, 52

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"final-delta"
	.size	.L.str.175, 12

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"final delta"
	.size	.L.str.176, 12

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"The final delta by which the range moved"
	.size	.L.str.177, 41

	.type	.Lgradient_segment_get_left_color_invoker.color,@object # @gradient_segment_get_left_color_invoker.color
	.section	.rodata,"a",@progbits
	.align	8
.Lgradient_segment_get_left_color_invoker.color:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Lgradient_segment_get_left_color_invoker.color, 32

	.type	.Lgradient_segment_get_right_color_invoker.color,@object # @gradient_segment_get_right_color_invoker.color
	.align	8
.Lgradient_segment_get_right_color_invoker.color:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Lgradient_segment_get_right_color_invoker.color, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
