	.text
	.file	"gimppluginmanager-data.bc"
	.globl	gimp_plug_in_manager_data_free
	.align	16, 0x90
	.type	gimp_plug_in_manager_data_free,@function
gimp_plug_in_manager_data_free:         # @gimp_plug_in_manager_data_free
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_data_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB0_23
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_22
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
# BB#16:                                # %do.body.19
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#17:                                # %do.end.20
                                        #   in Loop: Header=BB0_14 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               # %for.inc
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_21
.LBB0_20:                               # %cond.false
                                        #   in Loop: Header=BB0_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_21
.LBB0_21:                               # %cond.end
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB0_14
.LBB0_22:                               # %for.end
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
.LBB0_23:                               # %if.end.24
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_manager_data_free, .Lfunc_end0-gimp_plug_in_manager_data_free
	.cfi_endproc

	.globl	gimp_plug_in_manager_set_data
	.align	16, 0x90
	.type	gimp_plug_in_manager_set_data,@function
gimp_plug_in_manager_set_data:          # @gimp_plug_in_manager_set_data
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_set_data, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_40
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_set_data, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_40
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.17
	cmpl	$0, -20(%rbp)
	jle	.LBB1_20
# BB#19:                                # %if.then.19
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_set_data, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_40
.LBB1_21:                               # %if.end.21
	jmp	.LBB1_22
.LBB1_22:                               # %do.end.22
	jmp	.LBB1_23
.LBB1_23:                               # %do.body.23
	cmpq	$0, -32(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.25
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.26
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_set_data, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_40
.LBB1_26:                               # %if.end.27
	jmp	.LBB1_27
.LBB1_27:                               # %do.end.28
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB1_28:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_36
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_31
# BB#30:                                # %if.then.34
	jmp	.LBB1_36
.LBB1_31:                               # %if.end.35
                                        #   in Loop: Header=BB1_28 Depth=1
	jmp	.LBB1_32
.LBB1_32:                               # %for.inc
                                        #   in Loop: Header=BB1_28 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_34
# BB#33:                                # %cond.true
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_35
.LBB1_34:                               # %cond.false
                                        #   in Loop: Header=BB1_28 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_35
.LBB1_35:                               # %cond.end
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB1_28
.LBB1_36:                               # %for.end
	cmpq	$0, -48(%rbp)
	jne	.LBB1_38
# BB#37:                                # %if.then.38
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 176(%rsi)
	jmp	.LBB1_39
.LBB1_38:                               # %if.else.45
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
.LBB1_39:                               # %if.end.47
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_memdup
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB1_40:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_manager_set_data, .Lfunc_end1-gimp_plug_in_manager_set_data
	.cfi_endproc

	.globl	gimp_plug_in_manager_get_data
	.align	16, 0x90
	.type	gimp_plug_in_manager_get_data,@function
gimp_plug_in_manager_get_data:          # @gimp_plug_in_manager_get_data
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_get_data, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_32
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_get_data, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_32
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.19
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_get_data, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_32
.LBB2_21:                               # %if.end.21
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.22
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB2_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB2_31
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB2_23 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_26
# BB#25:                                # %if.then.28
	movq	-72(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_32
.LBB2_26:                               # %if.end.31
                                        #   in Loop: Header=BB2_23 Depth=1
	jmp	.LBB2_27
.LBB2_27:                               # %for.inc
                                        #   in Loop: Header=BB2_23 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB2_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB2_23 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_30
.LBB2_29:                               # %cond.false
                                        #   in Loop: Header=BB2_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_30
.LBB2_30:                               # %cond.end
                                        #   in Loop: Header=BB2_23 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB2_23
.LBB2_31:                               # %for.end
	movq	$0, -8(%rbp)
.LBB2_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_manager_get_data, .Lfunc_end2-gimp_plug_in_manager_get_data
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_manager_data_free,@object # @__func__.gimp_plug_in_manager_data_free
.L__func__.gimp_plug_in_manager_data_free:
	.asciz	"gimp_plug_in_manager_data_free"
	.size	.L__func__.gimp_plug_in_manager_data_free, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN_MANAGER (manager)"
	.size	.L.str.1, 34

	.type	.L__func__.gimp_plug_in_manager_set_data,@object # @__func__.gimp_plug_in_manager_set_data
.L__func__.gimp_plug_in_manager_set_data:
	.asciz	"gimp_plug_in_manager_set_data"
	.size	.L__func__.gimp_plug_in_manager_set_data, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"identifier != NULL"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bytes > 0"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"data != NULL"
	.size	.L.str.4, 13

	.type	.L__func__.gimp_plug_in_manager_get_data,@object # @__func__.gimp_plug_in_manager_get_data
.L__func__.gimp_plug_in_manager_get_data:
	.asciz	"gimp_plug_in_manager_get_data"
	.size	.L__func__.gimp_plug_in_manager_get_data, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"bytes != NULL"
	.size	.L.str.5, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
