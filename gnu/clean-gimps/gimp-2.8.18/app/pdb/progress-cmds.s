	.text
	.file	"progress-cmds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI0_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	register_progress_procs
	.align	16, 0x90
	.type	register_progress_procs,@function
register_progress_procs:                # @register_progress_procs
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
	subq	$352, %rsp              # imm = 0x160
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$progress_init_invoker, %rax
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
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-32(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.8, %rdx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_display_id
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$progress_update_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -112(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %rdx
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_double
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$progress_pulse_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$progress_set_text_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -172(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$progress_end_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.25, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.26, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$progress_get_window_handle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.30, %r8
	movabsq	$.L.str.31, %r9
	movabsq	$.L.str.32, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.34, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r11d
	movq	-32(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r11d, -220(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$progress_install_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rdx
	movabsq	$.L.str.37, %rcx
	movabsq	$.L.str.30, %r8
	movabsq	$.L.str.31, %r9
	movabsq	$.L.str.32, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%ebx, -260(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$progress_uninstall_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rdx
	movabsq	$.L.str.43, %rcx
	movabsq	$.L.str.30, %r8
	movabsq	$.L.str.31, %r9
	movabsq	$.L.str.32, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.44, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%ebx, -300(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$progress_cancel_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	movabsq	$.L.str.47, %rcx
	movabsq	$.L.str.30, %r8
	movabsq	$.L.str.31, %r9
	movabsq	$.L.str.32, %rax
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-32(%rbp), %r10
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.44, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movl	%ebx, -340(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_progress_procs, .Lfunc_end0-register_progress_procs
	.cfi_endproc

	.align	16, 0x90
	.type	progress_init_invoker,@function
progress_init_invoker:                  # @progress_init_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_display
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB1_6
# BB#2:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB1_6
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB1_5
# BB#4:                                 # %if.then.8
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_plug_in_progress_start
.LBB1_5:                                # %if.end
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
	movl	$0, -52(%rbp)
.LBB1_7:                                # %if.end.9
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.10
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB1_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_11:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	progress_init_invoker, .Lfunc_end1-progress_init_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	progress_update_invoker,@function
progress_update_invoker:                # @progress_update_invoker
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_double
	movsd	%xmm0, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB2_6
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB2_6
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB2_5
# BB#4:                                 # %if.then.5
	movq	-72(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_plug_in_progress_set_value
.LBB2_5:                                # %if.end
	jmp	.LBB2_7
.LBB2_6:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_7:                                # %if.end.6
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB2_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_11
.LBB2_11:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	progress_update_invoker, .Lfunc_end2-progress_update_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	progress_pulse_invoker,@function
progress_pulse_invoker:                 # @progress_pulse_invoker
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB3_5
# BB#1:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB3_5
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	movq	-64(%rbp), %rdi
	callq	gimp_plug_in_progress_pulse
.LBB3_4:                                # %if.end
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB3_6:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB3_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_9
.LBB3_9:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	progress_pulse_invoker, .Lfunc_end3-progress_pulse_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	progress_set_text_invoker,@function
progress_set_text_invoker:              # @progress_set_text_invoker
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
	subq	$96, %rsp
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
	je	.LBB4_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB4_6
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB4_6
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB4_5
# BB#4:                                 # %if.then.5
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_progress_set_text
.LBB4_5:                                # %if.end
	jmp	.LBB4_7
.LBB4_6:                                # %if.else
	movl	$0, -52(%rbp)
.LBB4_7:                                # %if.end.6
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB4_10
# BB#9:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_11
.LBB4_11:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	progress_set_text_invoker, .Lfunc_end4-progress_set_text_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	progress_end_invoker,@function
progress_end_invoker:                   # @progress_end_invoker
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_plug_in_progress_end
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$0, -52(%rbp)
.LBB5_4:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB5_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_7
.LBB5_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_7
.LBB5_7:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	progress_end_invoker, .Lfunc_end5-progress_end_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	progress_get_window_handle_invoker,@function
progress_get_window_handle_invoker:     # @progress_get_window_handle_invoker
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
	movl	$0, -68(%rbp)
	movq	-16(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB6_5
# BB#1:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB6_5
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	movq	-80(%rbp), %rdi
	callq	gimp_plug_in_progress_get_window_id
	movl	%eax, -68(%rbp)
.LBB6_4:                                # %if.end
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB6_6:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB6_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_9
.LBB6_9:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_11
# BB#10:                                # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB6_11:                               # %if.end.9
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	progress_get_window_handle_invoker, .Lfunc_end6-progress_get_window_handle_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	progress_install_invoker,@function
progress_install_invoker:               # @progress_install_invoker
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
	subq	$96, %rsp
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
	je	.LBB7_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB7_4
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB7_4
# BB#3:                                 # %if.then.3
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_progress_install
	movl	%eax, -52(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movl	$0, -52(%rbp)
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB7_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_9
.LBB7_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_9
.LBB7_9:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	progress_install_invoker, .Lfunc_end7-progress_install_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	progress_uninstall_invoker,@function
progress_uninstall_invoker:             # @progress_uninstall_invoker
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
	subq	$96, %rsp
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
	je	.LBB8_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB8_4
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_progress_uninstall
	movl	%eax, -52(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movl	$0, -52(%rbp)
.LBB8_5:                                # %if.end
	jmp	.LBB8_6
.LBB8_6:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB8_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB8_9
.LBB8_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB8_9
.LBB8_9:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	progress_uninstall_invoker, .Lfunc_end8-progress_uninstall_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	progress_cancel_invoker,@function
progress_cancel_invoker:                # @progress_cancel_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
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
	je	.LBB9_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB9_4
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB9_4
# BB#3:                                 # %if.then.3
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_progress_cancel
	movl	%eax, -52(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	movl	$0, -52(%rbp)
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %if.end.5
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB9_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB9_9
.LBB9_9:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	progress_cancel_invoker, .Lfunc_end9-progress_cancel_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-progress-init"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Initializes the progress bar for the current plug-in."
	.size	.L.str.1, 54

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Initializes the progress bar for the current plug-in. It is only valid to call this procedure from a plug-in."
	.size	.L.str.2, 110

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
	.asciz	"message"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Message to use in the progress dialog"
	.size	.L.str.6, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gdisplay"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GimpDisplay to update progressbar in, or -1 for a seperate window"
	.size	.L.str.8, 66

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-progress-update"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Updates the progress bar for the current plug-in."
	.size	.L.str.10, 50

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Updates the progress bar for the current plug-in. It is only valid to call this procedure from a plug-in."
	.size	.L.str.11, 106

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"percentage"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Percentage of progress completed which must be between 0.0 and 1.0"
	.size	.L.str.13, 67

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-progress-pulse"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Pulses the progress bar for the current plug-in."
	.size	.L.str.15, 49

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Updates the progress bar for the current plug-in. It is only valid to call this procedure from a plug-in. Use this function instead of 'gimp-progress-update' if you cannot tell how much progress has been made. This usually causes the the progress bar to enter \"activity mode\", where a block bounces back and forth."
	.size	.L.str.16, 315

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.17, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Sven Neumann"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"2005"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-progress-set-text"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Changes the text in the progress bar for the current plug-in."
	.size	.L.str.21, 62

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"This function allows to change the text in the progress bar for the current plug-in. Unlike 'gimp-progress-init' it does not change the displayed value."
	.size	.L.str.22, 153

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-progress-end"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Ends the progress bar for the current plug-in."
	.size	.L.str.24, 47

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Ends the progress display for the current plug-in. Most plug-ins don't need to call this, they just exit when the work is done. It is only valid to call this procedure from a plug-in."
	.size	.L.str.25, 184

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"2007"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-progress-get-window-handle"
	.size	.L.str.27, 32

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Returns the native window ID of the toplevel window this plug-in's progress is displayed in."
	.size	.L.str.28, 93

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"This function returns the native window ID of the toplevel window this plug-in's progress is displayed in."
	.size	.L.str.29, 107

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Michael Natterer <mitch@gimp.org>"
	.size	.L.str.30, 34

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Michael Natterer"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"2004"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"window"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"The progress bar's toplevel window"
	.size	.L.str.34, 35

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-progress-install"
	.size	.L.str.35, 22

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Installs a progress callback for the current plug-in."
	.size	.L.str.36, 54

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"This function installs a temporary PDB procedure which will handle all progress calls made by this plug-in and any procedure it calls. Calling this function multiple times simply replaces the old progress callbacks."
	.size	.L.str.37, 216

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"progress-callback"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"progress callback"
	.size	.L.str.39, 18

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"The callback PDB proc to call"
	.size	.L.str.40, 30

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-progress-uninstall"
	.size	.L.str.41, 24

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Uninstalls the progress callback for the current plug-in."
	.size	.L.str.42, 58

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"This function uninstalls any progress callback installed with 'gimp-progress-install' before."
	.size	.L.str.43, 94

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"The name of the callback registered for this progress"
	.size	.L.str.44, 54

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-progress-cancel"
	.size	.L.str.45, 21

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Cancels a running progress."
	.size	.L.str.46, 28

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"This function cancels the currently running progress."
	.size	.L.str.47, 54


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
