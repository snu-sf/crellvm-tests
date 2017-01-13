	.text
	.file	"gimplanguagestore-parser.bc"
	.globl	gimp_language_store_parse_iso_codes
	.align	16, 0x90
	.type	gimp_language_store_parse_iso_codes,@function
gimp_language_store_parse_iso_codes:    # @gimp_language_store_parse_iso_codes
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_language_store_parse_iso_codes, .Lfunc_end0-gimp_language_store_parse_iso_codes
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
