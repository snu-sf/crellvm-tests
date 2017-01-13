	.text
	.file	"zfsha2.bc"
	.align	16, 0x90
	.type	zSHA256E,@function
zSHA256E:                               # @zSHA256E
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$s_SHA256E_template, %esi
	jmp	filter_write_simple     # TAILCALL
.Lfunc_end0:
	.size	zSHA256E, .Lfunc_end0-zSHA256E
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1SHA256Encode"
	.size	.L.str.1, 14

	.type	zfsha2_op_defs,@object  # @zfsha2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfsha2_op_defs
	.align	16
zfsha2_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zSHA256E
	.zero	16
	.size	zfsha2_op_defs, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
