	.text
	.file	"raw.bc"
	.globl	opj_raw_create
	.align	16, 0x90
	.type	opj_raw_create,@function
opj_raw_create:                         # @opj_raw_create
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$40, %edi
	jmp	malloc                  # TAILCALL
.Lfunc_end0:
	.size	opj_raw_create, .Lfunc_end0-opj_raw_create
	.cfi_endproc

	.globl	opj_raw_destroy
	.align	16, 0x90
	.type	opj_raw_destroy,@function
opj_raw_destroy:                        # @opj_raw_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB1_1
# BB#2:                                 # %if.then
	jmp	free                    # TAILCALL
.LBB1_1:                                # %if.end
	retq
.Lfunc_end1:
	.size	opj_raw_destroy, .Lfunc_end1-opj_raw_destroy
	.cfi_endproc

	.globl	opj_raw_numbytes
	.align	16, 0x90
	.type	opj_raw_numbytes,@function
opj_raw_numbytes:                       # @opj_raw_numbytes
	.cfi_startproc
# BB#0:                                 # %entry
	movl	16(%rdi), %eax
	subl	24(%rdi), %eax
	retq
.Lfunc_end2:
	.size	opj_raw_numbytes, .Lfunc_end2-opj_raw_numbytes
	.cfi_endproc

	.globl	opj_raw_init_dec
	.align	16, 0x90
	.type	opj_raw_init_dec,@function
opj_raw_init_dec:                       # @opj_raw_init_dec
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 24(%rdi)
	movl	%edx, 8(%rdi)
	movl	$0, 12(%rdi)
	movb	$0, (%rdi)
	movl	$0, 4(%rdi)
	retq
.Lfunc_end3:
	.size	opj_raw_init_dec, .Lfunc_end3-opj_raw_init_dec
	.cfi_endproc

	.globl	opj_raw_decode
	.align	16, 0x90
	.type	opj_raw_decode,@function
opj_raw_decode:                         # @opj_raw_decode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	4(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB4_2
# BB#1:                                 # %entry.if.end.13_crit_edge
	movb	(%rdi), %dl
	jmp	.LBB4_7
.LBB4_2:                                # %if.then
	movl	$8, 4(%rdi)
	movl	12(%rdi), %eax
	cmpl	8(%rdi), %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	movb	$-1, (%rdi)
	movl	$8, %ecx
	movb	$-1, %dl
	jmp	.LBB4_7
.LBB4_4:                                # %if.else
	movl	$8, %ecx
	movzbl	(%rdi), %edx
	cmpl	$255, %edx
	jne	.LBB4_6
# BB#5:                                 # %if.then.7
	movl	$7, 4(%rdi)
	movl	$7, %ecx
.LBB4_6:                                # %if.end
	movq	24(%rdi), %rdx
	movb	(%rdx,%rax), %dl
	movb	%dl, (%rdi)
	leal	1(%rax), %eax
	movl	%eax, 12(%rdi)
.LBB4_7:                                # %if.end.13
	decl	%ecx
	movl	%ecx, 4(%rdi)
	movzbl	%dl, %eax
	shrl	%cl, %eax
	andl	$1, %eax
	retq
.Lfunc_end4:
	.size	opj_raw_decode, .Lfunc_end4-opj_raw_decode
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
