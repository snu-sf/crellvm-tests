	.text
	.file	"unit-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_unit_procs
	.align	16, 0x90
	.type	register_unit_procs,@function
register_unit_procs:                    # @register_unit_procs
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
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$unit_get_number_of_units_invoker, %rax
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
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_get_number_of_built_in_units_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.12, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r10d, -84(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_new_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -148(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.23, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -176(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -200(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -224(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -248(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%r8d, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -256(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_unit
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_get_deletion_flag_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
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
	movq	-24(%rbp), %r11
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movl	%ebx, -292(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_set_deletion_flag_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.40, %rsi
	movabsq	$.L.str.41, %rdx
	movabsq	$.L.str.42, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movl	%ebx, -332(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.43, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_get_identifier_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.44, %rsi
	movabsq	$.L.str.45, %rdx
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movl	%ebx, -372(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.47, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -400(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_get_factor_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rdx
	movabsq	$.L.str.50, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movl	%ebx, -428(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.51, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_get_digits_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.52, %rsi
	movabsq	$.L.str.53, %rdx
	movabsq	$.L.str.54, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movl	%ebx, -468(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.55, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -484(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_get_symbol_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.57, %rdx
	movabsq	$.L.str.58, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movl	%ebx, -516(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.59, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	movl	-540(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -544(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_get_abbreviation_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.60, %rsi
	movabsq	$.L.str.61, %rdx
	movabsq	$.L.str.62, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movl	%ebx, -572(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.63, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	movl	-596(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -600(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_get_singular_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.65, %rdx
	movabsq	$.L.str.66, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -624(%rbp)        # 8-byte Spill
	movl	%ebx, -628(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.67, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	movl	-652(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -656(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$unit_get_plural_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.68, %rsi
	movabsq	$.L.str.69, %rdx
	movabsq	$.L.str.70, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.36, %rdx
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movl	%ebx, -684(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.71, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	movl	-708(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -712(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_unit_procs, .Lfunc_end0-register_unit_procs
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_number_of_units_invoker,@function
unit_get_number_of_units_invoker:       # @unit_get_number_of_units_invoker
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rdi
	callq	_gimp_unit_get_number_of_units
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movl	%eax, -60(%rbp)
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
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	unit_get_number_of_units_invoker, .Lfunc_end1-unit_get_number_of_units_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_number_of_built_in_units_invoker,@function
unit_get_number_of_built_in_units_invoker: # @unit_get_number_of_built_in_units_invoker
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rdi
	callq	_gimp_unit_get_number_of_built_in_units
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movl	%eax, -60(%rbp)
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
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	unit_get_number_of_built_in_units_invoker, .Lfunc_end2-unit_get_number_of_built_in_units_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_new_invoker,@function
unit_new_invoker:                       # @unit_new_invoker
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -124(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
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
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_string
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -120(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-84(%rbp), %edx
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %r8
	movq	-112(%rbp), %r9
	movq	-120(%rbp), %rax
	movq	%rax, (%rsp)
	callq	_gimp_unit_new
	movl	%eax, -124(%rbp)
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB3_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.23
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-124(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB3_7:                                # %if.end.26
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	unit_new_invoker, .Lfunc_end3-unit_new_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_deletion_flag_invoker,@function
unit_get_deletion_flag_invoker:         # @unit_get_deletion_flag_invoker
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_gimp_unit_get_deletion_flag
	movl	%eax, -72(%rbp)
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB4_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-72(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB4_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	unit_get_deletion_flag_invoker, .Lfunc_end4-unit_get_deletion_flag_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_set_deletion_flag_invoker,@function
unit_set_deletion_flag_invoker:         # @unit_set_deletion_flag_invoker
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
	callq	g_value_get_int
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -60(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edx
	callq	_gimp_unit_set_deletion_flag
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB5_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	unit_set_deletion_flag_invoker, .Lfunc_end5-unit_set_deletion_flag_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_identifier_invoker,@function
unit_get_identifier_invoker:            # @unit_get_identifier_invoker
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
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_gimp_unit_get_identifier
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
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
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB6_7:                                # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	unit_get_identifier_invoker, .Lfunc_end6-unit_get_identifier_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_factor_invoker,@function
unit_get_factor_invoker:                # @unit_get_factor_invoker
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
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_gimp_unit_get_factor
	movsd	%xmm0, -80(%rbp)
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
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB7_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	unit_get_factor_invoker, .Lfunc_end7-unit_get_factor_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_digits_invoker,@function
unit_get_digits_invoker:                # @unit_get_digits_invoker
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_gimp_unit_get_digits
	movl	%eax, -72(%rbp)
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB8_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB8_5
.LBB8_5:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-72(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB8_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	unit_get_digits_invoker, .Lfunc_end8-unit_get_digits_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_symbol_invoker,@function
unit_get_symbol_invoker:                # @unit_get_symbol_invoker
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
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_gimp_unit_get_symbol
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB9_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB9_5
.LBB9_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB9_7:                                # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	unit_get_symbol_invoker, .Lfunc_end9-unit_get_symbol_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_abbreviation_invoker,@function
unit_get_abbreviation_invoker:          # @unit_get_abbreviation_invoker
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
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_gimp_unit_get_abbreviation
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB10_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB10_5
.LBB10_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB10_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	unit_get_abbreviation_invoker, .Lfunc_end10-unit_get_abbreviation_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_singular_invoker,@function
unit_get_singular_invoker:              # @unit_get_singular_invoker
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
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_gimp_unit_get_singular
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
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
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_7
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB11_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	unit_get_singular_invoker, .Lfunc_end11-unit_get_singular_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	unit_get_plural_invoker,@function
unit_get_plural_invoker:                # @unit_get_plural_invoker
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
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_gimp_unit_get_plural
	movq	%rax, %rdi
	callq	g_strdup
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
# BB#6:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB12_7:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	unit_get_plural_invoker, .Lfunc_end12-unit_get_plural_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-unit-get-number-of-units"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Returns the number of units."
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure returns the number of defined units."
	.size	.L.str.2, 52

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Michael Natterer"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1999"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"num-units"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"num units"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The number of units"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-unit-get-number-of-built-in-units"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Returns the number of built-in units."
	.size	.L.str.10, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"This procedure returns the number of defined units built-in to GIMP."
	.size	.L.str.11, 69

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"The number of built-in units"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-unit-new"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Creates a new unit and returns it's integer ID."
	.size	.L.str.14, 48

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"This procedure creates a new unit and returns it's integer ID. Note that the new unit will have it's deletion flag set to TRUE, so you will have to set it to FALSE with 'gimp-unit-set-deletion-flag' to make it persistent."
	.size	.L.str.15, 222

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"identifier"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The new unit's identifier"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"factor"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"The new unit's factor"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"digits"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The new unit's digits"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"symbol"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"The new unit's symbol"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"abbreviation"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"The new unit's abbreviation"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"singular"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"The new unit's singular form"
	.size	.L.str.27, 29

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"plural"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The new unit's plural form"
	.size	.L.str.29, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"unit-id"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"unit id"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The new unit's ID"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-unit-get-deletion-flag"
	.size	.L.str.33, 28

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Returns the deletion flag of the unit."
	.size	.L.str.34, 39

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"This procedure returns the deletion flag of the unit. If this value is TRUE the unit's definition will not be saved in the user's unitrc file on gimp exit."
	.size	.L.str.35, 156

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"The unit's integer ID"
	.size	.L.str.36, 22

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"deletion-flag"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"deletion flag"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"The unit's deletion flag"
	.size	.L.str.39, 25

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-unit-set-deletion-flag"
	.size	.L.str.40, 28

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Sets the deletion flag of a unit."
	.size	.L.str.41, 34

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"This procedure sets the unit's deletion flag. If the deletion flag of a unit is TRUE on gimp exit, this unit's definition will not be saved in the user's unitrc."
	.size	.L.str.42, 162

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"The new deletion flag of the unit"
	.size	.L.str.43, 34

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-unit-get-identifier"
	.size	.L.str.44, 25

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Returns the textual identifier of the unit."
	.size	.L.str.45, 44

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"This procedure returns the textual identifier of the unit. For built-in units it will be the english singular form of the unit's name. For user-defined units this should equal to the singular form."
	.size	.L.str.46, 198

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The unit's textual identifier"
	.size	.L.str.47, 30

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-unit-get-factor"
	.size	.L.str.48, 21

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Returns the factor of the unit."
	.size	.L.str.49, 32

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"This procedure returns the unit's factor which indicates how many units make up an inch. Note that asking for the factor of \"pixels\" will produce an error."
	.size	.L.str.50, 156

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"The unit's factor"
	.size	.L.str.51, 18

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-unit-get-digits"
	.size	.L.str.52, 21

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Returns the number of digits of the unit."
	.size	.L.str.53, 42

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"This procedure returns the number of digits you should provide in input or output functions to get approximately the same accuracy as with two digits and inches. Note that asking for the digits of \"pixels\" will produce an error."
	.size	.L.str.54, 229

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"The unit's number of digits"
	.size	.L.str.55, 28

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-unit-get-symbol"
	.size	.L.str.56, 21

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Returns the symbol of the unit."
	.size	.L.str.57, 32

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"This procedure returns the symbol of the unit (\"''\" for inches)."
	.size	.L.str.58, 65

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"The unit's symbol"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-unit-get-abbreviation"
	.size	.L.str.60, 27

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Returns the abbreviation of the unit."
	.size	.L.str.61, 38

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"This procedure returns the abbreviation of the unit (\"in\" for inches)."
	.size	.L.str.62, 71

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"The unit's abbreviation"
	.size	.L.str.63, 24

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-unit-get-singular"
	.size	.L.str.64, 23

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Returns the singular form of the unit."
	.size	.L.str.65, 39

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"This procedure returns the singular form of the unit."
	.size	.L.str.66, 54

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"The unit's singular form"
	.size	.L.str.67, 25

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-unit-get-plural"
	.size	.L.str.68, 21

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Returns the plural form of the unit."
	.size	.L.str.69, 37

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"This procedure returns the plural form of the unit."
	.size	.L.str.70, 52

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"The unit's plural form"
	.size	.L.str.71, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
