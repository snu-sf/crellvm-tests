	.text
	.file	"gsargs.bc"
	.globl	codepoint_to_utf8
	.align	16, 0x90
	.type	codepoint_to_utf8,@function
codepoint_to_utf8:                      # @codepoint_to_utf8
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$127, %esi
	jg	.LBB0_2
# BB#1:                                 # %if.then
	movb	%sil, (%rdi)
	movl	$1, %eax
	retq
.LBB0_2:                                # %if.else
	movl	%esi, %eax
	cmpl	$2047, %esi             # imm = 0x7FF
	jg	.LBB0_4
# BB#3:                                 # %if.then.3
	shrl	$6, %eax
	orl	$192, %eax
	movb	%al, (%rdi)
	movl	$1, %eax
	jmp	.LBB0_14
.LBB0_4:                                # %if.else.8
	cmpl	$65535, %esi            # imm = 0xFFFF
	jg	.LBB0_6
# BB#5:                                 # %if.then.11
	shrl	$12, %eax
	orl	$224, %eax
	movb	%al, (%rdi)
	movl	$1, %eax
	jmp	.LBB0_13
.LBB0_6:                                # %if.else.18
	cmpl	$2097151, %esi          # imm = 0x1FFFFF
	jg	.LBB0_8
# BB#7:                                 # %if.then.21
	shrl	$18, %eax
	orl	$240, %eax
	movb	%al, (%rdi)
	movl	$1, %eax
	jmp	.LBB0_12
.LBB0_8:                                # %if.else.28
	cmpl	$67108863, %esi         # imm = 0x3FFFFFF
	jg	.LBB0_10
# BB#9:                                 # %if.then.31
	shrl	$24, %eax
	orl	$248, %eax
	movb	%al, (%rdi)
	movl	$1, %eax
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.38
	shrl	$30, %eax
	orl	$252, %eax
	movb	%al, (%rdi)
	movl	%esi, %eax
	shrl	$24, %eax
	orl	$192, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
.LBB0_11:                               # %if.end
	movl	%esi, %ecx
	shrl	$18, %ecx
	orl	$192, %ecx
	movl	%eax, %edx
	incl	%eax
	movb	%cl, (%rdi,%rdx)
.LBB0_12:                               # %if.end.57
	movl	%esi, %ecx
	shrl	$12, %ecx
	orl	$192, %ecx
	movslq	%eax, %rdx
	incl	%eax
	movb	%cl, (%rdi,%rdx)
.LBB0_13:                               # %if.end.64
	movl	%esi, %ecx
	shrl	$6, %ecx
	orl	$192, %ecx
	movslq	%eax, %rdx
	incl	%eax
	movb	%cl, (%rdi,%rdx)
.LBB0_14:                               # %if.end.71
	andl	$63, %esi
	orl	$128, %esi
	movslq	%eax, %rcx
	incl	%eax
	movb	%sil, (%rdi,%rcx)
	retq
.Lfunc_end0:
	.size	codepoint_to_utf8, .Lfunc_end0-codepoint_to_utf8
	.cfi_endproc

	.globl	arg_init
	.align	16, 0x90
	.type	arg_init,@function
arg_init:                               # @arg_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsp), %rax
	movl	$1, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%r8, 16(%rdi)
	testq	%r9, %r9
	movl	$get_codepoint_utf8, %ecx
	cmovneq	%r9, %rcx
	movq	%rcx, 24(%rdi)
	movq	%rax, 32(%rdi)
	addq	$8, %rsi
	movq	%rsi, 40(%rdi)
	decl	%edx
	movl	%edx, 48(%rdi)
	movl	$0, 52(%rdi)
	retq
.Lfunc_end1:
	.size	arg_init, .Lfunc_end1-arg_init
	.cfi_endproc

	.align	16, 0x90
	.type	get_codepoint_utf8,@function
get_codepoint_utf8:                     # @get_codepoint_utf8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
.LBB2_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
                                        #       Child Loop BB2_18 Depth 3
	testq	%r15, %r15
	je	.LBB2_2
