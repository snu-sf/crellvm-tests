	.text
	.file	"gimppluginmanager-call.bc"
	.globl	gimp_plug_in_manager_call_query
	.align	16, 0x90
	.type	gimp_plug_in_manager_call_query,@function
gimp_plug_in_manager_call_query:        # @gimp_plug_in_manager_call_query
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_query, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_46
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_query, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_46
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_plug_in_def_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.48
	movl	$0, -100(%rbp)
	jmp	.LBB0_32
.LBB0_27:                               # %if.else.49
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_30
# BB#28:                                # %land.lhs.true.52
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_30
# BB#29:                                # %if.then.56
	movl	$1, -100(%rbp)
	jmp	.LBB0_31
.LBB0_30:                               # %if.else.57
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_31:                               # %if.end.59
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.60
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_34
# BB#33:                                # %if.then.63
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_query, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_46
.LBB0_35:                               # %if.end.65
	jmp	.LBB0_36
.LBB0_36:                               # %do.end.66
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %r8
	movq	%rcx, %rdx
	callq	gimp_plug_in_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_46
# BB#37:                                # %if.then.69
	movl	$2, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 736(%rcx)
	movq	-32(%rbp), %rdi
	callq	gimp_plug_in_open
	cmpl	$0, %eax
	je	.LBB0_45
# BB#38:                                # %if.then.73
	jmp	.LBB0_39
.LBB0_39:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB0_44
# BB#40:                                # %while.body
                                        #   in Loop: Header=BB0_39 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_wire_read_msg
	cmpl	$0, %eax
	jne	.LBB0_42
# BB#41:                                # %if.then.78
                                        #   in Loop: Header=BB0_39 Depth=1
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB0_43
.LBB0_42:                               # %if.else.79
                                        #   in Loop: Header=BB0_39 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_plug_in_handle_message
	leaq	-120(%rbp), %rdi
	callq	gimp_wire_destroy
.LBB0_43:                               # %if.end.80
                                        #   in Loop: Header=BB0_39 Depth=1
	jmp	.LBB0_39
.LBB0_44:                               # %while.end
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.81
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_46:                               # %if.end.82
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_manager_call_query, .Lfunc_end0-gimp_plug_in_manager_call_query
	.cfi_endproc

	.globl	gimp_plug_in_manager_call_init
	.align	16, 0x90
	.type	gimp_plug_in_manager_call_init,@function
gimp_plug_in_manager_call_init:         # @gimp_plug_in_manager_call_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_46
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_46
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	jmp	.LBB1_25
.LBB1_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_plug_in_def_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_27
# BB#26:                                # %if.then.48
	movl	$0, -100(%rbp)
	jmp	.LBB1_32
.LBB1_27:                               # %if.else.49
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_30
# BB#28:                                # %land.lhs.true.52
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB1_30
# BB#29:                                # %if.then.56
	movl	$1, -100(%rbp)
	jmp	.LBB1_31
.LBB1_30:                               # %if.else.57
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB1_31:                               # %if.end.59
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.60
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB1_34
# BB#33:                                # %if.then.63
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_init, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_46
.LBB1_35:                               # %if.end.65
	jmp	.LBB1_36
.LBB1_36:                               # %do.end.66
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %r8
	movq	%rcx, %rdx
	callq	gimp_plug_in_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_46
# BB#37:                                # %if.then.69
	movl	$3, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 736(%rcx)
	movq	-32(%rbp), %rdi
	callq	gimp_plug_in_open
	cmpl	$0, %eax
	je	.LBB1_45
# BB#38:                                # %if.then.73
	jmp	.LBB1_39
.LBB1_39:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB1_44
# BB#40:                                # %while.body
                                        #   in Loop: Header=BB1_39 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_wire_read_msg
	cmpl	$0, %eax
	jne	.LBB1_42
# BB#41:                                # %if.then.78
                                        #   in Loop: Header=BB1_39 Depth=1
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB1_43
.LBB1_42:                               # %if.else.79
                                        #   in Loop: Header=BB1_39 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_plug_in_handle_message
	leaq	-120(%rbp), %rdi
	callq	gimp_wire_destroy
.LBB1_43:                               # %if.end.80
                                        #   in Loop: Header=BB1_39 Depth=1
	jmp	.LBB1_39
.LBB1_44:                               # %while.end
	jmp	.LBB1_45
.LBB1_45:                               # %if.end.81
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB1_46:                               # %if.end.82
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_manager_call_init, .Lfunc_end1-gimp_plug_in_manager_call_init
	.cfi_endproc

	.globl	gimp_plug_in_manager_call_run
	.align	16, 0x90
	.type	gimp_plug_in_manager_call_run,@function
