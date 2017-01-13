	.text
	.file	"allocator.bc"
	.type	stdlib_allocator,@object # @stdlib_allocator
	.section	.rodata,"a",@progbits
	.globl	stdlib_allocator
	.align	8
stdlib_allocator:
	.quad	malloc
	.quad	realloc
	.quad	free
	.quad	0
	.size	stdlib_allocator, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
