	.text
	.file	"gradients-cmds.bc"
	.globl	register_gradients_procs
	.align	16, 0x90
	.type	register_gradients_procs,@function
register_gradients_procs:               # @register_gradients_procs
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
	subq	$392, %rsp              # imm = 0x188
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$gradients_refresh_invoker, %rax
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
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradients_get_list_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-24(%rbp), %r9
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	-88(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string_array
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradients_sample_uniform_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rdi
	movq	-24(%rbp), %r11
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	movl	$2, %r10d
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -168(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.31, %rdi
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.33, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_float_array
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradients_sample_custom_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.34, %rsi
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.36, %rdi
	movq	-24(%rbp), %r11
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	xorl	%r10d, %r10d
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movl	%ebx, -220(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.37, %rax
	movabsq	$.L.str.38, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_float_array
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -248(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.31, %rdi
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.33, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_float_array
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$gradients_get_gradient_data_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rdi
	movq	-24(%rbp), %r11
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-288(%rbp), %r8         # 8-byte Reload
	movq	-288(%rbp), %r9         # 8-byte Reload
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-280(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.40, %rax
	movabsq	$.L.str.41, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -308(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movl	$1, %ecx
	movl	$10000, %r8d            # imm = 0x2710
	movl	$16611, %r9d            # imm = 0x40E3
	movq	-24(%rbp), %rax
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	-312(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -316(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$16611, (%rsp)          # imm = 0x40E3
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int32
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.45, %rdi
	movabsq	$.L.str.46, %rsi
	movabsq	$.L.str.47, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r11
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -344(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.48, %rax
	movabsq	$.L.str.49, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -376(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.50, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_float_array
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_gradients_procs, .Lfunc_end0-register_gradients_procs
	.cfi_endproc

	.align	16, 0x90
	.type	gradients_refresh_invoker,@function
gradients_refresh_invoker:              # @gradients_refresh_invoker
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
	movq	488(%rcx), %rdi
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
	.size	gradients_refresh_invoker, .Lfunc_end1-gradients_refresh_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradients_get_list_invoker,@function
gradients_get_list_invoker:             # @gradients_get_list_invoker
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
	movq	488(%rax), %rdi
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
	.size	gradients_get_list_invoker, .Lfunc_end2-gradients_get_list_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradients_sample_uniform_invoker,@function
gradients_sample_uniform_invoker:       # @gradients_sample_uniform_invoker
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
	subq	$192, %rsp
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
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	$0, -104(%rbp)
	movsd	%xmm1, -112(%rbp)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	-68(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -76(%rbp)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -88(%rbp)
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_gradient
	movq	%rax, -96(%rbp)
.LBB3_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB3_2 Depth=1
	leaq	-152(%rbp), %r8
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-72(%rbp), %ecx
	callq	gimp_gradient_get_color_at
	movq	%rax, -104(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -160(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -160(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -160(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -160(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB3_2
.LBB3_4:                                # %while.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	je	.LBB3_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_8:                                # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.15
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
	callq	gimp_value_take_floatarray
.LBB3_10:                               # %if.end.21
	movq	-64(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gradients_sample_uniform_invoker, .Lfunc_end3-gradients_sample_uniform_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	gradients_sample_custom_invoker,@function
gradients_sample_custom_invoker:        # @gradients_sample_custom_invoker
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_int
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	gimp_value_get_floatarray
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movl	%eax, -84(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_5
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	$0, -112(%rbp)
	movl	-68(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -88(%rbp)
	movslq	-88(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -96(%rbp)
	movq	%rax, -152(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_gradient
	movq	%rax, -104(%rbp)
.LBB4_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB4_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	leaq	-144(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-84(%rbp), %ecx
	callq	gimp_gradient_get_color_at
	movq	%rax, -112(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -152(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -152(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -152(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -152(%rbp)
	movsd	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB4_2
.LBB4_4:                                # %while.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	je	.LBB4_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_8:                                # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.18
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	-96(%rbp), %rsi
	movslq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_floatarray
.LBB4_10:                               # %if.end.24
	movq	-64(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gradients_sample_custom_invoker, .Lfunc_end4-gradients_sample_custom_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradients_get_gradient_data_invoker,@function
gradients_get_gradient_data_invoker:    # @gradients_get_gradient_data_invoker
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movq	$0, -104(%rbp)
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	g_value_get_boolean
	movl	%eax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_15
# BB#1:                                 # %if.then
	cmpl	$1, -76(%rbp)
	jl	.LBB5_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$10000, -76(%rbp)       # imm = 0x2710
	jle	.LBB5_4
.LBB5_3:                                # %if.then.8
	movl	$40, -76(%rbp)
.LBB5_4:                                # %if.end
	cmpq	$0, -72(%rbp)
	je	.LBB5_7
# BB#5:                                 # %land.lhs.true
	movq	-72(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB5_7
# BB#6:                                 # %if.then.12
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rcx
	callq	gimp_pdb_get_gradient
	movq	%rax, -112(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_gradient
	movq	%rax, -112(%rbp)
.LBB5_8:                                # %if.end.15
	cmpq	$0, -112(%rbp)
	je	.LBB5_13
# BB#9:                                 # %if.then.17
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	$0, -120(%rbp)
	movsd	%xmm1, -136(%rbp)
	movl	-76(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movl	$8, %edx
	movl	%edx, %esi
	movq	%rax, -88(%rbp)
	movl	-76(%rbp), %edx
	shll	$2, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -104(%rbp)
	movl	-76(%rbp), %edx
	shll	$2, %edx
	movl	%edx, -92(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB5_10:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB5_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB5_10 Depth=1
	leaq	-176(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-80(%rbp), %ecx
	callq	gimp_gradient_get_color_at
	movq	%rax, -120(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -128(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -128(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -128(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-128(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -128(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-136(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	jmp	.LBB5_10
.LBB5_12:                               # %while.end
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.28
	movl	$0, -52(%rbp)
.LBB5_14:                               # %if.end.29
	jmp	.LBB5_15
.LBB5_15:                               # %if.end.30
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movl	%esi, -188(%rbp)        # 4-byte Spill
	je	.LBB5_17
# BB#16:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB5_18
.LBB5_17:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB5_18
.LBB5_18:                               # %cond.end
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.34
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movq	-104(%rbp), %rsi
	movslq	-92(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_floatarray
.LBB5_20:                               # %if.end.42
	movq	-64(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gradients_get_gradient_data_invoker, .Lfunc_end5-gradients_get_gradient_data_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-gradients-refresh"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Refresh current gradients. This function always succeeds."
	.size	.L.str.1, 58

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure retrieves all gradients currently in the user's gradient path and updates the gradient dialogs accordingly."
	.size	.L.str.2, 123

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
	.asciz	"2002"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-gradients-get-list"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Retrieve the list of loaded gradients."
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This procedure returns a list of the gradients that are currently loaded. You can later use the 'gimp-context-set-gradient' function to set the active gradient."
	.size	.L.str.8, 161

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Federico Mena Quintero"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1997"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"filter"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"An optional regular expression used to filter the list"
	.size	.L.str.12, 55

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"num-gradients"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"num gradients"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The number of loaded gradients"
	.size	.L.str.15, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gradient-list"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gradient list"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The list of gradient names"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-gradients-sample-uniform"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Deprecated: Use 'gimp-gradient-get-uniform-samples' instead."
	.size	.L.str.20, 61

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.zero	1
	.size	.L.str.21, 1

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-gradient-get-uniform-samples"
	.size	.L.str.22, 34

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"num-samples"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"num samples"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"The number of samples to take"
	.size	.L.str.25, 30

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"reverse"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Use the reverse gradient"
	.size	.L.str.27, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"array-length"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"array length"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Length of the color_samples array (4 * num_samples)"
	.size	.L.str.30, 52

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"color-samples"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"color samples"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Color samples: { R1, G1, B1, A1, ..., Rn, Gn, Bn, An }"
	.size	.L.str.33, 55

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-gradients-sample-custom"
	.size	.L.str.34, 29

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Deprecated: Use 'gimp-gradient-get-custom-samples' instead."
	.size	.L.str.35, 60

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-gradient-get-custom-samples"
	.size	.L.str.36, 33

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"positions"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"The list of positions to sample along the gradient"
	.size	.L.str.38, 51

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-gradients-get-gradient-data"
	.size	.L.str.39, 33

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"name"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"The gradient name (\"\" means current active gradient)"
	.size	.L.str.41, 53

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"sample-size"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"sample size"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Size of the sample to return when the gradient is changed"
	.size	.L.str.44, 58

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"actual-name"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"actual name"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"The gradient name"
	.size	.L.str.47, 18

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"width"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"The gradient sample width (r,g,b,a)"
	.size	.L.str.49, 36

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"grad-data"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"grad data"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"The gradient sample data"
	.size	.L.str.52, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