gimp_plug_in_manager_call_run:          # @gimp_plug_in_manager_call_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              # imm = 0x1C0
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_88
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_88
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB2_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB2_28
# BB#27:                                # %if.then.49
	movl	$0, -148(%rbp)
	jmp	.LBB2_33
.LBB2_28:                               # %if.else.50
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_31
# BB#29:                                # %land.lhs.true.53
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB2_31
# BB#30:                                # %if.then.57
	movl	$1, -148(%rbp)
	jmp	.LBB2_32
.LBB2_31:                               # %if.else.58
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB2_32:                               # %if.end.60
	jmp	.LBB2_33
.LBB2_33:                               # %if.end.61
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB2_35
.LBB2_34:                               # %if.then.64
	jmp	.LBB2_36
.LBB2_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_88
.LBB2_36:                               # %if.end.66
	jmp	.LBB2_37
.LBB2_37:                               # %do.end.67
	jmp	.LBB2_38
.LBB2_38:                               # %do.body.68
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB2_40
# BB#39:                                # %if.then.77
	movl	$0, -172(%rbp)
	jmp	.LBB2_45
.LBB2_40:                               # %if.else.78
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_43
# BB#41:                                # %land.lhs.true.81
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB2_43
# BB#42:                                # %if.then.85
	movl	$1, -172(%rbp)
	jmp	.LBB2_44
.LBB2_43:                               # %if.else.86
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB2_44:                               # %if.end.88
	jmp	.LBB2_45
.LBB2_45:                               # %if.end.89
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB2_47
# BB#46:                                # %if.then.92
	jmp	.LBB2_48
.LBB2_47:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_88
.LBB2_48:                               # %if.end.94
	jmp	.LBB2_49
.LBB2_49:                               # %do.end.95
	jmp	.LBB2_50
.LBB2_50:                               # %do.body.96
	cmpq	$0, -48(%rbp)
	je	.LBB2_52
# BB#51:                                # %if.then.98
	jmp	.LBB2_53
.LBB2_52:                               # %if.else.99
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_88
.LBB2_53:                               # %if.end.100
	jmp	.LBB2_54
.LBB2_54:                               # %do.end.101
	jmp	.LBB2_55
.LBB2_55:                               # %do.body.102
	cmpq	$0, -64(%rbp)
	je	.LBB2_64
# BB#56:                                # %lor.lhs.false.104
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB2_58
# BB#57:                                # %if.then.113
	movl	$0, -196(%rbp)
	jmp	.LBB2_63
.LBB2_58:                               # %if.else.114
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_61
# BB#59:                                # %land.lhs.true.117
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB2_61
# BB#60:                                # %if.then.121
	movl	$1, -196(%rbp)
	jmp	.LBB2_62
.LBB2_61:                               # %if.else.122
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB2_62:                               # %if.end.124
	jmp	.LBB2_63
.LBB2_63:                               # %if.end.125
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB2_65
.LBB2_64:                               # %if.then.128
	jmp	.LBB2_66
.LBB2_65:                               # %if.else.129
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_88
.LBB2_66:                               # %if.end.130
	jmp	.LBB2_67
