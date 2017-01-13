	.text
	.file	"paint-tools-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI0_2:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
	.text
	.globl	register_paint_tools_procs
	.align	16, 0x90
	.type	register_paint_tools_procs,@function
register_paint_tools_procs:             # @register_paint_tools_procs
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
	subq	$1304, %rsp             # imm = 0x518
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$airbrush_invoker, %rax
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
	callq	gimp_param_spec_drawable_id
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.8, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$airbrush_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.1, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -120(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-132(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%r11d, -148(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$clone_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
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
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -184(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_drawable_id
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_clone_type_get_type
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -232(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$clone_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.34, %rcx
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -272(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -284(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-284(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%r11d, -300(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$convolve_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rdx
	movabsq	$.L.str.37, %rcx
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
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.38, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	movsd	-360(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	gimp_convolve_type_get_type
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$.L.str.41, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -372(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-372(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movl	%r11d, -388(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$convolve_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.36, %rdx
	movabsq	$.L.str.43, %rcx
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -424(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -436(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-436(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movl	%r11d, -452(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$dodgeburn_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.44, %rsi
	movabsq	$.L.str.45, %rdx
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -488(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.48, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movsd	-512(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	callq	gimp_dodge_burn_type_get_type
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.50, %rsi
	movabsq	$.L.str.51, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	callq	gimp_transfer_mode_get_type
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
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
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$dodgeburn_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.56, %rdx
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -584(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -596(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-596(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movl	%r11d, -612(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$eraser_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.57, %rsi
	movabsq	$.L.str.58, %rdx
	movabsq	$.L.str.59, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -648(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -660(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-660(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -672(%rbp)        # 8-byte Spill
	movl	%r11d, -676(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	callq	gimp_brush_application_mode_get_type
	movabsq	$.L.str.60, %rdx
	movabsq	$.L.str.61, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -704(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-704(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	callq	gimp_paint_application_mode_get_type
	movabsq	$.L.str.62, %rcx
	movabsq	$.L.str.63, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$eraser_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.58, %rdx
	movabsq	$.L.str.65, %rcx
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-728(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -736(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -748(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-748(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movl	%r11d, -764(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$heal_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.66, %rsi
	movabsq	$.L.str.67, %rdx
	movabsq	$.L.str.68, %rcx
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -800(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_drawable_id
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -836(%rbp)        # 4-byte Spill
	movl	-836(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -840(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$heal_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.71, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.71, %rsi
	movabsq	$.L.str.67, %rdx
	movabsq	$.L.str.72, %rcx
	movabsq	$.L.str.69, %rax
	movabsq	$.L.str.70, %rdi
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
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -892(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-892(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -904(%rbp)        # 8-byte Spill
	movl	%r11d, -908(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$paintbrush_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.74, %rdx
	movabsq	$.L.str.75, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-936(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -944(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movabsq	$.L.str.78, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm0, -960(%rbp)       # 8-byte Spill
	movsd	-960(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -972(%rbp)        # 4-byte Spill
	movl	-972(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -976(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	callq	gimp_paint_application_mode_get_type
	movabsq	$.L.str.62, %rdx
	movabsq	$.L.str.63, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -1008(%rbp)       # 8-byte Spill
	movq	%rdx, %rsi
	movq	-1008(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.79, %rdi
	movabsq	$.L.str.80, %rsi
	movabsq	$.L.str.81, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm0, -1016(%rbp)      # 8-byte Spill
	movsd	-1016(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$paintbrush_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.82, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.82, %rsi
	movabsq	$.L.str.83, %rdx
	movabsq	$.L.str.84, %rcx
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdi
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
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1060(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1060(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	movl	%r11d, -1076(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$pencil_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.85, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.85, %rsi
	movabsq	$.L.str.86, %rdx
	movabsq	$.L.str.87, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1112(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1124(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1124(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	movl	%r11d, -1140(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$smudge_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.88, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.88, %rsi
	movabsq	$.L.str.89, %rdx
	movabsq	$.L.str.90, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1176(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.91, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1192(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1200(%rbp)      # 8-byte Spill
	movsd	-1200(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1204(%rbp)       # 4-byte Spill
	movl	-1204(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1208(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1224(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$smudge_default_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.92, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.92, %rsi
	movabsq	$.L.str.89, %rdx
	movabsq	$.L.str.93, %rcx
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdi
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
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1256(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1260(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1260(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	movl	%r11d, -1276(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1288(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1304, %rsp             # imm = 0x518
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_paint_tools_procs, .Lfunc_end0-register_paint_tools_procs
	.cfi_endproc

	.align	16, 0x90
	.type	airbrush_invoker,@function
airbrush_invoker:                       # @airbrush_invoker
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp7:
	.cfi_offset %rbx, -32
.Ltmp8:
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
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -92(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -104(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB1_7
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB1_5
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_5
# BB#3:                                 # %land.lhs.true.18
	movq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB1_5
# BB#4:                                 # %if.then.23
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.7, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_set
	movabsq	$.L.str.94, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	-112(%rbp), %r9
	movq	-80(%rbp), %rcx
	movl	-92(%rbp), %r10d
	movq	-104(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	352(%r14), %r14
	movq	56(%r14), %r14
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movl	%r10d, %r8d
	movq	%r11, %r9
	movq	%rbx, (%rsp)
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -68(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -68(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.28
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB1_9
# BB#8:                                 # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_10
.LBB1_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_10
.LBB1_10:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	airbrush_invoker, .Lfunc_end1-airbrush_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	airbrush_default_invoker,@function
airbrush_default_invoker:               # @airbrush_default_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB2_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB2_5
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
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_5
# BB#3:                                 # %land.lhs.true.15
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB2_5
# BB#4:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	movl	$0, -60(%rbp)
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB2_9
# BB#8:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_10
.LBB2_10:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	airbrush_default_invoker, .Lfunc_end2-airbrush_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	clone_invoker,@function
clone_invoker:                          # @clone_invoker
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	$1, -92(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_drawable
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -116(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -136(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -140(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -152(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB3_7
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.LBB3_5
# BB#2:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_5
# BB#3:                                 # %land.lhs.true.27
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB3_5
# BB#4:                                 # %if.then.32
	movq	-160(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.24, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movl	-116(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.94, %rcx
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.30, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-56(%rbp), %r10
	movq	-64(%rbp), %r11
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rbx
	movl	-140(%rbp), %r14d
	movq	-152(%rbp), %r15
	movq	-88(%rbp), %r12
	movq	-160(%rbp), %r13
	movq	352(%r13), %r13
	movq	56(%r13), %r13
	movq	-112(%rbp), %rax
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r8, -224(%rbp)         # 8-byte Spill
	movl	%r14d, %r8d
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	%r12, (%rsp)
	movq	-216(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	-208(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$2, %al
	callq	paint_tools_stroke
	movl	%eax, -92(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	movl	$0, -92(%rbp)
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.37
	movq	-48(%rbp), %rdi
	movl	-92(%rbp), %esi
	cmpq	$0, -88(%rbp)
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movl	%esi, -244(%rbp)        # 4-byte Spill
	je	.LBB3_9
# BB#8:                                 # %cond.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB3_10
.LBB3_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB3_10
.LBB3_10:                               # %cond.end
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	clone_invoker, .Lfunc_end3-clone_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	clone_default_invoker,@function
clone_default_invoker:                  # @clone_default_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp24:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB4_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB4_5
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
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB4_5
# BB#3:                                 # %land.lhs.true.15
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB4_5
# BB#4:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movl	$0, -60(%rbp)
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB4_9
# BB#8:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB4_10
.LBB4_10:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	clone_default_invoker, .Lfunc_end4-clone_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	convolve_invoker,@function
convolve_invoker:                       # @convolve_invoker
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
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
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -92(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -104(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB5_7
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB5_5
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true.21
	movq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB5_5
# BB#4:                                 # %if.then.26
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.95, %rsi
	movabsq	$.L.str.96, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	-92(%rbp), %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_set
	movabsq	$.L.str.94, %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %r9
	movl	-96(%rbp), %r10d
	movq	-104(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	352(%r14), %r14
	movq	56(%r14), %r14
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movl	%r10d, %r8d
	movq	%r11, %r9
	movq	%rbx, (%rsp)
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -68(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.else
	movl	$0, -68(%rbp)
.LBB5_6:                                # %if.end
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.31
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB5_9
# BB#8:                                 # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_10
.LBB5_10:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	convolve_invoker, .Lfunc_end5-convolve_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	convolve_default_invoker,@function
convolve_default_invoker:               # @convolve_default_invoker
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp33:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB6_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB6_5
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
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true.15
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB6_5
# BB#4:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	movl	$0, -60(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB6_9
# BB#8:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB6_10
.LBB6_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB6_10
.LBB6_10:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	convolve_default_invoker, .Lfunc_end6-convolve_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	dodgeburn_invoker,@function
dodgeburn_invoker:                      # @dodgeburn_invoker
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
	pushq	%r14
	pushq	%rbx
	subq	$224, %rsp
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
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
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -92(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -96(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -100(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -112(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB7_7
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.97, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB7_5
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.29
	movq	-120(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.95, %rsi
	movabsq	$.L.str.98, %rcx
	movabsq	$.L.str.47, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %r8d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	$0, (%rsp)
	movb	$1, %al
	callq	g_object_set
	movabsq	$.L.str.94, %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r9
	movq	-120(%rbp), %rdx
	movq	-80(%rbp), %r10
	movl	-100(%rbp), %r8d
	movq	-112(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	-120(%rbp), %r14
	movq	352(%r14), %r14
	movq	56(%r14), %r14
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	%r11, %r9
	movq	%rbx, (%rsp)
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -68(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	movl	$0, -68(%rbp)
.LBB7_6:                                # %if.end
	jmp	.LBB7_7
.LBB7_7:                                # %if.end.34
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movl	%esi, -188(%rbp)        # 4-byte Spill
	je	.LBB7_9
# BB#8:                                 # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB7_10
.LBB7_10:                               # %cond.end
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$224, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dodgeburn_invoker, .Lfunc_end7-dodgeburn_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	dodgeburn_default_invoker,@function
dodgeburn_default_invoker:              # @dodgeburn_default_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp42:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB8_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.97, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB8_5
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
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true.15
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	movl	$0, -60(%rbp)
.LBB8_6:                                # %if.end
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB8_9
# BB#8:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB8_10
.LBB8_10:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dodgeburn_default_invoker, .Lfunc_end8-dodgeburn_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	eraser_invoker,@function
eraser_invoker:                         # @eraser_invoker
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
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
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -100(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_enum
	movl	%eax, -104(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB9_7
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB9_5
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB9_5
# BB#3:                                 # %land.lhs.true.21
	movq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB9_5
# BB#4:                                 # %if.then.26
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.99, %rsi
	movabsq	$.L.str.100, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	-104(%rbp), %edx
	movl	-100(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.94, %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r9
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %r10
	movl	-84(%rbp), %r8d
	movq	-96(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	352(%r14), %r14
	movq	56(%r14), %r14
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	%r11, %r9
	movq	%rbx, (%rsp)
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -68(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else
	movl	$0, -68(%rbp)
.LBB9_6:                                # %if.end
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.31
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB9_9
# BB#8:                                 # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB9_10
.LBB9_10:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	eraser_invoker, .Lfunc_end9-eraser_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	eraser_default_invoker,@function
eraser_default_invoker:                 # @eraser_default_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp51:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB10_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB10_5
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
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true.15
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB10_5
# BB#4:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movl	$0, -60(%rbp)
.LBB10_6:                               # %if.end
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB10_9
# BB#8:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_10
.LBB10_10:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	eraser_default_invoker, .Lfunc_end10-eraser_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	heal_invoker,@function
heal_invoker:                           # @heal_invoker
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	$1, -92(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_drawable
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -132(%rbp)
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -144(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB11_7
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB11_5
# BB#2:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB11_5
# BB#4:                                 # %if.then.29
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.27, %rcx
	movabsq	$.L.str.30, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %r10
	movq	-152(%rbp), %r11
	movq	-104(%rbp), %rbx
	movl	-132(%rbp), %r8d
	movq	-144(%rbp), %r14
	movq	-88(%rbp), %r15
	movq	-152(%rbp), %r12
	movq	352(%r12), %r12
	movq	56(%r12), %r12
	movq	-112(%rbp), %r13
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movq	%r15, (%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	movq	%r13, 32(%rsp)
	movq	-216(%rbp), %r11        # 8-byte Reload
	movq	%r11, 40(%rsp)
	movq	-208(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$2, %al
	callq	paint_tools_stroke
	movl	%eax, -92(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else
	movl	$0, -92(%rbp)
.LBB11_6:                               # %if.end
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.34
	movq	-48(%rbp), %rdi
	movl	-92(%rbp), %esi
	cmpq	$0, -88(%rbp)
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movl	%esi, -236(%rbp)        # 4-byte Spill
	je	.LBB11_9
# BB#8:                                 # %cond.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB11_10
.LBB11_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB11_10
.LBB11_10:                              # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	-236(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	heal_invoker, .Lfunc_end11-heal_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	heal_default_invoker,@function
heal_default_invoker:                   # @heal_default_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp63:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB12_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB12_5
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
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB12_5
# BB#3:                                 # %land.lhs.true.15
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB12_5
# BB#4:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	movl	$0, -60(%rbp)
.LBB12_6:                               # %if.end
	jmp	.LBB12_7
.LBB12_7:                               # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB12_9
# BB#8:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB12_10
.LBB12_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB12_10
.LBB12_10:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	heal_default_invoker, .Lfunc_end12-heal_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	paintbrush_invoker,@function
paintbrush_invoker:                     # @paintbrush_invoker
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
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp67:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -100(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB13_14
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB13_12
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB13_12
# BB#3:                                 # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB13_12
# BB#4:                                 # %if.then.29
	movabsq	$.L.str.101, %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_dynamics_new
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_dynamics
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	-100(%rbp), %edx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movl	%edx, -204(%rbp)        # 4-byte Spill
	jbe	.LBB13_6
# BB#5:                                 # %cond.true
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB13_7
.LBB13_6:                               # %cond.false
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB13_7:                               # %cond.end
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$.L.str.99, %rsi
	movabsq	$.L.str.102, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %edx        # 4-byte Reload
	movb	$1, %al
	callq	g_object_set
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_9
# BB#8:                                 # %if.then.38
	xorl	%esi, %esi
	movq	-128(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movabsq	$.L.str.103, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_9:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_11
# BB#10:                                # %if.then.41
	movl	$3, %esi
	movq	-128(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movabsq	$.L.str.103, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB13_11:                              # %if.end.43
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	gimp_context_set_dynamics
	movabsq	$.L.str.94, %rsi
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-120(%rbp), %r8
	movq	-72(%rbp), %r9
	movl	-84(%rbp), %eax
	movq	-96(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-120(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movl	%eax, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	gimp_context_set_dynamics
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	jmp	.LBB13_13
.LBB13_12:                              # %if.else
	movl	$0, -60(%rbp)
.LBB13_13:                              # %if.end.45
	jmp	.LBB13_14
.LBB13_14:                              # %if.end.46
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movl	%esi, -244(%rbp)        # 4-byte Spill
	je	.LBB13_16
# BB#15:                                # %cond.true.48
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB13_17
.LBB13_16:                              # %cond.false.49
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB13_17
.LBB13_17:                              # %cond.end.50
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	paintbrush_invoker, .Lfunc_end13-paintbrush_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	paintbrush_default_invoker,@function
paintbrush_default_invoker:             # @paintbrush_default_invoker
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp71:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB14_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB14_5
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
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB14_5
# BB#3:                                 # %land.lhs.true.15
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB14_5
# BB#4:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	jmp	.LBB14_6
.LBB14_5:                               # %if.else
	movl	$0, -60(%rbp)
.LBB14_6:                               # %if.end
	jmp	.LBB14_7
.LBB14_7:                               # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB14_9
# BB#8:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB14_10
.LBB14_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB14_10
.LBB14_10:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	paintbrush_default_invoker, .Lfunc_end14-paintbrush_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	pencil_invoker,@function
pencil_invoker:                         # @pencil_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp75:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB15_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.85, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB15_5
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
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB15_5
# BB#3:                                 # %land.lhs.true.15
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB15_5
# BB#4:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	jmp	.LBB15_6
.LBB15_5:                               # %if.else
	movl	$0, -60(%rbp)
.LBB15_6:                               # %if.end
	jmp	.LBB15_7
.LBB15_7:                               # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB15_9
# BB#8:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB15_10
.LBB15_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB15_10
.LBB15_10:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pencil_invoker, .Lfunc_end15-pencil_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	smudge_invoker,@function
smudge_invoker:                         # @smudge_invoker
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp79:
	.cfi_offset %rbx, -32
.Ltmp80:
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
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -92(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -104(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB16_7
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.88, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB16_5
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB16_5
# BB#3:                                 # %land.lhs.true.18
	movq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB16_5
# BB#4:                                 # %if.then.23
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.96, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_set
	movabsq	$.L.str.94, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	-112(%rbp), %r9
	movq	-80(%rbp), %rcx
	movl	-92(%rbp), %r10d
	movq	-104(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	352(%r14), %r14
	movq	56(%r14), %r14
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movl	%r10d, %r8d
	movq	%r11, %r9
	movq	%rbx, (%rsp)
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -68(%rbp)
	jmp	.LBB16_6
.LBB16_5:                               # %if.else
	movl	$0, -68(%rbp)
.LBB16_6:                               # %if.end
	jmp	.LBB16_7
.LBB16_7:                               # %if.end.28
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB16_9
# BB#8:                                 # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB16_10
.LBB16_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB16_10
.LBB16_10:                              # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	smudge_invoker, .Lfunc_end16-smudge_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	smudge_default_invoker,@function
smudge_default_invoker:                 # @smudge_default_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp84:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$1, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB17_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.88, %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_context_get_paint_options
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB17_5
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
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB17_5
# BB#3:                                 # %land.lhs.true.15
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB17_5
# BB#4:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r9d
	movq	-88(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	352(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	paint_tools_stroke
	movl	%eax, -60(%rbp)
	jmp	.LBB17_6
.LBB17_5:                               # %if.else
	movl	$0, -60(%rbp)
.LBB17_6:                               # %if.end
	jmp	.LBB17_7
.LBB17_7:                               # %if.end.25
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB17_9
# BB#8:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB17_10
.LBB17_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB17_10
.LBB17_10:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	smudge_default_invoker, .Lfunc_end17-smudge_default_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	paint_tools_stroke,@function
paint_tools_stroke:                     # @paint_tools_stroke
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
	subq	$512, %rsp              # imm = 0x200
	testb	%al, %al
	movaps	%xmm7, -304(%rbp)       # 16-byte Spill
	movaps	%xmm6, -320(%rbp)       # 16-byte Spill
	movaps	%xmm5, -336(%rbp)       # 16-byte Spill
	movaps	%xmm4, -352(%rbp)       # 16-byte Spill
	movaps	%xmm3, -368(%rbp)       # 16-byte Spill
	movaps	%xmm2, -384(%rbp)       # 16-byte Spill
	movaps	%xmm1, -400(%rbp)       # 16-byte Spill
	movaps	%xmm0, -416(%rbp)       # 16-byte Spill
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r9, -432(%rbp)         # 8-byte Spill
	movl	%r8d, -436(%rbp)        # 4-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	je	.LBB18_6
# BB#5:                                 # %entry
	movaps	-416(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -240(%rbp)
	movaps	-400(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -224(%rbp)
	movaps	-384(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -208(%rbp)
	movaps	-368(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -192(%rbp)
	movaps	-352(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -176(%rbp)
	movaps	-336(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -160(%rbp)
	movaps	-320(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -144(%rbp)
	movaps	-304(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -128(%rbp)
.LBB18_6:                               # %entry
	movq	24(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movl	-436(%rbp), %esi        # 4-byte Reload
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %r8         # 8-byte Reload
	movq	-464(%rbp), %r9         # 8-byte Reload
	movq	-424(%rbp), %r10        # 8-byte Reload
	movl	$2, %r11d
	movq	%r10, -8(%rbp)
	movq	%r9, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	-36(%rbp), %eax
	cltd
	idivl	%r11d
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$16320, %esi            # imm = 0x3FC0
	xorl	%r11d, %r11d
	movq	%rax, %rdi
	movl	%r11d, %edx
	callq	gimp_context_define_properties
	movq	-24(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_parent
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	leaq	-288(%rbp), %rsi
	movq	%rsi, 16(%rcx)
	leaq	32(%rbp), %rsi
	movq	%rsi, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$48, (%rcx)
	movq	-24(%rbp), %rcx
	movq	352(%rcx), %rcx
	movq	40(%rcx), %rdi
	movq	-64(%rbp), %rsi
	movq	%rax, %rdx
	callq	g_object_new_valist
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$64, %r11d
	movl	%r11d, %esi
	leaq	-112(%rbp), %rcx
	movq	%rax, -72(%rbp)
	movslq	-36(%rbp), %rdi
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	movl	$0, -88(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$default_coords, %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movslq	-88(%rbp), %rsi
	shlq	$6, %rsi
	addq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-88(%rbp), %rax
	shlq	$6, %rax
	addq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-48(%rbp), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-88(%rbp), %rax
	shlq	$6, %rax
	addq	-80(%rbp), %rax
	movsd	%xmm0, 8(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	%rsp, %r9
	movq	%rax, (%r9)
	movl	$1, %r9d
	callq	gimp_paint_core_stroke
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rdi
	callq	g_object_unref
	movl	-84(%rbp), %eax
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end18:
	.size	paint_tools_stroke, .Lfunc_end18-paint_tools_stroke
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-airbrush"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Paint in the current brush with varying pressure. Paint application is time-dependent."
	.size	.L.str.1, 87

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This tool simulates the use of an airbrush. Paint pressure represents the relative intensity of the paint application. High pressure results in a thicker layer of paint while low pressure results in a thinner layer."
	.size	.L.str.2, 216

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
	.asciz	"The affected drawable"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"pressure"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The pressure of the airbrush strokes"
	.size	.L.str.8, 37

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"num-strokes"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"num strokes"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Number of stroke control points (count each coordinate as 2 points)"
	.size	.L.str.11, 68

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"strokes"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Array of stroke coordinates: { s1.x, s1.y, s2.x, s2.y, ..., sn.x, sn.y }"
	.size	.L.str.13, 73

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-airbrush-default"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"This tool simulates the use of an airbrush. It is similar to 'gimp-airbrush' except that the pressure is derived from the airbrush tools options box. It the option has not been set the default for the option will be used."
	.size	.L.str.15, 222

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Andy Thomas"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1999"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-clone"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Clone from the source to the dest drawable using the current brush"
	.size	.L.str.19, 67

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"This tool clones (copies) from the source drawable starting at the specified source coordinates to the dest drawable. If the \"clone_type\" argument is set to PATTERN-CLONE, then the current pattern is used as the source and the \"src_drawable\" argument is ignored. Pattern cloning assumes a tileable pattern and mods the sum of the src coordinates and subsequent stroke offsets with the width and height of the pattern. For image cloning, if the sum of the src coordinates and subsequent stroke offsets exceeds the extents of the src drawable, then no paint is transferred. The clone tool is capable of transforming between any image types including RGB->Indexed--although converting from any type to indexed is significantly slower."
	.size	.L.str.20, 732

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"src-drawable"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"src drawable"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"The source drawable"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"clone-type"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"clone type"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The type of clone"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"src-x"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"src x"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The x coordinate in the source image"
	.size	.L.str.29, 37

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"src-y"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"src y"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The y coordinate in the source image"
	.size	.L.str.32, 37

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-clone-default"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"This tool clones (copies) from the source drawable starting at the specified source coordinates to the dest drawable. This function performs exactly the same as the 'gimp-clone' function except that the tools arguments are obtained from the clones option dialog. It this dialog has not been activated then the dialogs default values will be used."
	.size	.L.str.34, 347

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-convolve"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Convolve (Blur, Sharpen) using the current brush."
	.size	.L.str.36, 50

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"This tool convolves the specified drawable with either a sharpening or blurring kernel. The pressure parameter controls the magnitude of the operation. Like the paintbrush, this tool linearly interpolates between the specified stroke coordinates."
	.size	.L.str.37, 247

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"The pressure"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"convolve-type"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"convolve type"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Convolve type"
	.size	.L.str.41, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-convolve-default"
	.size	.L.str.42, 22

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"This tool convolves the specified drawable with either a sharpening or blurring kernel. This function performs exactly the same as the 'gimp-convolve' function except that the tools arguments are obtained from the convolve option dialog. It this dialog has not been activated then the dialogs default values will be used."
	.size	.L.str.43, 322

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-dodgeburn"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Dodgeburn image with varying exposure."
	.size	.L.str.45, 39

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Dodgeburn. More details here later."
	.size	.L.str.46, 36

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"exposure"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"The exposure of the strokes"
	.size	.L.str.48, 28

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"dodgeburn-type"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"dodgeburn type"
	.size	.L.str.50, 15

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"The type either dodge or burn"
	.size	.L.str.51, 30

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"dodgeburn-mode"
	.size	.L.str.52, 15

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"dodgeburn mode"
	.size	.L.str.53, 15

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"The mode"
	.size	.L.str.54, 9

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-dodgeburn-default"
	.size	.L.str.55, 23

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Dodgeburn image with varying exposure. This is the same as the gimp_dodgeburn() function except that the exposure, type and mode are taken from the tools option dialog. If the dialog has not been activated then the defaults as used by the dialog will be used."
	.size	.L.str.56, 260

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-eraser"
	.size	.L.str.57, 12

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Erase using the current brush."
	.size	.L.str.58, 31

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"This tool erases using the current brush mask. If the specified drawable contains an alpha channel, then the erased pixels will become transparent. Otherwise, the eraser tool replaces the contents of the drawable with the background color. Like paintbrush, this tool linearly interpolates between the specified stroke coordinates."
	.size	.L.str.59, 331

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"hardness"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"How to apply the brush"
	.size	.L.str.61, 23

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"method"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"The paint method to use"
	.size	.L.str.63, 24

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-eraser-default"
	.size	.L.str.64, 20

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"This tool erases using the current brush mask. This function performs exactly the same as the 'gimp-eraser' function except that the tools arguments are obtained from the eraser option dialog. It this dialog has not been activated then the dialogs default values will be used."
	.size	.L.str.65, 277

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-heal"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Heal from the source to the dest drawable using the current brush"
	.size	.L.str.67, 66

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"This tool heals the source drawable starting at the specified source coordinates to the dest drawable. For image healing, if the sum of the src coordinates and subsequent stroke offsets exceeds the extents of the src drawable, then no paint is transferred. The healing tool is capable of transforming between any image types except RGB->Indexed."
	.size	.L.str.68, 346

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Kevin Sookocheff"
	.size	.L.str.69, 17

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"2006"
	.size	.L.str.70, 5

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-heal-default"
	.size	.L.str.71, 18

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"This tool heals from the source drawable starting at the specified source coordinates to the dest drawable. This function performs exactly the same as the 'gimp-heal' function except that the tools arguments are obtained from the healing option dialog. It this dialog has not been activated then the dialogs default values will be used."
	.size	.L.str.72, 337

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-paintbrush"
	.size	.L.str.73, 16

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Paint in the current brush with optional fade out parameter and pull colors from a gradient."
	.size	.L.str.74, 93

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"This tool is the standard paintbrush. It draws linearly interpolated lines through the specified stroke coordinates. It operates on the specified drawable in the foreground color with the active brush. The 'fade-out' parameter is measured in pixels and allows the brush stroke to linearly fall off. The pressure is set to the maximum at the beginning of the stroke. As the distance of the stroke nears the fade-out value, the pressure will approach zero. The gradient-length is the distance to spread the gradient over. It is measured in pixels. If the gradient-length is 0, no gradient is used."
	.size	.L.str.75, 596

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"fade-out"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"fade out"
	.size	.L.str.77, 9

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Fade out parameter"
	.size	.L.str.78, 19

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gradient-length"
	.size	.L.str.79, 16

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gradient length"
	.size	.L.str.80, 16

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Length of gradient to draw"
	.size	.L.str.81, 27

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-paintbrush-default"
	.size	.L.str.82, 24

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Paint in the current brush. The fade out parameter and pull colors from a gradient parameter are set from the paintbrush options dialog. If this dialog has not been activated then the dialog defaults will be used."
	.size	.L.str.83, 214

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"This tool is similar to the standard paintbrush. It draws linearly interpolated lines through the specified stroke coordinates. It operates on the specified drawable in the foreground color with the active brush. The 'fade-out' parameter is measured in pixels and allows the brush stroke to linearly fall off (value obtained from the option dialog). The pressure is set to the maximum at the beginning of the stroke. As the distance of the stroke nears the fade-out value, the pressure will approach zero. The gradient-length (value obtained from the option dialog) is the distance to spread the gradient over. It is measured in pixels. If the gradient-length is 0, no gradient is used."
	.size	.L.str.84, 687

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"gimp-pencil"
	.size	.L.str.85, 12

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Paint in the current brush without sub-pixel sampling."
	.size	.L.str.86, 55

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"This tool is the standard pencil. It draws linearly interpolated lines through the specified stroke coordinates. It operates on the specified drawable in the foreground color with the active brush. The brush mask is treated as though it contains only black and white values. Any value below half is treated as black; any above half, as white."
	.size	.L.str.87, 343

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"gimp-smudge"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Smudge image with varying pressure."
	.size	.L.str.89, 36

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"This tool simulates a smudge using the current brush. High pressure results in a greater smudge of paint while low pressure results in a lesser smudge."
	.size	.L.str.90, 152

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"The pressure of the smudge strokes"
	.size	.L.str.91, 35

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gimp-smudge-default"
	.size	.L.str.92, 20

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"This tool simulates a smudge using the current brush. It behaves exactly the same as 'gimp-smudge' except that the pressure value is taken from the smudge tool options or the options default if the tools option dialog has not been activated."
	.size	.L.str.93, 242

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"undo-desc"
	.size	.L.str.94, 10

	.type	default_coords,@object  # @default_coords
	.section	.rodata,"a",@progbits
	.align	8
default_coords:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.quad	0                       # double 0
	.quad	0                       # double 0
	.size	default_coords, 64

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"type"
	.size	.L.str.95, 5

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"rate"
	.size	.L.str.96, 5

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-dodge-burn"
	.size	.L.str.97, 16

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"mode"
	.size	.L.str.98, 5

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"application-mode"
	.size	.L.str.99, 17

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"hard"
	.size	.L.str.100, 5

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"pdb"
	.size	.L.str.101, 4

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"fade-length"
	.size	.L.str.102, 12

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"use-fade"
	.size	.L.str.103, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
