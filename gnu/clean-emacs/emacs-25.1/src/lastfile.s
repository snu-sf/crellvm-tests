	.text
	.file	"lastfile.bc"
	.type	my_edata,@object        # @my_edata
	.data
	.globl	my_edata
	.align	16
my_edata:
	.asciz	"End of Emacs initialized data"
	.size	my_edata, 30

	.type	_my_endbss,@object      # @_my_endbss
	.local	_my_endbss
	.comm	_my_endbss,1,1
	.type	my_endbss_static,@object # @my_endbss_static
	.globl	my_endbss_static
	.align	8
my_endbss_static:
	.quad	_my_endbss
	.size	my_endbss_static, 8

	.type	my_endbss,@object       # @my_endbss
	.comm	my_endbss,1,1

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
