	.text
	.file	"gimprc-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_gimprc_procs
	.align	16, 0x90
	.type	register_gimprc_procs,@function
register_gimprc_procs:                  # @register_gimprc_procs
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
	subq	$448, %rsp              # imm = 0x1C0
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$gimprc_query_invoker, %rax
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
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.8, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
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
	movabsq	$gimprc_set_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -128(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.14, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-32(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -176(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$get_default_comment_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.19, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -200(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -220(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$get_default_unit_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	movabsq	$.L.str.24, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.19, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -248(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	movl	$1, %ecx
	xorl	%r11d, %r11d
	movl	$227, %ebx
	movq	-32(%rbp), %rax
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%ebx, -260(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_unit
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$get_monitor_resolution_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.30, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.19, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -288(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.31, %rax
	movabsq	$.L.str.32, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.34, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$get_theme_dir_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rdx
	movabsq	$.L.str.37, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.19, %rdi
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	movq	-32(%rbp), %r9
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -328(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movl	%ebx, -348(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$get_color_configuration_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
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
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.48, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -388(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$get_module_load_inhibit_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.49, %rsi
	movabsq	$.L.str.50, %rdx
	movabsq	$.L.str.51, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.19, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -416(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movl	%ebx, -436(%rbp)        # 4-byte Spill
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
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_gimprc_procs, .Lfunc_end0-register_gimprc_procs
	.cfi_endproc

	.align	16, 0x90
	.type	gimprc_query_invoker,@function
gimprc_query_invoker:                   # @gimprc_query_invoker
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
	je	.LBB1_7
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB1_5
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rc_query
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.8
	movl	$0, -52(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB1_6:                                # %if.end.9
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB1_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_10
.LBB1_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_10
.LBB1_10:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.14
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB1_12:                               # %if.end.17
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimprc_query_invoker, .Lfunc_end1-gimprc_query_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gimprc_set_invoker,@function
gimprc_set_invoker:                     # @gimprc_set_invoker
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
	je	.LBB2_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB2_3
# BB#2:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_rc_set_unknown_token
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB2_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_8:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimprc_set_invoker, .Lfunc_end2-gimprc_set_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	get_default_comment_invoker,@function
get_default_comment_invoker:            # @get_default_comment_invoker
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
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	296(%rcx), %rdi
	callq	gimp_template_get_comment
	movq	%rax, %rdi
	callq	g_strdup
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
.Lfunc_end3:
	.size	get_default_comment_invoker, .Lfunc_end3-get_default_comment_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	get_default_unit_invoker,@function
get_default_unit_invoker:               # @get_default_unit_invoker
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	callq	gimp_get_default_unit
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
.Lfunc_end4:
	.size	get_default_unit_invoker, .Lfunc_end4-get_default_unit_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	get_monitor_resolution_invoker,@function
get_monitor_resolution_invoker:         # @get_monitor_resolution_invoker
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	496(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movsd	504(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
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
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-56(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_monitor_resolution_invoker, .Lfunc_end5-get_monitor_resolution_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	get_theme_dir_invoker,@function
get_theme_dir_invoker:                  # @get_theme_dir_invoker
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_theme_dir
	movq	%rax, %rdi
	callq	g_strdup
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
.Lfunc_end6:
	.size	get_theme_dir_invoker, .Lfunc_end6-get_theme_dir_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	get_color_configuration_invoker,@function
get_color_configuration_invoker:        # @get_color_configuration_invoker
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	368(%rcx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_string
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
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_color_configuration_invoker, .Lfunc_end7-get_color_configuration_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	get_module_load_inhibit_invoker,@function
get_module_load_inhibit_invoker:        # @get_module_load_inhibit_invoker
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	360(%rcx), %rdi
	callq	gimp_module_db_get_load_inhibit
	movq	%rax, %rdi
	callq	g_strdup
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
.Lfunc_end8:
	.size	get_module_load_inhibit_invoker, .Lfunc_end8-get_module_load_inhibit_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-gimprc-query"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Queries the gimprc file parser for information on a specified token."
	.size	.L.str.1, 69

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure is used to locate additional information contained in the gimprc file considered extraneous to the operation of GIMP. Plug-ins that need configuration information can expect it will be stored in the user gimprc file and can use this procedure to retrieve it. This query procedure will return the value associated with the specified token. This corresponds _only_ to entries with the format: (<token> <value>). The value must be a string. Entries not corresponding to this format will cause warnings to be issued on gimprc parsing and will not be queryable."
	.size	.L.str.2, 572

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1997"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"token"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The token to query for"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"value"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The value associated with the queried token"
	.size	.L.str.8, 44

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-gimprc-set"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Sets a gimprc token to a value and saves it in the gimprc."
	.size	.L.str.10, 59

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"This procedure is used to add or change additional information in the gimprc file that is considered extraneous to the operation of GIMP. Plug-ins that need configuration information can use this function to store it, and 'gimp-gimprc-query' to retrieve it. This will accept _only_ string values in UTF-8 encoding."
	.size	.L.str.11, 315

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Seth Burgess"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1999"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The token to add or modify"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The value to set the token to"
	.size	.L.str.15, 30

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-get-default-comment"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Get the default image comment as specified in the Preferences."
	.size	.L.str.17, 63

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Returns a copy of the default image comment."
	.size	.L.str.18, 45

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1995-1996"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"comment"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Default image comment"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-get-default-unit"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Get the default unit (taken from the user's locale)."
	.size	.L.str.23, 53

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Returns the default unit's integer ID."
	.size	.L.str.24, 39

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"unit-id"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"unit id"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Default unit"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-get-monitor-resolution"
	.size	.L.str.28, 28

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Get the monitor resolution as specified in the Preferences."
	.size	.L.str.29, 60

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Returns the resolution of the monitor in pixels/inch. This value is taken from the Preferences (or the windowing system if this is set in the Preferences) and there's no guarantee for the value to be reasonable."
	.size	.L.str.30, 212

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"xres"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"X resolution"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"yres"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Y resolution"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-get-theme-dir"
	.size	.L.str.35, 19

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Get the directory of the current GUI theme."
	.size	.L.str.36, 44

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Returns a copy of the current GUI theme dir."
	.size	.L.str.37, 45

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"theme-dir"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"theme dir"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"The GUI theme dir"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-get-color-configuration"
	.size	.L.str.41, 29

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Get a serialized version of the color management configuration."
	.size	.L.str.42, 64

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Returns a string that can be deserialized into a GimpColorConfig object representing the current color management configuration."
	.size	.L.str.43, 129

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
	.asciz	"2005"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"config"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Serialized color management configuration"
	.size	.L.str.48, 42

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-get-module-load-inhibit"
	.size	.L.str.49, 29

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Get the list of modules which should not be loaded."
	.size	.L.str.50, 52

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Returns a copy of the list of modules which should not be loaded."
	.size	.L.str.51, 66

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"load-inhibit"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"load inhibit"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"The list of modules"
	.size	.L.str.54, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