.LBB2_67:                               # %do.end.131
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_plug_in_new
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB2_87
# BB#68:                                # %if.then.134
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, -224(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_plug_in_open
	cmpl	$0, %eax
	jne	.LBB2_70
# BB#69:                                # %if.then.149
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -336(%rbp)
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %esi
	movq	-336(%rbp), %rcx
	movl	-388(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_error_new
	movq	%rax, -344(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	-344(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -72(%rbp)
	movq	-344(%rbp), %rdi
	callq	g_error_free
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_88
.LBB2_70:                               # %if.end.159
	cmpq	$0, -64(%rbp)
	je	.LBB2_72
# BB#71:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_get_display_ID
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB2_73
.LBB2_72:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB2_73
.LBB2_73:                               # %cond.end
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)
	movl	$20, -296(%rbp)
	movl	$64, -292(%rbp)
	movl	$64, -288(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 144(%rcx)
	je	.LBB2_75
# BB#74:                                # %cond.true.164
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_plug_in_shm_get_ID
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB2_76
.LBB2_75:                               # %cond.false.167
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB2_76
.LBB2_76:                               # %cond.end.168
	movl	-408(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -284(%rbp)
	movq	-216(%rbp), %rsi
	movl	424(%rsi), %eax
	movb	%al, %dil
	movb	%dil, -280(%rbp)
	movq	-216(%rbp), %rsi
	movl	428(%rsi), %eax
	movb	%al, %dil
	movb	%dil, -279(%rbp)
	movq	-224(%rbp), %rsi
	cmpl	$0, 664(%rsi)
	movb	%dl, -409(%rbp)         # 1-byte Spill
	je	.LBB2_78
# BB#77:                                # %land.rhs
	movq	-224(%rbp), %rax
	cmpl	$0, 668(%rax)
	setne	%cl
	movb	%cl, -409(%rbp)         # 1-byte Spill
.LBB2_78:                               # %land.end
	movb	-409(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	%cl, %al
	movb	%al, -278(%rbp)
	callq	gimp_composite_use_cpu_accel
	movb	%al, %dl
	movb	%dl, -277(%rbp)
	movb	$0, -276(%rbp)
	movb	$0, -275(%rbp)
	movb	$0, -274(%rbp)
	movb	$0, -273(%rbp)
	movb	$0, -272(%rbp)
	movq	-224(%rbp), %rsi
	movl	596(%rsi), %eax
	movb	%al, %dl
	movb	%dl, -271(%rbp)
	movl	$144, -268(%rbp)
	movl	-324(%rbp), %eax
	movl	%eax, -264(%rbp)
	callq	g_get_application_name
	movq	%rax, -256(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_program_class
	leaq	-328(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-324(%rbp), %esi
	callq	gimp_get_display_name
	movq	%rax, -240(%rbp)
	movl	-328(%rbp), %ecx
	movl	%ecx, -232(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_time
	movl	%eax, -228(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	40(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -312(%rbp)
	movq	-48(%rbp), %rdi
	callq	plug_in_args_to_params
	leaq	-296(%rbp), %rsi
	movq	%rax, -304(%rbp)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	gp_config_write
	cmpl	$0, %eax
	je	.LBB2_81
# BB#79:                                # %lor.lhs.false.192
	leaq	-320(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	gp_proc_run_write
	cmpl	$0, %eax
	je	.LBB2_81
# BB#80:                                # %lor.lhs.false.196
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_wire_flush
	cmpl	$0, %eax
	jne	.LBB2_82
.LBB2_81:                               # %if.then.200
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -352(%rbp)
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %esi
	movq	-352(%rbp), %rcx
	movl	-428(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_error_new
	movq	%rax, -360(%rbp)
	movq	-240(%rbp), %rdi
	callq	g_free
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	-360(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -72(%rbp)
	movq	-360(%rbp), %rdi
	callq	g_error_free
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_88
.LBB2_82:                               # %if.end.214
	movq	-240(%rbp), %rdi
	callq	g_free
	movq	-304(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$2, 32(%rax)
	jne	.LBB2_84
# BB#83:                                # %if.then.221
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	g_main_loop_new
	movq	-80(%rbp), %rdi
	movq	%rax, 624(%rdi)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_threads_leave
	movq	-80(%rbp), %rax
	movq	624(%rax), %rdi
	callq	g_main_loop_run
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_threads_enter
	movq	-80(%rbp), %rax
	movq	624(%rax), %rdi
	callq	g_main_loop_unref
	movq	-80(%rbp), %rax
	movq	$0, 624(%rax)
.LBB2_84:                               # %if.end.228
	cmpl	$0, -52(%rbp)
	je	.LBB2_86
# BB#85:                                # %if.then.230
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-80(%rbp), %rcx
	addq	$632, %rcx              # imm = 0x278
	movq	%rcx, -368(%rbp)
	callq	g_main_loop_new
	movq	-368(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_threads_leave
	movq	-368(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_main_loop_run
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_threads_enter
	movq	-368(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_main_loop_unref
	movq	-368(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-368(%rbp), %rdi
	callq	gimp_plug_in_proc_frame_get_return_values
	movq	%rax, -72(%rbp)
.LBB2_86:                               # %if.end.239
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB2_87:                               # %if.end.240
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_88:                               # %return
	movq	-8(%rbp), %rax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_manager_call_run, .Lfunc_end2-gimp_plug_in_manager_call_run
	.cfi_endproc

	.globl	gimp_plug_in_manager_call_run_temp
	.align	16, 0x90
	.type	gimp_plug_in_manager_call_run_temp,@function
gimp_plug_in_manager_call_run_temp:     # @gimp_plug_in_manager_call_run_temp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run_temp, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_60
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run_temp, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_60
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB3_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_28
# BB#27:                                # %if.then.49
	movl	$0, -132(%rbp)
	jmp	.LBB3_33
.LBB3_28:                               # %if.else.50
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_31
# BB#29:                                # %land.lhs.true.53
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB3_31
# BB#30:                                # %if.then.57
	movl	$1, -132(%rbp)
	jmp	.LBB3_32
.LBB3_31:                               # %if.else.58
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB3_32:                               # %if.end.60
	jmp	.LBB3_33
.LBB3_33:                               # %if.end.61
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB3_35
.LBB3_34:                               # %if.then.64
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run_temp, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_60
.LBB3_36:                               # %if.end.66
	jmp	.LBB3_37
.LBB3_37:                               # %do.end.67
	jmp	.LBB3_38
.LBB3_38:                               # %do.body.68
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_temporary_procedure_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_40
# BB#39:                                # %if.then.77
	movl	$0, -156(%rbp)
	jmp	.LBB3_45
.LBB3_40:                               # %if.else.78
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_43
# BB#41:                                # %land.lhs.true.81
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB3_43
# BB#42:                                # %if.then.85
	movl	$1, -156(%rbp)
	jmp	.LBB3_44
.LBB3_43:                               # %if.else.86
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB3_44:                               # %if.end.88
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.89
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB3_47
# BB#46:                                # %if.then.92
	jmp	.LBB3_48
.LBB3_47:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run_temp, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_60
.LBB3_48:                               # %if.end.94
	jmp	.LBB3_49
.LBB3_49:                               # %do.end.95
	jmp	.LBB3_50
.LBB3_50:                               # %do.body.96
	cmpq	$0, -48(%rbp)
	je	.LBB3_52
# BB#51:                                # %if.then.98
	jmp	.LBB3_53
.LBB3_52:                               # %if.else.99
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_call_run_temp, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_60
.LBB3_53:                               # %if.end.100
	jmp	.LBB3_54
.LBB3_54:                               # %do.end.101
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB3_59
# BB#55:                                # %if.then.104
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_plug_in_proc_frame_push
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	40(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %r8d
	movl	%r8d, -184(%rbp)
	movq	-48(%rbp), %rdi
	callq	plug_in_args_to_params
	leaq	-192(%rbp), %rsi
	movq	%rax, -176(%rbp)
	movq	-64(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	callq	gp_temp_proc_run_write
	cmpl	$0, %eax
	je	.LBB3_57
# BB#56:                                # %lor.lhs.false.113
	movq	-64(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_wire_flush
	cmpl	$0, %eax
	jne	.LBB3_58
.LBB3_57:                               # %if.then.117
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -200(%rbp)
	callq	gimp_plug_in_error_quark
	movabsq	$.L.str.8, %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %esi
	movq	-200(%rbp), %rcx
	movl	-220(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_error_new
	movq	%rax, -208(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	gimp_plug_in_proc_frame_pop
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	-208(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_procedure_get_return_values
	movq	%rax, -56(%rbp)
	movq	-208(%rbp), %rdi
	callq	g_error_free
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_60
.LBB3_58:                               # %if.end.129
	movq	-64(%rbp), %rdi
	callq	gimp_allow_set_foreground_window
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_object_ref
	movq	-168(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_proc_frame_ref
	movq	-64(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_main_loop
	movq	-168(%rbp), %rdi
	callq	gimp_plug_in_proc_frame_get_return_values
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_proc_frame_unref
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB3_59:                               # %if.end.134
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_60:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_manager_call_run_temp, .Lfunc_end3-gimp_plug_in_manager_call_run_temp
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_allow_set_foreground_window,@function
gimp_allow_set_foreground_window:       # @gimp_allow_set_foreground_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_allow_set_foreground_window, .Lfunc_end4-gimp_allow_set_foreground_window
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_manager_call_query,@object # @__func__.gimp_plug_in_manager_call_query
.L__func__.gimp_plug_in_manager_call_query:
	.asciz	"gimp_plug_in_manager_call_query"
	.size	.L__func__.gimp_plug_in_manager_call_query, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN_MANAGER (manager)"
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PDB_CONTEXT (context)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_PLUG_IN_DEF (plug_in_def)"
	.size	.L.str.3, 34

	.type	.L__func__.gimp_plug_in_manager_call_init,@object # @__func__.gimp_plug_in_manager_call_init
.L__func__.gimp_plug_in_manager_call_init:
	.asciz	"gimp_plug_in_manager_call_init"
	.size	.L__func__.gimp_plug_in_manager_call_init, 31

	.type	.L__func__.gimp_plug_in_manager_call_run,@object # @__func__.gimp_plug_in_manager_call_run
.L__func__.gimp_plug_in_manager_call_run:
	.asciz	"gimp_plug_in_manager_call_run"
	.size	.L__func__.gimp_plug_in_manager_call_run, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.4, 48

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PLUG_IN_PROCEDURE (procedure)"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"args != NULL"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"display == NULL || GIMP_IS_OBJECT (display)"
	.size	.L.str.7, 44

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Failed to run plug-in \"%s\""
	.size	.L.str.8, 27

	.type	.L__func__.gimp_plug_in_manager_call_run_temp,@object # @__func__.gimp_plug_in_manager_call_run_temp
.L__func__.gimp_plug_in_manager_call_run_temp:
	.asciz	"gimp_plug_in_manager_call_run_temp"
	.size	.L__func__.gimp_plug_in_manager_call_run_temp, 35

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_TEMPORARY_PROCEDURE (procedure)"
	.size	.L.str.9, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
