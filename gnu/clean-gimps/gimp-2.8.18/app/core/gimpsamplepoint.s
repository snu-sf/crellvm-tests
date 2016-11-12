	.text
	.file	"gimpsamplepoint.bc"
	.globl	gimp_sample_point_get_type
	.align	16, 0x90
	.type	gimp_sample_point_get_type,@function
gimp_sample_point_get_type:             # @gimp_sample_point_get_type
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
	cmpq	$0, gimp_sample_point_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movabsq	$gimp_sample_point_ref, %rax
	movabsq	$gimp_sample_point_unref, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_sample_point_get_type.type
.LBB0_2:                                # %if.end
	movq	gimp_sample_point_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_sample_point_get_type, .Lfunc_end0-gimp_sample_point_get_type
	.cfi_endproc

	.globl	gimp_sample_point_ref
	.align	16, 0x90
	.type	gimp_sample_point_ref,@function
gimp_sample_point_ref:                  # @gimp_sample_point_ref
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_sample_point_ref, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_6
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_sample_point_ref, .Lfunc_end1-gimp_sample_point_ref
	.cfi_endproc

	.globl	gimp_sample_point_unref
	.align	16, 0x90
	.type	gimp_sample_point_unref,@function
gimp_sample_point_unref:                # @gimp_sample_point_unref
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_sample_point_unref, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_9
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jge	.LBB2_9
# BB#6:                                 # %if.then.3
	jmp	.LBB2_7
.LBB2_7:                                # %do.body.4
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#8:                                 # %do.end.5
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_sample_point_unref, .Lfunc_end2-gimp_sample_point_unref
	.cfi_endproc

	.globl	gimp_sample_point_new
	.align	16, 0x90
	.type	gimp_sample_point_new,@function
gimp_sample_point_new:                  # @gimp_sample_point_new
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
	subq	$16, %rsp
	movl	$16, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_sample_point_new, .Lfunc_end3-gimp_sample_point_new
	.cfi_endproc

	.type	gimp_sample_point_get_type.type,@object # @gimp_sample_point_get_type.type
	.local	gimp_sample_point_get_type.type
	.comm	gimp_sample_point_get_type.type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSamplePoint"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_sample_point_ref,@object # @__func__.gimp_sample_point_ref
.L__func__.gimp_sample_point_ref:
	.asciz	"gimp_sample_point_ref"
	.size	.L__func__.gimp_sample_point_ref, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"sample_point != NULL"
	.size	.L.str.2, 21

	.type	.L__func__.gimp_sample_point_unref,@object # @__func__.gimp_sample_point_unref
.L__func__.gimp_sample_point_unref:
	.asciz	"gimp_sample_point_unref"
	.size	.L__func__.gimp_sample_point_unref, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
