	.text
	.file	"openat-die.bc"
	.globl	openat_save_fail
	.align	16, 0x90
	.type	openat_save_fail,@function
openat_save_fail:                       # @openat_save_fail
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	abort
.Lfunc_end0:
	.size	openat_save_fail, .Lfunc_end0-openat_save_fail
	.cfi_endproc

	.globl	openat_restore_fail
	.align	16, 0x90
	.type	openat_restore_fail,@function
openat_restore_fail:                    # @openat_restore_fail
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	abort
.Lfunc_end1:
	.size	openat_restore_fail, .Lfunc_end1-openat_restore_fail
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
