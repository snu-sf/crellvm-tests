	.text
	.file	"zcssepr.bc"
	.align	16, 0x90
	.type	zcurrentoverprint,@function
zcurrentoverprint:                      # @zcurrentoverprint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB0_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentoverprint
	movw	%ax, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zcurrentoverprint, .Lfunc_end0-zcurrentoverprint
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentoverprintmode,@function
zcurrentoverprintmode:                  # @zcurrentoverprintmode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB1_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentoverprintmode
	cltq
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	zcurrentoverprintmode, .Lfunc_end1-zcurrentoverprintmode
	.cfi_endproc

	.align	16, 0x90
	.type	zsetoverprint,@function
zsetoverprint:                          # @zsetoverprint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB2_2
# BB#1:                                 # %cleanup
	movq	(%rbx), %rax
	movzwl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	gs_setoverprint
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB2_2:                                # %if.then
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end2:
	.size	zsetoverprint, .Lfunc_end2-zsetoverprint
	.cfi_endproc

	.align	16, 0x90
	.type	zsetoverprintmode,@function
zsetoverprintmode:                      # @zsetoverprintmode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	12(%rsp), %rdx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	callq	int_param
	testl	%eax, %eax
	js	.LBB3_3
# BB#1:                                 # %lor.lhs.false
	movq	(%rbx), %rdi
	movl	12(%rsp), %esi
	callq	gs_setoverprintmode
	testl	%eax, %eax
	js	.LBB3_3
# BB#2:                                 # %if.end
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB3_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zsetoverprintmode, .Lfunc_end3-zsetoverprintmode
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"level2dict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0currentoverprint"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0.currentoverprintmode"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1setoverprint"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.setoverprintmode"
	.size	.L.str.4, 19

	.type	zcssepr_l2_op_defs,@object # @zcssepr_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcssepr_l2_op_defs
	.align	16
zcssepr_l2_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zcurrentoverprint
	.quad	.L.str.2
	.quad	zcurrentoverprintmode
	.quad	.L.str.3
	.quad	zsetoverprint
	.quad	.L.str.4
	.quad	zsetoverprintmode
	.zero	16
	.size	zcssepr_l2_op_defs, 96


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
