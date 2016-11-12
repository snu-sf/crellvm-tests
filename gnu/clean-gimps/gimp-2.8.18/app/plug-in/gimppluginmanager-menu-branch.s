	.text
	.file	"gimppluginmanager-menu-branch.bc"
	.globl	gimp_plug_in_manager_menu_branch_exit
	.align	16, 0x90
	.type	gimp_plug_in_manager_menu_branch_exit,@function
gimp_plug_in_manager_menu_branch_exit:  # @gimp_plug_in_manager_menu_branch_exit
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_menu_branch_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_19
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB0_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
# BB#15:                                # %do.body.13
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#16:                                # %do.end.14
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               # %for.inc
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_13
.LBB0_18:                               # %for.end
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_slist_free
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
.LBB0_19:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_manager_menu_branch_exit, .Lfunc_end0-gimp_plug_in_manager_menu_branch_exit
	.cfi_endproc

	.globl	gimp_plug_in_manager_add_menu_branch
	.align	16, 0x90
	.type	gimp_plug_in_manager_add_menu_branch,@function
gimp_plug_in_manager_add_menu_branch:   # @gimp_plug_in_manager_add_menu_branch
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_menu_branch, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_28
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
	movabsq	$.L__func__.gimp_plug_in_manager_add_menu_branch, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_28
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.19
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_menu_branch, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_28
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
	movabsq	$.L__func__.gimp_plug_in_manager_add_menu_branch, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_28
.LBB1_26:                               # %if.end.27
	jmp	.LBB1_27
.LBB1_27:                               # %do.end.28
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	plug_in_menu_path_map
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdx
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rcx
	movq	-40(%rbp), %rdi
	movq	16(%rdi), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit_by_name
.LBB1_28:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_manager_add_menu_branch, .Lfunc_end1-gimp_plug_in_manager_add_menu_branch
	.cfi_endproc

	.globl	gimp_plug_in_manager_get_menu_branches
	.align	16, 0x90
	.type	gimp_plug_in_manager_get_menu_branches,@function
gimp_plug_in_manager_get_menu_branches: # @gimp_plug_in_manager_get_menu_branches
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_get_menu_branches, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_13
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB2_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_manager_get_menu_branches, .Lfunc_end2-gimp_plug_in_manager_get_menu_branches
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_manager_menu_branch_exit,@object # @__func__.gimp_plug_in_manager_menu_branch_exit
.L__func__.gimp_plug_in_manager_menu_branch_exit:
	.asciz	"gimp_plug_in_manager_menu_branch_exit"
	.size	.L__func__.gimp_plug_in_manager_menu_branch_exit, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN_MANAGER (manager)"
	.size	.L.str.1, 34

	.type	.L__func__.gimp_plug_in_manager_add_menu_branch,@object # @__func__.gimp_plug_in_manager_add_menu_branch
.L__func__.gimp_plug_in_manager_add_menu_branch:
	.asciz	"gimp_plug_in_manager_add_menu_branch"
	.size	.L__func__.gimp_plug_in_manager_add_menu_branch, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"prog_name != NULL"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"menu_path != NULL"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"menu_label != NULL"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"menu-branch-added"
	.size	.L.str.5, 18

	.type	.L__func__.gimp_plug_in_manager_get_menu_branches,@object # @__func__.gimp_plug_in_manager_get_menu_branches
.L__func__.gimp_plug_in_manager_get_menu_branches:
	.asciz	"gimp_plug_in_manager_get_menu_branches"
	.size	.L__func__.gimp_plug_in_manager_get_menu_branches, 39


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
