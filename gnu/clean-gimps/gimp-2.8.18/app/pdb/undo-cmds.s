	.text
	.file	"undo-cmds.bc"
	.globl	register_undo_procs
	.align	16, 0x90
	.type	register_undo_procs,@function
register_undo_procs:                    # @register_undo_procs
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$image_undo_group_start_invoker, %rax
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
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_undo_group_end_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.10, %rdx
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
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_undo_is_enabled_invoker, %rdi
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
	movabsq	$.L.str.14, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rax
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-24(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.17, %rdx
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
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_undo_disable_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.23, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -144(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.17, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_undo_enable_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	movabsq	$.L.str.28, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.23, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -184(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.17, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.29, %rdx
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
	movabsq	$image_undo_freeze_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.16, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -224(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.17, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.34, %rax
	movabsq	$.L.str.35, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$image_undo_thaw_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rdx
	movabsq	$.L.str.38, %rcx
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.16, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -264(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.17, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_param_spec_image_id
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.39, %rax
	movabsq	$.L.str.40, %rdx
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-24(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	g_param_spec_boolean
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_undo_procs, .Lfunc_end0-register_undo_procs
	.cfi_endproc

	.align	16, 0x90
	.type	image_undo_group_start_invoker,@function
image_undo_group_start_invoker:         # @image_undo_group_start_invoker
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
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB1_5
# BB#2:                                 # %if.then.2
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_cleanup_undo_group_start
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.5
	movq	-72(%rbp), %rdi
	callq	gimp_plug_in_get_undo_desc
	movq	%rax, -80(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.7
	cmpl	$0, -52(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.9
	movl	$37, %esi
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB1_7:                                # %if.end.11
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.12
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
	.size	image_undo_group_start_invoker, .Lfunc_end1-image_undo_group_start_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_undo_group_end_invoker,@function
image_undo_group_end_invoker:           # @image_undo_group_end_invoker
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
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.2
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_cleanup_undo_group_end
	movl	%eax, -52(%rbp)
.LBB2_3:                                # %if.end
	cmpl	$0, -52(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.5
	movq	-64(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB2_5:                                # %if.end.7
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.8
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB2_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_9:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_undo_group_end_invoker, .Lfunc_end2-image_undo_group_end_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_undo_is_enabled_invoker,@function
image_undo_is_enabled_invoker:          # @image_undo_is_enabled_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rdi
	callq	gimp_image_undo_is_enabled
	movl	%eax, -76(%rbp)
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB3_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB3_7:                                # %if.end.8
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_undo_is_enabled_invoker, .Lfunc_end3-image_undo_is_enabled_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_undo_disable_invoker,@function
image_undo_disable_invoker:             # @image_undo_disable_invoker
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
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_4
# BB#1:                                 # %if.then
	cmpl	$0, -52(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.2
	movq	-72(%rbp), %rdi
	callq	gimp_image_undo_disable
	movl	%eax, -76(%rbp)
.LBB4_3:                                # %if.end
	jmp	.LBB4_4
.LBB4_4:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB4_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_7
.LBB4_7:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB4_9:                                # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	image_undo_disable_invoker, .Lfunc_end4-image_undo_disable_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_undo_enable_invoker,@function
image_undo_enable_invoker:              # @image_undo_enable_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_4
# BB#1:                                 # %if.then
	cmpl	$0, -52(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then.2
	movq	-72(%rbp), %rdi
	callq	gimp_image_undo_enable
	movl	%eax, -76(%rbp)
.LBB5_3:                                # %if.end
	jmp	.LBB5_4
.LBB5_4:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB5_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_7
.LBB5_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_7
.LBB5_7:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB5_9
# BB#8:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB5_9:                                # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	image_undo_enable_invoker, .Lfunc_end5-image_undo_enable_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_undo_freeze_invoker,@function
image_undo_freeze_invoker:              # @image_undo_freeze_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_4
# BB#1:                                 # %if.then
	cmpl	$0, -52(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then.2
	movq	-72(%rbp), %rdi
	callq	gimp_image_undo_freeze
	movl	%eax, -76(%rbp)
.LBB6_3:                                # %if.end
	jmp	.LBB6_4
.LBB6_4:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB6_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_7
.LBB6_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_7
.LBB6_7:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB6_9:                                # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	image_undo_freeze_invoker, .Lfunc_end6-image_undo_freeze_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	image_undo_thaw_invoker,@function
image_undo_thaw_invoker:                # @image_undo_thaw_invoker
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
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_value_get_image
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_4
# BB#1:                                 # %if.then
	cmpl	$0, -52(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then.2
	movq	-72(%rbp), %rdi
	callq	gimp_image_undo_thaw
	movl	%eax, -76(%rbp)
.LBB7_3:                                # %if.end
	jmp	.LBB7_4
.LBB7_4:                                # %if.end.4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB7_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB7_7
.LBB7_7:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_9
# BB#8:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_boolean
.LBB7_9:                                # %if.end.11
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	image_undo_thaw_invoker, .Lfunc_end7-image_undo_thaw_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-image-undo-group-start"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Starts a group undo."
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This function is used to start a group undo--necessary for logically combining two or more undo operations into a single operation. This call must be used in conjunction with a 'gimp-image-undo-group-end' call."
	.size	.L.str.2, 211

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
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The ID of the image in which to open an undo group"
	.size	.L.str.6, 51

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-image-undo-group-end"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Finish a group undo."
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"This function must be called once for each 'gimp-image-undo-group-start' call that is made."
	.size	.L.str.9, 92

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The ID of the image in which to close an undo group"
	.size	.L.str.10, 52

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-image-undo-is-enabled"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Check if the image's undo stack is enabled."
	.size	.L.str.12, 44

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"This procedure checks if the image's undo stack is currently enabled or disabled. This is useful when several plugins or scripts call each other and want to check if their caller has already used 'gimp-image-undo-disable' or 'gimp-image-undo-freeze'."
	.size	.L.str.13, 251

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Rapha\303\253l Quinet <raphael@gimp.org>"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Rapha\303\253l Quinet"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1999"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The image"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"enabled"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"TRUE if undo is enabled for this image"
	.size	.L.str.19, 39

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-image-undo-disable"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Disable the image's undo stack."
	.size	.L.str.21, 32

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"This procedure disables the image's undo stack, allowing subsequent operations to ignore their undo steps. This is generally called in conjunction with 'gimp-image-undo-enable' to temporarily disable an image undo stack. This is advantageous because saving undo steps can be time and memory intensive."
	.size	.L.str.22, 302

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"1995-1996"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"disabled"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"TRUE if the image undo has been disabled"
	.size	.L.str.25, 41

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-image-undo-enable"
	.size	.L.str.26, 23

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Enable the image's undo stack."
	.size	.L.str.27, 31

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"This procedure enables the image's undo stack, allowing subsequent operations to store their undo steps. This is generally called in conjunction with 'gimp-image-undo-disable' to temporarily disable an image undo stack."
	.size	.L.str.28, 220

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"TRUE if the image undo has been enabled"
	.size	.L.str.29, 40

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-image-undo-freeze"
	.size	.L.str.30, 23

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Freeze the image's undo stack."
	.size	.L.str.31, 31

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"This procedure freezes the image's undo stack, allowing subsequent operations to ignore their undo steps. This is generally called in conjunction with 'gimp-image-undo-thaw' to temporarily disable an image undo stack. This is advantageous because saving undo steps can be time and memory intensive. 'gimp-image-undo-freeze' / 'gimp-image-undo-thaw' and 'gimp-image-undo-disable' / 'gimp-image-undo-enable' differ in that the former does not free up all undo steps when undo is thawed, so is more suited to interactive in-situ previews. It is important in this case that the image is back to the same state it was frozen in before thawing, else 'undo' behaviour is undefined."
	.size	.L.str.32, 675

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Adam D. Moss"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"frozen"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"TRUE if the image undo has been frozen"
	.size	.L.str.35, 39

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-image-undo-thaw"
	.size	.L.str.36, 21

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Thaw the image's undo stack."
	.size	.L.str.37, 29

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"This procedure thaws the image's undo stack, allowing subsequent operations to store their undo steps. This is generally called in conjunction with 'gimp-image-undo-freeze' to temporarily freeze an image undo stack. 'gimp-image-undo-thaw' does NOT free the undo stack as 'gimp-image-undo-enable' does, so is suited for situations where one wishes to leave the undo stack in the same state in which one found it despite non-destructively playing with the image in the meantime. An example would be in-situ plugin previews. Balancing freezes and thaws and ensuring image consistancy is the responsibility of the caller."
	.size	.L.str.38, 618

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"thawed"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"TRUE if the image undo has been thawed"
	.size	.L.str.40, 39


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
