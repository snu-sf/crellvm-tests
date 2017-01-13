	.text
	.file	"gimp-composite-altivec-installer.bc"
	.globl	gimp_composite_altivec_install
	.align	16, 0x90
	.type	gimp_composite_altivec_install,@function
gimp_composite_altivec_install:         # @gimp_composite_altivec_install
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
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_composite_altivec_install, .Lfunc_end0-gimp_composite_altivec_install
	.cfi_endproc

	.globl	gimp_composite_altivec_init
	.align	16, 0x90
	.type	gimp_composite_altivec_init,@function
gimp_composite_altivec_init:            # @gimp_composite_altivec_init
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
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_composite_altivec_init, .Lfunc_end1-gimp_composite_altivec_init
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