# BB#4:                                 # %cond.end.5
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r15, %rdi
	callq	fgetc
	movl	$-1, %ecx
	cmpl	$-1, %eax
	jne	.LBB2_5
	jmp	.LBB2_25
	.align	16, 0x90
.LBB2_2:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	(%r14), %rax
	movl	$-1, %ecx
	cmpb	$0, (%rax)
	je	.LBB2_25
# BB#3:                                 # %cond.end.5.thread32
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r14)
	movzbl	(%rax), %eax
.LBB2_5:                                # %if.end
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_18 Depth 3
	cmpl	$128, %eax
	movl	%eax, %ecx
	jl	.LBB2_25
# BB#6:                                 # %lead
                                        #   in Loop: Header=BB2_5 Depth=2
	cmpl	$192, %eax
	jl	.LBB2_1
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB2_5 Depth=2
	cmpl	$223, %eax
	jg	.LBB2_9
# BB#8:                                 # %if.then.17
                                        #   in Loop: Header=BB2_5 Depth=2
	andl	$31, %eax
	movl	$1, %ebp
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_9:                                # %if.else.18
                                        #   in Loop: Header=BB2_5 Depth=2
	cmpl	$239, %eax
	jg	.LBB2_11
# BB#10:                                # %if.then.21
                                        #   in Loop: Header=BB2_5 Depth=2
	andl	$15, %eax
	movl	$2, %ebp
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_11:                               # %if.else.23
                                        #   in Loop: Header=BB2_5 Depth=2
	cmpl	$247, %eax
	jg	.LBB2_13
# BB#12:                                # %if.then.26
                                        #   in Loop: Header=BB2_5 Depth=2
	andl	$7, %eax
	movl	$3, %ebp
	jmp	.LBB2_17
.LBB2_13:                               # %if.else.28
                                        #   in Loop: Header=BB2_5 Depth=2
	cmpl	$251, %eax
	jg	.LBB2_15
# BB#14:                                # %if.then.31
                                        #   in Loop: Header=BB2_5 Depth=2
	andl	$3, %eax
	movl	$4, %ebp
	jmp	.LBB2_17
.LBB2_15:                               # %if.else.33
                                        #   in Loop: Header=BB2_5 Depth=2
	cmpl	$253, %eax
	jg	.LBB2_1
# BB#16:                                # %if.then.36
                                        #   in Loop: Header=BB2_5 Depth=2
	andl	$1, %eax
	movl	$5, %ebp
	.align	16, 0x90
.LBB2_17:                               # %do.body.45
                                        #   in Loop: Header=BB2_5 Depth=2
	movl	%eax, %ebx
	.align	16, 0x90
.LBB2_18:                               # %do.body.45
                                        #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%r15, %r15
	je	.LBB2_19
# BB#21:                                # %cond.end.58
                                        #   in Loop: Header=BB2_18 Depth=3
	movq	%r15, %rdi
	callq	fgetc
	movl	$-1, %ecx
	cmpl	$-1, %eax
	jne	.LBB2_22
	jmp	.LBB2_25
	.align	16, 0x90
.LBB2_19:                               # %cond.false.49
                                        #   in Loop: Header=BB2_18 Depth=3
	movq	(%r14), %rax
	movl	$-1, %ecx
	cmpb	$0, (%rax)
	je	.LBB2_25
# BB#20:                                # %cond.end.58.thread36
                                        #   in Loop: Header=BB2_18 Depth=3
	leaq	1(%rax), %rcx
	movq	%rcx, (%r14)
	movzbl	(%rax), %eax
.LBB2_22:                               # %if.end.63
                                        #   in Loop: Header=BB2_18 Depth=3
	movl	%eax, %ecx
	andl	$192, %ecx
	cmpl	$192, %ecx
	jne	.LBB2_5
# BB#23:                                # %land.rhs
                                        #   in Loop: Header=BB2_18 Depth=3
	movl	%ebx, %ecx
	shll	$6, %ecx
	andl	$63, %eax
	movl	%eax, %ebx
	orl	%ecx, %ebx
	decl	%ebp
	jne	.LBB2_18
