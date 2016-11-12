	.text
	.file	"buffer-cmds.bc"
	.globl	register_buffer_procs
	.align	16, 0x90
	.type	register_buffer_procs,@function
register_buffer_procs:                  # @register_buffer_procs
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
	movabsq	$buffers_get_list_invoker, %rax
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
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.7, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-32(%rbp), %rax
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	movl	$227, %ecx
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$buffer_rename_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r11
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	movl	-136(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r11
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -168(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$buffer_delete_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	movabsq	$.L.str.28, %rcx
	movabsq	$.L.str.29, %rax
	movabsq	$.L.str.5, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-32(%rbp), %r14
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -208(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movl	%ebx, -228(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$buffer_get_width_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
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
	movq	-32(%rbp), %r11
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movl	%ebx, -268(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.34, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -284(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$buffer_get_height_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rdx
	movabsq	$.L.str.37, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r11
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movl	%ebx, -324(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.38, %rax
	movabsq	$.L.str.39, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -340(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$buffer_get_bytes_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
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
	movq	-32(%rbp), %r11
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movl	%ebx, -380(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.43, %rax
	movabsq	$.L.str.44, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-32(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -396(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$buffer_get_image_type_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	movabsq	$.L.str.47, %rcx
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
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movl	%ebx, -436(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-32(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gimp_image_base_type_get_type
	movabsq	$.L.str.48, %rdi
	movabsq	$.L.str.49, %rsi
	movabsq	$.L.str.50, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-448(%rbp), %rdi        # 8-byte Reload
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
	.size	register_buffer_procs, .Lfunc_end0-register_buffer_procs
	.cfi_endproc

	.align	16, 0x90
	.type	buffers_get_list_invoker,@function
buffers_get_list_invoker:               # @buffers_get_list_invoker
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
	movl	$0, -76(%rbp)
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	-76(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	448(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_container_get_filtered_name_array
	movq	%rax, -88(%rbp)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB1_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_5:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.5
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
.LBB1_7:                                # %if.end.10
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	buffers_get_list_invoker, .Lfunc_end1-buffers_get_list_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_rename_invoker,@function
buffer_rename_invoker:                  # @buffer_rename_invoker
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
	je	.LBB2_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_buffer
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB2_3
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
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.11
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB2_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_8:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.15
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
.LBB2_10:                               # %if.end.18
	movq	-64(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	buffer_rename_invoker, .Lfunc_end2-buffer_rename_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_delete_invoker,@function
buffer_delete_invoker:                  # @buffer_delete_invoker
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
	cmpl	$0, -52(%rbp)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_buffer
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	448(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -52(%rbp)
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB3_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	buffer_delete_invoker, .Lfunc_end3-buffer_delete_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_get_width_invoker,@function
buffer_get_width_invoker:               # @buffer_get_width_invoker
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
	je	.LBB4_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_buffer
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rdi
	callq	gimp_buffer_get_width
	movl	%eax, -76(%rbp)
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.5
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
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB4_10:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	buffer_get_width_invoker, .Lfunc_end4-buffer_get_width_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_get_height_invoker,@function
buffer_get_height_invoker:              # @buffer_get_height_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_buffer
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rdi
	callq	gimp_buffer_get_height
	movl	%eax, -76(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB5_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB5_10:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	buffer_get_height_invoker, .Lfunc_end5-buffer_get_height_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_get_bytes_invoker,@function
buffer_get_bytes_invoker:               # @buffer_get_bytes_invoker
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
	je	.LBB6_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_buffer
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rdi
	callq	gimp_buffer_get_bytes
	movl	%eax, -76(%rbp)
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB6_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB6_10:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	buffer_get_bytes_invoker, .Lfunc_end6-buffer_get_bytes_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_get_image_type_invoker,@function
buffer_get_image_type_invoker:          # @buffer_get_image_type_invoker
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
	je	.LBB7_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_buffer
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then.3
	movq	-88(%rbp), %rdi
	callq	gimp_buffer_get_image_type
	movl	%eax, -76(%rbp)
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB7_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_8
.LBB7_8:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
.LBB7_10:                               # %if.end.12
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	buffer_get_image_type_invoker, .Lfunc_end7-buffer_get_image_type_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-buffers-get-list"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Retrieve a complete listing of the available buffers."
	.size	.L.str.1, 54

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure returns a complete listing of available named buffers."
	.size	.L.str.2, 70

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
	.asciz	"2005"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"filter"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"An optional regular expression used to filter the list"
	.size	.L.str.7, 55

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"num-buffers"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"num buffers"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The number of buffers"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"buffer-list"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"buffer list"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The list of buffer names"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-buffer-rename"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Renames a named buffer."
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"This procedure renames a named buffer."
	.size	.L.str.16, 39

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"buffer-name"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"buffer name"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"The buffer name"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"new-name"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"new name"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The buffer's new name"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"real-name"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"real name"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"The real name given to the buffer"
	.size	.L.str.25, 34

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-buffer-delete"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Deletes a named buffer."
	.size	.L.str.27, 24

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"This procedure deletes a named buffer."
	.size	.L.str.28, 39

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"David Gowers <neota@softhome.net>"
	.size	.L.str.29, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-buffer-get-width"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Retrieves the specified buffer's width."
	.size	.L.str.31, 40

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"This procedure retrieves the specified named buffer's width."
	.size	.L.str.32, 61

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"width"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"The buffer width"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-buffer-get-height"
	.size	.L.str.35, 23

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Retrieves the specified buffer's height."
	.size	.L.str.36, 41

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"This procedure retrieves the specified named buffer's height."
	.size	.L.str.37, 62

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"height"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"The buffer height"
	.size	.L.str.39, 18

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-buffer-get-bytes"
	.size	.L.str.40, 22

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Retrieves the specified buffer's bytes."
	.size	.L.str.41, 40

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"This procedure retrieves the specified named buffer's bytes."
	.size	.L.str.42, 61

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"bytes"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"The buffer bpp"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-buffer-get-image-type"
	.size	.L.str.45, 27

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Retrieves the specified buffer's image type."
	.size	.L.str.46, 45

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"This procedure retrieves the specified named buffer's image type."
	.size	.L.str.47, 66

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"image-type"
	.size	.L.str.48, 11

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"image type"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"The buffer image type"
	.size	.L.str.50, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
