	.text
	.file	"jbig2_metadata.bc"
	.globl	jbig2_metadata_new
	.align	16, 0x90
	.type	jbig2_metadata_new,@function
jbig2_metadata_new:                     # @jbig2_metadata_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movl	$1, %esi
	movl	$32, %edx
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#1:                                 # %if.then
	movl	%ebp, (%rbx)
	movl	$0, 24(%rbx)
	movl	$4, 28(%rbx)
	movq	(%r14), %rdi
	movl	$4, %esi
	movl	$8, %edx
	callq	jbig2_alloc
	movq	%rax, 8(%rbx)
	movq	(%r14), %rdi
	movslq	28(%rbx), %rsi
	movl	$8, %edx
	callq	jbig2_alloc
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB0_3
# BB#2:                                 # %if.then
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB0_5
.LBB0_3:                                # %if.then.15
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	jbig2_metadata_free
	xorl	%ebx, %ebx
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.1, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB0_5:                                # %if.end.18
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jbig2_metadata_new, .Lfunc_end0-jbig2_metadata_new
	.cfi_endproc

	.globl	jbig2_metadata_free
	.align	16, 0x90
	.type	jbig2_metadata_free,@function
jbig2_metadata_free:                    # @jbig2_metadata_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB1_6
# BB#1:                                 # %for.cond.preheader
	movq	(%r14), %rdi
	cmpl	$0, 24(%r15)
	jle	.LBB1_5
# BB#2:                                 # %for.body.preheader
	movq	(%rsi), %rsi
	callq	jbig2_free
	movq	(%r14), %rdi
	movl	$1, %ebx
	cmpl	$2, 24(%r15)
	jl	.LBB1_4
	.align	16, 0x90
.LBB1_3:                                # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	jbig2_free
	incq	%rbx
	movslq	24(%r15), %rax
	movq	(%r14), %rdi
	cmpq	%rax, %rbx
	jl	.LBB1_3
.LBB1_4:                                # %for.cond.for.end_crit_edge
	movq	8(%r15), %rsi
.LBB1_5:                                # %for.end
	callq	jbig2_free