# BB#24:                                # %if.end.75
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$65279, %ebx            # imm = 0xFEFF
	movl	%ebx, %ecx
	je	.LBB2_1
.LBB2_25:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_codepoint_utf8, .Lfunc_end2-get_codepoint_utf8
	.cfi_endproc

	.globl	arg_push_memory_string
	.align	16, 0x90
	.type	arg_push_memory_string,@function
arg_push_memory_string:                 # @arg_push_memory_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %rax
	movl	%edx, %ecx
	movq	%rax, %r8
	jmp	arg_push_decoded_memory_string # TAILCALL
.Lfunc_end3:
	.size	arg_push_memory_string, .Lfunc_end3-arg_push_memory_string
	.cfi_endproc

	.globl	arg_push_decoded_memory_string
	.align	16, 0x90
	.type	arg_push_decoded_memory_string,@function
arg_push_decoded_memory_string:         # @arg_push_decoded_memory_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movslq	52(%rdi), %rax
	cmpq	$10, %rax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str, %edi
	movl	$148, %esi
	callq	lprintf_file_and_line
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$1, %eax
	popq	%rbx
	retq
.LBB4_2:                                # %if.end
	leaq	(%rax,%rax,4), %rax
	movl	$0, 2112(%rdi,%rax,8)
	movl	%edx, 2120(%rdi,%rax,8)
	movl	%ecx, 2124(%rdi,%rax,8)
	movq	%rsi, 2128(%rdi,%rax,8)
	movq	%r8, 2136(%rdi,%rax,8)
	movq	%rsi, 2144(%rdi,%rax,8)
	incl	52(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	arg_push_decoded_memory_string, .Lfunc_end4-arg_push_decoded_memory_string
	.cfi_endproc

	.globl	arg_finit
	.align	16, 0x90
	.type	arg_finit,@function
arg_finit:                              # @arg_finit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_3:                                # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	2120(%rbx,%rax,8), %rdi
	callq	fclose
.LBB5_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	movl	52(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	decl	%eax
	movl	%eax, 52(%rbx)
	cltq
	leaq	(%rax,%rax,4), %rax
	cmpl	$0, 2112(%rbx,%rax,8)
	jne	.LBB5_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	2136(%rbx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB5_1
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	2128(%rbx,%rax,8), %rsi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	jmp	.LBB5_1
.LBB5_6:                                # %while.end
	popq	%rbx
	retq
.Lfunc_end5:
	.size	arg_finit, .Lfunc_end5-arg_finit
	.cfi_endproc

	.globl	arg_next
	.align	16, 0x90
	.type	arg_next,@function
arg_next:                               # @arg_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 144
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	$0, 80(%rsp)
	leaq	56(%rdx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	52(%rdx), %ecx
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_36:                               # %if.end.82
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	52(%rdx), %ecx
	decl	%ecx
	movl	%ecx, 52(%rdx)
.LBB6_1:                                # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
                                        #       Child Loop BB6_22 Depth 3
                                        #         Child Loop BB6_45 Depth 4
	leaq	80(%rsp), %rsi
	jmp	.LBB6_2
	.align	16, 0x90
.LBB6_97:                               # %if.end.211
                                        #   in Loop: Header=BB6_2 Depth=2
	movl	52(%rbx), %ecx
	incl	%ecx
	movl	%ecx, 52(%rbx)
	movl	$1, 40(%r13)
	movq	%rax, 48(%r13)
	movq	%r15, %rsi
	movq	%rbx, %rdx
.LBB6_2:                                # %top
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_22 Depth 3
                                        #         Child Loop BB6_45 Depth 4
	leal	-1(%rcx), %eax
	cltq
	leaq	(%rax,%rax,4), %rbx
	leaq	2112(%rdx,%rbx,8), %r13
	testl	%ecx, %ecx
	je	.LBB6_3
# BB#5:                                 # %if.end.5
                                        #   in Loop: Header=BB6_2 Depth=2
	cmpl	$0, (%r13)
	leaq	2120(%rdx,%rbx,8), %rax
	je	.LBB6_7
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	(%rax), %r12
	jmp	.LBB6_17
	.align	16, 0x90
.LBB6_3:                                # %if.then
                                        #   in Loop: Header=BB6_2 Depth=2
	movl	48(%rdx), %eax
	testl	%eax, %eax
	jle	.LBB6_15
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	%rsi, %r15
	decl	%eax
	movl	%eax, 48(%rdx)
	movq	40(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 40(%rdx)
	movq	(%rax), %rbp
	jmp	.LBB6_13
	.align	16, 0x90
.LBB6_7:                                # %if.else
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	%rsi, %r15
	cmpl	$0, (%rax)
	movq	2144(%rdx,%rbx,8), %r14
	je	.LBB6_16
# BB#8:                                 # %if.then.9
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	%rdx, %rbp
	movq	%r14, %rdi
	callq	strlen
	cmpq	$2048, %rax             # imm = 0x800
	jae	.LBB6_9
# BB#10:                                # %if.else.18
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	strcpy
	movq	%rbp, %rdx
	movq	2136(%rdx,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB6_12
# BB#11:                                # %if.then.29
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	2128(%rdx,%rbx,8), %rsi
	movq	%rdx, %rbx
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	%rbx, %rdx
.LBB6_12:                               # %if.end.38
                                        #   in Loop: Header=BB6_2 Depth=2
	decl	52(%rdx)
	addq	$-40, %r13
	movq	40(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB6_13
.LBB6_16:                               # %if.else.42
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	%r14, 80(%rsp)
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB6_17:                               # %if.end.47
                                        #   in Loop: Header=BB6_2 Depth=2
	cmpl	$0, 2124(%rdx,%rbx,8)
	je	.LBB6_19
# BB#18:                                # %cond.true.i
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	%rdx, %rbp
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	leaq	80(%rsp), %rsi
	callq	get_codepoint_utf8
	jmp	.LBB6_20
.LBB6_19:                               # %cond.false.i
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	leaq	80(%rsp), %rsi
	movq	%rdx, %rbp
	callq	*24(%rbp)
.LBB6_20:                               # %for.cond.preheader
                                        #   in Loop: Header=BB6_2 Depth=2
	movl	%eax, %r15d
	movq	%r13, 32(%rsp)          # 8-byte Spill
	cmpl	$-1, %r15d
	movq	%rbp, %rdx
	je	.LBB6_31
# BB#21:                                #   in Loop: Header=BB6_2 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	2124(%rdx,%rax,8), %r14
	movl	$0, 56(%rsp)            # 4-byte Folded Spill
	movl	$1, %r13d
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	leaq	80(%rsp), %rbp
	jmp	.LBB6_22
.LBB6_59:                               # %cond.false.i.157
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	jmp	.LBB6_60
	.align	16, 0x90
.LBB6_22:                               # %if.end.86
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_45 Depth 4
	leal	-1(%r15), %eax
	cmpl	$254, %eax
	ja	.LBB6_84
# BB#23:                                # %land.lhs.true.89
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r14, %rbx
	movq	%rbp, %r14
	movslq	%r15d, %rbp
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$32, 1(%rax,%rbp,2)
	movq	%r14, %rbp
	movq	%rbx, %r14
	je	.LBB6_43
# BB#24:                                # %if.then.94
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	je	.LBB6_25
# BB#38:                                # %if.end.99
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	je	.LBB6_39
.LBB6_43:                               # %if.end.103
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$35, %r15d
	jne	.LBB6_61
# BB#44:                                # %if.end.103
                                        #   in Loop: Header=BB6_22 Depth=3
	testl	%r13d, %r13d
	je	.LBB6_61
.LBB6_45:                               # %do.body
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        #       Parent Loop BB6_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$0, (%r14)
	je	.LBB6_47
# BB#46:                                # %cond.true.i.136
                                        #   in Loop: Header=BB6_45 Depth=4
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	get_codepoint_utf8
	jmp	.LBB6_48
	.align	16, 0x90
.LBB6_47:                               # %cond.false.i.139
                                        #   in Loop: Header=BB6_45 Depth=4
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*24(%rax)
.LBB6_48:                               # %get_codepoint.exit141
                                        #   in Loop: Header=BB6_45 Depth=4
	movl	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB6_55
# BB#49:                                # %get_codepoint.exit141
                                        #   in Loop: Header=BB6_45 Depth=4
	cmpl	$10, %r15d
	je	.LBB6_55
# BB#50:                                # %get_codepoint.exit141
                                        #   in Loop: Header=BB6_45 Depth=4
	cmpl	$13, %r15d
	jne	.LBB6_45
# BB#51:                                # %if.then.120
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$0, (%r14)
	je	.LBB6_53
# BB#52:                                # %cond.true.i.145
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	get_codepoint_utf8
	jmp	.LBB6_54
	.align	16, 0x90
.LBB6_61:                               # %if.end.128
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$92, %r15d
	jne	.LBB6_84
# BB#62:                                # %if.then.131
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$0, (%r14)
	je	.LBB6_64
# BB#63:                                # %cond.true.i.163
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	get_codepoint_utf8
	jmp	.LBB6_65
	.align	16, 0x90
.LBB6_84:                               # %if.end.158
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%rbp, %rbx
	movl	76(%rsp), %ebp          # 4-byte Reload
	cmpl	$2047, %ebp             # imm = 0x7FF
	jge	.LBB6_85
# BB#86:                                # %if.end.165
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$34, %r15d
	jne	.LBB6_88
# BB#87:                                # %if.then.168
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	jmp	.LBB6_89
	.align	16, 0x90
.LBB6_88:                               # %if.else.171
                                        #   in Loop: Header=BB6_22 Depth=3
	movslq	%ebp, %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	56(%rcx,%rax), %rdi
	movl	%r15d, %esi
	callq	codepoint_to_utf8
	addl	%eax, %ebp
.LBB6_89:                               # %if.end.175
                                        #   in Loop: Header=BB6_22 Depth=3
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	cmpl	$13, %r15d
	sete	%al
	cmpl	$10, %r15d
	sete	%cl
	orb	%al, %cl
	movzbl	%cl, %r13d
	cmpl	$0, (%r14)
	je	.LBB6_91
# BB#90:                                # %cond.true.i.190
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbx, %rbp
.LBB6_58:                               # %for.cond.backedge
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%rbp, %rsi
	callq	get_codepoint_utf8
	movl	%eax, %r15d
	jmp	.LBB6_83
	.align	16, 0x90
.LBB6_91:                               # %cond.false.i.193
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbx, %rbp
.LBB6_60:                               # %for.cond.backedge
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%rbp, %rsi
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*24(%rax)
	movl	%eax, %r15d
	jmp	.LBB6_83
.LBB6_25:                               # %if.then.97
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$0, (%r14)
	je	.LBB6_37
# BB#26:                                # %cond.true.i.127
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	get_codepoint_utf8
	jmp	.LBB6_27
.LBB6_64:                               # %cond.false.i.166
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*24(%rax)
.LBB6_65:                               # %get_codepoint.exit168
                                        #   in Loop: Header=BB6_22 Depth=3
	movl	%eax, %r15d
	cmpl	$10, %r15d
	je	.LBB6_72
# BB#66:                                # %get_codepoint.exit168
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$13, %r15d
	jne	.LBB6_76
# BB#67:                                # %if.then.140
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$0, (%r14)
	je	.LBB6_69
# BB#68:                                # %cond.true.i.172
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	get_codepoint_utf8
	jmp	.LBB6_70
.LBB6_37:                               # %cond.false.i.130
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*24(%rax)
.LBB6_27:                               # %for.cond.backedge
                                        #   in Loop: Header=BB6_22 Depth=3
	movl	%eax, %r15d
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	jmp	.LBB6_83
.LBB6_76:                               # %if.end.148
                                        #   in Loop: Header=BB6_22 Depth=3
	movl	76(%rsp), %edx          # 4-byte Reload
	cmpl	$2047, %edx             # imm = 0x7FF
	movq	64(%rsp), %rcx          # 8-byte Reload
	jge	.LBB6_77
# BB#82:                                # %if.end.155
                                        #   in Loop: Header=BB6_22 Depth=3
	movslq	%edx, %rax
	incl	%edx
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movb	$92, 56(%rcx,%rax)
	xorl	%r13d, %r13d
	jmp	.LBB6_83
.LBB6_69:                               # %cond.false.i.175
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*24(%rax)
.LBB6_70:                               # %if.end.142
                                        #   in Loop: Header=BB6_22 Depth=3
	movl	%eax, %r15d
	cmpl	$10, %r15d
	jne	.LBB6_71
.LBB6_72:                               # %if.then.145
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$0, (%r14)
	je	.LBB6_75
# BB#73:                                # %cond.true.i.181
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	get_codepoint_utf8
	jmp	.LBB6_74
.LBB6_75:                               # %cond.false.i.184
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*24(%rax)
.LBB6_74:                               # %for.cond.backedge
                                        #   in Loop: Header=BB6_22 Depth=3
	movl	%eax, %r15d
	movl	$1, %r13d
	jmp	.LBB6_83
.LBB6_71:                               #   in Loop: Header=BB6_22 Depth=3
	movl	$1, %r13d
	jmp	.LBB6_83
.LBB6_53:                               # %cond.false.i.148
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rax          # 8-byte Reload
	callq	*24(%rax)
.LBB6_54:                               # %if.end.122
                                        #   in Loop: Header=BB6_22 Depth=3
	movl	%eax, %r15d
	.align	16, 0x90
.LBB6_55:                               # %if.end.122
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$10, %r15d
	jne	.LBB6_83
# BB#56:                                # %if.then.125
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$0, (%r14)
	je	.LBB6_59
# BB#57:                                # %cond.true.i.154
                                        #   in Loop: Header=BB6_22 Depth=3
	movq	%r12, %rdi
	jmp	.LBB6_58
	.align	16, 0x90
.LBB6_83:                               # %for.cond.backedge
                                        #   in Loop: Header=BB6_22 Depth=3
	cmpl	$-1, %r15d
	jne	.LBB6_22
# BB#28:                                # %if.then.52
                                        #   in Loop: Header=BB6_2 Depth=2
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	jne	.LBB6_29
# BB#30:                                # %if.end.58
                                        #   in Loop: Header=BB6_2 Depth=2
	movl	$0, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	76(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movq	64(%rsp), %rdx          # 8-byte Reload
	jne	.LBB6_40
	jmp	.LBB6_31
.LBB6_39:                               #   in Loop: Header=BB6_2 Depth=2
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	76(%rsp), %eax          # 4-byte Reload
.LBB6_40:                               # %for.end
                                        #   in Loop: Header=BB6_2 Depth=2
	leaq	80(%rsp), %r15
	cltq
	movb	$0, 56(%rdx,%rax)
	testq	%r12, %r12
	jne	.LBB6_42
# BB#41:                                # %if.then.187
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	80(%rsp), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 2144(%rdx,%rcx,8)
.LBB6_42:                               # %at
                                        #   in Loop: Header=BB6_2 Depth=2
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
.LBB6_13:                               # %at
                                        #   in Loop: Header=BB6_2 Depth=2
	cmpl	$0, (%rdx)
	je	.LBB6_14
# BB#92:                                # %land.lhs.true.193
                                        #   in Loop: Header=BB6_2 Depth=2
	movzbl	(%rbp), %eax
	cmpl	$64, %eax
	jne	.LBB6_14
# BB#93:                                # %if.then.198
                                        #   in Loop: Header=BB6_2 Depth=2
	cmpl	$10, 52(%rdx)
	je	.LBB6_94
# BB#95:                                # %if.end.204
                                        #   in Loop: Header=BB6_2 Depth=2
	incq	%rbp
	movq	16(%rdx), %rsi
	movq	%rbp, %rdi
	movq	%rdx, %rbx
	callq	*8(%rbx)
	testq	%rax, %rax
	jne	.LBB6_97
	jmp	.LBB6_96
	.align	16, 0x90
.LBB6_31:                               # %if.then.60
                                        #   in Loop: Header=BB6_1 Depth=1
	testq	%r12, %r12
	je	.LBB6_33
# BB#32:                                # %if.then.62
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	%r12, %rdi
	movq	%rdx, %rbx
	callq	fclose
	jmp	.LBB6_35
	.align	16, 0x90
.LBB6_33:                               # %if.else.64
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	2136(%rdx,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB6_36
# BB#34:                                # %if.then.69
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	2128(%rdx,%rax,8), %rsi
	movq	%rdx, %rbx
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB6_35:                               # %if.end.82
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	%rbx, %rdx
	jmp	.LBB6_36
.LBB6_85:                               # %if.then.161
	movslq	%ebp, %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
.LBB6_78:                               # %cleanup
	movb	$0, 56(%rcx,%rax)
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.3, %esi
.LBB6_79:                               # %cleanup
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
.LBB6_80:                               # %cleanup
	callq	errprintf
.LBB6_81:                               # %cleanup
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$-100, (%rax)
	jmp	.LBB6_15
.LBB6_14:
	movq	%rbp, 56(%rsp)          # 8-byte Spill
.LBB6_15:                               # %cleanup
	movq	56(%rsp), %rax          # 8-byte Reload
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_94:                               # %if.then.202
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	errprintf
	jmp	.LBB6_81
.LBB6_96:                               # %if.then.209
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rdx
	jmp	.LBB6_80
.LBB6_29:                               # %if.then.54
	movslq	76(%rsp), %rax          # 4-byte Folded Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movb	$0, 56(%rcx,%rax)
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.5, %esi
	jmp	.LBB6_79
.LBB6_9:                                # %if.then.13
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rdx
	jmp	.LBB6_80
.LBB6_77:                               # %if.then.151
	movslq	%edx, %rax
	jmp	.LBB6_78
.Lfunc_end6:
	.size	arg_next, .Lfunc_end6-arg_next
	.cfi_endproc

	.globl	arg_copy
	.align	16, 0x90
	.type	arg_copy,@function
arg_copy:                               # @arg_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	64(%rbx), %r15
	callq	strlen
	leal	1(%rax), %esi
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	callq	*%r15
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB7_1
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcpy
	jmp	.LBB7_3
.LBB7_1:                                # %if.then
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str, %edi
	movl	$347, %esi              # imm = 0x15B
	callq	lprintf_file_and_line
	xorl	%ebx, %ebx
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB7_3:                                # %cleanup
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	arg_copy, .Lfunc_end7-arg_copy
	.cfi_endproc

	.globl	arg_free
	.align	16, 0x90
	.type	arg_free,@function
arg_free:                               # @arg_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	24(%rsi), %rcx
	movl	$.L.str.7, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end8:
	.size	arg_free, .Lfunc_end8-arg_free
	.cfi_endproc

	.globl	arg_strcmp
	.align	16, 0x90
	.type	arg_strcmp,@function
arg_strcmp:                             # @arg_strcmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 48
.Ltmp37:
	.cfi_offset %rbx, -40
.Ltmp38:
	.cfi_offset %r12, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	%rsi, (%rsp)
	movl	$1, %eax
	testq	%rsi, %rsi
	je	.LBB9_6
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB9_6
# BB#2:                                 # %do.body.preheader
	xorl	%r12d, %r12d
	leaq	(%rsp), %r15
	.align	16, 0x90
.LBB9_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	*24(%r14)
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	cmovel	%r12d, %ecx
	movsbl	(%rbx), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	jne	.LBB9_6
# BB#4:                                 # %do.cond
                                        #   in Loop: Header=BB9_3 Depth=1
	xorl	%eax, %eax
	testb	%dl, %dl
	je	.LBB9_6
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB9_3 Depth=1
	incq	%rbx
	testl	%ecx, %ecx
	jne	.LBB9_3
.LBB9_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	arg_strcmp, .Lfunc_end9-arg_strcmp
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./base/gsargs.c"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Too much nesting of @-files.\n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"arg_finit"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Command too long: %s\n"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"arg_next"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unterminated quote in @-file: %s\n"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Unable to open command line file %s\n"
	.size	.L.str.6, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"arg_copy"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Out of memory!\n"
	.size	.L.str.8, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
