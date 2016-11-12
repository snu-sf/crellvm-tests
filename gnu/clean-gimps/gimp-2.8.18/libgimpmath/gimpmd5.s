	.text
	.file	"gimpmd5.bc"
	.globl	gimp_md5_get_digest
	.align	16, 0x90
	.type	gimp_md5_get_digest,@function
gimp_md5_get_digest:                    # @gimp_md5_get_digest
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$16, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_md5_get_digest(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_11
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_md5_get_digest(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_11
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	xorl	%edi, %edi
	callq	g_checksum_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	callq	g_checksum_update@PLT
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_checksum_get_digest@PLT
	movq	-32(%rbp), %rdi
	callq	g_checksum_free@PLT
.LBB0_11:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_md5_get_digest, .Lfunc_end0-gimp_md5_get_digest
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpMath"
	.size	.L.str, 12

	.type	.L__func__.gimp_md5_get_digest,@object # @__func__.gimp_md5_get_digest
.L__func__.gimp_md5_get_digest:
	.asciz	"gimp_md5_get_digest"
	.size	.L__func__.gimp_md5_get_digest, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"buffer != NULL"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"digest != NULL"
	.size	.L.str.2, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
