	.text
	.file	"imap_misc.bc"
	.globl	set_sash_size
	.align	16, 0x90
	.type	set_sash_size,@function
set_sash_size:                          # @set_sash_size
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
	movl	$8, %eax
	movl	$16, %ecx
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, _sash_size
	popq	%rbp
	retq
.Lfunc_end0:
	.size	set_sash_size, .Lfunc_end0-set_sash_size
	.cfi_endproc

	.globl	draw_sash
	.align	16, 0x90
	.type	draw_sash,@function
draw_sash:                              # @draw_sash
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
	subq	$32, %rsp
	movl	$1, %eax
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	_sash_size, %esi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -24(%rbp)         # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-24(%rbp), %esi         # 4-byte Reload
	subl	%eax, %esi
	movl	-16(%rbp), %eax
	movl	_sash_size, %r8d
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-28(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	_sash_size, %r8d
	movl	_sash_size, %r9d
	movl	-20(%rbp), %eax         # 4-byte Reload
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-32(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, %edx
	callq	draw_rectangle
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	draw_sash, .Lfunc_end1-draw_sash
	.cfi_endproc

	.globl	near_sash
	.align	16, 0x90
	.type	near_sash,@function
near_sash:                              # @near_sash
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
	xorl	%eax, %eax
	movb	%al, %r8b
	movl	$2, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-12(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	_sash_size, %esi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -24(%rbp)         # 4-byte Spill
	cltd
	movl	-20(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-24(%rbp), %edi         # 4-byte Reload
	subl	%eax, %edi
	cmpl	%edi, %ecx
	movb	%r8b, -25(%rbp)         # 1-byte Spill
	jl	.LBB2_4
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$2, %eax
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %esi
	movl	_sash_size, %edi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -36(%rbp)         # 4-byte Spill
	cltd
	movl	-32(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movl	-36(%rbp), %eax         # 4-byte Reload
	cmpl	%esi, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jg	.LBB2_4
# BB#2:                                 # %land.lhs.true.3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$2, %eax
	movl	-16(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	_sash_size, %edi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -44(%rbp)         # 4-byte Spill
	cltd
	movl	-40(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	subl	%eax, %esi
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%esi, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jl	.LBB2_4
# BB#3:                                 # %land.rhs
	movl	$2, %eax
	movl	-16(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	_sash_size, %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -52(%rbp)         # 4-byte Spill
	cltd
	movl	-48(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-52(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	cmpl	%edi, %ecx
	setle	%r8b
	movb	%r8b, -25(%rbp)         # 1-byte Spill
.LBB2_4:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	near_sash, .Lfunc_end2-near_sash
	.cfi_endproc

	.type	_sash_size,@object      # @_sash_size
	.data
	.align	4
_sash_size:
	.long	8                       # 0x8
	.size	_sash_size, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
