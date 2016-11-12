	.text
	.file	"gimpchannel.bc"
	.globl	gimp_channel_new
	.align	16, 0x90
	.type	gimp_channel_new,@function
gimp_channel_new:                       # @gimp_channel_new
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %r8
	callq	_gimp_channel_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_channel_new, .Lfunc_end0-gimp_channel_new
	.cfi_endproc

	.hidden	_gimp_channel_new

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
