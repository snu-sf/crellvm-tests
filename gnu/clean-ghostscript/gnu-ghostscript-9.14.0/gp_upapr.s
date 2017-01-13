	.text
	.file	"gp_upapr.bc"
	.globl	gp_defaultpapersize
	.align	16, 0x90
	.type	gp_defaultpapersize,@function
gp_defaultpapersize:                    # @gp_defaultpapersize
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, (%rsi)
	jle	.LBB0_2
# BB#1:                                 # %if.then
	movb	$0, (%rdi)
.LBB0_2:                                # %if.end
	movl	$1, (%rsi)
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	gp_defaultpapersize, .Lfunc_end0-gp_defaultpapersize
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
