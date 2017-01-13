	.text
	.file	"gui-unique.bc"
	.globl	gui_unique_init
	.align	16, 0x90
	.type	gui_unique_init,@function
gui_unique_init:                        # @gui_unique_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gui_unique_init, .Lfunc_end0-gui_unique_init
	.cfi_endproc

	.globl	gui_unique_exit
	.align	16, 0x90
	.type	gui_unique_exit,@function
gui_unique_exit:                        # @gui_unique_exit
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
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gui_unique_exit, .Lfunc_end1-gui_unique_exit
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
