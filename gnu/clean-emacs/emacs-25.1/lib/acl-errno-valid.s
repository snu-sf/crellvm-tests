	.text
	.file	"acl-errno-valid.bc"
	.globl	acl_errno_valid
	.align	16, 0x90
	.type	acl_errno_valid,@function
acl_errno_valid:                        # @acl_errno_valid
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
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	subl	$16, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%edi, -16(%rbp)         # 4-byte Spill
	je	.LBB0_1
	jmp	.LBB0_7
.LBB0_7:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$22, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB0_2
	jmp	.LBB0_8
.LBB0_8:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$38, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB0_3
	jmp	.LBB0_9
.LBB0_9:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$95, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_5
.LBB0_1:                                # %sw.bb
	movb	$0, -1(%rbp)
	jmp	.LBB0_6
.LBB0_2:                                # %sw.bb.1
	movb	$0, -1(%rbp)
	jmp	.LBB0_6
.LBB0_3:                                # %sw.bb.2
	movb	$0, -1(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                # %sw.bb.3
	movb	$0, -1(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                # %sw.default
	movb	$1, -1(%rbp)
.LBB0_6:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	acl_errno_valid, .Lfunc_end0-acl_errno_valid
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
