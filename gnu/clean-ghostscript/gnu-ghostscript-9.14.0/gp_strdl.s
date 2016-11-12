	.text
	.file	"gp_strdl.bc"
	.globl	gp_readline_init
	.align	16, 0x90
	.type	gp_readline_init,@function
gp_readline_init:                       # @gp_readline_init
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gp_readline_init, .Lfunc_end0-gp_readline_init
	.cfi_endproc

	.globl	gp_readline
	.align	16, 0x90
	.type	gp_readline,@function
gp_readline:                            # @gp_readline
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	sreadline               # TAILCALL
.Lfunc_end1:
	.size	gp_readline, .Lfunc_end1-gp_readline
	.cfi_endproc

	.globl	gp_readline_finit
	.align	16, 0x90
	.type	gp_readline_finit,@function
gp_readline_finit:                      # @gp_readline_finit
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end2:
	.size	gp_readline_finit, .Lfunc_end2-gp_readline_finit
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
