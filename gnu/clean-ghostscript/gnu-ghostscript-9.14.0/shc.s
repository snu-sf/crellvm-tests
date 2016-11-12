	.text
	.file	"shc.bc"
	.globl	hc_put_code_proc
	.align	16, 0x90
	.type	hc_put_code_proc,@function
hc_put_code_proc:                       # @hc_put_code_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	shrl	$24, %eax
	testl	%edi, %edi
	je	.LBB0_2
# BB#1:                                 # %if.then
	movb	byte_reverse_bits(%rax), %al
	movb	%al, -3(%rsi)
	movl	%edx, %eax
	movzbl	%dl, %ecx
	shrl	$16, %edx
	movzbl	%dl, %edx
	movb	byte_reverse_bits(%rdx), %dl
	movb	%dl, -2(%rsi)
	shrl	$8, %eax
	movzbl	%al, %eax
	movb	byte_reverse_bits(%rax), %al
	movb	%al, -1(%rsi)
	movb	byte_reverse_bits(%rcx), %dl
	movb	%dl, (%rsi)
	retq
.LBB0_2:                                # %if.else
	movb	%al, -3(%rsi)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, -2(%rsi)
	movb	%dh, -1(%rsi)  # NOREX
	movb	%dl, (%rsi)
	retq
.Lfunc_end0:
	.size	hc_put_code_proc, .Lfunc_end0-hc_put_code_proc
	.cfi_endproc

	.globl	hc_put_last_bits_proc
	.align	16, 0x90
	.type	hc_put_last_bits_proc,@function
hc_put_last_bits_proc:                  # @hc_put_last_bits_proc
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$31, %ecx
	jg	.LBB1_14
# BB#1:                                 # %while.body.lr.ph
	movl	$31, %eax
	subl	%ecx, %eax
	movl	%eax, %r10d
	shrl	$3, %r10d
	btl	$3, %eax
	jb	.LBB1_2
# BB#3:                                 # %while.body.prol
	movl	%edx, %eax
	shrl	$24, %eax
	cmpl	$0, 108(%rdi)
	je	.LBB1_5
# BB#4:                                 # %if.then.prol
	movb	byte_reverse_bits(%rax), %al
.LBB1_5:                                # %if.end.prol
	leaq	1(%rsi), %r11
	movb	%al, 1(%rsi)
	shll	$8, %edx
	movl	%ecx, %r8d
	addl	$8, %r8d
	jmp	.LBB1_6
.LBB1_2:
	movl	%ecx, %r8d
	movq	%rsi, %r11
.LBB1_6:                                # %while.body.lr.ph.split
	leal	(%rcx,%r10,8), %ecx
	leaq	1(%r10), %r9
	testl	%r10d, %r10d
	je	.LBB1_13
# BB#7:                                 # %while.body.lr.ph.split.split
	addq	$2, %r11
	.align	16, 0x90
.LBB1_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %eax
	shrl	$24, %eax
	cmpl	$0, 108(%rdi)
	je	.LBB1_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	byte_reverse_bits(%rax), %al
.LBB1_10:                               # %if.end
                                        #   in Loop: Header=BB1_8 Depth=1
	movb	%al, -1(%r11)
	movl	%edx, %eax
	shrl	$16, %eax
	cmpl	$0, 108(%rdi)
	je	.LBB1_12
# BB#11:                                # %if.then.1
                                        #   in Loop: Header=BB1_8 Depth=1
	movzbl	%al, %eax
	movb	byte_reverse_bits(%rax), %al
.LBB1_12:                               # %if.end.1
                                        #   in Loop: Header=BB1_8 Depth=1
	shll	$16, %edx
	movb	%al, (%r11)
	addl	$16, %r8d
	addq	$2, %r11
	cmpl	$32, %r8d
	jl	.LBB1_8
.LBB1_13:                               # %while.cond.while.end_crit_edge
	addl	$8, %ecx
	addq	%r9, %rsi
.LBB1_14:                               # %while.end
	movl	%edx, 112(%rdi)
	movl	%ecx, 116(%rdi)
	movq	%rsi, %rax
	retq
.Lfunc_end1:
	.size	hc_put_last_bits_proc, .Lfunc_end1-hc_put_last_bits_proc
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
