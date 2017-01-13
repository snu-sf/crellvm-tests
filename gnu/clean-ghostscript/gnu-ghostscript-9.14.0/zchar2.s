	.text
	.file	"zchar2.bc"
	.align	16, 0x90
	.type	ztype2execchar,@function
ztype2execchar:                         # @ztype2execchar
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4, %esi
	jmp	charstring_execchar     # TAILCALL
.Lfunc_end0:
	.size	ztype2execchar, .Lfunc_end0-ztype2execchar
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"4.type2execchar"
	.size	.L.str, 16

	.type	zchar2_op_defs,@object  # @zchar2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zchar2_op_defs
	.align	16
zchar2_op_defs:
	.quad	.L.str
	.quad	ztype2execchar
	.zero	16
	.size	zchar2_op_defs, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
