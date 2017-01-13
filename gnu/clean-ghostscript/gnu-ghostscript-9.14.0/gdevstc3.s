	.text
	.file	"gdevstc3.bc"
	.globl	stc_gsrgb
	.align	16, 0x90
	.type	stc_gsrgb,@function
stc_gsrgb:                              # @stc_gsrgb
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	jle	.LBB0_10
	.align	16, 0x90
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%r8)
	cmpb	$0, (%rdx)
	je	.LBB0_2
# BB#3:                                 # %select.mid
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$4, %al
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
.LBB0_4:                                # %select.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	%al, (%r8)
	cmpb	$0, 1(%rdx)
	je	.LBB0_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB0_1 Depth=1
	orb	$2, %al
	movb	%al, (%r8)
.LBB0_6:                                # %if.end.10
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpb	$0, 2(%rdx)
	je	.LBB0_8
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB0_1 Depth=1
	orb	$1, %al
	movb	%al, (%r8)
.LBB0_8:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	incq	%r8
	addq	$3, %rdx
	decl	%esi
	jne	.LBB0_1
# BB#9:                                 # %if.end.41
	xorl	%eax, %eax
	retq
.LBB0_10:                               # %if.else
	movq	18488(%rdi), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	shll	$24, %edx
	sarl	$31, %edx
	movl	%eax, %ecx
	andl	$24, %ecx
	cmpl	$8, %ecx
	movl	$-2, %ecx
	cmovel	%edx, %ecx
	cmpl	$3, 100(%rdi)
	je	.LBB0_12
# BB#11:                                # %select.mid22
	movl	$-3, %ecx
.LBB0_12:                               # %select.end21
	testb	$64, %al
	movl	$-4, %eax
	cmovel	%ecx, %eax
	retq
.Lfunc_end0:
	.size	stc_gsrgb, .Lfunc_end0-stc_gsrgb
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
