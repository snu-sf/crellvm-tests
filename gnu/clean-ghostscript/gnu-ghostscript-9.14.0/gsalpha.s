	.text
	.file	"gsalpha.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	4679239875398991872     # double 65535
	.text
	.globl	gs_setalpha
	.align	16, 0x90
	.type	gs_setalpha,@function
gs_setalpha:                            # @gs_setalpha
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	ucomisd	.LCPI0_0(%rip), %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	$-1, %ax
	cmovbew	%cx, %ax
.LBB0_3:                                # %cond.end.4
	movw	%ax, 216(%rdi)
	movq	1760(%rdi), %rax
	movq	$gx_dc_type_data_none, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gs_setalpha, .Lfunc_end0-gs_setalpha
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1199570688              # float 65535
	.text
	.globl	gs_currentalpha
	.align	16, 0x90
	.type	gs_currentalpha,@function
gs_currentalpha:                        # @gs_currentalpha
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	216(%rdi), %eax
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI1_0(%rip), %xmm0
	retq
.Lfunc_end1:
	.size	gs_currentalpha, .Lfunc_end1-gs_currentalpha
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
