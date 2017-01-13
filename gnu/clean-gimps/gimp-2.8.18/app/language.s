	.text
	.file	"language.bc"
	.globl	language_init
	.align	16, 0x90
	.type	language_init,@function
language_init:                          # @language_init
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
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movabsq	$.L.str, %rdi
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	callq	g_setenv
	movl	$6, %edi
	movabsq	$.L.str.1, %rsi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	setlocale
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB0_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	language_init, .Lfunc_end0-language_init
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LANGUAGE"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
