	.text
	.file	"set-permissions.bc"
	.globl	chmod_or_fchmod
	.align	16, 0x90
	.type	chmod_or_fchmod,@function
chmod_or_fchmod:                        # @chmod_or_fchmod
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$-1, -20(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	fchmod
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	chmod
	movl	%eax, -4(%rbp)
.LBB0_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	chmod_or_fchmod, .Lfunc_end0-chmod_or_fchmod
	.cfi_endproc

	.globl	set_permissions
	.align	16, 0x90
	.type	set_permissions,@function
set_permissions:                        # @set_permissions
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movb	$0, -29(%rbp)
	movb	$0, -31(%rbp)
	movl	$0, -36(%rbp)
	movb	$1, -30(%rbp)
	testb	$1, -30(%rbp)
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	callq	chmod_or_fchmod
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.1
	movl	$-1, -4(%rbp)
	jmp	.LBB1_13
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.2
	testb	$1, -31(%rbp)
	je	.LBB1_12
# BB#5:                                 # %land.lhs.true
	testb	$1, -30(%rbp)
	jne	.LBB1_12
# BB#6:                                 # %if.then.5
	cmpl	$0, -36(%rbp)
	je	.LBB1_8
# BB#7:                                 # %cond.true
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_9:                                # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	callq	chmod_or_fchmod
	movl	%eax, -36(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.11
	movl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movl	$-1, -36(%rbp)
.LBB1_11:                               # %if.end.13
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	set_permissions, .Lfunc_end1-set_permissions
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
