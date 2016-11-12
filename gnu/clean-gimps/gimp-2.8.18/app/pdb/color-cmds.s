	.text
	.file	"color-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4586634745500139520    # double -100
.LCPI0_1:
	.quad	4636737291354636288     # double 100
.LCPI0_2:
	.quad	-4582834833314545664    # double -180
.LCPI0_3:
	.quad	4640537203540230144     # double 180
.LCPI0_4:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_5:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI0_6:
	.quad	4645040803167600640     # double 360
.LCPI0_7:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI0_8:
	.quad	4621819117588971520     # double 10
	.text
	.globl	register_color_procs
	.align	16, 0x90
	.type	register_color_procs,@function
register_color_procs:                   # @register_color_procs
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
	subq	$1080, %rsp             # imm = 0x438
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$brightness_contrast_invoker, %rax
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
	movl	$4294967169, %r8d       # imm = 0xFFFFFF81
	movl	$127, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$227, (%rsp)
	movl	%r11d, -72(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %rdx
	movl	$4294967169, %ecx       # imm = 0xFFFFFF81
	movl	$127, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$levels_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -112(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_histogram_channel_get_type
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%r8d, %r8d
	movl	$255, %r9d
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
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	-152(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.24, %rdx
	movsd	.LCPI0_7, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_8, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movsd	-184(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -192(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -208(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$levels_auto_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.33, %rdx
	movabsq	$.L.str.34, %rdi
	movq	-24(%rbp), %r10
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-240(%rbp), %r8         # 8-byte Reload
	movq	-240(%rbp), %r9         # 8-byte Reload
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$levels_stretch_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.34, %rsi
	movabsq	$.L.str.35, %rdx
	movabsq	$.L.str.36, %rcx
	movabsq	$.L.str.37, %rax
	movabsq	$.L.str.38, %rdi
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
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$posterize_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	movabsq	$.L.str.41, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -304(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.43, %rdx
	movl	$2, %r8d
	movl	$255, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	%r8d, -324(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-324(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movl	%r11d, -328(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$desaturate_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.44, %rsi
	movabsq	$.L.str.45, %rdx
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -352(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$desaturate_full_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.47, %rsi
	movabsq	$.L.str.48, %rdx
	movabsq	$.L.str.49, %rcx
	movabsq	$.L.str.50, %rax
	movabsq	$.L.str.51, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -384(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	callq	gimp_desaturate_mode_get_type
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$equalize_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.56, %rdx
	movabsq	$.L.str.57, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.14, %rdi
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
	movabsq	$.L.str.58, %rdi
	movabsq	$.L.str.59, %rsi
	movabsq	$.L.str.60, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$invert_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.62, %rdx
	movabsq	$.L.str.63, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -464(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$curves_spline_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.65, %rdx
	movabsq	$.L.str.66, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -496(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	callq	gimp_histogram_channel_get_type
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.67, %rdi
	movabsq	$.L.str.68, %rsi
	movabsq	$.L.str.69, %rdx
	movl	$4, %r8d
	movl	$34, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -516(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-516(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movl	%r11d, -532(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.70, %rdi
	movabsq	$.L.str.71, %rsi
	movabsq	$.L.str.72, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$curves_explicit_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.65, %rdx
	movabsq	$.L.str.74, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -568(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	callq	gimp_histogram_channel_get_type
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.75, %rdi
	movabsq	$.L.str.76, %rsi
	movabsq	$.L.str.77, %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -588(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-588(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movl	%r11d, -604(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.78, %rax
	movabsq	$.L.str.79, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_int8_array
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$color_balance_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.80, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.80, %rsi
	movabsq	$.L.str.81, %rdx
	movabsq	$.L.str.82, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -640(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	callq	gimp_transfer_mode_get_type
	movabsq	$.L.str.83, %rdi
	movabsq	$.L.str.84, %rsi
	movabsq	$.L.str.85, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.86, %rdi
	movabsq	$.L.str.87, %rsi
	movabsq	$.L.str.88, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.89, %rdi
	movabsq	$.L.str.90, %rsi
	movabsq	$.L.str.91, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
	movsd	-672(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.92, %rdi
	movabsq	$.L.str.93, %rsi
	movabsq	$.L.str.94, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	movsd	-688(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.95, %rdi
	movabsq	$.L.str.96, %rsi
	movabsq	$.L.str.97, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	movsd	-704(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$colorize_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.98, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.98, %rsi
	movabsq	$.L.str.99, %rdx
	movabsq	$.L.str.100, %rcx
	movabsq	$.L.str.101, %r8
	movabsq	$.L.str.102, %r9
	movabsq	$.L.str.103, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
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
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.104, %rax
	movabsq	$.L.str.105, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
	movsd	-752(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.106, %rax
	movabsq	$.L.str.107, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -768(%rbp)       # 8-byte Spill
	movsd	-768(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.108, %rax
	movabsq	$.L.str.109, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
	movsd	-784(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$histogram_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.110, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.110, %rsi
	movabsq	$.L.str.111, %rdx
	movabsq	$.L.str.112, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-800(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -808(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	callq	gimp_histogram_channel_get_type
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.113, %rdi
	movabsq	$.L.str.114, %rsi
	movabsq	$.L.str.115, %rdx
	xorl	%r8d, %r8d
	movl	$255, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -828(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-828(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -840(%rbp)        # 8-byte Spill
	movl	%r11d, -844(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.116, %rdi
	movabsq	$.L.str.117, %rsi
	movabsq	$.L.str.118, %rdx
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -848(%rbp)        # 4-byte Spill
	movl	-848(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -852(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.119, %rax
	movabsq	$.L.str.120, %rdx
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.121, %rdi
	movabsq	$.L.str.122, %rsi
	movabsq	$.L.str.123, %rdx
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.124, %rax
	movabsq	$.L.str.125, %rdx
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.126, %rax
	movabsq	$.L.str.127, %rdx
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.128, %rax
	movabsq	$.L.str.129, %rdx
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -904(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.130, %rax
	movabsq	$.L.str.131, %rdx
	movsd	.LCPI0_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_5, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$hue_saturation_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.132, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.132, %rsi
	movabsq	$.L.str.133, %rdx
	movabsq	$.L.str.134, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-928(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -936(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	callq	gimp_hue_range_get_type
	movabsq	$.L.str.135, %rdi
	movabsq	$.L.str.136, %rsi
	movabsq	$.L.str.137, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.138, %rdi
	movabsq	$.L.str.139, %rsi
	movabsq	$.L.str.140, %rdx
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_3, %xmm1         # xmm1 = mem[0],zero
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
	movabsq	$.L.str.108, %rax
	movabsq	$.L.str.141, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -984(%rbp)       # 8-byte Spill
	movsd	-984(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.106, %rax
	movabsq	$.L.str.142, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -1000(%rbp)      # 8-byte Spill
	movsd	-1000(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$threshold_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.143, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.143, %rsi
	movabsq	$.L.str.144, %rdx
	movabsq	$.L.str.145, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %rbx
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -1024(%rbp)       # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.146, %rdi
	movabsq	$.L.str.147, %rsi
	movabsq	$.L.str.148, %rdx
	xorl	%r8d, %r8d
	movl	$255, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -1036(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1036(%rbp), %r9d       # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	movl	%r11d, -1052(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.149, %rdi
	movabsq	$.L.str.150, %rsi
	movabsq	$.L.str.151, %rdx
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -1056(%rbp)       # 4-byte Spill
	movl	-1056(%rbp), %r11d      # 4-byte Reload
	movl	%r9d, -1060(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_color_procs, .Lfunc_end0-register_color_procs
	.cfi_endproc

	.align	16, 0x90
	.type	brightness_contrast_invoker,@function
brightness_contrast_invoker:            # @brightness_contrast_invoker
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
	callq	gimp_value_get_drawable
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
	je	.LBB1_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %lor.lhs.false.15
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_5
.LBB1_4:                                # %if.then.18
	movl	$0, -52(%rbp)
.LBB1_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.20
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	gimp_drawable_brightness_contrast
.LBB1_7:                                # %if.end.21
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.22
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB1_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_11:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	brightness_contrast_invoker, .Lfunc_end1-brightness_contrast_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	levels_invoker,@function
levels_invoker:                         # @levels_invoker
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
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
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
	callq	g_value_get_int
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_int
	movl	%eax, -96(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_13
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_9
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB2_9
# BB#3:                                 # %lor.lhs.false.27
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB2_9
# BB#4:                                 # %lor.lhs.false.30
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB2_6
# BB#5:                                 # %land.lhs.true
	cmpl	$4, -68(%rbp)
	je	.LBB2_9
.LBB2_6:                                # %lor.lhs.false.33
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB2_10
# BB#7:                                 # %land.lhs.true.36
	cmpl	$0, -68(%rbp)
	je	.LBB2_10
# BB#8:                                 # %land.lhs.true.38
	cmpl	$4, -68(%rbp)
	je	.LBB2_10
.LBB2_9:                                # %if.then.40
	movl	$0, -52(%rbp)
.LBB2_10:                               # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.42
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_drawable_levels
.LBB2_12:                               # %if.end.43
	jmp	.LBB2_13
.LBB2_13:                               # %if.end.44
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB2_15
# BB#14:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_16
.LBB2_15:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_16
.LBB2_16:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	levels_invoker, .Lfunc_end2-levels_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	levels_auto_invoker,@function
levels_auto_invoker:                    # @levels_auto_invoker
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
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %lor.lhs.false.9
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB3_5
.LBB3_4:                                # %if.then.12
	movl	$0, -52(%rbp)
.LBB3_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.14
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_drawable_levels_stretch
.LBB3_7:                                # %if.end.15
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.16
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB3_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_11
.LBB3_11:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	levels_auto_invoker, .Lfunc_end3-levels_auto_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	levels_stretch_invoker,@function
levels_stretch_invoker:                 # @levels_stretch_invoker
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
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB4_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB4_4
# BB#3:                                 # %lor.lhs.false.9
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB4_5
.LBB4_4:                                # %if.then.12
	movl	$0, -52(%rbp)
.LBB4_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.14
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_drawable_levels_stretch
.LBB4_7:                                # %if.end.15
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.16
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB4_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_11
.LBB4_11:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	levels_stretch_invoker, .Lfunc_end4-levels_stretch_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	posterize_invoker,@function
posterize_invoker:                      # @posterize_invoker
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
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB5_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %lor.lhs.false.12
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB5_5
.LBB5_4:                                # %if.then.15
	movl	$0, -52(%rbp)
.LBB5_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.17
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	callq	gimp_drawable_posterize
.LBB5_7:                                # %if.end.18
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.19
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB5_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_11
.LBB5_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_11
.LBB5_11:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	posterize_invoker, .Lfunc_end5-posterize_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	desaturate_invoker,@function
desaturate_invoker:                     # @desaturate_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB6_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %lor.lhs.false.9
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB6_5
.LBB6_4:                                # %if.then.12
	movl	$0, -52(%rbp)
.LBB6_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.14
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_drawable_desaturate
.LBB6_7:                                # %if.end.15
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.16
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB6_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_11
.LBB6_11:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	desaturate_invoker, .Lfunc_end6-desaturate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	desaturate_full_invoker,@function
desaturate_full_invoker:                # @desaturate_full_invoker
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
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB7_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %lor.lhs.false.12
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB7_5
.LBB7_4:                                # %if.then.15
	movl	$0, -52(%rbp)
.LBB7_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB7_7
# BB#6:                                 # %if.then.17
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	callq	gimp_drawable_desaturate
.LBB7_7:                                # %if.end.18
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.19
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB7_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_11:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	desaturate_full_invoker, .Lfunc_end7-desaturate_full_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	equalize_invoker,@function
equalize_invoker:                       # @equalize_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -68(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB8_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %lor.lhs.false.12
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB8_5
.LBB8_4:                                # %if.then.15
	movl	$0, -52(%rbp)
.LBB8_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.17
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_drawable_equalize
.LBB8_7:                                # %if.end.18
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.19
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB8_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB8_11
.LBB8_11:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	equalize_invoker, .Lfunc_end8-equalize_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	invert_invoker,@function
invert_invoker:                         # @invert_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB9_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB9_4
# BB#3:                                 # %lor.lhs.false.9
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB9_5
.LBB9_4:                                # %if.then.12
	movl	$0, -52(%rbp)
.LBB9_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB9_7
# BB#6:                                 # %if.then.14
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_drawable_invert
.LBB9_7:                                # %if.end.15
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.16
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB9_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB9_11
.LBB9_11:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	invert_invoker, .Lfunc_end9-invert_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	curves_spline_invoker,@function
curves_spline_invoker:                  # @curves_spline_invoker
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
	callq	gimp_value_get_drawable
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
	je	.LBB10_14
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB10_10
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB10_10
# BB#3:                                 # %lor.lhs.false.18
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB10_10
# BB#4:                                 # %lor.lhs.false.21
	movl	-72(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB10_10
# BB#5:                                 # %lor.lhs.false.23
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB10_7
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -68(%rbp)
	je	.LBB10_10
.LBB10_7:                               # %lor.lhs.false.26
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB10_11
# BB#8:                                 # %land.lhs.true.29
	cmpl	$0, -68(%rbp)
	je	.LBB10_11
# BB#9:                                 # %land.lhs.true.31
	cmpl	$4, -68(%rbp)
	je	.LBB10_11
.LBB10_10:                              # %if.then.33
	movl	$0, -52(%rbp)
.LBB10_11:                              # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB10_13
# BB#12:                                # %if.then.35
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	movq	-80(%rbp), %rcx
	movl	-72(%rbp), %r8d
	callq	gimp_drawable_curves_spline
.LBB10_13:                              # %if.end.36
	jmp	.LBB10_14
.LBB10_14:                              # %if.end.37
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB10_16
# BB#15:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB10_17
.LBB10_17:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	curves_spline_invoker, .Lfunc_end10-curves_spline_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	curves_explicit_invoker,@function
curves_explicit_invoker:                # @curves_explicit_invoker
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
	callq	gimp_value_get_drawable
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
	je	.LBB11_14
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB11_10
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB11_10
# BB#3:                                 # %lor.lhs.false.18
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB11_10
# BB#4:                                 # %lor.lhs.false.21
	cmpl	$256, -72(%rbp)         # imm = 0x100
	jne	.LBB11_10
# BB#5:                                 # %lor.lhs.false.22
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB11_7
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -68(%rbp)
	je	.LBB11_10
.LBB11_7:                               # %lor.lhs.false.26
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB11_11
# BB#8:                                 # %land.lhs.true.29
	cmpl	$0, -68(%rbp)
	je	.LBB11_11
# BB#9:                                 # %land.lhs.true.31
	cmpl	$4, -68(%rbp)
	je	.LBB11_11
.LBB11_10:                              # %if.then.33
	movl	$0, -52(%rbp)
.LBB11_11:                              # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB11_13
# BB#12:                                # %if.then.35
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	movq	-80(%rbp), %rcx
	movl	-72(%rbp), %r8d
	callq	gimp_drawable_curves_explicit
.LBB11_13:                              # %if.end.36
	jmp	.LBB11_14
.LBB11_14:                              # %if.end.37
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB11_16
# BB#15:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_17
.LBB11_17:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	curves_explicit_invoker, .Lfunc_end11-curves_explicit_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	color_balance_invoker,@function
color_balance_invoker:                  # @color_balance_invoker
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
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
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
	callq	g_value_get_boolean
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$72, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$120, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB12_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB12_4
# BB#3:                                 # %lor.lhs.false.24
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB12_5
.LBB12_4:                               # %if.then.27
	movl	$0, -52(%rbp)
.LBB12_5:                               # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB12_7
# BB#6:                                 # %if.then.29
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	-72(%rbp), %ecx
	callq	gimp_drawable_color_balance
.LBB12_7:                               # %if.end.30
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.31
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB12_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_11
.LBB12_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_11
.LBB12_11:                              # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	color_balance_invoker, .Lfunc_end12-color_balance_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	colorize_invoker,@function
colorize_invoker:                       # @colorize_invoker
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
	callq	gimp_value_get_drawable
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB13_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB13_4
# BB#3:                                 # %lor.lhs.false.18
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB13_5
.LBB13_4:                               # %if.then.21
	movl	$0, -52(%rbp)
.LBB13_5:                               # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB13_7
# BB#6:                                 # %if.then.23
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_drawable_colorize
.LBB13_7:                               # %if.end.24
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.25
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB13_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_11
.LBB13_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_11
.LBB13_11:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	colorize_invoker, .Lfunc_end13-colorize_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	histogram_invoker,@function
histogram_invoker:                      # @histogram_invoker
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
	subq	$176, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm0, -136(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
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
	callq	g_value_get_int
	movl	%eax, -84(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_12
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB14_8
# BB#2:                                 # %lor.lhs.false
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB14_8
# BB#3:                                 # %lor.lhs.false.16
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB14_5
# BB#4:                                 # %land.lhs.true
	cmpl	$4, -76(%rbp)
	je	.LBB14_8
.LBB14_5:                               # %lor.lhs.false.19
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB14_9
# BB#6:                                 # %land.lhs.true.22
	cmpl	$0, -76(%rbp)
	je	.LBB14_9
# BB#7:                                 # %land.lhs.true.24
	cmpl	$4, -76(%rbp)
	je	.LBB14_9
.LBB14_8:                               # %if.then.26
	movl	$0, -52(%rbp)
.LBB14_9:                               # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB14_11
# BB#10:                                # %if.then.28
	callq	gimp_histogram_new
	movq	%rax, -144(%rbp)
	movq	-72(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	gimp_drawable_calculate_histogram
	movq	-144(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	callq	gimp_histogram_get_mean
	movsd	%xmm0, -96(%rbp)
	movq	-144(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	callq	gimp_histogram_get_std_dev
	movsd	%xmm0, -104(%rbp)
	movq	-144(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	callq	gimp_histogram_get_median
	xorl	%edx, %edx
	movl	$255, %ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-144(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_histogram_get_count
	movsd	%xmm0, -120(%rbp)
	movq	-144(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	callq	gimp_histogram_get_count
	movsd	%xmm0, -128(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-120(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movq	-144(%rbp), %rdi
	callq	gimp_histogram_unref
.LBB14_11:                              # %if.end.35
	jmp	.LBB14_12
.LBB14_12:                              # %if.end.36
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB14_14
# BB#13:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB14_15
.LBB14_14:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB14_15
.LBB14_15:                              # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_17
# BB#16:                                # %if.then.40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB14_17:                              # %if.end.53
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	histogram_invoker, .Lfunc_end14-histogram_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	hue_saturation_invoker,@function
hue_saturation_invoker:                 # @hue_saturation_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
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
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_drawable
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
	cmpl	$0, -52(%rbp)
	je	.LBB15_8
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB15_4
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB15_4
# BB#3:                                 # %lor.lhs.false.21
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB15_5
.LBB15_4:                               # %if.then.24
	movl	$0, -52(%rbp)
.LBB15_5:                               # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB15_7
# BB#6:                                 # %if.then.26
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_drawable_hue_saturation
.LBB15_7:                               # %if.end.27
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.28
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB15_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB15_11
.LBB15_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB15_11
.LBB15_11:                              # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	hue_saturation_invoker, .Lfunc_end15-hue_saturation_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	threshold_invoker,@function
threshold_invoker:                      # @threshold_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
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
	callq	gimp_value_get_drawable
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
	je	.LBB16_9
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB16_5
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	je	.LBB16_5
# BB#3:                                 # %lor.lhs.false.15
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB16_5
# BB#4:                                 # %lor.lhs.false.18
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB16_6
.LBB16_5:                               # %if.then.19
	movl	$0, -52(%rbp)
.LBB16_6:                               # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB16_8
# BB#7:                                 # %if.then.21
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	gimp_drawable_threshold
.LBB16_8:                               # %if.end.22
	jmp	.LBB16_9
.LBB16_9:                               # %if.end.23
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB16_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB16_12
.LBB16_11:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB16_12
.LBB16_12:                              # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	threshold_invoker, .Lfunc_end16-threshold_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-brightness-contrast"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Modify brightness/contrast in the specified drawable."
	.size	.L.str.1, 54

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedures allows the brightness and contrast of the specified drawable to be modified. Both 'brightness' and 'contrast' parameters are defined between -127 and 127."
	.size	.L.str.2, 171

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
	.asciz	"drawable"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The drawable"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"brightness"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Brightness adjustment"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"contrast"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Contrast adjustment"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-levels"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Modifies intensity levels in the specified drawable."
	.size	.L.str.12, 53

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"This tool allows intensity levels in the specified drawable to be remapped according to a set of parameters. The low/high input levels specify an initial mapping from the source intensities. The gamma value determines how intensities between the low and high input intensities are interpolated. A gamma value of 1.0 results in a linear interpolation. Higher gamma values result in more high-level intensities. Lower gamma values result in more low-level intensities. The low/high output levels constrain the final intensity mapping--that is, no final intensity will be lower than the low output level and no final intensity will be higher than the high output level. This tool is only valid on RGB color and grayscale images. It will not operate on indexed drawables."
	.size	.L.str.13, 768

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1995-1996"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"channel"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"The channel to modify"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"low-input"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"low input"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Intensity of lowest input"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"high-input"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"high input"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Intensity of highest input"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gamma"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Gamma correction factor"
	.size	.L.str.24, 24

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"low-output"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"low output"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Intensity of lowest output"
	.size	.L.str.27, 27

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"high-output"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"high output"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Intensity of highest output"
	.size	.L.str.30, 28

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-levels-auto"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Deprecated: Use 'gimp-levels-stretch' instead."
	.size	.L.str.32, 47

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.zero	1
	.size	.L.str.33, 1

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-levels-stretch"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Automatically modifies intensity levels in the specified drawable."
	.size	.L.str.35, 67

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"This procedure allows intensity levels in the specified drawable to be remapped according to a set of guessed parameters. It is equivalent to clicking the \"Auto\" button in the Levels tool. This procedure is only valid on RGB color and grayscale images. It will not operate on indexed drawables."
	.size	.L.str.36, 295

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Joao S.O. Bueno, Shawn Willden"
	.size	.L.str.37, 31

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"2003"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-posterize"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Posterize the specified drawable."
	.size	.L.str.40, 34

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"This procedures reduces the number of shades allows in each intensity channel to the specified 'levels' parameter."
	.size	.L.str.41, 115

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"levels"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Levels of posterization"
	.size	.L.str.43, 24

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-desaturate"
	.size	.L.str.44, 16

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Desaturate the contents of the specified drawable."
	.size	.L.str.45, 51

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"This procedure desaturates the contents of the specified drawable. This procedure only works on drawables of type RGB color."
	.size	.L.str.46, 125

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-desaturate-full"
	.size	.L.str.47, 21

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Desaturate the contents of the specified drawable, with the specified formula."
	.size	.L.str.48, 79

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"This procedure desaturates the contents of the specified drawable, with the specified formula. This procedure only works on drawables of type RGB color."
	.size	.L.str.49, 153

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Karine Delvare"
	.size	.L.str.50, 15

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"2005"
	.size	.L.str.51, 5

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"desaturate-mode"
	.size	.L.str.52, 16

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"desaturate mode"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"The formula to use to desaturate"
	.size	.L.str.54, 33

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-equalize"
	.size	.L.str.55, 14

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Equalize the contents of the specified drawable."
	.size	.L.str.56, 49

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"This procedure equalizes the contents of the specified drawable. Each intensity channel is equalized independently. The equalized intensity is given as inten' = (255 - inten). Indexed color drawables are not valid for this operation. The 'mask_only' option specifies whether to adjust only the area of the image within the selection bounds, or the entire image based on the histogram of the selected area. If there is no selection, the entire image is adjusted based on the histogram for the entire image."
	.size	.L.str.57, 506

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"mask-only"
	.size	.L.str.58, 10

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"mask only"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Equalization option"
	.size	.L.str.60, 20

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-invert"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Invert the contents of the specified drawable."
	.size	.L.str.62, 47

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"This procedure inverts the contents of the specified drawable. Each intensity channel is inverted independently. The inverted intensity is given as inten' = (255 - inten). Indexed color drawables are not valid for this operation."
	.size	.L.str.63, 230

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-curves-spline"
	.size	.L.str.64, 19

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Modifies the intensity curve(s) for specified drawable."
	.size	.L.str.65, 56

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Modifies the intensity mapping for one channel in the specified drawable. The drawable must be either grayscale or RGB, and the channel can be either an intensity component, or the value. The 'control_pts' parameter is an array of integers which define a set of control points which describe a Catmull Rom spline which yields the final intensity curve. Use the 'gimp-curves-explicit' function to explicitly modify intensity levels."
	.size	.L.str.66, 432

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"num-points"
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"num points"
	.size	.L.str.68, 11

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"The number of values in the control point array"
	.size	.L.str.69, 48

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"control-pts"
	.size	.L.str.70, 12

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"control pts"
	.size	.L.str.71, 12

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"The spline control points: { cp1.x, cp1.y, cp2.x, cp2.y, ... }"
	.size	.L.str.72, 63

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-curves-explicit"
	.size	.L.str.73, 21

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Modifies the intensity mapping for one channel in the specified drawable. The drawable must be either grayscale or RGB, and the channel can be either an intensity component, or the value. The 'curve' parameter is an array of bytes which explicitly defines how each pixel value in the drawable will be modified. Use the 'gimp-curves-spline' function to modify intensity levels with Catmull Rom splines."
	.size	.L.str.74, 402

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"num-bytes"
	.size	.L.str.75, 10

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"num bytes"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"The number of bytes in the new curve (always 256)"
	.size	.L.str.77, 50

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"curve"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"The explicit curve"
	.size	.L.str.79, 19

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gimp-color-balance"
	.size	.L.str.80, 19

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Modify the color balance of the specified drawable."
	.size	.L.str.81, 52

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Modify the color balance of the specified drawable. There are three axis which can be modified: cyan-red, magenta-green, and yellow-blue. Negative values increase the amount of the former, positive values increase the amount of the latter. Color balance can be controlled with the 'transfer_mode' setting, which allows shadows, mid-tones, and highlights in an image to be affected differently. The 'preserve-lum' parameter, if TRUE, ensures that the luminosity of each pixel remains fixed."
	.size	.L.str.82, 490

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"transfer-mode"
	.size	.L.str.83, 14

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"transfer mode"
	.size	.L.str.84, 14

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Transfer mode"
	.size	.L.str.85, 14

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"preserve-lum"
	.size	.L.str.86, 13

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"preserve lum"
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Preserve luminosity values at each pixel"
	.size	.L.str.88, 41

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"cyan-red"
	.size	.L.str.89, 9

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"cyan red"
	.size	.L.str.90, 9

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Cyan-Red color balance"
	.size	.L.str.91, 23

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"magenta-green"
	.size	.L.str.92, 14

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"magenta green"
	.size	.L.str.93, 14

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Magenta-Green color balance"
	.size	.L.str.94, 28

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"yellow-blue"
	.size	.L.str.95, 12

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"yellow blue"
	.size	.L.str.96, 12

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Yellow-Blue color balance"
	.size	.L.str.97, 26

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"gimp-colorize"
	.size	.L.str.98, 14

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Render the drawable as a grayscale image seen through a colored glass."
	.size	.L.str.99, 71

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Desaturates the drawable, then tints it with the specified color. This tool is only valid on RGB color images. It will not operate on grayscale or indexed drawables."
	.size	.L.str.100, 166

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.101, 29

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Sven Neumann"
	.size	.L.str.102, 13

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"2004"
	.size	.L.str.103, 5

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"hue"
	.size	.L.str.104, 4

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Hue in degrees"
	.size	.L.str.105, 15

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"saturation"
	.size	.L.str.106, 11

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Saturation in percent"
	.size	.L.str.107, 22

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"lightness"
	.size	.L.str.108, 10

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Lightness in percent"
	.size	.L.str.109, 21

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gimp-histogram"
	.size	.L.str.110, 15

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Returns information on the intensity histogram for the specified drawable."
	.size	.L.str.111, 75

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"This tool makes it possible to gather information about the intensity histogram of a drawable. A channel to examine is first specified. This can be either value, red, green, or blue, depending on whether the drawable is of type color or grayscale. The drawable may not be indexed. Second, a range of intensities are specified. The 'gimp-histogram' function returns statistics based on the pixels in the drawable that fall under this range of values. Mean, standard deviation, median, number of pixels, and percentile are all returned. Additionally, the total count of pixels in the image is returned. Counts of pixels are weighted by any associated alpha values and by the current selection mask. That is, pixels that lie outside an active selection mask will not be counted. Similarly, pixels with transparent alpha values will not be counted."
	.size	.L.str.112, 845

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"start-range"
	.size	.L.str.113, 12

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"start range"
	.size	.L.str.114, 12

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Start of the intensity measurement range"
	.size	.L.str.115, 41

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"end-range"
	.size	.L.str.116, 10

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"end range"
	.size	.L.str.117, 10

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"End of the intensity measurement range"
	.size	.L.str.118, 39

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"mean"
	.size	.L.str.119, 5

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Mean intensity value"
	.size	.L.str.120, 21

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"std-dev"
	.size	.L.str.121, 8

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"std dev"
	.size	.L.str.122, 8

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Standard deviation of intensity values"
	.size	.L.str.123, 39

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"median"
	.size	.L.str.124, 7

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Median intensity value"
	.size	.L.str.125, 23

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"pixels"
	.size	.L.str.126, 7

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Alpha-weighted pixel count for entire image"
	.size	.L.str.127, 44

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"count"
	.size	.L.str.128, 6

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Alpha-weighted pixel count for range"
	.size	.L.str.129, 37

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"percentile"
	.size	.L.str.130, 11

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Percentile that range falls under"
	.size	.L.str.131, 34

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"gimp-hue-saturation"
	.size	.L.str.132, 20

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Modify hue, lightness, and saturation in the specified drawable."
	.size	.L.str.133, 65

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"This procedures allows the hue, lightness, and saturation in the specified drawable to be modified. The 'hue-range' parameter provides the capability to limit range of affected hues."
	.size	.L.str.134, 183

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"hue-range"
	.size	.L.str.135, 10

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"hue range"
	.size	.L.str.136, 10

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Range of affected hues"
	.size	.L.str.137, 23

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"hue-offset"
	.size	.L.str.138, 11

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"hue offset"
	.size	.L.str.139, 11

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Hue offset in degrees"
	.size	.L.str.140, 22

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Lightness modification"
	.size	.L.str.141, 23

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Saturation modification"
	.size	.L.str.142, 24

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"gimp-threshold"
	.size	.L.str.143, 15

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"Threshold the specified drawable."
	.size	.L.str.144, 34

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"This procedures generates a threshold map of the specified drawable. All pixels between the values of 'low_threshold' and 'high_threshold' are replaced with white, and all other pixels with black."
	.size	.L.str.145, 197

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"low-threshold"
	.size	.L.str.146, 14

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"low threshold"
	.size	.L.str.147, 14

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"The low threshold value"
	.size	.L.str.148, 24

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"high-threshold"
	.size	.L.str.149, 15

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"high threshold"
	.size	.L.str.150, 15

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"The high threshold value"
	.size	.L.str.151, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
