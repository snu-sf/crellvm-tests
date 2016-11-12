	.text
	.file	"inobtokn.bc"
	.globl	scan_binary_token
	.align	16, 0x90
	.type	scan_binary_token,@function
scan_binary_token:                      # @scan_binary_token
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-28, %eax
	retq
.Lfunc_end0:
	.size	scan_binary_token, .Lfunc_end0-scan_binary_token
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
