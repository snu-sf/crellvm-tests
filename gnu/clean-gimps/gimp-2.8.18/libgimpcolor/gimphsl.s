	.text
	.file	"gimphsl.bc"
	.globl	gimp_hsl_get_type
	.align	16, 0x90
	.type	gimp_hsl_get_type,@function
gimp_hsl_get_type:                      # @gimp_hsl_get_type
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
	cmpq	$0, gimp_hsl_get_type.hsl_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str(%rip), %rdi
	leaq	gimp_hsl_copy(%rip), %rax
	movq	g_free@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	callq	g_boxed_type_register_static@PLT
	movq	%rax, gimp_hsl_get_type.hsl_type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_hsl_get_type.hsl_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_hsl_get_type, .Lfunc_end0-gimp_hsl_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hsl_copy,@function
gimp_hsl_copy:                          # @gimp_hsl_copy
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
	movl	$32, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_memdup@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_hsl_copy, .Lfunc_end1-gimp_hsl_copy
	.cfi_endproc

	.globl	gimp_hsl_set
	.align	16, 0x90
	.type	gimp_hsl_set,@function
gimp_hsl_set:                           # @gimp_hsl_set
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_hsl_set(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB2_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_hsl_set, .Lfunc_end2-gimp_hsl_set
	.cfi_endproc

	.type	gimp_hsl_get_type.hsl_type,@object # @gimp_hsl_get_type.hsl_type
	.local	gimp_hsl_get_type.hsl_type
	.comm	gimp_hsl_get_type.hsl_type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpHSL"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpColor"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_hsl_set,@object # @__func__.gimp_hsl_set
.L__func__.gimp_hsl_set:
	.asciz	"gimp_hsl_set"
	.size	.L__func__.gimp_hsl_set, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"hsl != NULL"
	.size	.L.str.2, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
