	.text
	.file	"zfmd5.bc"
	.align	16, 0x90
	.type	zMD5E,@function
zMD5E:                                  # @zMD5E
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$s_MD5E_template, %esi
	jmp	filter_write_simple     # TAILCALL
.Lfunc_end0:
	.size	zMD5E, .Lfunc_end0-zMD5E
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"filterdict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1MD5Encode"
	.size	.L.str.1, 11

	.type	zfmd5_op_defs,@object   # @zfmd5_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfmd5_op_defs
	.align	16
zfmd5_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zMD5E
	.zero	16
	.size	zfmd5_op_defs, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
