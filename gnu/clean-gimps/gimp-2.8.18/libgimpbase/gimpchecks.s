	.text
	.file	"gimpchecks.bc"
	.globl	gimp_checks_get_shades
	.align	16, 0x90
	.type	gimp_checks_get_shades,@function
gimp_checks_get_shades:                 # @gimp_checks_get_shades
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$5, -4(%rbp)
	jae	.LBB0_2
# BB#1:                                 # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movl	$5, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_5
# BB#4:                                 # %if.then
	leaq	gimp_checks_get_shades.shades(%rip), %rax
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	movb	1(%rax,%rdx,2), %sil
	movq	-16(%rbp), %rax
	movb	%sil, (%rax)
.LBB0_5:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB0_7
# BB#6:                                 # %if.then.3
	leaq	gimp_checks_get_shades.shades(%rip), %rax
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	movb	(%rax,%rdx,2), %sil
	movq	-24(%rbp), %rax
	movb	%sil, (%rax)
.LBB0_7:                                # %if.end.7
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_checks_get_shades, .Lfunc_end0-gimp_checks_get_shades
	.cfi_endproc

	.type	gimp_checks_get_shades.shades,@object # @gimp_checks_get_shades.shades
	.section	.rodata,"a",@progbits
gimp_checks_get_shades.shades:
	.ascii	"\314\377"
	.ascii	"f\231"
	.ascii	"\0003"
	.zero	2,255
	.zero	2,127
	.zero	2
	.size	gimp_checks_get_shades.shades, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
