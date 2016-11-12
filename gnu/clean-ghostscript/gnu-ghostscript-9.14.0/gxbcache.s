	.text
	.file	"gxbcache.bc"
	.globl	gx_bits_cache_init
	.align	16, 0x90
	.type	gx_bits_cache_init,@function
gx_bits_cache_init:                     # @gx_bits_cache_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rsi)
	movq	%rsi, (%rdi)
	movq	$0, 8(%rdi)
	movl	$0, 16(%rdi)
	retq
.Lfunc_end0:
	.size	gx_bits_cache_init, .Lfunc_end0-gx_bits_cache_init
	.cfi_endproc

	.globl	gx_bits_cache_chunk_init
	.align	16, 0x90
	.type	gx_bits_cache_chunk_init,@function
gx_bits_cache_chunk_init:               # @gx_bits_cache_chunk_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movq	%rsi, 8(%rdi)
	movl	%edx, 16(%rdi)
	movl	$0, 20(%rdi)
	testq	%rsi, %rsi
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	%edx, (%rsi)
	movl	$0, 4(%rsi)
.LBB1_2:                                # %if.end
	retq
.Lfunc_end1:
	.size	gx_bits_cache_chunk_init, .Lfunc_end1-gx_bits_cache_chunk_init
	.cfi_endproc

	.globl	gx_bits_cache_alloc
	.align	16, 0x90
	.type	gx_bits_cache_alloc,@function
gx_bits_cache_alloc:                    # @gx_bits_cache_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	8(%rsi), %r11
	movl	8(%rdi), %r9d
	movq	(%rdi), %r8
	movl	16(%r8), %eax
	subl	%r9d, %eax
	cmpq	%rax, %r11
	jbe	.LBB2_3
# BB#1:                                 # %entry
	cmpq	%rsi, %rax
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	$0, (%rdx)
	movl	$-1, %eax
	retq
.LBB2_3:                                # %if.end
	movq	8(%r8), %r10
	addq	%r9, %r10
	testl	%r11d, %r11d
	je	.LBB2_14
# BB#4:                                 # %if.end
	testl	%esi, %esi
	je	.LBB2_14
# BB#5:
	xorl	%ecx, %ecx
	movq	%r10, %rax
	.align	16, 0x90
.LBB2_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 4(%rax)
	jne	.LBB2_7
# BB#10:                                # %if.end.20
                                        #   in Loop: Header=BB2_6 Depth=1
	addl	(%rax), %ecx
	cmpl	%r11d, %ecx
	jae	.LBB2_12
# BB#11:                                # %if.end.20
                                        #   in Loop: Header=BB2_6 Depth=1
	leaq	(%r10,%rcx), %rax
	cmpl	%esi, %ecx
	jne	.LBB2_6
.LBB2_12:                               # %while.end
	subl	%esi, %ecx
	jbe	.LBB2_14
# BB#13:                                # %if.then.28
	movl	%esi, %eax
	movl	%ecx, (%r10,%rax)
	movl	$0, 4(%r10,%rax)
.LBB2_14:                               # %do.end.45
	movl	%esi, (%r10)
	addl	%esi, 12(%rdi)
	incl	16(%rdi)
	addl	%esi, %r9d
	movl	%r9d, 8(%rdi)
	addl	%esi, 20(%r8)
	movq	%r10, (%rdx)
	xorl	%eax, %eax
	retq
.LBB2_7:                                # %if.then.16
	testl	%ecx, %ecx
	je	.LBB2_9
# BB#8:                                 # %if.then.17
	movl	%ecx, (%r10)
.LBB2_9:                                # %if.end.19
	movq	%rax, (%rdx)
	movl	$-1, %eax
	retq
.Lfunc_end2:
	.size	gx_bits_cache_alloc, .Lfunc_end2-gx_bits_cache_alloc
	.cfi_endproc

	.globl	gx_bits_cache_shorten
	.align	16, 0x90
	.type	gx_bits_cache_shorten,@function
gx_bits_cache_shorten:                  # @gx_bits_cache_shorten
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %r10d
	leaq	(%r10,%rsi), %r9
	movl	8(%rdi), %r8d
	movq	8(%rcx), %rax
	addq	%r8, %rax
	cmpq	%rax, %r9
	jne	.LBB3_3
# BB#1:                                 # %land.lhs.true
	cmpq	%rcx, (%rdi)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	subl	%edx, %r8d
	movl	%r8d, 8(%rdi)
.LBB3_3:                                # %if.end
	subl	%edx, 12(%rdi)
	subl	%edx, 20(%rcx)
	subl	%edx, %r10d
	movl	%r10d, (%rsi)
	movl	$0, 4(%rsi,%r10)
	movl	%edx, (%rsi,%r10)
	retq
.Lfunc_end3:
	.size	gx_bits_cache_shorten, .Lfunc_end3-gx_bits_cache_shorten
	.cfi_endproc

	.globl	gx_bits_cache_free
	.align	16, 0x90
	.type	gx_bits_cache_free,@function
gx_bits_cache_free:                     # @gx_bits_cache_free
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %eax
	decl	16(%rdi)
	subl	%eax, 12(%rdi)
	subl	%eax, 20(%rdx)
	movl	$0, 4(%rsi)
	retq
.Lfunc_end4:
	.size	gx_bits_cache_free, .Lfunc_end4-gx_bits_cache_free
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
