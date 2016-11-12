	.text
	.file	"zncdummy.bc"
	.align	16, 0x90
	.type	zpantonecallback,@function
zpantonecallback:                       # @zpantonecallback
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	zpantonecallback, .Lfunc_end0-zpantonecallback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.pantonecallback"
	.size	.L.str, 18

	.type	pantone_op_defs,@object # @pantone_op_defs
	.section	.rodata,"a",@progbits
	.globl	pantone_op_defs
	.align	16
pantone_op_defs:
	.quad	.L.str
	.quad	zpantonecallback
	.zero	16
	.size	pantone_op_defs, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
