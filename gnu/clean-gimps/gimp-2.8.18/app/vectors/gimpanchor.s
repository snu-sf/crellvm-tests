	.text
	.file	"gimpanchor.bc"
	.globl	gimp_anchor_get_type
	.align	16, 0x90
	.type	gimp_anchor_get_type,@function
gimp_anchor_get_type:                   # @gimp_anchor_get_type
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
	cmpq	$0, gimp_anchor_get_type.anchor_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movabsq	$gimp_anchor_copy, %rax
	movabsq	$gimp_anchor_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_anchor_get_type.anchor_type
.LBB0_2:                                # %if.end
	movq	gimp_anchor_get_type.anchor_type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_anchor_get_type, .Lfunc_end0-gimp_anchor_get_type
	.cfi_endproc

	.globl	gimp_anchor_copy
	.align	16, 0x90
	.type	gimp_anchor_copy,@function
gimp_anchor_copy:                       # @gimp_anchor_copy
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
	movabsq	$.L__func__.gimp_anchor_copy, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_6
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movl	$72, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_copy
	movq	%rax, -8(%rbp)
.LBB1_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_anchor_copy, .Lfunc_end1-gimp_anchor_copy
	.cfi_endproc

	.globl	gimp_anchor_free
	.align	16, 0x90
	.type	gimp_anchor_free,@function
gimp_anchor_free:                       # @gimp_anchor_free
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
	movabsq	$.L__func__.gimp_anchor_free, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_7
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	movl	$72, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB2_7:                                # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_anchor_free, .Lfunc_end2-gimp_anchor_free
	.cfi_endproc

	.globl	gimp_anchor_new
	.align	16, 0x90
	.type	gimp_anchor_new,@function
gimp_anchor_new:                        # @gimp_anchor_new
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
	subq	$32, %rsp
	movl	$72, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 64(%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$64, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_anchor_new, .Lfunc_end3-gimp_anchor_new
	.cfi_endproc

	.type	gimp_anchor_get_type.anchor_type,@object # @gimp_anchor_get_type.anchor_type
	.local	gimp_anchor_get_type.anchor_type
	.comm	gimp_anchor_get_type.anchor_type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpAnchor"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Vectors"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_anchor_copy,@object # @__func__.gimp_anchor_copy
.L__func__.gimp_anchor_copy:
	.asciz	"gimp_anchor_copy"
	.size	.L__func__.gimp_anchor_copy, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"anchor != NULL"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_anchor_free,@object # @__func__.gimp_anchor_free
.L__func__.gimp_anchor_free:
	.asciz	"gimp_anchor_free"
	.size	.L__func__.gimp_anchor_free, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
