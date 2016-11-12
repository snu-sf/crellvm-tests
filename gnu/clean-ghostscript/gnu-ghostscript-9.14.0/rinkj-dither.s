	.text
	.file	"rinkj-dither.bc"
	.globl	rinkj_dither_line
	.align	16, 0x90
	.type	rinkj_dither_line,@function
rinkj_dither_line:                      # @rinkj_dither_line
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	rinkj_dither_line, .Lfunc_end0-rinkj_dither_line
	.cfi_endproc

	.globl	rinkj_dither_close
	.align	16, 0x90
	.type	rinkj_dither_close,@function
rinkj_dither_close:                     # @rinkj_dither_close
	.cfi_startproc
# BB#0:                                 # %entry
	jmpq	*8(%rdi)                # TAILCALL
.Lfunc_end1:
	.size	rinkj_dither_close, .Lfunc_end1-rinkj_dither_close
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
