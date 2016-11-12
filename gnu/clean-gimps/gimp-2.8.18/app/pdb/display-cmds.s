	.text
	.file	"display-cmds.bc"
	.globl	register_display_procs
	.align	16, 0x90
	.type	register_display_procs,@function
register_display_procs:                 # @register_display_procs
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
	subq	$248, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$display_is_valid_invoker, %rax
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
	movl	$16611, %r9d            # imm = 0x40E3
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_display_id
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$display_new_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -80(%rbp)         # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.16, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.17, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_display_id
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$display_delete_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -120(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_display_id
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$display_get_window_handle_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	movabsq	$.L.str.24, %rcx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.25, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-24(%rbp), %r11
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.6, %rax
	movabsq	$.L.str.26, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_display_id
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.28, %rdx
	movl	$2147483648, %ecx       # imm = 0x80000000
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$227, %r10d
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movl	$227, (%rsp)
	movl	%r10d, -164(%rbp)       # 4-byte Spill
	callq	gimp_param_spec_int32
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$displays_flush_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, -192(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$displays_reconnect_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.33, %rdx
	movabsq	$.L.str.34, %rcx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movq	-24(%rbp), %r9
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r8, -216(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_image_id
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_image_id
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_display_procs, .Lfunc_end0-register_display_procs
	.cfi_endproc

	.align	16, 0x90
	.type	display_is_valid_invoker,@function
display_is_valid_invoker:               # @display_is_valid_invoker
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -68(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_display
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	setne	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %r10d
	movl	%r10d, -68(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	display_is_valid_invoker, .Lfunc_end1-display_is_valid_invoker
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	display_new_invoker,@function
display_new_invoker:                    # @display_new_invoker
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
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_7
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_flush
	xorl	%edx, %edx
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_create_display
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB2_5
# BB#2:                                 # %if.then.3
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_display_count
	cmpl	$1, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.5
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB2_4:                                # %if.end
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	movl	$0, -52(%rbp)
.LBB2_6:                                # %if.end.6
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB2_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_10
.LBB2_10:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.11
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_display
.LBB2_12:                               # %if.end.14
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	display_new_invoker, .Lfunc_end2-display_new_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	display_delete_invoker,@function
display_delete_invoker:                 # @display_delete_invoker
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
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_display
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_delete_display
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	je	.LBB3_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	display_delete_invoker, .Lfunc_end3-display_delete_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	display_get_window_handle_invoker,@function
display_get_window_handle_invoker:      # @display_get_window_handle_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_display
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_get_display_window_id
	movl	%eax, -76(%rbp)
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB4_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_int
.LBB4_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	display_get_window_handle_invoker, .Lfunc_end4-display_get_window_handle_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	displays_flush_invoker,@function
displays_flush_invoker:                 # @displays_flush_invoker
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
	subq	$48, %rsp
	movabsq	$gimp_image_flush, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rdi
	movq	%rax, %rsi
	movq	%r11, %rdx
	callq	gimp_container_foreach
	movl	$1, %esi
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_procedure_get_return_values
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	displays_flush_invoker, .Lfunc_end5-displays_flush_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	displays_reconnect_invoker,@function
displays_reconnect_invoker:             # @displays_reconnect_invoker
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_9
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	cmpq	-72(%rbp), %rdx
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB6_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_display_count
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -73(%rbp)          # 1-byte Spill
	jle	.LBB6_4
# BB#3:                                 # %land.rhs
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_display_count
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB6_4:                                # %land.end
	movb	-73(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_8
# BB#5:                                 # %if.then.9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_reconnect_displays
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_display_count
	cmpl	$0, %eax
	jle	.LBB6_7
# BB#6:                                 # %if.then.12
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.13
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.14
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB6_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_12:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	displays_reconnect_invoker, .Lfunc_end6-displays_reconnect_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-display-is-valid"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Returns TRUE if the display is valid."
	.size	.L.str.1, 38

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure checks if the given display ID is valid and refers to an existing display."
	.size	.L.str.2, 90

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Sven Neumann"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2007"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"display"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The display to check"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"valid"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Whether the display ID is valid"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-display-new"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Create a new display for the specified image."
	.size	.L.str.11, 46

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Creates a new display for the specified image. If the image already has a display, another is added. Multiple displays are handled transparently by GIMP. The newly created display is returned and can be subsequently destroyed with a call to 'gimp-display-delete'. This procedure only makes sense for use with the GIMP UI, and will result in an execution error if called when GIMP has no UI."
	.size	.L.str.12, 391

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1995-1996"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"image"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"The image"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The new display"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-display-delete"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Delete the specified display."
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"This procedure removes the specified display. If this is the last remaining display for the underlying image, then the image is deleted also. Note that the display is closed no matter if the image is dirty or not. Better save the image before calling this procedure."
	.size	.L.str.20, 267

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The display to delete"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-display-get-window-handle"
	.size	.L.str.22, 31

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Get a handle to the native window for an image display."
	.size	.L.str.23, 56

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"This procedure returns a handle to the native window for a given image display. For example in the X backend of GDK, a native window handle is an Xlib XID. A value of 0 is returned for an invalid display or if this function is unimplemented for the windowing system that is being used."
	.size	.L.str.24, 286

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"2005"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The display to get the window handle from"
	.size	.L.str.26, 42

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"window"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"The native window handle or 0"
	.size	.L.str.28, 30

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-displays-flush"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Flush all internal changes to the user interface"
	.size	.L.str.30, 49

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"This procedure takes no arguments and returns nothing except a success status. Its purpose is to flush all pending updates of image manipulations to the user interface. It should be called whenever appropriate."
	.size	.L.str.31, 211

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-displays-reconnect"
	.size	.L.str.32, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Reconnect displays from one image to another image."
	.size	.L.str.33, 52

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"This procedure connects all displays of the old_image to the new_image. If the old_image has no display or new_image already has a display the reconnect is not performed and the procedure returns without success. You should rarely need to use this function."
	.size	.L.str.34, 258

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"old-image"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"old image"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The old image (must have at least one display)"
	.size	.L.str.37, 47

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"new-image"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"new image"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"The new image (must not have a display)"
	.size	.L.str.40, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
