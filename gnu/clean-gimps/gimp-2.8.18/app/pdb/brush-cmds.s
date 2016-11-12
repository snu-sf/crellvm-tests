	.text
	.file	"brush-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_brush_procs
	.align	16, 0x90
	.type	register_brush_procs,@function
register_brush_procs:                   # @register_brush_procs
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
	subq	$1416, %rsp             # imm = 0x588
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$brush_new_invoker, %rax
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
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r11
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_duplicate_invoker, %rdi
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
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.14, %rdx
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
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r11
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movl	-128(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_is_generated_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -168(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -188(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.24, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_rename_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rdx
	movabsq	$.L.str.27, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -216(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -236(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r11
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	-240(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -244(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.31, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r11
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -272(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -280(%rbp)        # 8-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_delete_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.33, %rdx
	movabsq	$.L.str.34, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -304(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -324(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_is_editable_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rdx
	movabsq	$.L.str.37, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -344(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -364(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.38, %rax
	movabsq	$.L.str.39, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_get_info_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
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
	movq	%rdi, -392(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -412(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.43, %rax
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -428(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.45, %rax
	movabsq	$.L.str.46, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -444(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movl	%r10d, -460(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.50, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movl	%r10d, -476(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_get_pixels_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.41, %rdx
	movabsq	$.L.str.54, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -496(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -516(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.43, %rax
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -532(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.45, %rax
	movabsq	$.L.str.46, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -548(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movl	%r10d, -564(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.55, %rdi
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.57, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -568(%rbp)        # 4-byte Spill
	movl	-568(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -572(%rbp)        # 4-byte Spill
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
	movq	-24(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.50, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movl	%r10d, -604(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.61, %rdi
	movabsq	$.L.str.62, %rsi
	movabsq	$.L.str.63, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -608(%rbp)        # 4-byte Spill
	movl	-608(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -612(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.64, %rdi
	movabsq	$.L.str.65, %rsi
	movabsq	$.L.str.66, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_get_spacing_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.67, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.67, %rsi
	movabsq	$.L.str.68, %rdx
	movabsq	$.L.str.69, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -648(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -668(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.70, %rax
	movabsq	$.L.str.71, %rdx
	xorl	%ecx, %ecx
	movl	$1000, %r8d             # imm = 0x3E8
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	movl	-684(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -688(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_set_spacing_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.72, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.72, %rsi
	movabsq	$.L.str.73, %rdx
	movabsq	$.L.str.74, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -704(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -724(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.70, %rax
	movabsq	$.L.str.71, %rdx
	xorl	%ecx, %ecx
	movl	$1000, %r8d             # imm = 0x3E8
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -740(%rbp)        # 4-byte Spill
	movl	-740(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -744(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_get_shape_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.75, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.75, %rsi
	movabsq	$.L.str.76, %rdx
	movabsq	$.L.str.77, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
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
	movq	-24(%rbp), %rdi
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_shape_get_type
	movabsq	$.L.str.78, %rdx
	movabsq	$.L.str.79, %rsi
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rdi
	movq	%rsi, -800(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-800(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_set_shape_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.80, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.80, %rsi
	movabsq	$.L.str.81, %rdx
	movabsq	$.L.str.82, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -816(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -836(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_shape_get_type
	movabsq	$.L.str.83, %rdi
	movabsq	$.L.str.84, %rsi
	movabsq	$.L.str.79, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_shape_get_type
	movabsq	$.L.str.85, %rdi
	movabsq	$.L.str.86, %rsi
	movabsq	$.L.str.87, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_get_radius_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.88, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.88, %rsi
	movabsq	$.L.str.89, %rdx
	movabsq	$.L.str.90, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -872(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -892(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.91, %rax
	movabsq	$.L.str.92, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
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
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_set_radius_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.93, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.93, %rsi
	movabsq	$.L.str.94, %rdx
	movabsq	$.L.str.95, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -920(%rbp)        # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -940(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.96, %rdi
	movabsq	$.L.str.97, %rsi
	movabsq	$.L.str.98, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.99, %rdi
	movabsq	$.L.str.100, %rsi
	movabsq	$.L.str.101, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_get_spikes_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.102, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.102, %rsi
	movabsq	$.L.str.103, %rdx
	movabsq	$.L.str.104, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
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
	movq	-24(%rbp), %rdi
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
	movabsq	$.L.str.105, %rax
	movabsq	$.L.str.106, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -1012(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_set_spikes_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.107, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.107, %rsi
	movabsq	$.L.str.108, %rdx
	movabsq	$.L.str.109, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1052(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.110, %rdi
	movabsq	$.L.str.111, %rsi
	movabsq	$.L.str.112, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	movl	%r10d, -1068(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.113, %rdi
	movabsq	$.L.str.114, %rsi
	movabsq	$.L.str.115, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	movl	%r10d, -1084(%rbp)      # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_get_hardness_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.116, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.116, %rsi
	movabsq	$.L.str.117, %rdx
	movabsq	$.L.str.118, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -1112(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1124(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.119, %rax
	movabsq	$.L.str.120, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_set_hardness_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.121, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.121, %rsi
	movabsq	$.L.str.122, %rdx
	movabsq	$.L.str.123, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1168(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1172(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.124, %rdi
	movabsq	$.L.str.125, %rsi
	movabsq	$.L.str.126, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.127, %rdi
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_get_aspect_ratio_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.130, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.130, %rsi
	movabsq	$.L.str.131, %rdx
	movabsq	$.L.str.132, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -1216(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1228(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.133, %rdi
	movabsq	$.L.str.134, %rsi
	movabsq	$.L.str.135, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_set_aspect_ratio_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.136, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.136, %rsi
	movabsq	$.L.str.137, %rdx
	movabsq	$.L.str.138, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -1256(%rbp)       # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -1264(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1272(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1276(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.139, %rdi
	movabsq	$.L.str.140, %rsi
	movabsq	$.L.str.141, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.142, %rdi
	movabsq	$.L.str.143, %rsi
	movabsq	$.L.str.144, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_get_angle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.145, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.145, %rsi
	movabsq	$.L.str.146, %rdx
	movabsq	$.L.str.147, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -1320(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1328(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1332(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.148, %rax
	movabsq	$.L.str.149, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -1344(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$brush_set_angle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	gimp_object_get_type
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.150, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.150, %rsi
	movabsq	$.L.str.151, %rdx
	movabsq	$.L.str.152, %rcx
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -1360(%rbp)       # 8-byte Spill
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -1368(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -1380(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.153, %rdi
	movabsq	$.L.str.154, %rsi
	movabsq	$.L.str.155, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.156, %rdi
	movabsq	$.L.str.157, %rsi
	movabsq	$.L.str.158, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	g_param_spec_double
	movq	-1400(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$1416, %rsp             # imm = 0x588
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_brush_procs, .Lfunc_end0-register_brush_procs
	.cfi_endproc

	.align	16, 0x90
	.type	brush_new_invoker,@function
brush_new_invoker:                      # @brush_new_invoker
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
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	464(%rax), %rdi
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
	.size	brush_new_invoker, .Lfunc_end1-brush_new_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_duplicate_invoker,@function
brush_duplicate_invoker:                # @brush_duplicate_invoker
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
	callq	gimp_pdb_get_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB2_6
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	464(%rax), %rdi
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
	.size	brush_duplicate_invoker, .Lfunc_end2-brush_duplicate_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_is_generated_invoker,@function
brush_is_generated_invoker:             # @brush_is_generated_invoker
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
	subq	$144, %rsp
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
	je	.LBB3_12
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB3_10
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.6
	movl	$0, -108(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.9
	movl	$1, -108(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.10
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.12
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.13
	movl	$0, -52(%rbp)
.LBB3_11:                               # %if.end.14
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.15
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB3_14
# BB#13:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB3_15
.LBB3_14:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB3_15
.LBB3_15:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_17
# BB#16:                                # %if.then.19
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB3_17:                               # %if.end.22
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	brush_is_generated_invoker, .Lfunc_end3-brush_is_generated_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_rename_invoker,@function
brush_rename_invoker:                   # @brush_rename_invoker
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
	callq	gimp_pdb_get_brush
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
	.size	brush_rename_invoker, .Lfunc_end4-brush_rename_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_delete_invoker,@function
brush_delete_invoker:                   # @brush_delete_invoker
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
	callq	gimp_pdb_get_brush
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
	movq	464(%rax), %rdi
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
	.size	brush_delete_invoker, .Lfunc_end5-brush_delete_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_is_editable_invoker,@function
brush_is_editable_invoker:              # @brush_is_editable_invoker
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
	je	.LBB6_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB6_3
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
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB6_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_8:                                # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB6_10:                               # %if.end.14
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	brush_is_editable_invoker, .Lfunc_end6-brush_is_editable_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_get_info_invoker,@function
brush_get_info_invoker:                 # @brush_get_info_invoker
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_8
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_brush
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB7_6
# BB#2:                                 # %if.then.3
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB7_4
# BB#3:                                 # %cond.true
	movq	-96(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB7_5
.LBB7_5:                                # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB7_10
# BB#9:                                 # %cond.true.13
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_11:                               # %cond.end.15
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_13
# BB#12:                                # %if.then.19
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB7_13:                               # %if.end.28
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	brush_get_info_invoker, .Lfunc_end7-brush_get_info_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_get_pixels_invoker,@function
brush_get_pixels_invoker:               # @brush_get_pixels_invoker
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_7
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_brush
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB8_5
# BB#2:                                 # %if.then.3
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	imull	4(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	imull	(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_data
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.19
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movl	8(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	imull	4(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	imull	(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rdi
	callq	temp_buf_get_data
	movl	-104(%rbp), %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -112(%rbp)
.LBB8_4:                                # %if.end
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB8_6:                                # %if.end.33
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.34
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB8_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB8_10
.LBB8_10:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB8_12
# BB#11:                                # %if.then.38
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movq	-96(%rbp), %rsi
	movslq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int8array
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movl	-100(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$168, %rax
	movl	-104(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$192, %rax
	movq	-112(%rbp), %rsi
	movslq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int8array
.LBB8_12:                               # %if.end.56
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	brush_get_pixels_invoker, .Lfunc_end8-brush_get_pixels_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_get_spacing_invoker,@function
brush_get_spacing_invoker:              # @brush_get_spacing_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB9_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rdi
	callq	gimp_brush_get_spacing
	movl	%eax, -76(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %if.end.5
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
# BB#9:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB9_10:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	brush_get_spacing_invoker, .Lfunc_end9-brush_get_spacing_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_set_spacing_invoker,@function
brush_set_spacing_invoker:              # @brush_set_spacing_invoker
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
	cmpl	$0, -52(%rbp)
	je	.LBB10_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_brush
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then.6
	movq	-80(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_brush_set_spacing
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
	.size	brush_set_spacing_invoker, .Lfunc_end10-brush_set_spacing_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_get_shape_invoker,@function
brush_get_shape_invoker:                # @brush_get_shape_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	120(%rax), %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB11_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB11_10:                              # %if.end.14
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	brush_get_shape_invoker, .Lfunc_end11-brush_get_shape_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_set_shape_invoker,@function
brush_set_shape_invoker:                # @brush_set_shape_invoker
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
	movl	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_enum
	movl	%eax, -76(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then.6
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_brush_generated_set_shape
	movq	-88(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	120(%rax), %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB12_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_8
.LBB12_8:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.16
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB12_10:                              # %if.end.19
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	brush_set_shape_invoker, .Lfunc_end12-brush_set_shape_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_get_radius_invoker,@function
brush_get_radius_invoker:               # @brush_get_radius_invoker
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
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtss2sd	124(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB13_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_8
.LBB13_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB13_10:                              # %if.end.14
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	brush_get_radius_invoker, .Lfunc_end13-brush_get_radius_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_set_radius_invoker,@function
brush_set_radius_invoker:               # @brush_set_radius_invoker
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
	subq	$144, %rsp
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
	callq	g_value_get_double
	movsd	%xmm0, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsd2ss	-80(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_brush_generated_set_radius
	movq	-96(%rbp), %rax
	movss	%xmm0, -108(%rbp)       # 4-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtss2sd	124(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB14_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB14_8
.LBB14_8:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.17
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB14_10:                              # %if.end.20
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	brush_set_radius_invoker, .Lfunc_end14-brush_set_radius_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_get_spikes_invoker,@function
brush_get_spikes_invoker:               # @brush_get_spikes_invoker
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
	je	.LBB15_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	128(%rax), %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB15_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB15_8
.LBB15_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB15_8
.LBB15_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB15_10:                              # %if.end.14
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	brush_get_spikes_invoker, .Lfunc_end15-brush_get_spikes_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_set_spikes_invoker,@function
brush_set_spikes_invoker:               # @brush_set_spikes_invoker
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
	subq	$144, %rsp
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
	je	.LBB16_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then.6
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_brush_generated_set_spikes
	movq	-88(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	128(%rax), %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %if.end.12
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
# BB#9:                                 # %if.then.16
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-80(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB16_10:                              # %if.end.19
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	brush_set_spikes_invoker, .Lfunc_end16-brush_set_spikes_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_get_hardness_invoker,@function
brush_get_hardness_invoker:             # @brush_get_hardness_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtss2sd	132(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB17_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB17_8
.LBB17_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB17_8
.LBB17_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB17_10:                              # %if.end.14
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	brush_get_hardness_invoker, .Lfunc_end17-brush_get_hardness_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_set_hardness_invoker,@function
brush_set_hardness_invoker:             # @brush_set_hardness_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
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
	movsd	%xmm0, -88(%rbp)
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
	cmpl	$0, -52(%rbp)
	je	.LBB18_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsd2ss	-80(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_brush_generated_set_hardness
	movq	-96(%rbp), %rax
	movss	%xmm0, -108(%rbp)       # 4-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtss2sd	132(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB18_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB18_8
.LBB18_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB18_8
.LBB18_8:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.17
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB18_10:                              # %if.end.20
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	brush_set_hardness_invoker, .Lfunc_end18-brush_set_hardness_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_get_aspect_ratio_invoker,@function
brush_get_aspect_ratio_invoker:         # @brush_get_aspect_ratio_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB19_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtss2sd	136(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %if.end.7
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
# BB#9:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB19_10:                              # %if.end.14
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	brush_get_aspect_ratio_invoker, .Lfunc_end19-brush_get_aspect_ratio_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_set_aspect_ratio_invoker,@function
brush_set_aspect_ratio_invoker:         # @brush_set_aspect_ratio_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
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
	movsd	%xmm0, -88(%rbp)
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
	cmpl	$0, -52(%rbp)
	je	.LBB20_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB20_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsd2ss	-80(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_brush_generated_set_aspect_ratio
	movq	-96(%rbp), %rax
	movss	%xmm0, -108(%rbp)       # 4-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtss2sd	136(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB20_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB20_8
.LBB20_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB20_8
.LBB20_8:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.17
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB20_10:                              # %if.end.20
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	brush_set_aspect_ratio_invoker, .Lfunc_end20-brush_set_aspect_ratio_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_get_angle_invoker,@function
brush_get_angle_invoker:                # @brush_get_angle_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB21_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB21_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtss2sd	140(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	je	.LBB21_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB21_8
.LBB21_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB21_8
.LBB21_8:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB21_10:                              # %if.end.14
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	brush_get_angle_invoker, .Lfunc_end21-brush_get_angle_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	brush_set_angle_invoker,@function
brush_set_angle_invoker:                # @brush_set_angle_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
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
	movsd	%xmm0, -88(%rbp)
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
	cmpl	$0, -52(%rbp)
	je	.LBB22_5
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_generated_brush
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB22_3
# BB#2:                                 # %if.then.6
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsd2ss	-80(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_brush_generated_set_angle
	movq	-96(%rbp), %rax
	movss	%xmm0, -108(%rbp)       # 4-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtss2sd	140(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movl	$0, -52(%rbp)
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB22_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB22_8
.LBB22_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB22_8
.LBB22_8:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.17
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	g_value_set_double
.LBB22_10:                              # %if.end.20
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	brush_set_angle_invoker, .Lfunc_end22-brush_set_angle_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-brush-new"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Creates a new brush"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure creates a new, uninitialized brush"
	.size	.L.str.2, 50

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
	.asciz	"2004"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"name"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The requested name of the new brush"
	.size	.L.str.7, 36

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
	.asciz	"The actual new brush name"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-brush-duplicate"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Duplicates a brush"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"This procedure creates an identical brush by a different name"
	.size	.L.str.13, 62

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The brush name"
	.size	.L.str.14, 15

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
	.asciz	"The name of the brush's copy"
	.size	.L.str.17, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-brush-is-generated"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Tests if brush is generated"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Returns TRUE if this brush is parametric, FALSE for other types"
	.size	.L.str.20, 64

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
	.asciz	"generated"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"TRUE if the brush is generated"
	.size	.L.str.24, 31

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-brush-rename"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Rename a brush"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"This procedure renames a brush"
	.size	.L.str.27, 31

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"new-name"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"new name"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"The new name of the brush"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"The actual new name of the brush"
	.size	.L.str.31, 33

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-brush-delete"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Deletes a brush"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"This procedure deletes a brush"
	.size	.L.str.34, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-brush-is-editable"
	.size	.L.str.35, 23

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Tests if brush can be edited"
	.size	.L.str.36, 29

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Returns TRUE if you have permission to change the brush"
	.size	.L.str.37, 56

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"editable"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"TRUE if the brush can be edited"
	.size	.L.str.39, 32

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-brush-get-info"
	.size	.L.str.40, 20

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Retrieve information about the specified brush."
	.size	.L.str.41, 48

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"This procedure retrieves information about the specified brush. This includes the brush name, and the brush extents (width and height)."
	.size	.L.str.42, 136

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"width"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"The brush width"
	.size	.L.str.44, 16

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"height"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"The brush height"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"mask-bpp"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"mask bpp"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"The brush mask bpp"
	.size	.L.str.49, 19

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"color-bpp"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"color bpp"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"The brush color bpp"
	.size	.L.str.52, 20

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-brush-get-pixels"
	.size	.L.str.53, 22

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"This procedure retrieves information about the specified brush. This includes the brush extents (width and height) and its pixels data."
	.size	.L.str.54, 136

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"num-mask-bytes"
	.size	.L.str.55, 15

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"num mask bytes"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Length of brush mask data"
	.size	.L.str.57, 26

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"mask-bytes"
	.size	.L.str.58, 11

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"mask bytes"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"The brush mask data"
	.size	.L.str.60, 20

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"num-color-bytes"
	.size	.L.str.61, 16

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"num color bytes"
	.size	.L.str.62, 16

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Length of brush color data"
	.size	.L.str.63, 27

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"color-bytes"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"color bytes"
	.size	.L.str.65, 12

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"The brush color data"
	.size	.L.str.66, 21

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-brush-get-spacing"
	.size	.L.str.67, 23

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Get the brush spacing."
	.size	.L.str.68, 23

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"This procedure returns the spacing setting for the specified brush. The return value is an integer between 0 and 1000 which represents percentage of the maximum of the width and height of the mask."
	.size	.L.str.69, 198

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"spacing"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"The brush spacing"
	.size	.L.str.71, 18

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-brush-set-spacing"
	.size	.L.str.72, 23

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Set the brush spacing."
	.size	.L.str.73, 23

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"This procedure modifies the spacing setting for the specified brush. The value should be a integer between 0 and 1000."
	.size	.L.str.74, 119

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-brush-get-shape"
	.size	.L.str.75, 21

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Get the shape of a generated brush."
	.size	.L.str.76, 36

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"This procedure gets the shape value for a generated brush. If called for any other type of brush, it does not succeed. The current possibilities are Circle (GIMP_BRUSH_GENERATED_CIRCLE), Square (GIMP_BRUSH_GENERATED_SQUARE), and Diamond (GIMP_BRUSH_GENERATED_DIAMOND). Other shapes are likely to be added in the future."
	.size	.L.str.77, 320

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"shape"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"The brush shape"
	.size	.L.str.79, 16

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gimp-brush-set-shape"
	.size	.L.str.80, 21

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Set the shape of a generated brush."
	.size	.L.str.81, 36

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"This procedure sets the shape value for a generated brush. If called for any other type of brush, it does not succeed. The current possibilities are Circle (GIMP_BRUSH_GENERATED_CIRCLE), Square (GIMP_BRUSH_GENERATED_SQUARE), and Diamond (GIMP_BRUSH_GENERATED_DIAMOND). Other shapes are likely to be added in the future."
	.size	.L.str.82, 320

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"shape-in"
	.size	.L.str.83, 9

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"shape in"
	.size	.L.str.84, 9

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"shape-out"
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"shape out"
	.size	.L.str.86, 10

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"The brush shape actually assigned"
	.size	.L.str.87, 34

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"gimp-brush-get-radius"
	.size	.L.str.88, 22

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Get the radius of a generated brush."
	.size	.L.str.89, 37

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"This procedure gets the radius value for a generated brush. If called for any other type of brush, it does not succeed."
	.size	.L.str.90, 120

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"radius"
	.size	.L.str.91, 7

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"The radius of the brush in pixels"
	.size	.L.str.92, 34

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-brush-set-radius"
	.size	.L.str.93, 22

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Set the radius of a generated brush."
	.size	.L.str.94, 37

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"This procedure sets the radius for a generated brush. If called for any other type of brush, it does not succeed."
	.size	.L.str.95, 114

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"radius-in"
	.size	.L.str.96, 10

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"radius in"
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"The desired brush radius"
	.size	.L.str.98, 25

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"radius-out"
	.size	.L.str.99, 11

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"radius out"
	.size	.L.str.100, 11

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"The brush radius actually assigned"
	.size	.L.str.101, 35

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gimp-brush-get-spikes"
	.size	.L.str.102, 22

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Get the number of spikes for a generated brush."
	.size	.L.str.103, 48

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"This procedure gets the number of spikes for a generated brush. If called for any other type of brush, it does not succeed."
	.size	.L.str.104, 124

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"spikes"
	.size	.L.str.105, 7

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"The number of spikes on the brush."
	.size	.L.str.106, 35

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"gimp-brush-set-spikes"
	.size	.L.str.107, 22

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Set the number of spikes for a generated brush."
	.size	.L.str.108, 48

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"This procedure sets the number of spikes for a generated brush. If called for any other type of brush, it does not succeed."
	.size	.L.str.109, 124

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"spikes-in"
	.size	.L.str.110, 10

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"spikes in"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"The desired number of spikes"
	.size	.L.str.112, 29

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"spikes-out"
	.size	.L.str.113, 11

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"spikes out"
	.size	.L.str.114, 11

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"The number of spikes actually assigned"
	.size	.L.str.115, 39

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-brush-get-hardness"
	.size	.L.str.116, 24

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Get the hardness of a generated brush."
	.size	.L.str.117, 39

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"This procedure gets the hardness of a generated brush. The hardness of a brush is the amount its intensity fades at the outside edge. If called for any other type of brush, the function does not succeed."
	.size	.L.str.118, 204

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"hardness"
	.size	.L.str.119, 9

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"The hardness of the brush."
	.size	.L.str.120, 27

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"gimp-brush-set-hardness"
	.size	.L.str.121, 24

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Set the hardness of a generated brush."
	.size	.L.str.122, 39

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"This procedure sets the hardness for a generated brush. If called for any other type of brush, it does not succeed."
	.size	.L.str.123, 116

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"hardness-in"
	.size	.L.str.124, 12

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"hardness in"
	.size	.L.str.125, 12

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"The desired brush hardness"
	.size	.L.str.126, 27

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"hardness-out"
	.size	.L.str.127, 13

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"hardness out"
	.size	.L.str.128, 13

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"The brush hardness actually assigned"
	.size	.L.str.129, 37

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"gimp-brush-get-aspect-ratio"
	.size	.L.str.130, 28

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Get the aspect ratio of a generated brush."
	.size	.L.str.131, 43

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"This procedure gets the aspect ratio of a generated brush. If called for any other type of brush, it does not succeed."
	.size	.L.str.132, 119

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"aspect-ratio"
	.size	.L.str.133, 13

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"aspect ratio"
	.size	.L.str.134, 13

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"The aspect ratio of the brush."
	.size	.L.str.135, 31

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"gimp-brush-set-aspect-ratio"
	.size	.L.str.136, 28

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Set the aspect ratio of a generated brush."
	.size	.L.str.137, 43

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"This procedure sets the aspect ratio for a generated brush. If called for any other type of brush, it does not succeed."
	.size	.L.str.138, 120

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"aspect-ratio-in"
	.size	.L.str.139, 16

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"aspect ratio in"
	.size	.L.str.140, 16

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"The desired brush aspect ratio"
	.size	.L.str.141, 31

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"aspect-ratio-out"
	.size	.L.str.142, 17

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"aspect ratio out"
	.size	.L.str.143, 17

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"The brush aspect ratio actually assigned"
	.size	.L.str.144, 41

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"gimp-brush-get-angle"
	.size	.L.str.145, 21

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Get the rotation angle of a generated brush."
	.size	.L.str.146, 45

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"This procedure gets the angle of rotation for a generated brush. If called for any other type of brush, it does not succeed."
	.size	.L.str.147, 125

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"angle"
	.size	.L.str.148, 6

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"The rotation angle of the brush."
	.size	.L.str.149, 33

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"gimp-brush-set-angle"
	.size	.L.str.150, 21

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Set the rotation angle of a generated brush."
	.size	.L.str.151, 45

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"This procedure sets the rotation angle for a generated brush. If called for any other type of brush, it does not succeed."
	.size	.L.str.152, 122

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"angle-in"
	.size	.L.str.153, 9

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"angle in"
	.size	.L.str.154, 9

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"The desired brush rotation angle"
	.size	.L.str.155, 33

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"angle-out"
	.size	.L.str.156, 10

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"angle out"
	.size	.L.str.157, 10

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"The brush rotation angle actually assigned"
	.size	.L.str.158, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
