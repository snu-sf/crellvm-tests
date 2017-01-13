	.text
	.file	"grid-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_grid_procs
	.align	16, 0x90
	.type	register_grid_procs,@function
register_grid_procs:                    # @register_grid_procs
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
	subq	$464, %rsp              # imm = 0x1D0
	movabsq	$image_grid_get_spacing_invoker, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
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
	movq	-16(%rbp), %r10
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.8, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_grid_set_spacing_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-16(%rbp), %r11
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.8, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_grid_get_offset_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
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
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-16(%rbp), %r11
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -136(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.18, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_grid_set_offset_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-16(%rbp), %r11
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
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
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.18, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_grid_get_foreground_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	movabsq	$.L.str.26, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-16(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -232(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.28, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_grid_set_foreground_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-16(%rbp), %r10
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%r8, -272(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.32, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_grid_get_background_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.35, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-16(%rbp), %r10
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%r8, -312(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.36, %rax
	movabsq	$.L.str.37, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_grid_set_background_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.39, %rdx
	movabsq	$.L.str.40, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-16(%rbp), %r10
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%r8, -352(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.36, %rax
	movabsq	$.L.str.41, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_grid_get_style_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.43, %rdx
	movabsq	$.L.str.44, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-16(%rbp), %r10
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	callq	gimp_grid_style_get_type
	movabsq	$.L.str.45, %rcx
	movabsq	$.L.str.46, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_grid_set_style_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.47, %rsi
	movabsq	$.L.str.48, %rdx
	movabsq	$.L.str.49, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-16(%rbp), %r11
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -432(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gimp_grid_style_get_type
	movabsq	$.L.str.45, %rcx
	movabsq	$.L.str.46, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_grid_procs, .Lfunc_end0-register_grid_procs
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_get_spacing_invoker,@function
image_grid_get_spacing_invoker:         # @image_grid_get_spacing_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
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
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.3
	movabsq	$.L.str.7, %rsi
	leaq	-80(%rbp), %rdx
	movabsq	$.L.str.9, %rcx
	leaq	-88(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB1_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB1_10:                               # %if.end.13
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	image_grid_get_spacing_invoker, .Lfunc_end1-image_grid_get_spacing_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_set_spacing_invoker,@function
image_grid_set_spacing_invoker:         # @image_grid_set_spacing_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.9
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.9, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB2_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_grid_set_spacing_invoker, .Lfunc_end2-image_grid_set_spacing_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_get_offset_invoker,@function
image_grid_get_offset_invoker:          # @image_grid_get_offset_invoker
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
	subq	$128, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then.3
	movabsq	$.L.str.17, %rsi
	leaq	-80(%rbp), %rdx
	movabsq	$.L.str.19, %rcx
	leaq	-88(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.4
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
# BB#9:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB3_10:                               # %if.end.13
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_grid_get_offset_invoker, .Lfunc_end3-image_grid_get_offset_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_set_offset_invoker,@function
image_grid_set_offset_invoker:          # @image_grid_set_offset_invoker
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.9
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.10
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
	.size	image_grid_set_offset_invoker, .Lfunc_end4-image_grid_set_offset_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_get_foreground_color_invoker,@function
image_grid_get_foreground_color_invoker: # @image_grid_get_foreground_color_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	.Limage_grid_get_foreground_color_invoker.fgcolor, %rcx
	movq	%rcx, -104(%rbp)
	movq	.Limage_grid_get_foreground_color_invoker.fgcolor+8, %rcx
	movq	%rcx, -96(%rbp)
	movq	.Limage_grid_get_foreground_color_invoker.fgcolor+16, %rcx
	movq	%rcx, -88(%rbp)
	movq	.Limage_grid_get_foreground_color_invoker.fgcolor+24, %rcx
	movq	%rcx, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then.3
	movq	-112(%rbp), %rax
	movq	40(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	48(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	56(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	64(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB5_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.9
	leaq	-104(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	gimp_value_set_rgb
.LBB5_10:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	image_grid_get_foreground_color_invoker, .Lfunc_end5-image_grid_get_foreground_color_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_set_foreground_color_invoker,@function
image_grid_set_foreground_color_invoker: # @image_grid_set_foreground_color_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
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
	callq	gimp_value_get_image
	leaq	-96(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	gimp_value_get_rgb
	cmpl	$0, -52(%rbp)
	je	.LBB6_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.27, %rsi
	leaq	-96(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %if.end.6
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB6_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_8:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	image_grid_set_foreground_color_invoker, .Lfunc_end6-image_grid_set_foreground_color_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_get_background_color_invoker,@function
image_grid_get_background_color_invoker: # @image_grid_get_background_color_invoker
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	.Limage_grid_get_background_color_invoker.bgcolor, %rcx
	movq	%rcx, -104(%rbp)
	movq	.Limage_grid_get_background_color_invoker.bgcolor+8, %rcx
	movq	%rcx, -96(%rbp)
	movq	.Limage_grid_get_background_color_invoker.bgcolor+16, %rcx
	movq	%rcx, -88(%rbp)
	movq	.Limage_grid_get_background_color_invoker.bgcolor+24, %rcx
	movq	%rcx, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then.3
	movq	-112(%rbp), %rax
	movq	72(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	80(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	88(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	96(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB7_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_8
.LBB7_8:                                # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.9
	leaq	-104(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	gimp_value_set_rgb
.LBB7_10:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	image_grid_get_background_color_invoker, .Lfunc_end7-image_grid_get_background_color_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_set_background_color_invoker,@function
image_grid_set_background_color_invoker: # @image_grid_set_background_color_invoker
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
	callq	gimp_value_get_image
	leaq	-96(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	gimp_value_get_rgb
	cmpl	$0, -52(%rbp)
	je	.LBB8_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.36, %rsi
	leaq	-96(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
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
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	image_grid_set_background_color_invoker, .Lfunc_end8-image_grid_set_background_color_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_get_style_invoker,@function
image_grid_get_style_invoker:           # @image_grid_get_style_invoker
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then.3
	movabsq	$.L.str.45, %rsi
	leaq	-76(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB9_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB9_8
.LBB9_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB9_8
.LBB9_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB9_10:                               # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	image_grid_get_style_invoker, .Lfunc_end9-image_grid_get_style_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_grid_set_style_invoker,@function
image_grid_set_style_invoker:           # @image_grid_set_style_invoker
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB10_5
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then.6
	movabsq	$.L.str.45, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB10_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB10_8
.LBB10_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB10_8
.LBB10_8:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	image_grid_set_style_invoker, .Lfunc_end10-image_grid_set_style_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-image-grid-get-spacing"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gets the spacing of an image's grid."
	.size	.L.str.1, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure retrieves the horizontal and vertical spacing of an image's grid. It takes the image as parameter."
	.size	.L.str.2, 114

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Sylvain Foret"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2005"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The image"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"xspacing"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The image's grid horizontal spacing"
	.size	.L.str.8, 36

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"yspacing"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The image's grid vertical spacing"
	.size	.L.str.10, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-image-grid-set-spacing"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Sets the spacing of an image's grid."
	.size	.L.str.12, 37

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"This procedure sets the horizontal and vertical spacing of an image's grid."
	.size	.L.str.13, 76

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-image-grid-get-offset"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Gets the offset of an image's grid."
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"This procedure retrieves the horizontal and vertical offset of an image's grid. It takes the image as parameter."
	.size	.L.str.16, 113

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"xoffset"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The image's grid horizontal offset"
	.size	.L.str.18, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"yoffset"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The image's grid vertical offset"
	.size	.L.str.20, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-image-grid-set-offset"
	.size	.L.str.21, 27

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Sets the offset of an image's grid."
	.size	.L.str.22, 36

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"This procedure sets the horizontal and vertical offset of an image's grid."
	.size	.L.str.23, 75

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-image-grid-get-foreground-color"
	.size	.L.str.24, 37

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Sets the foreground color of an image's grid."
	.size	.L.str.25, 46

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"This procedure gets the foreground color of an image's grid."
	.size	.L.str.26, 61

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"fgcolor"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"The image's grid foreground color"
	.size	.L.str.28, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-image-grid-set-foreground-color"
	.size	.L.str.29, 37

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Gets the foreground color of an image's grid."
	.size	.L.str.30, 46

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"This procedure sets the foreground color of an image's grid."
	.size	.L.str.31, 61

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The new foreground color"
	.size	.L.str.32, 25

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-image-grid-get-background-color"
	.size	.L.str.33, 37

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Sets the background color of an image's grid."
	.size	.L.str.34, 46

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"This procedure gets the background color of an image's grid."
	.size	.L.str.35, 61

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"bgcolor"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The image's grid background color"
	.size	.L.str.37, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-image-grid-set-background-color"
	.size	.L.str.38, 37

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Gets the background color of an image's grid."
	.size	.L.str.39, 46

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"This procedure sets the background color of an image's grid."
	.size	.L.str.40, 61

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The new background color"
	.size	.L.str.41, 25

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-image-grid-get-style"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Gets the style of an image's grid."
	.size	.L.str.43, 35

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"This procedure retrieves the style of an image's grid."
	.size	.L.str.44, 55

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"style"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The image's grid style"
	.size	.L.str.46, 23

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-image-grid-set-style"
	.size	.L.str.47, 26

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Sets the style unit of an image's grid."
	.size	.L.str.48, 40

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"This procedure sets the style of an image's grid. It takes the image and the new style as parameters."
	.size	.L.str.49, 102

	.type	.Limage_grid_get_foreground_color_invoker.fgcolor,@object # @image_grid_get_foreground_color_invoker.fgcolor
	.section	.rodata,"a",@progbits
	.align	8
.Limage_grid_get_foreground_color_invoker.fgcolor:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Limage_grid_get_foreground_color_invoker.fgcolor, 32

	.type	.Limage_grid_get_background_color_invoker.bgcolor,@object # @image_grid_get_background_color_invoker.bgcolor
	.align	8
.Limage_grid_get_background_color_invoker.bgcolor:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Limage_grid_get_background_color_invoker.bgcolor, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
