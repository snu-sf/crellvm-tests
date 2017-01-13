	.text
	.file	"dockable-menu.bc"
	.globl	dockable_menu_setup
	.align	16, 0x90
	.type	dockable_menu_setup,@function
dockable_menu_setup:                    # @dockable_menu_setup
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
	subq	$16, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	window_menu_setup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dockable_menu_setup, .Lfunc_end0-dockable_menu_setup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dock"
	.size	.L.str, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
