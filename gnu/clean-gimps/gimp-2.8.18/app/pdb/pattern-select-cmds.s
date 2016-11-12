	.text
	.file	"pattern-select-cmds.bc"
	.globl	register_pattern_select_procs
	.align	16, 0x90
	.type	register_pattern_select_procs,@function
register_pattern_select_procs:          # @register_pattern_select_procs
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
	subq	$256, %rsp              # imm = 0x100
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$patterns_popup_invoker, %rax
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
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movl	-80(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movl	$227, %r9d
	movq	-32(%rbp), %r10
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -112(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_string
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$patterns_close_popup_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -152(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
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
	movabsq	$patterns_set_popup_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	-200(%rbp), %r9         # 8-byte Reload
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -208(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	$227, %ebx
	movq	-32(%rbp), %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movl	%ebx, -228(%rbp)        # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movl	$227, %r8d
	movq	-32(%rbp), %r10
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	movl	-232(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movq	%r10, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
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
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_pattern_select_procs, .Lfunc_end0-register_pattern_select_procs
	.cfi_endproc

	.align	16, 0x90
	.type	patterns_popup_invoker,@function
patterns_popup_invoker:                 # @patterns_popup_invoker
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
	subq	$160, %rsp
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
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -80(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB1_4
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	je	.LBB1_4
# BB#3:                                 # %lor.lhs.false.10
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	%rax, %rcx
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_pdb_dialog_new
	cmpl	$0, %eax
	jne	.LBB1_5
.LBB1_4:                                # %if.then.14
	movl	$0, -52(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.15
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%esi, -132(%rbp)        # 4-byte Spill
	je	.LBB1_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB1_9
.LBB1_9:                                # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	patterns_popup_invoker, .Lfunc_end1-patterns_popup_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	patterns_close_popup_invoker,@function
patterns_close_popup_invoker:           # @patterns_close_popup_invoker
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
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB2_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB2_4
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	je	.LBB2_4
# BB#3:                                 # %lor.lhs.false.4
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_pdb_dialog_close
	cmpl	$0, %eax
	jne	.LBB2_5
.LBB2_4:                                # %if.then.8
	movl	$0, -52(%rbp)
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.9
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	je	.LBB2_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_9
.LBB2_9:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	patterns_close_popup_invoker, .Lfunc_end2-patterns_close_popup_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	patterns_set_popup_invoker,@function
patterns_set_popup_invoker:             # @patterns_set_popup_invoker
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	%rax, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB3_4
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	520(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_pdb_lookup_procedure
	cmpq	$0, %rax
	je	.LBB3_4
# BB#3:                                 # %lor.lhs.false.7
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_pdb_dialog_set
	cmpl	$0, %eax
	jne	.LBB3_5
.LBB3_4:                                # %if.then.11
	movl	$0, -52(%rbp)
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %if.end.12
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB3_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_9
.LBB3_9:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	patterns_set_popup_invoker, .Lfunc_end3-patterns_set_popup_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-patterns-popup"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invokes the Gimp pattern selection."
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This procedure opens the pattern selection dialog."
	.size	.L.str.2, 51

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Andy Thomas"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1998"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pattern-callback"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pattern callback"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The callback PDB proc to call when pattern selection is made"
	.size	.L.str.7, 61

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"popup-title"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"popup title"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Title of the pattern selection dialog"
	.size	.L.str.10, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"initial-pattern"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"initial pattern"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The name of the pattern to set as the first selected"
	.size	.L.str.13, 53

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-patterns-close-popup"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Close the pattern selection dialog."
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"This procedure closes an opened pattern selection dialog."
	.size	.L.str.16, 58

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The name of the callback registered for this pop-up"
	.size	.L.str.17, 52

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-patterns-set-popup"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Sets the current pattern in a pattern selection dialog."
	.size	.L.str.19, 56

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pattern-name"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pattern name"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The name of the pattern to set as selected"
	.size	.L.str.22, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
