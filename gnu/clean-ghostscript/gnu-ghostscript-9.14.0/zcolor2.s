	.text
	.file	"zcolor2.bc"
	.align	16, 0x90
	.type	zusealternate,@function
zusealternate:                          # @zusealternate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_currentcolorspace
	leaq	16(%r14), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movq	%rcx, 624(%rbx)
	cmpq	$0, 40(%rax)
	setne	%al
	movzbl	%al, %eax
	movw	%ax, 24(%r14)
	movw	$256, 16(%r14)          # imm = 0x100
	xorl	%eax, %eax
.LBB0_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	zusealternate, .Lfunc_end0-zusealternate
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"level2dict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0.usealternate"
	.size	.L.str.1, 15

	.type	zcolor2_l2_op_defs,@object # @zcolor2_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcolor2_l2_op_defs
	.align	16
zcolor2_l2_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zusealternate
	.zero	16
	.size	zcolor2_l2_op_defs, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
