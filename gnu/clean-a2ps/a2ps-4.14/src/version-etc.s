	.text
	.file	"version-etc.bc"
	.globl	version_etc
	.align	16, 0x90
	.type	version_etc,@function
version_etc:                            # @version_etc
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movb	$0, %al
	callq	fprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movabsq	$.L.str.2, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB0_3:                                # %if.end
	movabsq	$.L.str.3, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movq	version_etc_copyright, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.4, %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	version_etc, .Lfunc_end0-version_etc
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Copyright (C) 1999 Free Software Foundation, Inc."
	.size	.L.str, 50

	.type	version_etc_copyright,@object # @version_etc_copyright
	.data
	.globl	version_etc_copyright
	.align	8
version_etc_copyright:
	.quad	.L.str
	.size	version_etc_copyright, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%s (%s) %s\n"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s %s\n"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Written by %s.\n"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"This is free software; see the source for copying conditions.  There is NO\nwarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\n"
	.size	.L.str.4, 152


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