.LBB1_6:                                # %if.end
	movq	16(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB1_12
# BB#7:                                 # %for.cond.6.preheader
	movq	(%r14), %rdi
	cmpl	$0, 24(%r15)
	jle	.LBB1_11
# BB#8:                                 # %for.body.9.preheader
	movq	(%rsi), %rsi
	callq	jbig2_free
	movq	(%r14), %rdi
	movl	$1, %ebx
	cmpl	$2, 24(%r15)
	jl	.LBB1_10
	.align	16, 0x90
.LBB1_9:                                # %for.body.9.for.body.9_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	jbig2_free
	incq	%rbx
	movslq	24(%r15), %rax
	movq	(%r14), %rdi
	cmpq	%rax, %rbx
	jl	.LBB1_9
.LBB1_10:                               # %for.cond.6.for.end.16_crit_edge
	movq	16(%r15), %rsi
.LBB1_11:                               # %for.end.16
	callq	jbig2_free
.LBB1_12:                               # %if.end.19
	movq	(%r14), %rdi
	movq	%r15, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_free              # TAILCALL
.Lfunc_end1:
	.size	jbig2_metadata_free, .Lfunc_end1-jbig2_metadata_free
	.cfi_endproc

	.globl	jbig2_metadata_add
	.align	16, 0x90
	.type	jbig2_metadata_add,@function
jbig2_metadata_add:                     # @jbig2_metadata_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 64
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movq	%r8, (%rsp)             # 8-byte Spill
	movl	%ecx, %ebp
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	24(%rbx), %eax
	cmpl	28(%rbx), %eax
	jne	.LBB2_5
# BB#1:                                 # %if.then
	addl	%eax, %eax
	movl	%eax, 28(%rbx)
	movq	(%r14), %rdi
	movq	8(%rbx), %rsi
	movslq	%eax, %rdx
	movl	$8, %ecx
	callq	jbig2_realloc
	movq	%rax, %r15
	movq	(%r14), %rdi
	movq	16(%rbx), %rsi
	movslq	28(%rbx), %rdx
	movl	$8, %ecx
	callq	jbig2_realloc
	testq	%r15, %r15
	je	.LBB2_3
# BB#2:                                 # %if.then
	testq	%rax, %rax
	je	.LBB2_3
# BB#4:                                 # %if.end
	movq	%r15, 8(%rbx)
	movq	%rax, 16(%rbx)
.LBB2_5:                                # %if.end.17
	movq	(%r14), %rdi
	movslq	%ebp, %r15
	movl	$1, %edx
	movq	%r15, %rsi
	callq	jbig2_alloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB2_6
# BB#7:                                 # %if.else.i
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	memcpy
	jmp	.LBB2_8
.LBB2_6:                                # %if.then.i
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB2_8:                                # %jbig2_strndup.exit
	movslq	24(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	%rbp, (%rcx,%rax,8)
	movq	(%r14), %rdi
	movslq	%r12d, %r15
	movl	$1, %edx
	movq	%r15, %rsi
	callq	jbig2_alloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB2_9
# BB#10:                                # %if.else.i.29
	movq	%rbp, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r15, %rdx
	callq	memcpy
	jmp	.LBB2_11
.LBB2_9:                                # %if.then.i.27
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB2_11:                               # %jbig2_strndup.exit30
	movslq	24(%rbx), %rax
	movq	16(%rbx), %rcx
	movq	%rbp, (%rcx,%rax,8)
	leal	1(%rax), %eax
	movl	%eax, 24(%rbx)
	xorl	%ebx, %ebx
	jmp	.LBB2_12
.LBB2_3:                                # %if.then.13
	movl	$-1, %ebx
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.2, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB2_12:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	jbig2_metadata_add, .Lfunc_end2-jbig2_metadata_add
	.cfi_endproc

	.globl	jbig2_comment_ascii
	.align	16, 0x90
	.type	jbig2_comment_ascii,@function
jbig2_comment_ascii:                    # @jbig2_comment_ascii
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 64
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	16(%r14), %rbp
	movl	(%r14), %edx
	movl	$1, %esi
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	callq	jbig2_error
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	jbig2_metadata_new
	movq	%rax, (%rsp)            # 8-byte Spill
	testq	%rax, %rax
	je	.LBB3_9
# BB#1:                                 # %while.cond.preheader
	cmpq	$5, %rbp
	jl	.LBB3_7
# BB#2:
	leaq	4(%rbx), %r13
	leaq	(%rbp,%rbx), %r15
	.align	16, 0x90
.LBB3_3:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r13)
	je	.LBB3_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	%r15, %rdx
	subq	%r13, %rdx
	movl	$48, %esi
	movq	%r13, %rdi
	callq	memchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB3_8
# BB#5:                                 # %if.end.9
                                        #   in Loop: Header=BB3_3 Depth=1
	incq	%rbx
	movq	%r15, %rdx
	subq	%rbx, %rdx
	movl	$48, %esi
	movq	%rbx, %rdi
	callq	memchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB3_8
# BB#6:                                 # %if.end.16
                                        #   in Loop: Header=BB3_3 Depth=1
	incq	%rbp
	movl	%ebp, %r9d
	subl	%ebx, %r9d
	movl	%ebx, %ecx
	subl	%r13d, %ecx
	movq	%r12, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r13, %rdx
	movq	%rbx, %r8
	callq	jbig2_metadata_add
	movl	(%r14), %edx
	movl	$1, %esi
	movl	$.L.str.5, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r13, %r8
	movq	%rbx, %r9
	callq	jbig2_error
	cmpq	%r15, %rbp
	movq	%rbp, %r13
	jb	.LBB3_3
.LBB3_7:                                # %while.end
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 40(%r14)
	xorl	%eax, %eax
	jmp	.LBB3_10
.LBB3_9:                                # %if.then
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movl	$-1, %eax
.LBB3_10:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_8:                                # %too_short
	movq	%r12, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	jbig2_metadata_free
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_error             # TAILCALL
.Lfunc_end3:
	.size	jbig2_comment_ascii, .Lfunc_end3-jbig2_comment_ascii
	.cfi_endproc

	.globl	jbig2_comment_unicode
	.align	16, 0x90
	.type	jbig2_comment_unicode,@function
jbig2_comment_unicode:                  # @jbig2_comment_unicode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %edx
	movl	$2, %esi
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	jmp	jbig2_error             # TAILCALL
.Lfunc_end4:
	.size	jbig2_comment_unicode, .Lfunc_end4-jbig2_comment_unicode
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to allocate storage for metadata keys/values"
	.size	.L.str, 52

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"failed to allocate storage for metadata"
	.size	.L.str.1, 40

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"unable to resize metadata structure"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ASCII comment data"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"unable to allocate comment structure"
	.size	.L.str.4, 37

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"'%s'\t'%s'"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"unexpected end of comment segment"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"unhandled unicode comment segment"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"unable to duplicate comment string"
	.size	.L.str.8, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
