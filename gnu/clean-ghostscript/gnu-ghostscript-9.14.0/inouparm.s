	.text
	.file	"inouparm.bc"
	.globl	set_user_params
	.align	16, 0x90
	.type	set_user_params,@function
set_user_params:                        # @set_user_params
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	set_user_params, .Lfunc_end0-set_user_params
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
