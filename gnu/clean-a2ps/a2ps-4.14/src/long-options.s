	.text
	.file	"long-options.bc"
	.globl	parse_long_options
	.align	16, 0x90
	.type	parse_long_options,@function
parse_long_options:                     # @parse_long_options
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
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	opterr, %edi
	movl	%edi, -64(%rbp)
	movl	$0, opterr
	cmpl	$2, -4(%rbp)
	jne	.LBB0_7
# BB#1:                                 # %land.lhs.true
	movabsq	$.L.str, %rdx
	movabsq	$long_options, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	getopt_long
	movl	%eax, -60(%rbp)
	cmpl	$-1, %eax
	je	.LBB0_7
# BB#2:                                 # %if.then
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	subl	$104, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	je	.LBB0_3
	jmp	.LBB0_8
.LBB0_8:                                # %if.then
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_5
.LBB0_3:                                # %sw.bb
	xorl	%edi, %edi
	movb	$0, %al
	callq	*-56(%rbp)
.LBB0_4:                                # %sw.bb.2
	movq	stdout, %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	version_etc
	callq	close_stdout
	xorl	%edi, %edi
	callq	exit
.LBB0_5:                                # %sw.default
	jmp	.LBB0_6
.LBB0_6:                                # %sw.epilog
	jmp	.LBB0_7
.LBB0_7:                                # %if.end
	movl	-64(%rbp), %eax
	movl	%eax, opterr
	movl	$0, optind
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	parse_long_options, .Lfunc_end0-parse_long_options
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"+"
	.size	.L.str, 2

	.type	long_options,@object    # @long_options
	.section	.rodata,"a",@progbits
	.align	16
long_options:
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str.2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	118                     # 0x76
	.zero	4
	.zero	32
	.size	long_options, 96

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"help"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"version"
	.size	.L.str.2, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
