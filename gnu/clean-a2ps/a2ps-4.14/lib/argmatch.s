	.text
	.file	"argmatch.bc"
	.align	16, 0x90
	.type	__argmatch_die,@function
__argmatch_die:                         # @__argmatch_die
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
	movl	$1, %edi
	callq	exit
.Lfunc_end0:
	.size	__argmatch_die, .Lfunc_end0-__argmatch_die
	.cfi_endproc

	.globl	argmatch
	.align	16, 0x90
	.type	argmatch,@function
argmatch:                               # @argmatch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	__argmatch_internal
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	argmatch, .Lfunc_end1-argmatch
	.cfi_endproc

	.align	16, 0x90
	.type	__argmatch_internal,@function
__argmatch_internal:                    # @__argmatch_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	$-1, -60(%rbp)
	movl	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -56(%rbp)
	movl	$0, -48(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB2_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB2_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB2_15
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	strncasecmp
	cmpl	$0, %eax
	jne	.LBB2_15
.LBB2_5:                                # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	cmpq	-56(%rbp), %rax
	jne	.LBB2_7
# BB#6:                                 # %if.then.13
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_20
.LBB2_7:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$-1, -60(%rbp)
	jne	.LBB2_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_13
.LBB2_9:                                # %if.else.16
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB2_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	imulq	%rdx, %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movslq	-48(%rbp), %rsi
	imulq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB2_12
.LBB2_11:                               # %if.then.23
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$1, -64(%rbp)
.LBB2_12:                               # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_13
.LBB2_13:                               # %if.end.24
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.25
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_15
.LBB2_15:                               # %if.end.26
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_16
.LBB2_16:                               # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_1
.LBB2_17:                               # %for.end
	cmpl	$0, -64(%rbp)
	je	.LBB2_19
# BB#18:                                # %if.then.28
	movl	$-2, -4(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.29
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	__argmatch_internal, .Lfunc_end2-__argmatch_internal
	.cfi_endproc

	.globl	argcasematch
	.align	16, 0x90
	.type	argcasematch,@function
argcasematch:                           # @argcasematch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%r8d, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	__argmatch_internal
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	argcasematch, .Lfunc_end3-argcasematch
	.cfi_endproc

	.globl	argmatch_invalid
	.align	16, 0x90
	.type	argmatch_invalid,@function
argmatch_invalid:                       # @argmatch_invalid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %cond.true
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB4_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	$5, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	quotearg_style
	xorl	%edi, %edi
	movq	-8(%rbp), %r8
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	argmatch_invalid, .Lfunc_end4-argmatch_invalid
	.cfi_endproc

	.globl	argmatch_valid
	.align	16, 0x90
	.type	argmatch_valid,@function
argmatch_valid:                         # @argmatch_valid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	stderr, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$0, -28(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB5_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	imulq	%rdx, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB5_5
.LBB5_4:                                # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.3, %rsi
	movq	stderr, %rdi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	imulq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB5_6:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end
	movl	$10, %edi
	movq	stderr, %rsi
	callq	_IO_putc
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	argmatch_valid, .Lfunc_end5-argmatch_valid
	.cfi_endproc

	.globl	__xargmatch_internal
	.align	16, 0x90
	.type	__xargmatch_internal,@function
__xargmatch_internal:                   # @__xargmatch_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	callq	__argmatch_internal
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jl	.LBB6_2
# BB#1:                                 # %if.then
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	callq	argmatch_invalid
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	argmatch_valid
	callq	*-64(%rbp)
	movl	$-1, -4(%rbp)
.LBB6_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	__xargmatch_internal, .Lfunc_end6-__xargmatch_internal
	.cfi_endproc

	.globl	argmatch_to_argument
	.align	16, 0x90
	.type	argmatch_to_argument,@function
argmatch_to_argument:                   # @argmatch_to_argument
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	%rdx, %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB7_4
# BB#3:                                 # %if.then
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_7
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_1
.LBB7_6:                                # %for.end
	movq	$0, -8(%rbp)
.LBB7_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	argmatch_to_argument, .Lfunc_end7-argmatch_to_argument
	.cfi_endproc

	.type	argmatch_die,@object    # @argmatch_die
	.data
	.globl	argmatch_die
	.align	8
argmatch_die:
	.quad	__argmatch_die
	.size	argmatch_die, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid argument %s for `%s'"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ambiguous argument %s for `%s'"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Valid arguments are:"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n  - `%s'"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	", `%s'"
	.size	.L.str.4, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
