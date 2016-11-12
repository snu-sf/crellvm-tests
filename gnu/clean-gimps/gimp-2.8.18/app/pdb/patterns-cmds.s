	.text
	.file	"patterns-cmds.bc"
	.globl	register_patterns_procs
	.align	16, 0x90
	.type	register_patterns_procs,@function
register_patterns_procs:                # @register_patterns_procs
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
	subq	$344, %rsp              # imm = 0x158
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$patterns_refresh_invoker, %rax
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
	movabsq	$patterns_get_list_invoker, %rdi
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
	movabsq	$patterns_get_pattern_invoker, %rdi
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
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.24, %rdx
	xorl	%r10d, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -156(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -172(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.28, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -188(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$patterns_get_pattern_data_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rax
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.31, %rdi
	movq	-24(%rbp), %r11
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	-216(%rbp), %r9         # 8-byte Reload
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-208(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.32, %rdx
	xorl	%r10d, %r10d
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-24(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -236(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.33, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$.L.str.24, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-24(%rbp), %r11
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	-240(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -244(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r11, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %rdx
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
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.28, %rdx
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
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movl	%r10d, -308(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.38, %rax
	movabsq	$.L.str.39, %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -328(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	gimp_param_spec_int32
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rdx
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_int8_array
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_patterns_procs, .Lfunc_end0-register_patterns_procs
	.cfi_endproc

	.align	16, 0x90
	.type	patterns_refresh_invoker,@function
patterns_refresh_invoker:               # @patterns_refresh_invoker
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
	movq	480(%rcx), %rdi
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
	.size	patterns_refresh_invoker, .Lfunc_end1-patterns_refresh_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	patterns_get_list_invoker,@function
patterns_get_list_invoker:              # @patterns_get_list_invoker
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
	movq	480(%rax), %rdi
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
	.size	patterns_get_list_invoker, .Lfunc_end2-patterns_get_list_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	patterns_get_pattern_invoker,@function
patterns_get_pattern_invoker:           # @patterns_get_pattern_invoker
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
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_pattern
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movl	$0, -52(%rbp)
.LBB3_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -100(%rbp)        # 4-byte Spill
	je	.LBB3_5
# BB#4:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_6:                                # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.9
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
.LBB3_8:                                # %if.end.14
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	patterns_get_pattern_invoker, .Lfunc_end3-patterns_get_pattern_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	patterns_get_pattern_data_invoker,@function
patterns_get_pattern_data_invoker:      # @patterns_get_pattern_data_invoker
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
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_9
# BB#1:                                 # %if.then
	cmpq	$0, -72(%rbp)
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB4_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_pdb_get_pattern
	movq	%rax, -112(%rbp)
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_pattern
	movq	%rax, -112(%rbp)
.LBB4_5:                                # %if.end
	cmpq	$0, -112(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.8
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	imull	4(%rax), %ecx
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	imull	(%rax), %ecx
	movl	%ecx, -96(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_data
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -104(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.25
	movl	$0, -52(%rbp)
.LBB4_8:                                # %if.end.26
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.27
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	je	.LBB4_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB4_12
.LBB4_12:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.31
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_value_take_string
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$72, %rax
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$96, %rax
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$120, %rax
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$144, %rax
	movq	-104(%rbp), %rsi
	movslq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_value_take_int8array
.LBB4_14:                               # %if.end.44
	movq	-64(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	patterns_get_pattern_data_invoker, .Lfunc_end4-patterns_get_pattern_data_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-patterns-refresh"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Refresh current patterns. This function always succeeds."
	.size	.L.str.1, 57

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure retrieves all patterns currently in the user's pattern path and updates all pattern dialogs accordingly."
	.size	.L.str.2, 120

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
	.asciz	"gimp-patterns-get-list"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Retrieve a complete listing of the available patterns."
	.size	.L.str.7, 55

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This procedure returns a complete listing of available GIMP patterns. Each name returned can be used as input to the 'gimp-context-set-pattern'."
	.size	.L.str.8, 145

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1995-1996"
	.size	.L.str.10, 10

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
	.asciz	"num-patterns"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"num patterns"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The number of patterns in the pattern list"
	.size	.L.str.15, 43

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"pattern-list"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pattern list"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The list of pattern names"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-patterns-get-pattern"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Deprecated: Use 'gimp-context-get-pattern' instead."
	.size	.L.str.20, 52

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.zero	1
	.size	.L.str.21, 1

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-context-get-pattern"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"name"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"The pattern name"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"width"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The pattern width"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"height"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"The pattern height"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-patterns-get-pattern-data"
	.size	.L.str.29, 31

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Deprecated: Use 'gimp-pattern-get-pixels' instead."
	.size	.L.str.30, 51

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-pattern-get-pixels"
	.size	.L.str.31, 24

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The pattern name (\"\" means currently active pattern)"
	.size	.L.str.32, 53

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"actual-name"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"actual name"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"mask-bpp"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"mask bpp"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Pattern bytes per pixel"
	.size	.L.str.37, 24

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"length"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Length of pattern mask data"
	.size	.L.str.39, 28

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"mask-data"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"mask data"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"The pattern mask data"
	.size	.L.str.42, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
