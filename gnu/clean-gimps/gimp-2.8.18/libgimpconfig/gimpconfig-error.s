	.text
	.file	"gimpconfig-error.bc"
	.globl	gimp_config_error_quark
	.align	16, 0x90
	.type	gimp_config_error_quark,@function
gimp_config_error_quark:                # @gimp_config_error_quark
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
	leaq	.L.str(%rip), %rdi
	callq	g_quark_from_static_string@PLT
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_error_quark, .Lfunc_end0-gimp_config_error_quark
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-config-error-quark"
	.size	.L.str, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
