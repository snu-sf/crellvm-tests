	.text
	.file	"gimpplugin-context.bc"
	.globl	gimp_plug_in_context_push
	.align	16, 0x90
	.type	gimp_plug_in_context_push,@function
gimp_plug_in_context_push:              # @gimp_plug_in_context_push
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_context_push, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.15
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB0_15:                               # %if.end.16
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_context_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movl	$1, -4(%rbp)
.LBB0_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_context_push, .Lfunc_end0-gimp_plug_in_context_push
	.cfi_endproc

	.globl	gimp_plug_in_context_pop
	.align	16, 0x90
	.type	gimp_plug_in_context_pop,@function
gimp_plug_in_context_pop:               # @gimp_plug_in_context_pop
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_context_pop, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_15
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, -4(%rbp)
	jmp	.LBB1_15
.LBB1_14:                               # %if.end.19
	movl	$0, -4(%rbp)
.LBB1_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_context_pop, .Lfunc_end1-gimp_plug_in_context_pop
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_context_push,@object # @__func__.gimp_plug_in_context_push
.L__func__.gimp_plug_in_context_push:
	.asciz	"gimp_plug_in_context_push"
	.size	.L__func__.gimp_plug_in_context_push, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN (plug_in)"
	.size	.L.str.1, 26

	.type	.L__func__.gimp_plug_in_context_pop,@object # @__func__.gimp_plug_in_context_pop
.L__func__.gimp_plug_in_context_pop:
	.asciz	"gimp_plug_in_context_pop"
	.size	.L__func__.gimp_plug_in_context_pop, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
