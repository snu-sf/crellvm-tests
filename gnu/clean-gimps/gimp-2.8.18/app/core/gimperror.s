	.text
	.file	"gimperror.bc"
	.globl	gimp_error_quark
	.align	16, 0x90
	.type	gimp_error_quark,@function
gimp_error_quark:                       # @gimp_error_quark
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
	movabsq	$.L.str, %rdi
	callq	g_quark_from_static_string
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_error_quark, .Lfunc_end0-gimp_error_quark
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-error-quark"
	.size	.L.str, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
