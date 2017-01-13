	.text
	.file	"zcolor3.bc"
	.align	16, 0x90
	.type	zsetuseciecolor,@function
zsetuseciecolor:                        # @zsetuseciecolor
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
	callq	gs_state_client_data
	movups	(%r14), %xmm0
	movups	%xmm0, 480(%rax)
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	zsetuseciecolor, .Lfunc_end0-zsetuseciecolor
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentrenderingintent,@function
zcurrentrenderingintent:                # @zcurrentrenderingintent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
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
	callq	gs_currentrenderingintent
	cltq
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	zcurrentrenderingintent, .Lfunc_end1-zcurrentrenderingintent
	.cfi_endproc

	.align	16, 0x90
	.type	zsetrenderingintent,@function
zsetrenderingintent:                    # @zsetrenderingintent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	12(%rsp), %rdx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	callq	int_param
	testl	%eax, %eax
	js	.LBB2_3
# BB#1:                                 # %lor.lhs.false
	movq	(%rbx), %rdi
	movl	12(%rsp), %esi
	callq	gs_setrenderingintent
	testl	%eax, %eax
	js	.LBB2_3
# BB#2:                                 # %if.end
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB2_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	zsetrenderingintent, .Lfunc_end2-zsetrenderingintent
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentblackptcomp,@function
zcurrentblackptcomp:                    # @zcurrentblackptcomp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB3_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentblackptcomp
	cltq
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zcurrentblackptcomp, .Lfunc_end3-zcurrentblackptcomp
	.cfi_endproc

	.align	16, 0x90
	.type	zsetblackptcomp,@function
zsetblackptcomp:                        # @zsetblackptcomp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	12(%rsp), %rdx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	callq	int_param
	testl	%eax, %eax
	js	.LBB4_3
# BB#1:                                 # %lor.lhs.false
	movq	(%rbx), %rdi
	movl	12(%rsp), %esi
	callq	gs_setblackptcomp
	testl	%eax, %eax
	js	.LBB4_3
# BB#2:                                 # %if.end
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB4_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zsetblackptcomp, .Lfunc_end4-zsetblackptcomp
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ll3dict"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0.setuseciecolor"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0.currentrenderintent"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1.setrenderingintent"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2.currentblackptcomp"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"3.setblackptcomp"
	.size	.L.str.5, 17

	.type	zcolor3_l3_op_defs,@object # @zcolor3_l3_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcolor3_l3_op_defs
	.align	16
zcolor3_l3_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zsetuseciecolor
	.quad	.L.str.2
	.quad	zcurrentrenderingintent
	.quad	.L.str.3
	.quad	zsetrenderingintent
	.quad	.L.str.4
	.quad	zcurrentblackptcomp
	.quad	.L.str.5
	.quad	zsetblackptcomp
	.zero	16
	.size	zcolor3_l3_op_defs, 112


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
