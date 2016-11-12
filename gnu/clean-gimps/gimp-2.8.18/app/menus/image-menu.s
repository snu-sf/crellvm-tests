	.text
	.file	"image-menu.bc"
	.globl	image_menu_setup
	.align	16, 0x90
	.type	image_menu_setup,@function
image_menu_setup:                       # @image_menu_setup
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rax
	movq	%rax, -16(%rbp)
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	file_menu_setup
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	windows_menu_setup
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	plug_in_menus_setup
	movabsq	$.L.str.2, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.3, %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	window_menu_setup
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	image_menu_setup, .Lfunc_end0-image_menu_setup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/dummy-menubar"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/dummy-menubar/image-popup"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/View"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"view"
	.size	.L.str.3, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
