	.text
	.file	"gxclzlib.bc"
	.globl	clist_compressor_template
	.align	16, 0x90
	.type	clist_compressor_template,@function
clist_compressor_template:              # @clist_compressor_template
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$s_zlibE_template, %eax
	retq
.Lfunc_end0:
	.size	clist_compressor_template, .Lfunc_end0-clist_compressor_template
	.cfi_endproc

	.globl	clist_decompressor_template
	.align	16, 0x90
	.type	clist_decompressor_template,@function
clist_decompressor_template:            # @clist_decompressor_template
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$s_zlibD_template, %eax
	retq
.Lfunc_end1:
	.size	clist_decompressor_template, .Lfunc_end1-clist_decompressor_template
	.cfi_endproc

	.globl	clist_compressor_init
	.align	16, 0x90
	.type	clist_compressor_init,@function
clist_compressor_init:                  # @clist_compressor_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	s_zlib_set_defaults
	movl	$1, 112(%rbx)
	movq	$s_zlibE_template, (%rbx)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	clist_compressor_init, .Lfunc_end2-clist_compressor_init
	.cfi_endproc

	.globl	clist_decompressor_init
	.align	16, 0x90
	.type	clist_decompressor_init,@function
clist_decompressor_init:                # @clist_decompressor_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	s_zlib_set_defaults
	movl	$1, 112(%rbx)
	movq	$s_zlibD_template, (%rbx)
	popq	%rbx
	retq
.Lfunc_end3:
	.size	clist_decompressor_init, .Lfunc_end3-clist_decompressor_init
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
