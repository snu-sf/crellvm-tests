	.text
	.file	"text-tool-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI0_1:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
	.text
	.globl	register_text_tool_procs
	.align	16, 0x90
	.type	register_text_tool_procs,@function
register_text_tool_procs:               # @register_text_tool_procs
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
	subq	$1000, %rsp             # imm = 0x3E8
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$text_fontname_invoker, %rax
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
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdx
	movl	$1, %r8d
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
	movabsq	$.L.str.10, %rax
	movabsq	$.L.str.11, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -112(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_size_type_get_type
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -168(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r11
	movq	32(%r11), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$text_get_extents_fontname_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -212(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movsd	-232(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_size_type_get_type
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -264(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.34, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -276(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -292(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.37, %rax
	movabsq	$.L.str.38, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -308(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.39, %rax
	movabsq	$.L.str.40, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -324(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$text_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.43, %rdx
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %r11
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-352(%rbp), %r8         # 8-byte Reload
	movq	-352(%rbp), %r9         # 8-byte Reload
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-344(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_drawable_id
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.10, %rax
	movabsq	$.L.str.11, %rdx
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
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
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -408(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -424(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movsd	-448(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	callq	gimp_size_type_get_type
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.44, %rax
	movabsq	$.L.str.45, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -476(%rbp)        # 4-byte Spill
	movl	-476(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -480(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.46, %rax
	movabsq	$.L.str.47, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -504(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.48, %rax
	movabsq	$.L.str.49, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -524(%rbp)        # 4-byte Spill
	movl	-524(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -528(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.50, %rax
	movabsq	$.L.str.51, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -548(%rbp)        # 4-byte Spill
	movl	-548(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -552(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-24(%rbp), %r11
	movl	%r8d, -556(%rbp)        # 4-byte Spill
	movl	-556(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -560(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -568(%rbp)        # 8-byte Spill
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.55, %rax
	movabsq	$.L.str.56, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -596(%rbp)        # 4-byte Spill
	movl	-596(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -600(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.57, %rax
	movabsq	$.L.str.58, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -620(%rbp)        # 4-byte Spill
	movl	-620(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -624(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.59, %rax
	movabsq	$.L.str.60, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -644(%rbp)        # 4-byte Spill
	movl	-644(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -648(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r11
	movq	32(%r11), %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_layer_id
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$text_get_extents_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.62, %rax
	movabsq	$.L.str.43, %rcx
	movabsq	$.L.str.30, %rdx
	movq	-24(%rbp), %rdi
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-680(%rbp), %r8         # 8-byte Reload
	movq	-680(%rbp), %r9         # 8-byte Reload
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-672(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -700(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
	movsd	-720(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	callq	gimp_size_type_get_type
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.44, %rax
	movabsq	$.L.str.45, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -748(%rbp)        # 4-byte Spill
	movl	-748(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -752(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.46, %rax
	movabsq	$.L.str.47, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -772(%rbp)        # 4-byte Spill
	movl	-772(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -776(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.48, %rax
	movabsq	$.L.str.49, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -792(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -796(%rbp)        # 4-byte Spill
	movl	-796(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -800(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.50, %rax
	movabsq	$.L.str.51, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -820(%rbp)        # 4-byte Spill
	movl	-820(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -824(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-24(%rbp), %r11
	movl	%r8d, -828(%rbp)        # 4-byte Spill
	movl	-828(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -832(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -840(%rbp)        # 8-byte Spill
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.55, %rax
	movabsq	$.L.str.56, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -868(%rbp)        # 4-byte Spill
	movl	-868(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -872(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.57, %rax
	movabsq	$.L.str.58, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -892(%rbp)        # 4-byte Spill
	movl	-892(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -896(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.59, %rax
	movabsq	$.L.str.60, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -904(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -912(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r8d, -916(%rbp)        # 4-byte Spill
	movl	-916(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -920(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	callq	gimp_param_spec_string
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.34, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -932(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -948(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.37, %rax
	movabsq	$.L.str.38, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -960(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -964(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.39, %rax
	movabsq	$.L.str.40, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -980(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1000, %rsp             # imm = 0x3E8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_text_tool_procs, .Lfunc_end0-register_text_tool_procs
	.cfi_endproc

	.align	16, 0x90
	.type	text_fontname_invoker,@function
text_fontname_invoker:                  # @text_fontname_invoker
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -136(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_drawable
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
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
	callq	g_value_get_int
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -112(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$216, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_string
	movq	%rax, -128(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_8
# BB#1:                                 # %if.then
	cmpq	$0, -80(%rbp)
	je	.LBB1_5
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	jne	.LBB1_5
.LBB1_4:                                # %if.then.34
	movl	$0, -52(%rbp)
.LBB1_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.36
	movabsq	$.L.str.63, %rdi
	movq	-128(%rbp), %rsi
	cvttsd2si	-120(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -144(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdx
	cvttsd2si	-88(%rbp), %ecx
	cvttsd2si	-96(%rbp), %r8d
	movq	-144(%rbp), %r9
	movq	-104(%rbp), %rax
	movl	-108(%rbp), %r10d
	movl	-112(%rbp), %r11d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	text_render
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rdi
	callq	g_free
.LBB1_7:                                # %if.end.41
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.42
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB1_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_11:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_13
# BB#12:                                # %if.then.46
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB1_13:                               # %if.end.49
	movq	-64(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	text_fontname_invoker, .Lfunc_end1-text_fontname_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	text_get_extents_fontname_invoker,@function
text_get_extents_fontname_invoker:      # @text_get_extents_fontname_invoker
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
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
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
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.63, %rdi
	movq	-88(%rbp), %rsi
	cvttsd2si	-80(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	leaq	-104(%rbp), %r9
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	text_get_extents
	movl	%eax, -52(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_free
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB2_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_5:                                # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-104(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB2_7:                                # %if.end.21
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	text_get_extents_fontname_invoker, .Lfunc_end2-text_get_extents_fontname_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	text_invoker,@function
text_invoker:                           # @text_invoker
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -136(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_drawable
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -96(%rbp)
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
	callq	g_value_get_int
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$144, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -112(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$168, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -120(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$240, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_string
	movq	%rax, -128(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_8
# BB#1:                                 # %if.then
	cmpq	$0, -80(%rbp)
	je	.LBB3_5
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %lor.lhs.false
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_pdb_item_is_not_group
	cmpl	$0, %eax
	jne	.LBB3_5
.LBB3_4:                                # %if.then.34
	movl	$0, -52(%rbp)
.LBB3_5:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.36
	movabsq	$.L.str.63, %rdi
	movq	-128(%rbp), %rsi
	cvttsd2si	-120(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -144(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdx
	cvttsd2si	-88(%rbp), %ecx
	cvttsd2si	-96(%rbp), %r8d
	movq	-144(%rbp), %r9
	movq	-104(%rbp), %rax
	movl	-108(%rbp), %r10d
	movl	-112(%rbp), %r11d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	text_render
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rdi
	callq	g_free
.LBB3_7:                                # %if.end.41
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.42
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB3_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_11
.LBB3_11:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_13
# BB#12:                                # %if.then.46
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_layer
.LBB3_13:                               # %if.end.49
	movq	-64(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	text_invoker, .Lfunc_end3-text_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	text_get_extents_invoker,@function
text_get_extents_invoker:               # @text_get_extents_invoker
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
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
	addq	$96, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -88(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.63, %rdi
	movq	-88(%rbp), %rsi
	cvttsd2si	-80(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	leaq	-104(%rbp), %r9
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	text_get_extents
	movl	%eax, -52(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_free
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB4_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-104(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB4_7:                                # %if.end.21
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	text_get_extents_invoker, .Lfunc_end4-text_get_extents_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-text-fontname"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Add text at the specified location as a floating selection or a new layer."
	.size	.L.str.1, 75

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This tool requires a fontname matching an installed PangoFT2 font. You can specify the fontsize in units of pixels or points, and the appropriate metric is specified using the size_type argument. The x and y parameters together control the placement of the new text by specifying the upper left corner of the text bounding box. If the specified drawable parameter is valid, the text will be created as a floating selection attached to the drawable. If the drawable parameter is not valid (-1), the text will appear as a new layer. Finally, a border can be specified around the final rendered text. The border is measured in pixels. Parameter size-type is not used and is currently ignored. If you need to display a font in points, divide the size in points by 72.0 and multiply it by the image's vertical resolution."
	.size	.L.str.2, 817

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Martin Edlman & Sven Neumann"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1998- 2001"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The image"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"drawable"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The affected drawable: (-1 for a new text layer)"
	.size	.L.str.9, 49

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"x"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The x coordinate for the left of the text bounding box"
	.size	.L.str.11, 55

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"y"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The y coordinate for the top of the text bounding box"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"text"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The text to generate (in UTF-8 encoding)"
	.size	.L.str.15, 41

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"border"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The size of the border"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"antialias"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Antialiasing"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"size"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The size of text in either pixels or points"
	.size	.L.str.21, 44

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"size-type"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"size type"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"The units of specified size"
	.size	.L.str.24, 28

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"fontname"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The name of the font"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"text-layer"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"text layer"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The new text layer or -1 if no layer was created."
	.size	.L.str.29, 50

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-text-get-extents-fontname"
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Get extents of the bounding box for the specified text."
	.size	.L.str.31, 56

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"This tool returns the width and height of a bounding box for the specified text string with the specified font information. Ascent and descent for the specified font are returned as well. Parameter size-type is not used and is currently ignored. If you need to display a font in points, divide the size in points by 72.0 and multiply it by the vertical resolution of the image you are taking into account."
	.size	.L.str.32, 406

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"width"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"The width of the specified font"
	.size	.L.str.34, 32

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"height"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"The height of the specified font"
	.size	.L.str.36, 33

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"ascent"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"The ascent of the specified font"
	.size	.L.str.38, 33

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"descent"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"The descent of the specified font"
	.size	.L.str.40, 34

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-text"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Deprecated: Use 'gimp-text-fontname' instead."
	.size	.L.str.42, 46

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.zero	1
	.size	.L.str.43, 1

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"foundry"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"The font foundry"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"family"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The font family"
	.size	.L.str.47, 16

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"weight"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"The font weight"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"slant"
	.size	.L.str.50, 6

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"The font slant"
	.size	.L.str.51, 15

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"set-width"
	.size	.L.str.52, 10

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"set width"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"The font set-width"
	.size	.L.str.54, 19

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"spacing"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"The font spacing"
	.size	.L.str.56, 17

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"registry"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"The font registry"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"encoding"
	.size	.L.str.59, 9

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"The font encoding"
	.size	.L.str.60, 18

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-text-get-extents"
	.size	.L.str.61, 22

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Deprecated: Use 'gimp-text-get-extents-fontname' instead."
	.size	.L.str.62, 58

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"%s %d"
	.size	.L.str.63, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
