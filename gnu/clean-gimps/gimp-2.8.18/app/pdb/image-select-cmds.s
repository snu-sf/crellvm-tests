	.text
	.file	"image-select-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI0_1:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_2:
	.quad	4688247212092686336     # double 262144
	.text
	.globl	register_image_select_procs
	.align	16, 0x90
	.type	register_image_select_procs,@function
register_image_select_procs:            # @register_image_select_procs
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
	subq	$536, %rsp              # imm = 0x218
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$image_select_color_invoker, %rax
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
	callq	gimp_param_spec_image_id
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_rgb
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_select_contiguous_color_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-24(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
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
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %rdx
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
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
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
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_select_rectangle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rcx
	movabsq	$.L.str.23, %r8
	movabsq	$.L.str.24, %r9
	movabsq	$.L.str.4, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.25, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.26, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.27, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movsd	-208(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rax
	movabsq	$.L.str.31, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movsd	-224(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_select_round_rectangle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.33, %rdx
	movabsq	$.L.str.34, %rcx
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -248(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.25, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.26, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.27, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movsd	-296(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rax
	movabsq	$.L.str.31, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movsd	-312(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movsd	-320(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$.L.str.41, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_2, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movsd	-336(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_select_ellipse_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.43, %rdx
	movabsq	$.L.str.44, %rcx
	movabsq	$.L.str.23, %r8
	movabsq	$.L.str.24, %r9
	movabsq	$.L.str.4, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.25, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.45, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.46, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.47, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movsd	-408(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.30, %rax
	movabsq	$.L.str.48, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movsd	-424(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_select_polygon_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.49, %rsi
	movabsq	$.L.str.50, %rdx
	movabsq	$.L.str.51, %rcx
	movabsq	$.L.str.23, %r8
	movabsq	$.L.str.24, %r9
	movabsq	$.L.str.4, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.25, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	movl	$2, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -460(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-460(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movl	%r11d, -476(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.55, %rax
	movabsq	$.L.str.56, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_select_item_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.57, %rsi
	movabsq	$.L.str.58, %rdx
	movabsq	$.L.str.59, %rcx
	movabsq	$.L.str.23, %r8
	movabsq	$.L.str.24, %r9
	movabsq	$.L.str.4, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.25, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.60, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.61, %rax
	movabsq	$.L.str.62, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_item_id
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_image_select_procs, .Lfunc_end0-register_image_select_procs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4643210863975260488     # double 255.99000000000001
	.text
	.align	16, 0x90
	.type	image_select_color_invoker,@function
image_select_color_invoker:             # @image_select_color_invoker
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
	subq	$192, %rsp
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
	callq	gimp_value_get_image
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -84(%rbp)
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gimp_value_get_drawable
	leaq	-128(%rbp), %rsi
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	gimp_value_get_rgb
	cmpl	$0, -68(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpl	$0, 368(%rax)
	jne	.LBB1_3
# BB#2:                                 # %lor.lhs.false
	movq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_4
.LBB1_3:                                # %if.then.16
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_mask
	leaq	-128(%rbp), %rcx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rsi
	movq	-136(%rbp), %rdi
	movl	368(%rdi), %edx
	movq	-136(%rbp), %rdi
	mulsd	376(%rdi), %xmm0
	cvttsd2si	%xmm0, %r8d
	movq	-136(%rbp), %rdi
	movl	384(%rdi), %r9d
	movq	-136(%rbp), %rdi
	movl	372(%rdi), %r10d
	movl	-84(%rbp), %r11d
	movq	-136(%rbp), %rdi
	movl	344(%rdi), %ebx
	movq	-136(%rbp), %rdi
	movl	348(%rdi), %r14d
	movq	-136(%rbp), %rdi
	movsd	352(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-136(%rbp), %rdi
	movsd	360(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	gimp_channel_select_by_color
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movl	$0, -68(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.19
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB1_8
# BB#7:                                 # %cond.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_9:                                # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	image_select_color_invoker, .Lfunc_end1-image_select_color_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4643210863975260488     # double 255.99000000000001
	.text
	.align	16, 0x90
	.type	image_select_contiguous_color_invoker,@function
image_select_contiguous_color_invoker:  # @image_select_contiguous_color_invoker
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	$1, -76(%rbp)
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -92(%rbp)
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	-40(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gimp_value_get_drawable
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB2_6
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpl	$0, 368(%rax)
	jne	.LBB2_3
# BB#2:                                 # %lor.lhs.false
	movq	-104(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_4
.LBB2_3:                                # %if.then.20
	movq	-88(%rbp), %rdi
	callq	gimp_image_get_mask
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movl	368(%rdi), %edx
	cvttsd2si	-112(%rbp), %ecx
	cvttsd2si	-120(%rbp), %r8d
	movq	-128(%rbp), %rdi
	mulsd	376(%rdi), %xmm0
	cvttsd2si	%xmm0, %r9d
	movq	-128(%rbp), %rdi
	movl	384(%rdi), %r10d
	movq	-128(%rbp), %rdi
	movl	372(%rdi), %r11d
	movl	-92(%rbp), %ebx
	movq	-128(%rbp), %rdi
	movl	344(%rdi), %r14d
	movq	-128(%rbp), %rdi
	movl	348(%rdi), %r15d
	movq	-128(%rbp), %rdi
	movsd	352(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-128(%rbp), %rdi
	movsd	360(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	callq	gimp_channel_select_fuzzy
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movl	$0, -76(%rbp)
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.25
	movq	-32(%rbp), %rdi
	movl	-76(%rbp), %esi
	cmpq	$0, -72(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB2_8
# BB#7:                                 # %cond.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_9:                                # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_select_contiguous_color_invoker, .Lfunc_end2-image_select_contiguous_color_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_select_rectangle_invoker,@function
image_select_rectangle_invoker:         # @image_select_rectangle_invoker
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
	subq	$176, %rsp
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
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
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %ecx
	cvttsd2si	-80(%rbp), %esi
	cvttsd2si	-88(%rbp), %edx
	cvttsd2si	-96(%rbp), %r8d
	cvttsd2si	-104(%rbp), %r9d
	movl	-68(%rbp), %r10d
	movq	-112(%rbp), %rdi
	movl	348(%rdi), %r11d
	movq	-112(%rbp), %rdi
	movsd	352(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-112(%rbp), %rdi
	movsd	360(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_channel_select_rectangle
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
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_select_rectangle_invoker, .Lfunc_end3-image_select_rectangle_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_select_round_rectangle_invoker,@function
image_select_round_rectangle_invoker:   # @image_select_round_rectangle_invoker
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp21:
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -128(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %ecx
	cvttsd2si	-88(%rbp), %esi
	cvttsd2si	-96(%rbp), %edx
	cvttsd2si	-104(%rbp), %r8d
	cvttsd2si	-112(%rbp), %r9d
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-76(%rbp), %r10d
	movq	-136(%rbp), %rdi
	movl	344(%rdi), %r11d
	movq	-136(%rbp), %rdi
	movl	348(%rdi), %ebx
	movq	-136(%rbp), %rdi
	movsd	352(%rdi), %xmm2        # xmm2 = mem[0],zero
	movq	-136(%rbp), %rdi
	movsd	360(%rdi), %xmm3        # xmm3 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	gimp_channel_select_round_rect
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB4_4
# BB#3:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	image_select_round_rectangle_invoker, .Lfunc_end4-image_select_round_rectangle_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_select_ellipse_invoker,@function
image_select_ellipse_invoker:           # @image_select_ellipse_invoker
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp25:
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -104(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -112(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %ecx
	cvttsd2si	-88(%rbp), %esi
	cvttsd2si	-96(%rbp), %edx
	cvttsd2si	-104(%rbp), %r8d
	cvttsd2si	-112(%rbp), %r9d
	movl	-76(%rbp), %r10d
	movq	-120(%rbp), %rdi
	movl	344(%rdi), %r11d
	movq	-120(%rbp), %rdi
	movl	348(%rdi), %ebx
	movq	-120(%rbp), %rdi
	movsd	352(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	movsd	360(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	gimp_channel_select_ellipse
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	je	.LBB5_4
# BB#3:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	image_select_ellipse_invoker, .Lfunc_end5-image_select_ellipse_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_select_polygon_invoker,@function
image_select_polygon_invoker:           # @image_select_polygon_invoker
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp29:
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movabsq	$.L.str.63, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %ecx
	movl	$2, %edx
	movl	-80(%rbp), %r8d
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%r8d, %eax
	movl	%edx, -124(%rbp)        # 4-byte Spill
	cltd
	movl	-124(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movq	-88(%rbp), %rsi
	movl	-76(%rbp), %r8d
	movq	-96(%rbp), %rdi
	movl	344(%rdi), %r9d
	movq	-96(%rbp), %rdi
	movl	348(%rdi), %r10d
	movq	-96(%rbp), %rdi
	movsd	352(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	movsd	360(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movl	%eax, %edx
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rbx, %rcx
	movl	%r10d, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_channel_select_polygon
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %esi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	je	.LBB6_4
# BB#3:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	image_select_polygon_invoker, .Lfunc_end6-image_select_polygon_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_select_item_invoker,@function
image_select_item_invoker:              # @image_select_item_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	gimp_value_get_item
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB7_3
# BB#2:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_pdb_context_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-88(%rbp), %rax
	movl	344(%rax), %edx
	movq	-88(%rbp), %rax
	movl	348(%rax), %ecx
	movq	-88(%rbp), %rax
	movsd	352(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	360(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_item_to_selection
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB7_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB7_8
.LBB7_8:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	image_select_item_invoker, .Lfunc_end7-image_select_item_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-image-select-color"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Create a selection by selecting all pixels (in the specified drawable) with the same (or similar) color to that specified."
	.size	.L.str.1, 123

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This tool creates a selection over the specified image. A by-color selection is determined by the supplied color under the constraints of the current context settings. Essentially, all pixels (in the drawable) that have color sufficiently close to the specified color (as determined by the threshold and criterion context values) are included in the selection. To select transparent regions, the color specified must also have minimum alpha. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius', 'gimp-context-set-sample-merged', 'gimp-context-set-sample-criterion', 'gimp-context-set-sample-threshold', 'gimp-context-set-sample-transparent'. In the case of a merged sampling, the supplied drawable is ignored."
	.size	.L.str.2, 811

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"David Gowers"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2010"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The affected image"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"operation"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The selection operation"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"drawable"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The affected drawable"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"color"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"The color to select"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-image-select-contiguous-color"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Create a selection by selecting all pixels around specified coordinates with the same (or similar) color to that at the coordinates."
	.size	.L.str.14, 133

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"This tool creates a contiguous selection over the specified image. A contiguous color selection is determined by a seed fill under the constraints of the current context settings. Essentially, the color at the specified coordinates (in the drawable) is measured and the selection expands outwards from that point to any adjacent pixels which are not significantly different (as determined by the threshold and criterion context settings). This process continues until no more expansion is possible. If antialiasing is turned on, the final selection mask will contain intermediate values based on close misses to the threshold bar at pixels along the seed fill boundary. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius', 'gimp-context-set-sample-merged', 'gimp-context-set-sample-criterion', 'gimp-context-set-sample-threshold', 'gimp-context-set-sample-transparent'. In the case of a mergedsampling, the supplied drawable is ignored. If the sample is merged, the specified coordinates are relative to the image origin; otherwise, they are relative to the drawable's origin."
	.size	.L.str.15, 1178

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"x"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"x coordinate of initial seed fill point: (image coordinates)"
	.size	.L.str.17, 61

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"y"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"y coordinate of initial seed fill point: (image coordinates)"
	.size	.L.str.19, 61

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-image-select-rectangle"
	.size	.L.str.20, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Create a rectangular selection over the specified image;"
	.size	.L.str.21, 57

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"This tool creates a rectangular selection over the specified image. The rectangular region can be either added to, subtracted from, or replace the contents of the previous selection mask. This procedure is affected by the following context setters: 'gimp-context-set-feather', 'gimp-context-set-feather-radius'."
	.size	.L.str.22, 312

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Michael Natterer"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"The image"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"x coordinate of upper-left corner of rectangle"
	.size	.L.str.26, 47

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"y coordinate of upper-left corner of rectangle"
	.size	.L.str.27, 47

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"width"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The width of the rectangle"
	.size	.L.str.29, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"height"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"The height of the rectangle"
	.size	.L.str.31, 28

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-image-select-round-rectangle"
	.size	.L.str.32, 34

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Create a rectangular selection with round corners over the specified image;"
	.size	.L.str.33, 76

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"This tool creates a rectangular selection with round corners over the specified image. The rectangular region can be either added to, subtracted from, or replace the contents of the previous selection mask. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius'."
	.size	.L.str.34, 361

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Martin Nordholts"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"corner-radius-x"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"corner radius x"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"The corner radius in X direction"
	.size	.L.str.38, 33

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"corner-radius-y"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"corner radius y"
	.size	.L.str.40, 16

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The corner radius in Y direction"
	.size	.L.str.41, 33

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-image-select-ellipse"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Create an elliptical selection over the specified image."
	.size	.L.str.43, 57

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"This tool creates an elliptical selection over the specified image. The elliptical region can be either added to, subtracted from, or replace the contents of the previous selection mask. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius'."
	.size	.L.str.44, 341

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"x coordinate of upper-left corner of ellipse bounding box"
	.size	.L.str.45, 58

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"y coordinate of upper-left corner of ellipse bounding box"
	.size	.L.str.46, 58

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The width of the ellipse"
	.size	.L.str.47, 25

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"The height of the ellipse"
	.size	.L.str.48, 26

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-image-select-polygon"
	.size	.L.str.49, 26

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Create a polygonal selection over the specified image."
	.size	.L.str.50, 55

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"This tool creates a polygonal selection over the specified image. The polygonal region can be either added to, subtracted from, or replace the contents of the previous selection mask. The polygon is specified through an array of floating point numbers and its length. The length of array must be 2n, where n is the number of points. Each point is defined by 2 floating point values which correspond to the x and y coordinates. If the final point does not connect to the starting point, a connecting segment is automatically added. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius'."
	.size	.L.str.51, 685

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"num-segs"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"num segs"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Number of points (count 1 coordinate as two points)"
	.size	.L.str.54, 52

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"segs"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Array of points: { p1.x, p1.y, p2.x, p2.y, ..., pn.x, pn.y}"
	.size	.L.str.56, 60

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-image-select-item"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Transforms the specified item into a selection"
	.size	.L.str.58, 47

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"This procedure renders the item's outline into the current selection of the image the item belongs to. What exactly the item's outline is depends on the item type: for layers, it's the layer's alpha channel, for vectors the vector's shape. This procedure is affected by the following context setters: 'gimp-context-set-antialias', 'gimp-context-set-feather', 'gimp-context-set-feather-radius'."
	.size	.L.str.59, 394

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"The desired operation with current selection"
	.size	.L.str.60, 45

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"item"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"The item to render to the selection"
	.size	.L.str.62, 36

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Free Select"
	.size	.L.str.63, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
