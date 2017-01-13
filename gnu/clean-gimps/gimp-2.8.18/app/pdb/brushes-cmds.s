	.text
	.file	"brushes-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	register_brushes_procs
	.align	16, 0x90
	.type	register_brushes_procs,@function
register_brushes_procs:                 # @register_brushes_procs
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
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$brushes_refresh_invoker, %rax
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
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brushes_get_list_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdi
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	movq	-24(%rbp), %r9
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.10, %rax
	movabsq	$.L.str.11, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	-96(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -100(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brushes_get_brush_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rdi
	movq	-24(%rbp), %r10
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.23, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -164(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -180(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -196(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	xorl	%ecx, %ecx
	movl	$1000, %r8d             # imm = 0x3E8
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -216(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brushes_get_spacing_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rax
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.32, %rdi
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
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	xorl	%r11d, %r11d
	movl	$1000, %r8d             # imm = 0x3E8
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r11d, %ecx
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movl	%ebx, -252(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brushes_set_spacing_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rax
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.35, %rdi
	movq	-24(%rbp), %r10
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-280(%rbp), %r8         # 8-byte Reload
	movq	-280(%rbp), %r9         # 8-byte Reload
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	xorl	%r11d, %r11d
	movl	$1000, %r8d             # imm = 0x3E8
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%r11d, %ecx
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movl	%ebx, -292(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brushes_get_brush_data_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rax
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.38, %rdi
	movq	-24(%rbp), %r10
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-320(%rbp), %r8         # 8-byte Reload
	movq	-320(%rbp), %r9         # 8-byte Reload
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-312(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.39, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -340(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.23, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r10
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	movl	-344(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -348(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -360(%rbp)        # 8-byte Spill
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.43, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movsd	-384(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.28, %rax
	movabsq	$.L.str.29, %rdx
	xorl	%ecx, %ecx
	movl	$1000, %r8d             # imm = 0x3E8
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -400(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -420(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-24(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -436(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.47, %rax
	movabsq	$.L.str.48, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -456(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.50, %rsi
	movabsq	$.L.str.51, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_brushes_procs, .Lfunc_end0-register_brushes_procs
	.cfi_endproc

	.align	16, 0x90
	.type	brushes_refresh_invoker,@function
brushes_refresh_invoker:                # @brushes_refresh_invoker
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	464(%rcx), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_data_factory_data_refresh
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	brushes_refresh_invoker, .Lfunc_end1-brushes_refresh_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brushes_get_list_invoker,@function
brushes_get_list_invoker:               # @brushes_get_list_invoker
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
	subq	$112, %rsp
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
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	464(%rax), %rdi
	callq	gimp_data_factory_get_container
	leaq	-76(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_get_filtered_name_array
	movq	%rax, -88(%rbp)
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB2_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_5:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.6
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
	callq	gimp_value_take_stringarray
.LBB2_7:                                # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	brushes_get_list_invoker, .Lfunc_end2-brushes_get_list_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brushes_get_brush_invoker,@function
brushes_get_brush_invoker:              # @brushes_get_brush_invoker
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_brush_get_spacing
	movl	%eax, -84(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movl	$0, -52(%rbp)
.LBB3_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB3_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_6:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.10
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB3_8:                                # %if.end.17
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	brushes_get_brush_invoker, .Lfunc_end3-brushes_get_brush_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brushes_get_spacing_invoker,@function
brushes_get_spacing_invoker:            # @brushes_get_spacing_invoker
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
	movl	$0, -68(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rdi
	callq	gimp_brush_get_spacing
	movl	%eax, -68(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movl	$0, -52(%rbp)
.LBB4_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB4_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_6
.LBB4_6:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB4_8:                                # %if.end.6
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	brushes_get_spacing_invoker, .Lfunc_end4-brushes_get_spacing_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brushes_set_spacing_invoker,@function
brushes_set_spacing_invoker:            # @brushes_set_spacing_invoker
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
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_brush
	movl	-56(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_brush_set_spacing
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB5_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	brushes_set_spacing_invoker, .Lfunc_end5-brushes_set_spacing_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	brushes_get_brush_data_invoker,@function
brushes_get_brush_data_invoker:         # @brushes_get_brush_data_invoker
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
	subq	$160, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	$0, -120(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_9
# BB#1:                                 # %if.then
	cmpq	$0, -72(%rbp)
	je	.LBB6_4
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB6_4
# BB#3:                                 # %if.then.4
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_brush
	movq	%rax, -128(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -128(%rbp)
.LBB6_5:                                # %if.end
	cmpq	$0, -128(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.8
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_brush_get_spacing
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-128(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	4(%rdi), %eax
	movl	%eax, -100(%rbp)
	movq	-128(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -104(%rbp)
	movq	-128(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	8(%rdi), %eax
	movq	-128(%rbp), %rdi
	movq	32(%rdi), %rdi
	imull	4(%rdi), %eax
	movl	%eax, -108(%rbp)
	movq	-128(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	temp_buf_get_data
	movl	-108(%rbp), %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -120(%rbp)
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.22
	movl	$0, -52(%rbp)
.LBB6_8:                                # %if.end.23
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.24
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB6_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_12:                               # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_14
# BB#13:                                # %if.then.28
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movl	-104(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movl	-108(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movq	-120(%rbp), %rsi
	movslq	-108(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int8array
.LBB6_14:                               # %if.end.45
	movq	-64(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	brushes_get_brush_data_invoker, .Lfunc_end6-brushes_get_brush_data_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-brushes-refresh"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Refresh current brushes. This function always succeeds."
	.size	.L.str.1, 56

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure retrieves all brushes currently in the user's brush path and updates the brush dialogs accordingly."
	.size	.L.str.2, 115

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Seth Burgess"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1997"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-brushes-get-list"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Retrieve a complete listing of the available brushes."
	.size	.L.str.6, 54

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"This procedure returns a complete listing of available GIMP brushes. Each name returned can be used as input to the 'gimp-context-set-brush' procedure."
	.size	.L.str.7, 152

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1995-1996"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"filter"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"An optional regular expression used to filter the list"
	.size	.L.str.11, 55

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"num-brushes"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"num brushes"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The number of brushes in the brush list"
	.size	.L.str.14, 40

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"brush-list"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"brush list"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The list of brush names"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-brushes-get-brush"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Deprecated: Use 'gimp-context-get-brush' instead."
	.size	.L.str.19, 50

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.zero	1
	.size	.L.str.20, 1

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-context-get-brush"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"name"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"The brush name"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"width"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"The brush width"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"height"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"The brush height"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"spacing"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"The brush spacing"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-brushes-get-spacing"
	.size	.L.str.30, 25

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Deprecated: Use 'gimp-brush-get-spacing' instead."
	.size	.L.str.31, 50

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-brush-get-spacing"
	.size	.L.str.32, 23

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-brushes-set-spacing"
	.size	.L.str.33, 25

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Deprecated: Use 'gimp-brush-set-spacing' instead."
	.size	.L.str.34, 50

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-brush-set-spacing"
	.size	.L.str.35, 23

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-brushes-get-brush-data"
	.size	.L.str.36, 28

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Deprecated: Use 'gimp-brush-get-pixels' instead."
	.size	.L.str.37, 49

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-brush-get-pixels"
	.size	.L.str.38, 22

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"The brush name (\"\" means current active brush)"
	.size	.L.str.39, 47

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"actual-name"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"actual name"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"opacity"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"The brush opacity"
	.size	.L.str.43, 18

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"paint-mode"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"paint mode"
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The paint mode"
	.size	.L.str.46, 15

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"length"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Length of brush mask data"
	.size	.L.str.48, 26

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"mask-data"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"mask data"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"The brush mask data"
	.size	.L.str.51, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
