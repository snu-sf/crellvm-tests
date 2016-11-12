	.text
	.file	"context-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4582834833314545664    # double -180
.LCPI0_1:
	.quad	4640537203540230144     # double 180
.LCPI0_2:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	4621819117588971520     # double 10
.LCPI0_4:
	.quad	-4587338432941916160    # double -90
.LCPI0_5:
	.quad	4636033603912859648     # double 90
.LCPI0_6:
	.quad	4641240890982006784     # double 200
.LCPI0_7:
	.quad	4652007308841189376     # double 1000
.LCPI0_8:
	.quad	-4597049319638433792    # double -20
.LCPI0_9:
	.quad	4626322717216342016     # double 20
.LCPI0_10:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI0_11:
	.quad	4636737291354636288     # double 100
	.text
	.globl	register_context_procs
	.align	16, 0x90
	.type	register_context_procs,@function
register_context_procs:                 # @register_context_procs
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
	subq	$2496, %rsp             # imm = 0x9C0
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$context_push_invoker, %rax
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
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_pop_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_defaults_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_list_paint_methods_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	xorl	%r10d, %r10d
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %ebx
	movq	-32(%rbp), %rax
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_paint_method_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	movabsq	$.L.str.28, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.31, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.33, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -164(%rbp)        # 4-byte Spill
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
	movabsq	$context_set_paint_method_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.34, %rsi
	movabsq	$.L.str.35, %rdx
	movabsq	$.L.str.36, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.31, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.37, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -204(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_foreground_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movabsq	$.L.str.40, %rcx
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
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.42, %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_foreground_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movabsq	$.L.str.45, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.41, %rax
	movabsq	$.L.str.42, %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_background_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.46, %rsi
	movabsq	$.L.str.47, %rdx
	movabsq	$.L.str.48, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.49, %rax
	movabsq	$.L.str.50, %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_background_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	movabsq	$.L.str.53, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.49, %rax
	movabsq	$.L.str.50, %rdx
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_default_colors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.55, %rdx
	movabsq	$.L.str.56, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_swap_colors_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.57, %rsi
	movabsq	$.L.str.58, %rdx
	movabsq	$.L.str.59, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_opacity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
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
	movq	-32(%rbp), %r11
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.63, %rax
	movabsq	$.L.str.64, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_11, %xmm1        # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movsd	-368(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_opacity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.65, %rsi
	movabsq	$.L.str.66, %rdx
	movabsq	$.L.str.67, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.63, %rax
	movabsq	$.L.str.64, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_11, %xmm1        # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movsd	-400(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_paint_mode_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
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
	movq	-32(%rbp), %r11
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$.L.str.73, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_paint_mode_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.74, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.74, %rsi
	movabsq	$.L.str.75, %rdx
	movabsq	$.L.str.76, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$.L.str.73, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_brush_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.77, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.77, %rsi
	movabsq	$.L.str.78, %rdx
	movabsq	$.L.str.79, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.80, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -484(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_brush_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.81, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rdx
	movabsq	$.L.str.83, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.84, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -524(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_brush_size_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.85, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.85, %rsi
	movabsq	$.L.str.86, %rdx
	movabsq	$.L.str.87, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %r14
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -552(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.90, %rax
	movabsq	$.L.str.91, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_10, %xmm1        # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movsd	-568(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_brush_size_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.92, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.92, %rsi
	movabsq	$.L.str.93, %rdx
	movabsq	$.L.str.94, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -592(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.90, %rax
	movabsq	$.L.str.91, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_10, %xmm1        # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
	movsd	-608(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_brush_default_size_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.95, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.95, %rsi
	movabsq	$.L.str.96, %rdx
	movabsq	$.L.str.97, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -632(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_brush_aspect_ratio_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.98, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.98, %rsi
	movabsq	$.L.str.99, %rdx
	movabsq	$.L.str.100, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -656(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.101, %rax
	movabsq	$.L.str.102, %rdx
	movsd	.LCPI0_8, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_9, %xmm1         # xmm1 = mem[0],zero
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
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_brush_aspect_ratio_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.103, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.103, %rsi
	movabsq	$.L.str.104, %rdx
	movabsq	$.L.str.100, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -696(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.101, %rax
	movabsq	$.L.str.102, %rdx
	movsd	.LCPI0_8, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_9, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -712(%rbp)       # 8-byte Spill
	movsd	-712(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_brush_angle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.105, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.105, %rsi
	movabsq	$.L.str.106, %rdx
	movabsq	$.L.str.107, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -736(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-728(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.108, %rax
	movabsq	$.L.str.109, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
	movsd	-752(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_brush_angle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.110, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.110, %rsi
	movabsq	$.L.str.111, %rdx
	movabsq	$.L.str.107, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -776(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.108, %rax
	movabsq	$.L.str.109, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
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
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_dynamics_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.112, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.112, %rsi
	movabsq	$.L.str.113, %rdx
	movabsq	$.L.str.114, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.115, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -828(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_dynamics_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.116, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.116, %rsi
	movabsq	$.L.str.117, %rdx
	movabsq	$.L.str.118, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.119, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -868(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_pattern_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.120, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.120, %rsi
	movabsq	$.L.str.121, %rdx
	movabsq	$.L.str.122, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.123, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -908(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_pattern_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.124, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.124, %rsi
	movabsq	$.L.str.125, %rdx
	movabsq	$.L.str.126, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.127, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -948(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_gradient_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movabsq	$.L.str.130, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.131, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -988(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_gradient_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.132, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.132, %rsi
	movabsq	$.L.str.133, %rdx
	movabsq	$.L.str.134, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.135, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1028(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_palette_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.136, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.136, %rsi
	movabsq	$.L.str.137, %rdx
	movabsq	$.L.str.138, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1048(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.139, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1068(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_palette_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
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
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.143, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1108(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_font_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.144, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.144, %rsi
	movabsq	$.L.str.145, %rdx
	movabsq	$.L.str.146, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.147, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1148(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_font_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.148, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.148, %rsi
	movabsq	$.L.str.149, %rdx
	movabsq	$.L.str.150, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.151, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1184(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1188(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_antialias_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.152, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.152, %rsi
	movabsq	$.L.str.153, %rdx
	movabsq	$.L.str.154, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.156, %rax
	movabsq	$.L.str.157, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1216(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_antialias_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.158, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.158, %rsi
	movabsq	$.L.str.159, %rdx
	movabsq	$.L.str.160, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1232(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.156, %rax
	movabsq	$.L.str.157, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_feather_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.161, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.161, %rsi
	movabsq	$.L.str.162, %rdx
	movabsq	$.L.str.163, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1256(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.164, %rax
	movabsq	$.L.str.165, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_feather_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.166, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.166, %rsi
	movabsq	$.L.str.167, %rdx
	movabsq	$.L.str.168, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.164, %rax
	movabsq	$.L.str.165, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -1288(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_feather_radius_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.169, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.169, %rsi
	movabsq	$.L.str.170, %rdx
	movabsq	$.L.str.171, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1304(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.172, %rdi
	movabsq	$.L.str.173, %rsi
	movabsq	$.L.str.174, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movsd	%xmm0, -1312(%rbp)      # 8-byte Spill
	movsd	-1312(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.175, %rdi
	movabsq	$.L.str.176, %rsi
	movabsq	$.L.str.177, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movsd	%xmm0, -1328(%rbp)      # 8-byte Spill
	movsd	-1328(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_feather_radius_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.178, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.178, %rsi
	movabsq	$.L.str.179, %rdx
	movabsq	$.L.str.180, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1352(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.172, %rdi
	movabsq	$.L.str.173, %rsi
	movabsq	$.L.str.174, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movsd	%xmm0, -1360(%rbp)      # 8-byte Spill
	movsd	-1360(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.175, %rdi
	movabsq	$.L.str.176, %rsi
	movabsq	$.L.str.177, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_7, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movsd	%xmm0, -1376(%rbp)      # 8-byte Spill
	movsd	-1376(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_sample_merged_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.181, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.181, %rsi
	movabsq	$.L.str.182, %rdx
	movabsq	$.L.str.183, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1400(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.184, %rdi
	movabsq	$.L.str.185, %rsi
	movabsq	$.L.str.186, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_sample_merged_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.187, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.187, %rsi
	movabsq	$.L.str.188, %rdx
	movabsq	$.L.str.189, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1424(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.184, %rdi
	movabsq	$.L.str.185, %rsi
	movabsq	$.L.str.186, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_sample_criterion_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.190, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.190, %rsi
	movabsq	$.L.str.191, %rdx
	movabsq	$.L.str.192, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1448(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -1456(%rbp)       # 8-byte Spill
	callq	gimp_select_criterion_get_type
	movabsq	$.L.str.193, %rdi
	movabsq	$.L.str.194, %rsi
	movabsq	$.L.str.195, %rdx
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
	movabsq	$context_set_sample_criterion_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.196, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.196, %rsi
	movabsq	$.L.str.197, %rdx
	movabsq	$.L.str.198, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1472(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -1480(%rbp)       # 8-byte Spill
	callq	gimp_select_criterion_get_type
	movabsq	$.L.str.193, %rdi
	movabsq	$.L.str.194, %rsi
	movabsq	$.L.str.195, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_sample_threshold_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1488(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.199, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.199, %rsi
	movabsq	$.L.str.200, %rdx
	movabsq	$.L.str.201, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1496(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.202, %rdi
	movabsq	$.L.str.203, %rsi
	movabsq	$.L.str.204, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movsd	%xmm0, -1504(%rbp)      # 8-byte Spill
	movsd	-1504(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_sample_threshold_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.205, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.205, %rsi
	movabsq	$.L.str.206, %rdx
	movabsq	$.L.str.207, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1528(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.202, %rdi
	movabsq	$.L.str.203, %rsi
	movabsq	$.L.str.204, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movsd	%xmm0, -1536(%rbp)      # 8-byte Spill
	movsd	-1536(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_sample_threshold_int_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.208, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.208, %rsi
	movabsq	$.L.str.209, %rdx
	movabsq	$.L.str.210, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1560(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.202, %rdi
	movabsq	$.L.str.203, %rsi
	movabsq	$.L.str.204, %rdx
	xorl	%r10d, %r10d
	movl	$255, %r8d
	movl	$227, %ebx
	movq	-32(%rbp), %rax
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	movl	%ebx, -1572(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_sample_threshold_int_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.211, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.211, %rsi
	movabsq	$.L.str.212, %rdx
	movabsq	$.L.str.213, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1592(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.202, %rdi
	movabsq	$.L.str.203, %rsi
	movabsq	$.L.str.204, %rdx
	xorl	%r10d, %r10d
	movl	$255, %r8d
	movl	$227, %ebx
	movq	-32(%rbp), %rax
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	movl	%ebx, -1604(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_sample_transparent_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1616(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.214, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.214, %rsi
	movabsq	$.L.str.215, %rdx
	movabsq	$.L.str.216, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1624(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.217, %rdi
	movabsq	$.L.str.218, %rsi
	movabsq	$.L.str.219, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_sample_transparent_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.220, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.220, %rsi
	movabsq	$.L.str.221, %rdx
	movabsq	$.L.str.222, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.14, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1648(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.217, %rdi
	movabsq	$.L.str.218, %rsi
	movabsq	$.L.str.219, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-1656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_interpolation_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1664(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.223, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.223, %rsi
	movabsq	$.L.str.224, %rdx
	movabsq	$.L.str.225, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1672(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -1680(%rbp)       # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.226, %rcx
	movabsq	$.L.str.227, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1680(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_interpolation_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.228, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.228, %rsi
	movabsq	$.L.str.229, %rdx
	movabsq	$.L.str.230, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1696(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -1704(%rbp)       # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.226, %rcx
	movabsq	$.L.str.227, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1704(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_transform_direction_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1712(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.231, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.231, %rsi
	movabsq	$.L.str.232, %rdx
	movabsq	$.L.str.233, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1720(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -1728(%rbp)       # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.234, %rdi
	movabsq	$.L.str.235, %rsi
	movabsq	$.L.str.236, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1728(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_transform_direction_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1736(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.237, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.237, %rsi
	movabsq	$.L.str.238, %rdx
	movabsq	$.L.str.239, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1744(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -1752(%rbp)       # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.234, %rdi
	movabsq	$.L.str.235, %rsi
	movabsq	$.L.str.236, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_transform_resize_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1760(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.240, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.240, %rsi
	movabsq	$.L.str.241, %rdx
	movabsq	$.L.str.242, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1768(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -1776(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.243, %rdi
	movabsq	$.L.str.244, %rsi
	movabsq	$.L.str.245, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1776(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_transform_resize_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1784(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.246, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.246, %rsi
	movabsq	$.L.str.247, %rdx
	movabsq	$.L.str.248, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1792(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -1800(%rbp)       # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.243, %rdi
	movabsq	$.L.str.244, %rsi
	movabsq	$.L.str.245, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_transform_recursion_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1808(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.249, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.249, %rsi
	movabsq	$.L.str.250, %rdx
	movabsq	$.L.str.251, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1816(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.252, %rdi
	movabsq	$.L.str.253, %rsi
	movabsq	$.L.str.254, %rdx
	movl	$1, %r10d
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %ebx
	movq	-32(%rbp), %rax
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	movl	%ebx, -1828(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1824(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_transform_recursion_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1840(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.255, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.255, %rsi
	movabsq	$.L.str.256, %rdx
	movabsq	$.L.str.257, %rcx
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.155, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -1848(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.252, %rdi
	movabsq	$.L.str.253, %rsi
	movabsq	$.L.str.254, %rdx
	movl	$1, %r10d
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %ebx
	movq	-32(%rbp), %rax
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	movl	%ebx, -1860(%rbp)       # 4-byte Spill
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
	movabsq	$context_get_ink_size_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1872(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.258, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.258, %rsi
	movabsq	$.L.str.259, %rdx
	movabsq	$.L.str.260, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %r14
	movq	%rdi, -1880(%rbp)       # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1880(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -1888(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.90, %rax
	movabsq	$.L.str.261, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1896(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1904(%rbp)      # 8-byte Spill
	movsd	-1904(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-1896(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_ink_size_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1912(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.262, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.262, %rsi
	movabsq	$.L.str.263, %rdx
	movabsq	$.L.str.264, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -1920(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -1928(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1920(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.90, %rax
	movabsq	$.L.str.261, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1936(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1944(%rbp)      # 8-byte Spill
	movsd	-1944(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-1936(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_ink_angle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1952(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.265, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.265, %rsi
	movabsq	$.L.str.266, %rdx
	movabsq	$.L.str.267, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -1960(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -1968(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1960(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.108, %rax
	movabsq	$.L.str.268, %rdx
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -1976(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1984(%rbp)      # 8-byte Spill
	movsd	-1984(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-1976(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_ink_angle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1992(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1992(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.269, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.269, %rsi
	movabsq	$.L.str.270, %rdx
	movabsq	$.L.str.271, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2000(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2008(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2000(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.108, %rax
	movabsq	$.L.str.268, %rdx
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2024(%rbp)      # 8-byte Spill
	movsd	-2024(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_ink_size_sensitivity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2032(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.272, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.272, %rsi
	movabsq	$.L.str.273, %rdx
	movabsq	$.L.str.274, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2040(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2048(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2040(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.90, %rax
	movabsq	$.L.str.275, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2064(%rbp)      # 8-byte Spill
	movsd	-2064(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_ink_size_sensitivity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2072(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.276, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.276, %rsi
	movabsq	$.L.str.277, %rdx
	movabsq	$.L.str.278, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2080(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2088(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2080(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.90, %rax
	movabsq	$.L.str.275, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2096(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2104(%rbp)      # 8-byte Spill
	movsd	-2104(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_ink_tilt_sensitivity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2112(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.279, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.279, %rsi
	movabsq	$.L.str.280, %rdx
	movabsq	$.L.str.281, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2120(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2128(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2120(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.282, %rax
	movabsq	$.L.str.283, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2144(%rbp)      # 8-byte Spill
	movsd	-2144(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_ink_tilt_sensitivity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2152(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.284, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.284, %rsi
	movabsq	$.L.str.285, %rdx
	movabsq	$.L.str.286, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2160(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2168(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2160(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.282, %rax
	movabsq	$.L.str.283, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2184(%rbp)      # 8-byte Spill
	movsd	-2184(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_ink_speed_sensitivity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2192(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.287, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.287, %rsi
	movabsq	$.L.str.288, %rdx
	movabsq	$.L.str.289, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2200(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2208(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2200(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.290, %rax
	movabsq	$.L.str.291, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2216(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2224(%rbp)      # 8-byte Spill
	movsd	-2224(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_ink_speed_sensitivity_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.292, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.292, %rsi
	movabsq	$.L.str.293, %rdx
	movabsq	$.L.str.294, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2240(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2248(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2240(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.290, %rax
	movabsq	$.L.str.291, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2256(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2264(%rbp)      # 8-byte Spill
	movsd	-2264(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_ink_blob_type_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2272(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.295, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.295, %rsi
	movabsq	$.L.str.296, %rdx
	movabsq	$.L.str.297, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2280(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2288(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2280(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -2296(%rbp)       # 8-byte Spill
	callq	gimp_ink_blob_type_get_type
	movabsq	$.L.str.298, %rcx
	movabsq	$.L.str.299, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-2296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_ink_blob_type_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.300, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.300, %rsi
	movabsq	$.L.str.301, %rdx
	movabsq	$.L.str.302, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %r14
	movq	%rdi, -2312(%rbp)       # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2312(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2320(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -2328(%rbp)       # 8-byte Spill
	callq	gimp_ink_blob_type_get_type
	movabsq	$.L.str.298, %rcx
	movabsq	$.L.str.299, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-2328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_ink_blob_aspect_ratio_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2336(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.303, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.303, %rsi
	movabsq	$.L.str.304, %rdx
	movabsq	$.L.str.305, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %r14
	movq	%rdi, -2344(%rbp)       # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2344(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -2352(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.101, %rax
	movabsq	$.L.str.306, %rdx
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2360(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2368(%rbp)      # 8-byte Spill
	movsd	-2368(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_ink_blob_aspect_ratio_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2376(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.307, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.307, %rsi
	movabsq	$.L.str.308, %rdx
	movabsq	$.L.str.309, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2384(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2392(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2384(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.101, %rax
	movabsq	$.L.str.306, %rdx
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2400(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2408(%rbp)      # 8-byte Spill
	movsd	-2408(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2400(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_get_ink_blob_angle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2416(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.310, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.310, %rsi
	movabsq	$.L.str.311, %rdx
	movabsq	$.L.str.312, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2424(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2432(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2424(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.108, %rax
	movabsq	$.L.str.313, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2440(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2448(%rbp)      # 8-byte Spill
	movsd	-2448(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$context_set_ink_blob_angle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -2456(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-2456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.314, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.314, %rsi
	movabsq	$.L.str.315, %rdx
	movabsq	$.L.str.316, %rcx
	movabsq	$.L.str.88, %rax
	movabsq	$.L.str.89, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -2464(%rbp)       # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -2472(%rbp)        # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-2464(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.108, %rax
	movabsq	$.L.str.313, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -2480(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -2488(%rbp)      # 8-byte Spill
	movsd	-2488(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-2480(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$2496, %rsp             # imm = 0x9C0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_context_procs, .Lfunc_end0-register_context_procs
	.cfi_endproc

	.align	16, 0x90
	.type	context_push_invoker,@function
context_push_invoker:                   # @context_push_invoker
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
	movl	$1, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB1_3
# BB#2:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_plug_in_context_push
	movl	%eax, -52(%rbp)
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB1_4:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB1_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB1_7
.LBB1_7:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	context_push_invoker, .Lfunc_end1-context_push_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_pop_invoker,@function
context_pop_invoker:                    # @context_pop_invoker
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
	movq	-16(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_plug_in_context_pop
	movl	%eax, -52(%rbp)
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_4:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB2_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB2_7
.LBB2_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB2_7
.LBB2_7:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	context_pop_invoker, .Lfunc_end2-context_pop_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_defaults_invoker,@function
context_set_defaults_invoker:           # @context_set_defaults_invoker
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	context_set_defaults_invoker, .Lfunc_end3-context_set_defaults_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_list_paint_methods_invoker,@function
context_list_paint_methods_invoker:     # @context_list_paint_methods_invoker
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
	subq	$80, %rsp
	leaq	-60(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rcx
	movq	344(%rcx), %rdi
	movq	%rax, %rsi
	callq	gimp_container_get_name_array
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	%rax, -72(%rbp)
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
	callq	gimp_value_take_stringarray
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	context_list_paint_methods_invoker, .Lfunc_end4-context_list_paint_methods_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_paint_method_invoker,@function
context_get_paint_method_invoker:       # @context_get_paint_method_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_paint_info
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB5_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_6
.LBB5_6:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB5_8:                                # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	context_get_paint_method_invoker, .Lfunc_end5-context_get_paint_method_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_paint_method_invoker,@function
context_set_paint_method_invoker:       # @context_set_paint_method_invoker
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
	je	.LBB6_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_paint_info
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_context_set_paint_info
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB6_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_8
.LBB6_8:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	context_set_paint_method_invoker, .Lfunc_end6-context_set_paint_method_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	context_get_foreground_invoker,@function
context_get_foreground_invoker:         # @context_get_foreground_invoker
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
	subq	$96, %rsp
	leaq	-88(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	.Lcontext_get_foreground_invoker.foreground, %rcx
	movq	%rcx, -88(%rbp)
	movq	.Lcontext_get_foreground_invoker.foreground+8, %rcx
	movq	%rcx, -80(%rbp)
	movq	.Lcontext_get_foreground_invoker.foreground+16, %rcx
	movq	%rcx, -72(%rbp)
	movq	.Lcontext_get_foreground_invoker.foreground+24, %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_context_get_foreground
	leaq	-88(%rbp), %rdi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rgb_set_alpha
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	leaq	-88(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	gimp_value_set_rgb
	movq	-56(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	context_get_foreground_invoker, .Lfunc_end7-context_get_foreground_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	context_set_foreground_invoker,@function
context_set_foreground_invoker:         # @context_set_foreground_invoker
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
	leaq	-88(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, %rsi
	callq	gimp_value_get_rgb
	cmpl	$0, -52(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %rdi
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rgb_set_alpha
	leaq	-88(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_set_foreground
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB8_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB8_5
.LBB8_5:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	context_set_foreground_invoker, .Lfunc_end8-context_set_foreground_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	context_get_background_invoker,@function
context_get_background_invoker:         # @context_get_background_invoker
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
	subq	$96, %rsp
	leaq	-88(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	.Lcontext_get_background_invoker.background, %rcx
	movq	%rcx, -88(%rbp)
	movq	.Lcontext_get_background_invoker.background+8, %rcx
	movq	%rcx, -80(%rbp)
	movq	.Lcontext_get_background_invoker.background+16, %rcx
	movq	%rcx, -72(%rbp)
	movq	.Lcontext_get_background_invoker.background+24, %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_context_get_background
	leaq	-88(%rbp), %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_rgb_set_alpha
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	leaq	-88(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	gimp_value_set_rgb
	movq	-56(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	context_get_background_invoker, .Lfunc_end9-context_get_background_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	context_set_background_invoker,@function
context_set_background_invoker:         # @context_set_background_invoker
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
	leaq	-88(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, %rsi
	callq	gimp_value_get_rgb
	cmpl	$0, -52(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %rdi
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_rgb_set_alpha
	leaq	-88(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_set_background
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
	.size	context_set_background_invoker, .Lfunc_end10-context_set_background_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_default_colors_invoker,@function
context_set_default_colors_invoker:     # @context_set_default_colors_invoker
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_set_default_colors
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	context_set_default_colors_invoker, .Lfunc_end11-context_set_default_colors_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_swap_colors_invoker,@function
context_swap_colors_invoker:            # @context_swap_colors_invoker
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_swap_colors
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	context_swap_colors_invoker, .Lfunc_end12-context_swap_colors_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	context_get_opacity_invoker,@function
context_get_opacity_invoker:            # @context_get_opacity_invoker
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
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_opacity
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	context_get_opacity_invoker, .Lfunc_end13-context_get_opacity_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	context_set_opacity_invoker,@function
context_set_opacity_invoker:            # @context_set_opacity_invoker
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_context_set_opacity
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB14_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_5:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	context_set_opacity_invoker, .Lfunc_end14-context_set_opacity_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_paint_mode_invoker,@function
context_get_paint_mode_invoker:         # @context_get_paint_mode_invoker
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_paint_mode
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
	callq	g_value_set_enum
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	context_get_paint_mode_invoker, .Lfunc_end15-context_get_paint_mode_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_paint_mode_invoker,@function
context_set_paint_mode_invoker:         # @context_set_paint_mode_invoker
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
	subq	$80, %rsp
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
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	gimp_context_set_paint_mode
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB16_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB16_5
.LBB16_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB16_5
.LBB16_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	context_set_paint_mode_invoker, .Lfunc_end16-context_set_paint_mode_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_brush_invoker,@function
context_get_brush_invoker:              # @context_get_brush_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB17_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB17_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_6
.LBB17_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB17_6
.LBB17_6:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB17_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	context_get_brush_invoker, .Lfunc_end17-context_get_brush_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_brush_invoker,@function
context_set_brush_invoker:              # @context_set_brush_invoker
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
	je	.LBB18_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_brush
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_context_set_brush
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB18_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB18_8
.LBB18_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB18_8
.LBB18_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	context_set_brush_invoker, .Lfunc_end18-context_set_brush_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_brush_size_invoker,@function
context_get_brush_size_invoker:         # @context_get_brush_size_invoker
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
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.317, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.318, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB19_3
.LBB19_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB19_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB19_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB19_6
.LBB19_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB19_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	context_get_brush_size_invoker, .Lfunc_end19-context_get_brush_size_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_brush_size_invoker,@function
context_set_brush_size_invoker:         # @context_set_brush_size_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_9
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_brush_options
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB20_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB20_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB20_2 Depth=1
	movabsq	$.L.str.318, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_object_set
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB20_2 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB20_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB20_7
.LBB20_6:                               # %cond.false
                                        #   in Loop: Header=BB20_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB20_7
.LBB20_7:                               # %cond.end
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB20_2
.LBB20_8:                               # %for.end
	movq	-72(%rbp), %rdi
	callq	g_list_free
.LBB20_9:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB20_11
# BB#10:                                # %cond.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB20_12
.LBB20_11:                              # %cond.false.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB20_12
.LBB20_12:                              # %cond.end.9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	context_set_brush_size_invoker, .Lfunc_end20-context_set_brush_size_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_brush_default_size_invoker,@function
context_set_brush_default_size_invoker: # @context_set_brush_default_size_invoker
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB21_9
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_brush_options
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB21_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB21_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_paint_options_set_default_brush_size
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB21_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB21_7
.LBB21_6:                               # %cond.false
                                        #   in Loop: Header=BB21_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB21_7
.LBB21_7:                               # %cond.end
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB21_2
.LBB21_8:                               # %for.end
	movq	-72(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB21_10
.LBB21_9:                               # %if.else
	movl	$0, -52(%rbp)
.LBB21_10:                              # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB21_12
# BB#11:                                # %cond.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB21_13
.LBB21_12:                              # %cond.false.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB21_13
.LBB21_13:                              # %cond.end.9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	context_set_brush_default_size_invoker, .Lfunc_end21-context_set_brush_default_size_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_brush_aspect_ratio_invoker,@function
context_get_brush_aspect_ratio_invoker: # @context_get_brush_aspect_ratio_invoker
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.317, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.319, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB22_3
.LBB22_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB22_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB22_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB22_6
.LBB22_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB22_6
.LBB22_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB22_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	context_get_brush_aspect_ratio_invoker, .Lfunc_end22-context_get_brush_aspect_ratio_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_brush_aspect_ratio_invoker,@function
context_set_brush_aspect_ratio_invoker: # @context_set_brush_aspect_ratio_invoker
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB23_9
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_brush_options
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB23_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB23_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB23_2 Depth=1
	movabsq	$.L.str.319, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_object_set
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB23_2 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB23_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB23_7
.LBB23_6:                               # %cond.false
                                        #   in Loop: Header=BB23_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB23_7
.LBB23_7:                               # %cond.end
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB23_2
.LBB23_8:                               # %for.end
	movq	-72(%rbp), %rdi
	callq	g_list_free
.LBB23_9:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB23_11
# BB#10:                                # %cond.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB23_12
.LBB23_11:                              # %cond.false.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB23_12
.LBB23_12:                              # %cond.end.9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	context_set_brush_aspect_ratio_invoker, .Lfunc_end23-context_set_brush_aspect_ratio_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_brush_angle_invoker,@function
context_get_brush_angle_invoker:        # @context_get_brush_angle_invoker
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
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.317, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.320, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB24_3
.LBB24_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB24_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB24_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB24_6
.LBB24_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB24_6
.LBB24_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB24_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB24_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	context_get_brush_angle_invoker, .Lfunc_end24-context_get_brush_angle_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_brush_angle_invoker,@function
context_set_brush_angle_invoker:        # @context_set_brush_angle_invoker
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB25_9
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_brush_options
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB25_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB25_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB25_2 Depth=1
	movabsq	$.L.str.320, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	(%rcx), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_object_set
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB25_2 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB25_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB25_7
.LBB25_6:                               # %cond.false
                                        #   in Loop: Header=BB25_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB25_7
.LBB25_7:                               # %cond.end
                                        #   in Loop: Header=BB25_2 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB25_2
.LBB25_8:                               # %for.end
	movq	-72(%rbp), %rdi
	callq	g_list_free
.LBB25_9:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB25_11
# BB#10:                                # %cond.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB25_12
.LBB25_11:                              # %cond.false.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB25_12
.LBB25_12:                              # %cond.end.9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	context_set_brush_angle_invoker, .Lfunc_end25-context_set_brush_angle_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_dynamics_invoker,@function
context_get_dynamics_invoker:           # @context_get_dynamics_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_dynamics
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB26_3
.LBB26_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB26_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB26_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB26_6
.LBB26_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB26_6
.LBB26_6:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB26_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB26_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	context_get_dynamics_invoker, .Lfunc_end26-context_get_dynamics_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_dynamics_invoker,@function
context_set_dynamics_invoker:           # @context_set_dynamics_invoker
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
	je	.LBB27_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_dynamics
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB27_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_context_set_dynamics
	jmp	.LBB27_4
.LBB27_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB27_4:                               # %if.end
	jmp	.LBB27_5
.LBB27_5:                               # %if.end.4
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
	.size	context_set_dynamics_invoker, .Lfunc_end27-context_set_dynamics_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_pattern_invoker,@function
context_get_pattern_invoker:            # @context_get_pattern_invoker
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
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_pattern
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB28_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB28_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB28_6
.LBB28_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB28_6
.LBB28_6:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB28_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB28_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	context_get_pattern_invoker, .Lfunc_end28-context_get_pattern_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_pattern_invoker,@function
context_set_pattern_invoker:            # @context_set_pattern_invoker
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
	je	.LBB29_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_pattern
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB29_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_context_set_pattern
	jmp	.LBB29_4
.LBB29_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB29_4:                               # %if.end
	jmp	.LBB29_5
.LBB29_5:                               # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB29_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB29_8
.LBB29_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB29_8
.LBB29_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	context_set_pattern_invoker, .Lfunc_end29-context_set_pattern_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_gradient_invoker,@function
context_get_gradient_invoker:           # @context_get_gradient_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_gradient
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB30_3
.LBB30_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB30_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB30_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB30_6
.LBB30_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB30_6
.LBB30_6:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB30_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB30_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	context_get_gradient_invoker, .Lfunc_end30-context_get_gradient_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_gradient_invoker,@function
context_set_gradient_invoker:           # @context_set_gradient_invoker
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
	je	.LBB31_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB31_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_context_set_gradient
	jmp	.LBB31_4
.LBB31_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB31_4:                               # %if.end
	jmp	.LBB31_5
.LBB31_5:                               # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB31_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB31_8
.LBB31_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB31_8
.LBB31_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	context_set_gradient_invoker, .Lfunc_end31-context_set_gradient_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_palette_invoker,@function
context_get_palette_invoker:            # @context_get_palette_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_palette
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB32_3
.LBB32_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB32_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB32_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB32_6
.LBB32_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB32_6
.LBB32_6:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB32_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB32_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	context_get_palette_invoker, .Lfunc_end32-context_get_palette_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_palette_invoker,@function
context_set_palette_invoker:            # @context_set_palette_invoker
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
	je	.LBB33_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_palette
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB33_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_context_set_palette
	jmp	.LBB33_4
.LBB33_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB33_4:                               # %if.end
	jmp	.LBB33_5
.LBB33_5:                               # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB33_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB33_8
.LBB33_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB33_8
.LBB33_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	context_set_palette_invoker, .Lfunc_end33-context_set_palette_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_font_invoker,@function
context_get_font_invoker:               # @context_get_font_invoker
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
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_font
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB34_3
.LBB34_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB34_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB34_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB34_6
.LBB34_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB34_6
.LBB34_6:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB34_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB34_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	context_get_font_invoker, .Lfunc_end34-context_get_font_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_font_invoker,@function
context_set_font_invoker:               # @context_set_font_invoker
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
	je	.LBB35_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_font
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB35_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_context_set_font
	jmp	.LBB35_4
.LBB35_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB35_4:                               # %if.end
	jmp	.LBB35_5
.LBB35_5:                               # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB35_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB35_8
.LBB35_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB35_8
.LBB35_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	context_set_font_invoker, .Lfunc_end35-context_set_font_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_antialias_invoker,@function
context_get_antialias_invoker:          # @context_get_antialias_invoker
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp113:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.156, %rax
	leaq	-68(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end36:
	.size	context_get_antialias_invoker, .Lfunc_end36-context_get_antialias_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_antialias_invoker,@function
context_set_antialias_invoker:          # @context_set_antialias_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_boolean
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB37_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.156, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB37_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB37_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB37_5
.LBB37_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB37_5
.LBB37_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	context_set_antialias_invoker, .Lfunc_end37-context_set_antialias_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_feather_invoker,@function
context_get_feather_invoker:            # @context_get_feather_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp120:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.164, %rax
	leaq	-68(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	context_get_feather_invoker, .Lfunc_end38-context_get_feather_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_feather_invoker,@function
context_set_feather_invoker:            # @context_set_feather_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_boolean
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB39_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.164, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB39_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB39_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB39_5
.LBB39_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB39_5
.LBB39_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	context_set_feather_invoker, .Lfunc_end39-context_set_feather_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_feather_radius_invoker,@function
context_get_feather_radius_invoker:     # @context_get_feather_radius_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
.Ltmp127:
	.cfi_offset %rbx, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
	movabsq	$.L.str.172, %rax
	leaq	-88(%rbp), %r10
	movabsq	$.L.str.175, %r11
	leaq	-96(%rbp), %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	xorps	%xmm0, %xmm0
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%r11, %rcx
	movq	%rbx, %r8
	movq	%r15, %r9
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r14d, %r14d
	movl	%r14d, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-80(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	context_get_feather_radius_invoker, .Lfunc_end40-context_get_feather_radius_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_feather_radius_invoker,@function
context_set_feather_radius_invoker:     # @context_set_feather_radius_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB41_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.172, %rsi
	movabsq	$.L.str.175, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
.LBB41_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB41_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB41_5
.LBB41_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB41_5
.LBB41_5:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	context_set_feather_radius_invoker, .Lfunc_end41-context_set_feather_radius_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_sample_merged_invoker,@function
context_get_sample_merged_invoker:      # @context_get_sample_merged_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp136:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.184, %rax
	leaq	-68(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end42:
	.size	context_get_sample_merged_invoker, .Lfunc_end42-context_get_sample_merged_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_sample_merged_invoker,@function
context_set_sample_merged_invoker:      # @context_set_sample_merged_invoker
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_boolean
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.184, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB43_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB43_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB43_5
.LBB43_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB43_5
.LBB43_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	context_set_sample_merged_invoker, .Lfunc_end43-context_set_sample_merged_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_sample_criterion_invoker,@function
context_get_sample_criterion_invoker:   # @context_get_sample_criterion_invoker
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp143:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.193, %rax
	leaq	-68(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end44:
	.size	context_get_sample_criterion_invoker, .Lfunc_end44-context_get_sample_criterion_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_sample_criterion_invoker,@function
context_set_sample_criterion_invoker:   # @context_set_sample_criterion_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
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
	je	.LBB45_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.193, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB45_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB45_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB45_5
.LBB45_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB45_5
.LBB45_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	context_set_sample_criterion_invoker, .Lfunc_end45-context_set_sample_criterion_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_sample_threshold_invoker,@function
context_get_sample_threshold_invoker:   # @context_get_sample_threshold_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp150:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.202, %rax
	leaq	-72(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end46:
	.size	context_get_sample_threshold_invoker, .Lfunc_end46-context_get_sample_threshold_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_sample_threshold_invoker,@function
context_set_sample_threshold_invoker:   # @context_set_sample_threshold_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB47_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.202, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
.LBB47_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB47_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB47_5
.LBB47_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB47_5
.LBB47_5:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	context_set_sample_threshold_invoker, .Lfunc_end47-context_set_sample_threshold_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_0:
	.quad	4643210863975260488     # double 255.99000000000001
	.text
	.align	16, 0x90
	.type	context_get_sample_threshold_int_invoker,@function
context_get_sample_threshold_int_invoker: # @context_get_sample_threshold_int_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp157:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.202, %rax
	leaq	-80(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %r11d
	movl	%r11d, -68(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end48:
	.size	context_get_sample_threshold_int_invoker, .Lfunc_end48-context_get_sample_threshold_int_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI49_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	context_set_sample_threshold_int_invoker,@function
context_set_sample_threshold_int_invoker: # @context_set_sample_threshold_int_invoker
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
	subq	$80, %rsp
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
	cmpl	$0, -52(%rbp)
	je	.LBB49_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.202, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movsd	.LCPI49_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	cvtsi2sdl	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	g_object_set
.LBB49_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB49_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB49_5
.LBB49_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB49_5
.LBB49_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	context_set_sample_threshold_int_invoker, .Lfunc_end49-context_set_sample_threshold_int_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_sample_transparent_invoker,@function
context_get_sample_transparent_invoker: # @context_get_sample_transparent_invoker
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp164:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.217, %rax
	leaq	-68(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end50:
	.size	context_get_sample_transparent_invoker, .Lfunc_end50-context_get_sample_transparent_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_sample_transparent_invoker,@function
context_set_sample_transparent_invoker: # @context_set_sample_transparent_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_boolean
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB51_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.217, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB51_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB51_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB51_5
.LBB51_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB51_5
.LBB51_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	context_set_sample_transparent_invoker, .Lfunc_end51-context_set_sample_transparent_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_interpolation_invoker,@function
context_get_interpolation_invoker:      # @context_get_interpolation_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp171:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.226, %rax
	leaq	-68(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end52:
	.size	context_get_interpolation_invoker, .Lfunc_end52-context_get_interpolation_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_interpolation_invoker,@function
context_set_interpolation_invoker:      # @context_set_interpolation_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
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
	je	.LBB53_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.226, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB53_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB53_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB53_5
.LBB53_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB53_5
.LBB53_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	context_set_interpolation_invoker, .Lfunc_end53-context_set_interpolation_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_transform_direction_invoker,@function
context_get_transform_direction_invoker: # @context_get_transform_direction_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp178:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.234, %rax
	leaq	-68(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end54:
	.size	context_get_transform_direction_invoker, .Lfunc_end54-context_get_transform_direction_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_transform_direction_invoker,@function
context_set_transform_direction_invoker: # @context_set_transform_direction_invoker
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
	subq	$80, %rsp
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
	je	.LBB55_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.234, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB55_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB55_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB55_5
.LBB55_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB55_5
.LBB55_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	context_set_transform_direction_invoker, .Lfunc_end55-context_set_transform_direction_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_transform_resize_invoker,@function
context_get_transform_resize_invoker:   # @context_get_transform_resize_invoker
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp185:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.243, %rax
	leaq	-68(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end56:
	.size	context_get_transform_resize_invoker, .Lfunc_end56-context_get_transform_resize_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_transform_resize_invoker,@function
context_set_transform_resize_invoker:   # @context_set_transform_resize_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
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
	je	.LBB57_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.243, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB57_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB57_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB57_5
.LBB57_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB57_5
.LBB57_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	context_set_transform_resize_invoker, .Lfunc_end57-context_set_transform_resize_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_transform_recursion_invoker,@function
context_get_transform_recursion_invoker: # @context_get_transform_recursion_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp192:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.252, %rax
	leaq	-68(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%rbx, %rcx
	movb	$0, %al
	callq	g_object_get
	movl	$1, %esi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end58:
	.size	context_get_transform_recursion_invoker, .Lfunc_end58-context_get_transform_recursion_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_transform_recursion_invoker,@function
context_set_transform_recursion_invoker: # @context_set_transform_recursion_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
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
	cmpl	$0, -52(%rbp)
	je	.LBB59_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.252, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB59_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB59_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB59_5
.LBB59_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB59_5
.LBB59_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	context_set_transform_recursion_invoker, .Lfunc_end59-context_set_transform_recursion_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_ink_size_invoker,@function
context_get_ink_size_invoker:           # @context_get_ink_size_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
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
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB60_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.90, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB60_3
.LBB60_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB60_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB60_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB60_6
.LBB60_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB60_6
.LBB60_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB60_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB60_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	context_get_ink_size_invoker, .Lfunc_end60-context_get_ink_size_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_ink_size_invoker,@function
context_set_ink_size_invoker:           # @context_set_ink_size_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB61_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB61_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.90, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
	jmp	.LBB61_4
.LBB61_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB61_4:                               # %if.end
	jmp	.LBB61_5
.LBB61_5:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB61_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB61_8
.LBB61_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB61_8
.LBB61_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	context_set_ink_size_invoker, .Lfunc_end61-context_set_ink_size_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_ink_angle_invoker,@function
context_get_ink_angle_invoker:          # @context_get_ink_angle_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
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
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB62_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.322, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB62_3
.LBB62_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB62_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB62_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB62_6
.LBB62_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB62_6
.LBB62_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB62_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB62_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	context_get_ink_angle_invoker, .Lfunc_end62-context_get_ink_angle_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_ink_angle_invoker,@function
context_set_ink_angle_invoker:          # @context_set_ink_angle_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB63_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB63_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.322, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
	jmp	.LBB63_4
.LBB63_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB63_4:                               # %if.end
	jmp	.LBB63_5
.LBB63_5:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB63_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB63_8
.LBB63_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB63_8
.LBB63_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	context_set_ink_angle_invoker, .Lfunc_end63-context_set_ink_angle_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_ink_size_sensitivity_invoker,@function
context_get_ink_size_sensitivity_invoker: # @context_get_ink_size_sensitivity_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
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
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB64_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.323, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB64_3
.LBB64_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB64_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB64_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB64_6
.LBB64_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB64_6
.LBB64_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB64_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB64_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	context_get_ink_size_sensitivity_invoker, .Lfunc_end64-context_get_ink_size_sensitivity_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_ink_size_sensitivity_invoker,@function
context_set_ink_size_sensitivity_invoker: # @context_set_ink_size_sensitivity_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB65_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB65_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.323, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
	jmp	.LBB65_4
.LBB65_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB65_4:                               # %if.end
	jmp	.LBB65_5
.LBB65_5:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB65_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB65_8
.LBB65_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB65_8
.LBB65_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	context_set_ink_size_sensitivity_invoker, .Lfunc_end65-context_set_ink_size_sensitivity_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_ink_tilt_sensitivity_invoker,@function
context_get_ink_tilt_sensitivity_invoker: # @context_get_ink_tilt_sensitivity_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
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
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB66_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.324, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB66_3
.LBB66_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB66_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB66_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB66_6
.LBB66_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB66_6
.LBB66_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB66_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB66_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	context_get_ink_tilt_sensitivity_invoker, .Lfunc_end66-context_get_ink_tilt_sensitivity_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_ink_tilt_sensitivity_invoker,@function
context_set_ink_tilt_sensitivity_invoker: # @context_set_ink_tilt_sensitivity_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB67_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB67_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.324, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
	jmp	.LBB67_4
.LBB67_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB67_4:                               # %if.end
	jmp	.LBB67_5
.LBB67_5:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB67_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB67_8
.LBB67_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB67_8
.LBB67_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	context_set_ink_tilt_sensitivity_invoker, .Lfunc_end67-context_set_ink_tilt_sensitivity_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_ink_speed_sensitivity_invoker,@function
context_get_ink_speed_sensitivity_invoker: # @context_get_ink_speed_sensitivity_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
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
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB68_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.325, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB68_3
.LBB68_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB68_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB68_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB68_6
.LBB68_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB68_6
.LBB68_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB68_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB68_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	context_get_ink_speed_sensitivity_invoker, .Lfunc_end68-context_get_ink_speed_sensitivity_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_ink_speed_sensitivity_invoker,@function
context_set_ink_speed_sensitivity_invoker: # @context_set_ink_speed_sensitivity_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB69_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB69_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.325, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
	jmp	.LBB69_4
.LBB69_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB69_4:                               # %if.end
	jmp	.LBB69_5
.LBB69_5:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB69_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB69_8
.LBB69_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB69_8
.LBB69_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	context_set_ink_speed_sensitivity_invoker, .Lfunc_end69-context_set_ink_speed_sensitivity_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_ink_blob_type_invoker,@function
context_get_ink_blob_type_invoker:      # @context_get_ink_blob_type_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
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
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB70_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.326, %rsi
	leaq	-68(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB70_3
.LBB70_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB70_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB70_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB70_6
.LBB70_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB70_6
.LBB70_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB70_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB70_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	context_get_ink_blob_type_invoker, .Lfunc_end70-context_get_ink_blob_type_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_ink_blob_type_invoker,@function
context_set_ink_blob_type_invoker:      # @context_set_ink_blob_type_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
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
	je	.LBB71_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB71_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.326, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB71_4
.LBB71_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB71_4:                               # %if.end
	jmp	.LBB71_5
.LBB71_5:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB71_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB71_8
.LBB71_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB71_8
.LBB71_8:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	context_set_ink_blob_type_invoker, .Lfunc_end71-context_set_ink_blob_type_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_get_ink_blob_aspect_ratio_invoker,@function
context_get_ink_blob_aspect_ratio_invoker: # @context_get_ink_blob_aspect_ratio_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp234:
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
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB72_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.327, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB72_3
.LBB72_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB72_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB72_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB72_6
.LBB72_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB72_6
.LBB72_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB72_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB72_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	context_get_ink_blob_aspect_ratio_invoker, .Lfunc_end72-context_get_ink_blob_aspect_ratio_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	context_set_ink_blob_aspect_ratio_invoker,@function
context_set_ink_blob_aspect_ratio_invoker: # @context_set_ink_blob_aspect_ratio_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp237:
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB73_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB73_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.327, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movb	$1, %al
	callq	g_object_set
	jmp	.LBB73_4
.LBB73_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB73_4:                               # %if.end
	jmp	.LBB73_5
.LBB73_5:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB73_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB73_8
.LBB73_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB73_8
.LBB73_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	context_set_ink_blob_aspect_ratio_invoker, .Lfunc_end73-context_set_ink_blob_aspect_ratio_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI74_0:
	.quad	4640537203540230144     # double 180
	.text
	.align	16, 0x90
	.type	context_get_ink_blob_angle_invoker,@function
context_get_ink_blob_angle_invoker:     # @context_get_ink_blob_angle_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp240:
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
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB74_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.328, %rsi
	leaq	-72(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movsd	.LCPI74_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB74_3
.LBB74_2:                               # %if.else
	movl	$0, -52(%rbp)
.LBB74_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB74_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB74_6
.LBB74_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB74_6
.LBB74_6:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB74_8
# BB#7:                                 # %if.then.6
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB74_8:                               # %if.end.7
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	context_get_ink_blob_angle_invoker, .Lfunc_end74-context_get_ink_blob_angle_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI75_0:
	.quad	4640537203540230144     # double 180
.LCPI75_1:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.align	16, 0x90
	.type	context_set_ink_blob_angle_invoker,@function
context_set_ink_blob_angle_invoker:     # @context_set_ink_blob_angle_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp243:
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
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB75_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.321, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB75_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.328, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movsd	.LCPI75_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI75_1, %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rcx
	mulsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	g_object_set
	jmp	.LBB75_4
.LBB75_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB75_4:                               # %if.end
	jmp	.LBB75_5
.LBB75_5:                               # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB75_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB75_8
.LBB75_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB75_8
.LBB75_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	context_set_ink_blob_angle_invoker, .Lfunc_end75-context_set_ink_blob_angle_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-context-push"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Pushes a context to the top of the plug-in's context stack."
	.size	.L.str.1, 60

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure creates a new context by copying the current context. This copy becomes the new current context for the calling plug-in until it is popped again using 'gimp-context-pop'."
	.size	.L.str.2, 186

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Michael Natterer <mitch@gimp.org> & Sven Neumann <sven@gimp.org>"
	.size	.L.str.3, 65

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Michael Natterer & Sven Neumann"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2004"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-context-pop"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Pops the topmost context from the plug-in's context stack."
	.size	.L.str.7, 59

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This procedure removes the topmost context from the plug-in's context stack. The context that was active before the corresponding call to 'gimp-context-push' becomes the new current context of the plug-in."
	.size	.L.str.8, 206

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-context-set-defaults"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Reset context settings to their default values."
	.size	.L.str.10, 48

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"This procedure resets context settings used by various procedures to their default value. This procedure will usually be called after a context push so that a script which calls procedures affected by context settings will not be affected by changes in the global context."
	.size	.L.str.11, 273

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Kevin Cozens <kcozens@svn.gnome.org>"
	.size	.L.str.12, 37

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Kevin Cozens"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"2011"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-context-list-paint-methods"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Lists the available paint methods."
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"This procedure lists the names of the available paint methods. Any of the results can be used for 'gimp-context-set-paint-method'."
	.size	.L.str.17, 131

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Simon Budig"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"2007"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"num-paint-methods"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"num paint methods"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The number of the available paint methods"
	.size	.L.str.22, 42

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"paint-methods"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"paint methods"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"The names of the available paint methods"
	.size	.L.str.25, 41

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-context-get-paint-method"
	.size	.L.str.26, 30

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Retrieve the currently active paint method."
	.size	.L.str.27, 44

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"This procedure returns the name of the currently active paint method."
	.size	.L.str.28, 70

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.29, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Michael Natterer"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"2005"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"name"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"The name of the active paint method"
	.size	.L.str.33, 36

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-context-set-paint-method"
	.size	.L.str.34, 30

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Set the specified paint method as the active paint method."
	.size	.L.str.35, 59

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"This procedure allows the active paint method to be set by specifying its name. The name is simply a string which corresponds to one of the names of the available paint methods. If there is no matching method found, this procedure will return an error. Otherwise, the specified method becomes active and will be used in all subsequent paint operations."
	.size	.L.str.36, 353

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The name of the paint method"
	.size	.L.str.37, 29

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-context-get-foreground"
	.size	.L.str.38, 28

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Get the current GIMP foreground color."
	.size	.L.str.39, 39

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"This procedure returns the current GIMP foreground color. The foreground color is used in a variety of tools such as paint tools, blending, and bucket fill."
	.size	.L.str.40, 157

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"foreground"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"The foreground color"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-context-set-foreground"
	.size	.L.str.43, 28

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Set the current GIMP foreground color."
	.size	.L.str.44, 39

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"This procedure sets the current GIMP foreground color. After this is set, operations which use foreground such as paint tools, blending, and bucket fill will use the new value."
	.size	.L.str.45, 177

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-context-get-background"
	.size	.L.str.46, 28

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Get the current GIMP background color."
	.size	.L.str.47, 39

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"This procedure returns the current GIMP background color. The background color is used in a variety of tools such as blending, erasing (with non-alpha images), and image filling."
	.size	.L.str.48, 179

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"background"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"The background color"
	.size	.L.str.50, 21

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-context-set-background"
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Set the current GIMP background color."
	.size	.L.str.52, 39

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"This procedure sets the current GIMP background color. After this is set, operations which use background such as blending, filling images, clearing, and erasing (in non-alpha images) will use the new value."
	.size	.L.str.53, 208

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-context-set-default-colors"
	.size	.L.str.54, 32

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Set the current GIMP foreground and background colors to black and white."
	.size	.L.str.55, 74

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"This procedure sets the current GIMP foreground and background colors to their initial default values, black and white."
	.size	.L.str.56, 120

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-context-swap-colors"
	.size	.L.str.57, 25

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Swap the current GIMP foreground and background colors."
	.size	.L.str.58, 56

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"This procedure swaps the current GIMP foreground and background colors, so that the new foreground color becomes the old background color and vice versa."
	.size	.L.str.59, 154

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-context-get-opacity"
	.size	.L.str.60, 25

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Get the opacity."
	.size	.L.str.61, 17

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"This procedure returns the opacity setting. The return value is a floating point number between 0 and 100."
	.size	.L.str.62, 107

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"opacity"
	.size	.L.str.63, 8

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"The opacity"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp-context-set-opacity"
	.size	.L.str.65, 25

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Set the opacity."
	.size	.L.str.66, 17

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"This procedure modifies the opacity setting. The value should be a floating point number between 0 and 100."
	.size	.L.str.67, 108

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-context-get-paint-mode"
	.size	.L.str.68, 28

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Get the paint mode."
	.size	.L.str.69, 20

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"This procedure returns the paint-mode setting. The return value is an integer which corresponds to the values listed in the argument description."
	.size	.L.str.70, 146

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"paint-mode"
	.size	.L.str.71, 11

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"paint mode"
	.size	.L.str.72, 11

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"The paint mode"
	.size	.L.str.73, 15

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimp-context-set-paint-mode"
	.size	.L.str.74, 28

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Set the paint mode."
	.size	.L.str.75, 20

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"This procedure modifies the paint_mode setting."
	.size	.L.str.76, 48

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimp-context-get-brush"
	.size	.L.str.77, 23

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Retrieve the currently active brush."
	.size	.L.str.78, 37

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"This procedure returns the name of the currently active brush. All paint operations and stroke operations use this brush to control the application of paint to the image."
	.size	.L.str.79, 171

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"The name of the active brush"
	.size	.L.str.80, 29

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-context-set-brush"
	.size	.L.str.81, 23

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Set the specified brush as the active brush."
	.size	.L.str.82, 45

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"This procedure allows the active brush to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed brushes. If there is no matching brush found, this procedure will return an error. Otherwise, the specified brush becomes active and will be used in all subsequent paint operations."
	.size	.L.str.83, 338

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"The name of the brush"
	.size	.L.str.84, 22

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"gimp-context-get-brush-size"
	.size	.L.str.85, 28

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Get brush size in pixels."
	.size	.L.str.86, 26

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Get the brush size in pixels for brush based paint tools."
	.size	.L.str.87, 58

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Ed Swartz"
	.size	.L.str.88, 10

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"2012"
	.size	.L.str.89, 5

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"size"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"brush size in pixels"
	.size	.L.str.91, 21

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gimp-context-set-brush-size"
	.size	.L.str.92, 28

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Set brush size in pixels."
	.size	.L.str.93, 26

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Set the brush size in pixels for brush based paint tools."
	.size	.L.str.94, 58

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gimp-context-set-brush-default-size"
	.size	.L.str.95, 36

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Set brush size to its default."
	.size	.L.str.96, 31

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Set the brush size to the default (max of width and height) for paintbrush, airbrush, or pencil tools."
	.size	.L.str.97, 103

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"gimp-context-get-brush-aspect-ratio"
	.size	.L.str.98, 36

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Get brush aspect ratio."
	.size	.L.str.99, 24

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Set the aspect ratio for brush based paint tools."
	.size	.L.str.100, 50

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"aspect"
	.size	.L.str.101, 7

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"aspect ratio"
	.size	.L.str.102, 13

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-context-set-brush-aspect-ratio"
	.size	.L.str.103, 36

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Set brush aspect ratio."
	.size	.L.str.104, 24

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"gimp-context-get-brush-angle"
	.size	.L.str.105, 29

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Get brush angle in degrees."
	.size	.L.str.106, 28

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Set the angle in degrees for brush based paint tools."
	.size	.L.str.107, 54

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"angle"
	.size	.L.str.108, 6

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"angle in degrees"
	.size	.L.str.109, 17

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gimp-context-set-brush-angle"
	.size	.L.str.110, 29

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Set brush angle in degrees."
	.size	.L.str.111, 28

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gimp-context-get-dynamics"
	.size	.L.str.112, 26

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Retrieve the currently active paint dynamics."
	.size	.L.str.113, 46

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"This procedure returns the name of the currently active paint dynamics. All paint operations and stroke operations use this paint dynamics to control the application of paint to the image."
	.size	.L.str.114, 189

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"The name of the active paint dynamics"
	.size	.L.str.115, 38

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-context-set-dynamics"
	.size	.L.str.116, 26

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Set the specified paint dynamics as the active paint dynamics."
	.size	.L.str.117, 63

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"This procedure allows the active paint dynamics to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed paint dynamics. If there is no matching paint dynamics found, this procedure will return an error. Otherwise, the specified paint dynamics becomes active and will be used in all subsequent paint operations."
	.size	.L.str.118, 372

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"The name of the paint dynamics"
	.size	.L.str.119, 31

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"gimp-context-get-pattern"
	.size	.L.str.120, 25

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Retrieve the currently active pattern."
	.size	.L.str.121, 39

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"This procedure returns name of the the currently active pattern. All clone and bucket-fill operations with patterns will use this pattern to control the application of paint to the image."
	.size	.L.str.122, 188

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"The name of the active pattern"
	.size	.L.str.123, 31

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"gimp-context-set-pattern"
	.size	.L.str.124, 25

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Set the specified pattern as the active pattern."
	.size	.L.str.125, 49

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"This procedure allows the active pattern to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed patterns. If there is no matching pattern found, this procedure will return an error. Otherwise, the specified pattern becomes active and will be used in all subsequent paint operations."
	.size	.L.str.126, 345

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"The name of the pattern"
	.size	.L.str.127, 24

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"gimp-context-get-gradient"
	.size	.L.str.128, 26

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Retrieve the currently active gradient."
	.size	.L.str.129, 40

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"This procedure returns the name of the currently active gradient."
	.size	.L.str.130, 66

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"The name of the active gradient"
	.size	.L.str.131, 32

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"gimp-context-set-gradient"
	.size	.L.str.132, 26

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Sets the specified gradient as the active gradient."
	.size	.L.str.133, 52

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"This procedure lets you set the specified gradient as the active or \"current\" one. The name is simply a string which corresponds to one of the loaded gradients. If no matching gradient is found, this procedure will return an error. Otherwise, the specified gradient will become active and will be used for subsequent custom gradient operations."
	.size	.L.str.134, 345

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"The name of the gradient"
	.size	.L.str.135, 25

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"gimp-context-get-palette"
	.size	.L.str.136, 25

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Retrieve the currently active palette."
	.size	.L.str.137, 39

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"This procedure returns the name of the the currently active palette."
	.size	.L.str.138, 69

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"The name of the active palette"
	.size	.L.str.139, 31

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gimp-context-set-palette"
	.size	.L.str.140, 25

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Set the specified palette as the active palette."
	.size	.L.str.141, 49

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"This procedure allows the active palette to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed palettes. If no matching palette is found, this procedure will return an error. Otherwise, the specified palette becomes active and will be used in all subsequent palette operations."
	.size	.L.str.142, 341

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"The name of the palette"
	.size	.L.str.143, 24

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gimp-context-get-font"
	.size	.L.str.144, 22

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Retrieve the currently active font."
	.size	.L.str.145, 36

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"This procedure returns the name of the currently active font."
	.size	.L.str.146, 62

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"The name of the active font"
	.size	.L.str.147, 28

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"gimp-context-set-font"
	.size	.L.str.148, 22

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Set the specified font as the active font."
	.size	.L.str.149, 43

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"This procedure allows the active font to be set by specifying its name. The name is simply a string which corresponds to one of the names of the installed fonts. If no matching font is found, this procedure will return an error. Otherwise, the specified font becomes active and will be used in all subsequent font operations."
	.size	.L.str.150, 326

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"The name of the font"
	.size	.L.str.151, 21

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"gimp-context-get-antialias"
	.size	.L.str.152, 27

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"Get the antialias setting."
	.size	.L.str.153, 27

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"This procedure returns the antialias setting."
	.size	.L.str.154, 46

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"2010"
	.size	.L.str.155, 5

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"antialias"
	.size	.L.str.156, 10

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"The antialias setting"
	.size	.L.str.157, 22

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"gimp-context-set-antialias"
	.size	.L.str.158, 27

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Set the antialias setting."
	.size	.L.str.159, 27

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"This procedure modifies the antialias setting. If antialiasing is turned on, the edges of selected region will contain intermediate values which give the appearance of a sharper, less pixelized edge. This should be set as TRUE most of the time unless a binary-only selection is wanted. This settings affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color', 'gimp-image-select-round-rectangle', 'gimp-image-select-ellipse', 'gimp-image-select-polygon', 'gimp-image-select-item'."
	.size	.L.str.160, 520

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"gimp-context-get-feather"
	.size	.L.str.161, 25

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"Get the feather setting."
	.size	.L.str.162, 25

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"This procedure returns the feather setting."
	.size	.L.str.163, 44

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"feather"
	.size	.L.str.164, 8

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"The feather setting"
	.size	.L.str.165, 20

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"gimp-context-set-feather"
	.size	.L.str.166, 25

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"Set the feather setting."
	.size	.L.str.167, 25

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"This procedure modifies the feather setting. If the feather option is enabled, selections will be blurred before combining. The blur is a gaussian blur; its radii can be controlled using 'gimp-context-set-feather-radius'. This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color', 'gimp-image-select-rectangle', 'gimp-image-select-round-rectangle', 'gimp-image-select-ellipse', 'gimp-image-select-polygon', 'gimp-image-select-item'."
	.size	.L.str.168, 486

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"gimp-context-get-feather-radius"
	.size	.L.str.169, 32

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"Get the feather radius setting."
	.size	.L.str.170, 32

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"This procedure returns the feather radius setting."
	.size	.L.str.171, 51

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"feather-radius-x"
	.size	.L.str.172, 17

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"feather radius x"
	.size	.L.str.173, 17

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"The horizontal feather radius"
	.size	.L.str.174, 30

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"feather-radius-y"
	.size	.L.str.175, 17

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"feather radius y"
	.size	.L.str.176, 17

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"The vertical feather radius"
	.size	.L.str.177, 28

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"gimp-context-set-feather-radius"
	.size	.L.str.178, 32

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"Set the feather radius setting."
	.size	.L.str.179, 32

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"This procedure modifies the feather radius setting. This setting affects all procedures that are affected by 'gimp-context-set-feather'."
	.size	.L.str.180, 137

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"gimp-context-get-sample-merged"
	.size	.L.str.181, 31

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Get the sample merged setting."
	.size	.L.str.182, 31

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"This procedure returns the sample merged setting."
	.size	.L.str.183, 50

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"sample-merged"
	.size	.L.str.184, 14

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"sample merged"
	.size	.L.str.185, 14

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"The sample merged setting"
	.size	.L.str.186, 26

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"gimp-context-set-sample-merged"
	.size	.L.str.187, 31

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Set the sample merged setting."
	.size	.L.str.188, 31

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"This procedure modifies the sample merged setting. If an operation depends on the colors of the pixels present in a drawable, like when doing a seed fill, this setting controls whether the pixel data from the specified drawable is used ('sample-merged' is FALSE), or the pixel data from the composite image ('sample-merged' is TRUE. This is equivalent to sampling for colors after merging all visible layers). This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color'."
	.size	.L.str.189, 522

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"gimp-context-get-sample-criterion"
	.size	.L.str.190, 34

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Get the sample criterion setting."
	.size	.L.str.191, 34

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"This procedure returns the sample criterion setting."
	.size	.L.str.192, 53

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"sample-criterion"
	.size	.L.str.193, 17

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"sample criterion"
	.size	.L.str.194, 17

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"The sample criterion setting"
	.size	.L.str.195, 29

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"gimp-context-set-sample-criterion"
	.size	.L.str.196, 34

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"Set the sample criterion setting."
	.size	.L.str.197, 34

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"This procedure modifies the sample criterion setting. If an operation depends on the colors of the pixels present in a drawable, like when doing a seed fill, this setting controls how color similarity is determined. SELECT_CRITERION_COMPOSITE is the default value. This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color'."
	.size	.L.str.198, 377

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"gimp-context-get-sample-threshold"
	.size	.L.str.199, 34

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"Get the sample threshold setting."
	.size	.L.str.200, 34

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"This procedure returns the sample threshold setting."
	.size	.L.str.201, 53

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"sample-threshold"
	.size	.L.str.202, 17

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"sample threshold"
	.size	.L.str.203, 17

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"The sample threshold setting"
	.size	.L.str.204, 29

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"gimp-context-set-sample-threshold"
	.size	.L.str.205, 34

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"Set the sample threshold setting."
	.size	.L.str.206, 34

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"This procedure modifies the sample threshold setting. If an operation depends on the colors of the pixels present in a drawable, like when doing a seed fill, this setting controls what is \"sufficiently close\" to be considered a similar color. If the sample threshold has not been set explicitly, the default threshold set in gimprc will be used. This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color'."
	.size	.L.str.207, 458

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"gimp-context-get-sample-threshold-int"
	.size	.L.str.208, 38

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"Get the sample threshold setting as an integer value."
	.size	.L.str.209, 54

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"This procedure returns the sample threshold setting as an integer value. See 'gimp-context-get-sample-threshold'."
	.size	.L.str.210, 114

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"gimp-context-set-sample-threshold-int"
	.size	.L.str.211, 38

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"Set the sample threshold setting as an integer value."
	.size	.L.str.212, 54

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"This procedure modifies the sample threshold setting as an integer value. See 'gimp-context-set-sample-threshold'."
	.size	.L.str.213, 115

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"gimp-context-get-sample-transparent"
	.size	.L.str.214, 36

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"Get the sample transparent setting."
	.size	.L.str.215, 36

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"This procedure returns the sample transparent setting."
	.size	.L.str.216, 55

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"sample-transparent"
	.size	.L.str.217, 19

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"sample transparent"
	.size	.L.str.218, 19

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"The sample transparent setting"
	.size	.L.str.219, 31

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"gimp-context-set-sample-transparent"
	.size	.L.str.220, 36

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"Set the sample transparent setting."
	.size	.L.str.221, 36

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"This procedure modifies the sample transparent setting. If an operation depends on the colors of the pixels present in a drawable, like when doing a seed fill, this setting controls whether transparency is considered to be a unique selectable color. When this setting is TRUE, transparent areas can be selected or filled. This setting affects the following procedures: 'gimp-image-select-color', 'gimp-image-select-contiguous-color'."
	.size	.L.str.222, 434

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"gimp-context-get-interpolation"
	.size	.L.str.223, 31

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"Get the interpolation type."
	.size	.L.str.224, 28

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"This procedure returns the interpolation setting. The return value is an integer which corresponds to the values listed in the argument description. If the interpolation has not been set explicitly by 'gimp-context-set-interpolation', the default interpolation set in gimprc will be used."
	.size	.L.str.225, 289

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"interpolation"
	.size	.L.str.226, 14

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"The interpolation type"
	.size	.L.str.227, 23

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"gimp-context-set-interpolation"
	.size	.L.str.228, 31

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"Set the interpolation type."
	.size	.L.str.229, 28

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"This procedure modifies the interpolation setting. This setting affects affects the following procedures: 'gimp-item-transform-flip', 'gimp-item-transform-perspective', 'gimp-item-transform-rotate', 'gimp-item-transform-scale', 'gimp-item-transform-shear', 'gimp-item-transform-2d', 'gimp-item-transform-matrix', 'gimp-image-scale', 'gimp-layer-scale'."
	.size	.L.str.230, 353

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"gimp-context-get-transform-direction"
	.size	.L.str.231, 37

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"Get the transform direction."
	.size	.L.str.232, 29

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"This procedure returns the transform direction. The return value is an integer which corresponds to the values listed in the argument description."
	.size	.L.str.233, 147

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"transform-direction"
	.size	.L.str.234, 20

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"transform direction"
	.size	.L.str.235, 20

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"The transform direction"
	.size	.L.str.236, 24

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"gimp-context-set-transform-direction"
	.size	.L.str.237, 37

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"Set the transform direction."
	.size	.L.str.238, 29

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"This procedure modifies the transform direction setting. This setting affects affects the following procedures: 'gimp-item-transform-flip', 'gimp-item-transform-perspective', 'gimp-item-transform-rotate', 'gimp-item-transform-scale', 'gimp-item-transform-shear', 'gimp-item-transform-2d', 'gimp-item-transform-matrix'."
	.size	.L.str.239, 319

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"gimp-context-get-transform-resize"
	.size	.L.str.240, 34

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"Get the transform resize type."
	.size	.L.str.241, 31

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"This procedure returns the transform resize setting. The return value is an integer which corresponds to the values listed in the argument description."
	.size	.L.str.242, 152

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"transform-resize"
	.size	.L.str.243, 17

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"transform resize"
	.size	.L.str.244, 17

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"The transform resize type"
	.size	.L.str.245, 26

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"gimp-context-set-transform-resize"
	.size	.L.str.246, 34

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"Set the transform resize type."
	.size	.L.str.247, 31

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"This procedure modifies the transform resize setting. When transforming pixels, if the result of a transform operation has a different size than the original area, this setting determines how the resulting area is sized. This setting affects affects the following procedures: 'gimp-item-transform-flip', 'gimp-item-transform-flip-simple', 'gimp-item-transform-perspective', 'gimp-item-transform-rotate', 'gimp-item-transform-rotate-simple', 'gimp-item-transform-scale', 'gimp-item-transform-shear', 'gimp-item-transform-2d', 'gimp-item-transform-matrix'."
	.size	.L.str.248, 555

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"gimp-context-get-transform-recursion"
	.size	.L.str.249, 37

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"Get the transform supersampling recursion."
	.size	.L.str.250, 43

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"This procedure returns the transform supersampling recursion level."
	.size	.L.str.251, 68

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"transform-recursion"
	.size	.L.str.252, 20

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"transform recursion"
	.size	.L.str.253, 20

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"The transform recursion level"
	.size	.L.str.254, 30

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"gimp-context-set-transform-recursion"
	.size	.L.str.255, 37

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"Set the transform supersampling recursion."
	.size	.L.str.256, 43

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"This procedure modifies the transform supersampling recursion level setting. Whether or not a transformation does supersampling is determined by the interplolation type. The recursion level defaults to 3, which is a nice default value. This setting affects affects the following procedures: 'gimp-item-transform-flip', 'gimp-item-transform-perspective', 'gimp-item-transform-rotate', 'gimp-item-transform-scale', 'gimp-item-transform-shear', 'gimp-item-transform-2d', 'gimp-item-transform-matrix'."
	.size	.L.str.257, 498

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"gimp-context-get-ink-size"
	.size	.L.str.258, 26

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"Get ink blob size in pixels."
	.size	.L.str.259, 29

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"Get the ink blob size in pixels for ink tool."
	.size	.L.str.260, 46

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"ink blob size in pixels"
	.size	.L.str.261, 24

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"gimp-context-set-ink-size"
	.size	.L.str.262, 26

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"Set ink blob size in pixels."
	.size	.L.str.263, 29

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"Set the ink blob size in pixels for ink tool."
	.size	.L.str.264, 46

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"gimp-context-get-ink-angle"
	.size	.L.str.265, 27

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"Get ink angle in degrees."
	.size	.L.str.266, 26

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"Get the ink angle in degrees for ink tool."
	.size	.L.str.267, 43

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"ink angle in degrees"
	.size	.L.str.268, 21

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"gimp-context-set-ink-angle"
	.size	.L.str.269, 27

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"Set ink angle in degrees."
	.size	.L.str.270, 26

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"Set the ink angle in degrees for ink tool."
	.size	.L.str.271, 43

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"gimp-context-get-ink-size-sensitivity"
	.size	.L.str.272, 38

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"Get ink size sensitivity."
	.size	.L.str.273, 26

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"Get the ink size sensitivity for ink tool."
	.size	.L.str.274, 43

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"ink size sensitivity"
	.size	.L.str.275, 21

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"gimp-context-set-ink-size-sensitivity"
	.size	.L.str.276, 38

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"Set ink size sensitivity."
	.size	.L.str.277, 26

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"Set the ink size sensitivity for ink tool."
	.size	.L.str.278, 43

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"gimp-context-get-ink-tilt-sensitivity"
	.size	.L.str.279, 38

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"Get ink tilt sensitivity."
	.size	.L.str.280, 26

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"Get the ink tilt sensitivity for ink tool."
	.size	.L.str.281, 43

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"tilt"
	.size	.L.str.282, 5

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"ink tilt sensitivity"
	.size	.L.str.283, 21

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"gimp-context-set-ink-tilt-sensitivity"
	.size	.L.str.284, 38

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"Set ink tilt sensitivity."
	.size	.L.str.285, 26

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"Set the ink tilt sensitivity for ink tool."
	.size	.L.str.286, 43

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"gimp-context-get-ink-speed-sensitivity"
	.size	.L.str.287, 39

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"Get ink speed sensitivity."
	.size	.L.str.288, 27

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"Get the ink speed sensitivity for ink tool."
	.size	.L.str.289, 44

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"speed"
	.size	.L.str.290, 6

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"ink speed sensitivity"
	.size	.L.str.291, 22

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"gimp-context-set-ink-speed-sensitivity"
	.size	.L.str.292, 39

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"Set ink speed sensitivity."
	.size	.L.str.293, 27

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"Set the ink speed sensitivity for ink tool."
	.size	.L.str.294, 44

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"gimp-context-get-ink-blob-type"
	.size	.L.str.295, 31

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"Get ink blob type."
	.size	.L.str.296, 19

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"Get the ink blob type for ink tool."
	.size	.L.str.297, 36

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"type"
	.size	.L.str.298, 5

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"Ink blob type"
	.size	.L.str.299, 14

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"gimp-context-set-ink-blob-type"
	.size	.L.str.300, 31

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"Set ink blob type."
	.size	.L.str.301, 19

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"Set the ink blob type for ink tool."
	.size	.L.str.302, 36

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"gimp-context-get-ink-blob-aspect-ratio"
	.size	.L.str.303, 39

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"Get ink blob aspect ratio."
	.size	.L.str.304, 27

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"Get the ink blob aspect ratio for ink tool."
	.size	.L.str.305, 44

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"ink blob aspect ratio"
	.size	.L.str.306, 22

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"gimp-context-set-ink-blob-aspect-ratio"
	.size	.L.str.307, 39

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"Set ink blob aspect ratio."
	.size	.L.str.308, 27

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"Set the ink blob aspect ratio for ink tool."
	.size	.L.str.309, 44

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"gimp-context-get-ink-blob-angle"
	.size	.L.str.310, 32

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"Get ink blob angle in degrees."
	.size	.L.str.311, 31

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"Get the ink blob angle in degrees for ink tool."
	.size	.L.str.312, 48

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"ink blob angle in degrees"
	.size	.L.str.313, 26

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"gimp-context-set-ink-blob-angle"
	.size	.L.str.314, 32

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"Set ink blob angle in degrees."
	.size	.L.str.315, 31

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"Set the ink blob angle in degrees for ink tool."
	.size	.L.str.316, 48

	.type	.Lcontext_get_foreground_invoker.foreground,@object # @context_get_foreground_invoker.foreground
	.section	.rodata,"a",@progbits
	.align	8
.Lcontext_get_foreground_invoker.foreground:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Lcontext_get_foreground_invoker.foreground, 32

	.type	.Lcontext_get_background_invoker.background,@object # @context_get_background_invoker.background
	.align	8
.Lcontext_get_background_invoker.background:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Lcontext_get_background_invoker.background, 32

	.type	.L.str.317,@object      # @.str.317
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.317:
	.asciz	"gimp-paintbrush"
	.size	.L.str.317, 16

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"brush-size"
	.size	.L.str.318, 11

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"brush-aspect-ratio"
	.size	.L.str.319, 19

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"brush-angle"
	.size	.L.str.320, 12

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"gimp-ink"
	.size	.L.str.321, 9

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"tilt-angle"
	.size	.L.str.322, 11

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"size-sensitivity"
	.size	.L.str.323, 17

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"tilt-sensitivity"
	.size	.L.str.324, 17

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"vel-sensitivity"
	.size	.L.str.325, 16

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"blob-type"
	.size	.L.str.326, 10

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"blob-aspect"
	.size	.L.str.327, 12

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"blob-angle"
	.size	.L.str.328, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
